contract main {




// =====================  Runtime code  =====================


#
#  - adminRefund(bytes32 arg1)
#  - handleAdminRefund(bytes32 arg1, address arg2)
#  - claim(bytes32 arg1, uint256[3] arg2, string arg3)
#  - initStake(bytes32 arg1, uint256[2] arg2, bytes32 arg3, uint256 arg4, address arg5, uint256 arg6, string arg7, string arg8)
#
const balanceOf = eth.balance(this.address)


address gubAddyAddress;
uint256 contractBalance;
uint256 numberOfBets;
array of uint256 betIDRec;
uint256 stor4;
address stor5;
address stor6;
address stor7;
mapping of struct stakes;
mapping of struct sidepot;
array of struct stakeMembers;
array of struct sidepotMembers;
mapping of address playerDetails;
mapping of struct stor15;
mapping of uint256 tokenBalance;
mapping of uint256 stor17;
mapping of uint256 timeCreated;
mapping of uint256 timeExpires;
mapping of struct stor20;
mapping of address stakeToken;
mapping of uint256 sidepotChoiceTotals;

function gubAddy() {
    return gubAddyAddress
}

function sidepotChoiceTotals(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return sidepotChoiceTotals[arg1][arg2]
}

function numberOfBets() {
    return numberOfBets
}

function sidepotMembers(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < uint256(sidepotMembers[arg1].field_0)
    return uint256(sidepotMembers[arg1][arg2].field_0), 
           uint256(sidepotMembers[arg1][arg2].field_256),
           uint256(sidepotMembers[arg1][arg2].field_512),
           address(sidepotMembers[arg1][arg2].field_768)
}

function stakeToken(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return stakeToken[arg1]
}

function playerDetails(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return playerDetails[arg1][arg2]
}

function stakeWinners(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < uint256(stakeWinners[arg1].field_0)
    return uint256(stakeWinners[arg1][arg2].field_0), address(stakeWinners[arg1][arg2].field_256)
}

function contractBalance() {
    return contractBalance
}

function stakes(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(uint8(stakes[arg1].field_0)), 
           uint256(stakes[arg1].field_256),
           uint256(stakes[arg1].field_512),
           uint256(stakes[arg1].field_768),
           uint256(stakes[arg1].field_1024),
           uint256(stakes[arg1].field_1280),
           uint256(stakes[arg1].field_1536),
           uint256(stakes[arg1].field_1792)
}

function sidepotWinners(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < uint256(sidepotWinners[arg1].field_0)
    return uint256(sidepotWinners[arg1][arg2].field_0), 
           uint256(sidepotWinners[arg1][arg2].field_256),
           uint256(sidepotWinners[arg1][arg2].field_512),
           uint256(sidepotWinners[arg1][arg2].field_768),
           address(sidepotWinners[arg1][arg2].field_1024)
}

function stakeMembers(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < uint256(stakeMembers[arg1].field_0)
    return uint256(stakeMembers[arg1][arg2].field_0), 
           uint256(stakeMembers[arg1][arg2].field_256),
           uint256(stakeMembers[arg1][arg2].field_512),
           address(stakeMembers[arg1][arg2].field_768)
}

function sidepot(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(uint8(sidepot[arg1].field_0)), 
           uint256(sidepot[arg1].field_256),
           uint256(sidepot[arg1].field_512),
           uint256(sidepot[arg1].field_768),
           uint256(sidepot[arg1].field_1024),
           uint256(sidepot[arg1].field_1280),
           uint256(sidepot[arg1].field_1536),
           uint256(sidepot[arg1].field_1792)
}

function BetIDRec(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < betIDRec.length
    return betIDRec[arg1]
}

function timeExpires(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return timeExpires[arg1]
}

function timeCreated(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return timeCreated[arg1]
}

function tokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenBalance[arg1]
}

function _fallback() payable {
    revert
}

function updateUserWhitelistAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if gubAddyAddress != msg.sender:
        revert with 0, 'Sender not authorized'
    stor7 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if gubAddyAddress != msg.sender:
        revert with 0, 'Sender not authorized'
    gubAddyAddress = arg1
}

function updateTokenWhitelistAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if gubAddyAddress != msg.sender:
        revert with 0, 'Sender not authorized'
    stor6 = arg1
}

function checkAllowance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        return 0
    return 1
}

function approveToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getWhitelist() {
    mem[96] = 0xd8a3073200000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    require ext_code.size(stor6)
    staticcall stor6.0xd8a30732 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(this.address) << 64
    require mem[96 len 4], address(this.address) << 64 <= test266151307()
    require mem[96 len 4], address(this.address) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(this.address) << 64 + 96]
    if mem[mem[96 len 4], address(this.address) << 64 + 96] > test266151307():
        revert with 0, 65
    if (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 32 < 0 or ceil32(return_data.size) + (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 128 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    u = 32 * _5
    idx = 0
    while idx < _5:
        _12 = mem[s]
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        u = _12
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    idx = 0
    s = mem[64] + 64
    t = ceil32(return_data.size) + 128
    while idx < _5:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _13 + (32 * _5) + -mem[64] + 64
}

function details(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor20[arg1].field_0):
        if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
            revert with 0, 34
        if bool(stor20[arg1].field_0):
            if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
                revert with 0, 34
            if uint255(stor20[arg1].field_1):
                if 31 < uint255(stor20[arg1].field_1):
                    mem[128] = uint256(stor20[arg1].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor20[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor20[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor20[arg1].field_1)), data=mem[128 len ceil32(uint255(stor20[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor20[arg1].field_8)
        else:
            if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor20[arg1].field_1 % 128:
                if 31 < stor20[arg1].field_1 % 128:
                    mem[128] = uint256(stor20[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor20[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor20[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor20[arg1].field_1)), data=mem[128 len ceil32(uint255(stor20[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor20[arg1].field_8)
        mem[ceil32(uint255(stor20[arg1].field_1)) + 192 len ceil32(uint255(stor20[arg1].field_1))] = mem[128 len ceil32(uint255(stor20[arg1].field_1))]
        if ceil32(uint255(stor20[arg1].field_1)) > uint255(stor20[arg1].field_1):
            mem[ceil32(uint255(stor20[arg1].field_1)) + uint255(stor20[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor20[arg1].field_1)), data=mem[128 len ceil32(uint255(stor20[arg1].field_1))], mem[(2 * ceil32(uint255(stor20[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor20[arg1].field_1))]), 
    if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor20[arg1].field_0):
        if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
            revert with 0, 34
        if uint255(stor20[arg1].field_1):
            if 31 < uint255(stor20[arg1].field_1):
                mem[128] = uint256(stor20[arg1].field_0)
                idx = 128
                s = 0
                while uint255(stor20[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor20[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor20[arg1].field_0 % 128, data=mem[128 len ceil32(stor20[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor20[arg1].field_8)
    else:
        if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor20[arg1].field_1 % 128:
            if 31 < stor20[arg1].field_1 % 128:
                mem[128] = uint256(stor20[arg1].field_0)
                idx = 128
                s = 0
                while stor20[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor20[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor20[arg1].field_0 % 128, data=mem[128 len ceil32(stor20[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor20[arg1].field_8)
    mem[ceil32(stor20[arg1].field_1 % 128) + 192 len ceil32(stor20[arg1].field_1 % 128)] = mem[128 len ceil32(stor20[arg1].field_1 % 128)]
    if ceil32(stor20[arg1].field_1 % 128) > stor20[arg1].field_1 % 128:
        mem[ceil32(stor20[arg1].field_1 % 128) + stor20[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor20[arg1].field_0 % 128, data=mem[128 len ceil32(stor20[arg1].field_1 % 128)], mem[(2 * ceil32(stor20[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor20[arg1].field_1 % 128)]), 
}

function restrictedCards(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor15[arg1].field_0):
        if bool(stor15[arg1].field_0) == uint255(stor15[arg1].field_1) < 32:
            revert with 0, 34
        if bool(stor15[arg1].field_0):
            if bool(stor15[arg1].field_0) == uint255(stor15[arg1].field_1) < 32:
                revert with 0, 34
            if uint255(stor15[arg1].field_1):
                if 31 < uint255(stor15[arg1].field_1):
                    mem[128] = uint256(stor15[arg1].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor15[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor15[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor15[arg1].field_1)), data=mem[128 len ceil32(uint255(stor15[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor15[arg1].field_8)
        else:
            if bool(stor15[arg1].field_0) == stor15[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor15[arg1].field_1 % 128:
                if 31 < stor15[arg1].field_1 % 128:
                    mem[128] = uint256(stor15[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor15[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor15[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor15[arg1].field_1)), data=mem[128 len ceil32(uint255(stor15[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor15[arg1].field_8)
        mem[ceil32(uint255(stor15[arg1].field_1)) + 192 len ceil32(uint255(stor15[arg1].field_1))] = mem[128 len ceil32(uint255(stor15[arg1].field_1))]
        if ceil32(uint255(stor15[arg1].field_1)) > uint255(stor15[arg1].field_1):
            mem[ceil32(uint255(stor15[arg1].field_1)) + uint255(stor15[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor15[arg1].field_1)), data=mem[128 len ceil32(uint255(stor15[arg1].field_1))], mem[(2 * ceil32(uint255(stor15[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor15[arg1].field_1))]), 
    if bool(stor15[arg1].field_0) == stor15[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor15[arg1].field_0):
        if bool(stor15[arg1].field_0) == uint255(stor15[arg1].field_1) < 32:
            revert with 0, 34
        if uint255(stor15[arg1].field_1):
            if 31 < uint255(stor15[arg1].field_1):
                mem[128] = uint256(stor15[arg1].field_0)
                idx = 128
                s = 0
                while uint255(stor15[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor15[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15[arg1].field_0 % 128, data=mem[128 len ceil32(stor15[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor15[arg1].field_8)
    else:
        if bool(stor15[arg1].field_0) == stor15[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor15[arg1].field_1 % 128:
            if 31 < stor15[arg1].field_1 % 128:
                mem[128] = uint256(stor15[arg1].field_0)
                idx = 128
                s = 0
                while stor15[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor15[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15[arg1].field_0 % 128, data=mem[128 len ceil32(stor15[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor15[arg1].field_8)
    mem[ceil32(stor15[arg1].field_1 % 128) + 192 len ceil32(stor15[arg1].field_1 % 128)] = mem[128 len ceil32(stor15[arg1].field_1 % 128)]
    if ceil32(stor15[arg1].field_1 % 128) > stor15[arg1].field_1 % 128:
        mem[ceil32(stor15[arg1].field_1 % 128) + stor15[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor15[arg1].field_0 % 128, data=mem[128 len ceil32(stor15[arg1].field_1 % 128)], mem[(2 * ceil32(stor15[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor15[arg1].field_1 % 128)]), 
}

function collect(bytes32 arg1, uint256[2] arg2, string arg3, uint256 arg4, string arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 224
    require 67 < calldata.size
    require 100 <= calldata.size
    idx = 0
    s = 36
    t = 96
    while idx < 2:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(arg4.length) + 192 < 160 or ceil32(arg4.length) + 192 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[192 len arg4.length] = arg4[all]
    mem[arg4.length + 192] = 0
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    if arg6.length > test266151307():
        revert with 0, 65
    if ceil32(arg6.length) + 224 < 192 or ceil32(arg4.length) + ceil32(arg6.length) + 224 > test266151307():
        revert with 0, 65
    mem[ceil32(arg4.length) + 192] = arg6.length
    require arg6 + arg6.length + 36 <= calldata.size
    require ext_code.size(stor7)
    staticcall stor7.0xb0467deb with:
            gas gas_remaining wei
           args mem[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Incorrect address'
    if msg.value <= 0:
        if arg5 <= 0:
            revert with 0, 'Value required'
    if timeExpires[arg1]:
        if block.timestamp >= timeExpires[arg1]:
            revert with 0, 'Collection closed'
    if stor17[arg1] != sha3(Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 192 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256):
        revert with 0, 'Incorrect secret'
    if not uint8(stakes[arg1].field_0):
        revert with 0, 'Stake must be active'
    if playerDetails[arg1][mem[96]]:
        revert with 0, 'One entry per stake'
    playerDetails[arg1][mem[96]] = msg.sender
    if stor5 != stakeToken[arg1]:
        if mem[96] != mem[128]:
            uint256(sidepotMembers[arg1].field_0)++
            uint256(sidepotMembers[arg1][uint256(sidepotMembers[arg1].field_0)].field_0) = mem[96]
            uint256(sidepotMembers[arg1][uint256(sidepotMembers[arg1].field_0)].field_256) = arg5
            uint256(sidepotMembers[arg1][uint256(sidepotMembers[arg1].field_0)].field_512) = mem[128]
            address(sidepotMembers[arg1][uint256(sidepotMembers[arg1].field_0)].field_768) = msg.sender
            if uint8(sidepot[arg1].field_0):
                uint256(sidepot[arg1].field_1280) = uint256(sidepotMembers[arg1].field_0)
                if sidepotChoiceTotals[arg1][mem[128]] > !arg5:
                    revert with 0, 17
                sidepotChoiceTotals[arg1][mem[128]] += arg5
                if uint256(sidepot[arg1].field_1792) > !arg5:
                    revert with 0, 17
                uint256(sidepot[arg1].field_1792) += arg5
            else:
                uint8(sidepot[arg1].field_0) = 1
                uint256(sidepot[arg1].field_768) = 0
                uint256(sidepot[arg1].field_1024) = 0
                uint256(sidepot[arg1].field_1280) = uint256(sidepotMembers[arg1].field_0)
                uint256(sidepot[arg1].field_1792) = arg5
                if sidepotChoiceTotals[arg1][mem[128]] > !arg5:
                    revert with 0, 17
                sidepotChoiceTotals[arg1][mem[128]] += arg5
        else:
            if mem[96] != uint256(stakes[arg1].field_1024):
                revert with 0, 'Incorrect playerid'
            if not uint256(stakes[arg1].field_1280):
                revert with 0, 18
            if msg.value < uint256(stakes[arg1].field_1792) / uint256(stakes[arg1].field_1280):
                if not uint256(stakes[arg1].field_1280):
                    revert with 0, 18
                if arg5 < uint256(stakes[arg1].field_1792) / uint256(stakes[arg1].field_1280):
                    revert with 0, 'You must send the same amout as the person who made the stake'
            timeExpires[arg1] = cd[196]
            uint256(stakeMembers[arg1].field_0)++
            uint256(stakeMembers[arg1][uint256(stakeMembers[arg1].field_0)].field_0) = mem[96]
            uint256(stakeMembers[arg1][uint256(stakeMembers[arg1].field_0)].field_256) = arg5
            uint256(stakeMembers[arg1][uint256(stakeMembers[arg1].field_0)].field_512) = mem[128]
            address(stakeMembers[arg1][uint256(stakeMembers[arg1].field_0)].field_768) = msg.sender
            uint256(stakes[arg1].field_1280) = uint256(stakeMembers[arg1].field_0)
            if uint256(stakes[arg1].field_1792) > !arg5:
                revert with 0, 17
            uint256(stakes[arg1].field_1792) += arg5
        if stor5 != stakeToken[arg1]:
            require ext_code.size(stakeToken[arg1])
            call stakeToken[arg1].0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if arg6.length:
            if bool(stor20[arg1].field_0):
                if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
                    revert with 0, 34
                if arg6.length:
                    uint256(stor20[arg1][].field_0) = Array(len=arg6.length, data=arg6[all])
                else:
                    uint256(stor20[arg1].field_0) = 0
                    idx = 0
                    while uint255(stor20[arg1].field_1) + 31 / 32 > idx:
                        uint256(stor20[arg1][idx].field_0) = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if arg6.length:
                    uint256(stor20[arg1][].field_0) = Array(len=arg6.length, data=arg6[all])
                else:
                    uint256(stor20[arg1].field_0) = 0
                    idx = 0
                    while stor20[arg1].field_1 % 128 + 31 / 32 > idx:
                        uint256(stor20[arg1][idx].field_0) = 0
                        idx = idx + 1
                        continue 
        if stor5 == stakeToken[arg1]:
            contractBalance = eth.balance(this.address)
        else:
            require ext_code.size(stakeToken[arg1])
            staticcall stakeToken[arg1].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            tokenBalance[stor21[arg1]] = ext_call.return_data[0]
        emit 0x62538557: arg5, stakeToken[arg1], arg1, mem[96]
    else:
        if mem[96] != mem[128]:
            uint256(sidepotMembers[arg1].field_0)++
            uint256(sidepotMembers[arg1][uint256(sidepotMembers[arg1].field_0)].field_0) = mem[96]
            uint256(sidepotMembers[arg1][uint256(sidepotMembers[arg1].field_0)].field_256) = msg.value
            uint256(sidepotMembers[arg1][uint256(sidepotMembers[arg1].field_0)].field_512) = mem[128]
            address(sidepotMembers[arg1][uint256(sidepotMembers[arg1].field_0)].field_768) = msg.sender
            if uint8(sidepot[arg1].field_0):
                uint256(sidepot[arg1].field_1280) = uint256(sidepotMembers[arg1].field_0)
                if sidepotChoiceTotals[arg1][mem[128]] > !msg.value:
                    revert with 0, 17
                sidepotChoiceTotals[arg1][mem[128]] += msg.value
                if uint256(sidepot[arg1].field_1792) > !msg.value:
                    revert with 0, 17
                uint256(sidepot[arg1].field_1792) += msg.value
            else:
                uint8(sidepot[arg1].field_0) = 1
                uint256(sidepot[arg1].field_768) = 0
                uint256(sidepot[arg1].field_1024) = 0
                uint256(sidepot[arg1].field_1280) = uint256(sidepotMembers[arg1].field_0)
                uint256(sidepot[arg1].field_1792) = msg.value
                if sidepotChoiceTotals[arg1][mem[128]] > !msg.value:
                    revert with 0, 17
                sidepotChoiceTotals[arg1][mem[128]] += msg.value
        else:
            if mem[96] != uint256(stakes[arg1].field_1024):
                revert with 0, 'Incorrect playerid'
            if not uint256(stakes[arg1].field_1280):
                revert with 0, 18
            if msg.value < uint256(stakes[arg1].field_1792) / uint256(stakes[arg1].field_1280):
                if not uint256(stakes[arg1].field_1280):
                    revert with 0, 18
                if msg.value < uint256(stakes[arg1].field_1792) / uint256(stakes[arg1].field_1280):
                    revert with 0, 'You must send the same amout as the person who made the stake'
            timeExpires[arg1] = cd[196]
            uint256(stakeMembers[arg1].field_0)++
            uint256(stakeMembers[arg1][uint256(stakeMembers[arg1].field_0)].field_0) = mem[96]
            uint256(stakeMembers[arg1][uint256(stakeMembers[arg1].field_0)].field_256) = msg.value
            uint256(stakeMembers[arg1][uint256(stakeMembers[arg1].field_0)].field_512) = mem[128]
            address(stakeMembers[arg1][uint256(stakeMembers[arg1].field_0)].field_768) = msg.sender
            uint256(stakes[arg1].field_1280) = uint256(stakeMembers[arg1].field_0)
            if uint256(stakes[arg1].field_1792) > !msg.value:
                revert with 0, 17
            uint256(stakes[arg1].field_1792) += msg.value
        if stor5 != stakeToken[arg1]:
            require ext_code.size(stakeToken[arg1])
            call stakeToken[arg1].0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), msg.value
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if arg6.length:
            if bool(stor20[arg1].field_0):
                if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
                    revert with 0, 34
                if arg6.length:
                    uint256(stor20[arg1][].field_0) = Array(len=arg6.length, data=arg6[all])
                else:
                    uint256(stor20[arg1].field_0) = 0
                    idx = 0
                    while uint255(stor20[arg1].field_1) + 31 / 32 > idx:
                        uint256(stor20[arg1][idx].field_0) = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if arg6.length:
                    uint256(stor20[arg1][].field_0) = Array(len=arg6.length, data=arg6[all])
                else:
                    uint256(stor20[arg1].field_0) = 0
                    idx = 0
                    while stor20[arg1].field_1 % 128 + 31 / 32 > idx:
                        uint256(stor20[arg1][idx].field_0) = 0
                        idx = idx + 1
                        continue 
        if stor5 == stakeToken[arg1]:
            contractBalance = eth.balance(this.address)
        else:
            require ext_code.size(stakeToken[arg1])
            staticcall stakeToken[arg1].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            tokenBalance[stor21[arg1]] = ext_call.return_data[0]
        emit 0x62538557: msg.value, stakeToken[arg1], arg1, mem[96]
}

function returnSidepot(bytes32 arg1, uint256 arg2, address arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if msg.sender != this.address:
        revert with 0, 'only contract can call'
    if var22001 < 1:
        revert with 0, 17
    if var26002 > var26001:
        if var40001 < 1:
            revert with 0, 17
        if var44002 > var44001:
            uint8(sidepot[arg1].field_0) = 0
            uint256(sidepot[arg1].field_256) = 0
            uint256(sidepot[arg1].field_512) = 0
            uint256(sidepot[arg1].field_768) = 0
            uint256(sidepot[arg1].field_1024) = 0
            uint256(sidepot[arg1].field_1280) = 0
            uint256(sidepot[arg1].field_1536) = 0
            uint256(sidepot[arg1].field_1792) = 0
            uint256(sidepotMembers[arg1].field_0) = 0
            idx = 0
            while 4 * uint256(sidepotMembers[arg1].field_0) > idx:
                uint256(sidepotMembers[arg1][idx].field_0) = 0
                uint256(sidepotMembers[arg1][idx].field_256) = 0
                uint256(sidepotMembers[arg1][idx].field_512) = 0
                address(sidepotMembers[arg1][idx].field_768) = 0
                idx = idx + 4
                continue 
            return 0
        if stor5 != stakeToken[arg1]:
            if not var61001:
                if var54001 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                if var56003 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                call var58004 with:
                   value uint256(stor[(4 * var58001) + sha3(var58002) + 1]) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sidepotChoiceTotals[arg1][uint256(stor8[arg1].field_768)] = 0
                sidepotChoiceTotals[arg1][uint256(stor8[arg1].field_1024)] = 0
                if var62001 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                address(stor[var64004][uint256(stor[sha3(var64002) + (4 * var64001)])]) = 0
                if var66001 == -1:
                    revert with 0, 17
                # nil
            else:
                if var62001 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                mem[32] = 12
                if var64006 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                mem[0] = var66002
                mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[var68001] = this.address
                mem[var68001 + 32] = address(var68003)
                mem[var68001 + 64] = var68002
                require ext_code.size(arg3)
                call arg3.mem[var72004 len 4] with:
                     gas gas_remaining wei
                    args mem[var72004 + 4 len var72005 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                # nil
        else:
            if not var52001:
                if var52002 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                if var52002 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                call address(sidepotMembers[arg1][var52002].field_768) with:
                   value uint256(sidepotMembers[arg1][var52002].field_256) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sidepotChoiceTotals[arg1][uint256(stor8[arg1].field_768)] = 0
                sidepotChoiceTotals[arg1][uint256(stor8[arg1].field_1024)] = 0
                if var67001 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                address(stor[var69004][uint256(stor[sha3(var69002) + (4 * var69001)])]) = 0
                if var71001 == -1:
                    revert with 0, 17
                if var79001 < 1:
                    revert with 0, 17
                # nil
            else:
                if var63001 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                mem[32] = 12
                if var65006 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                mem[0] = var67002
                mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[var69001] = this.address
                mem[var69001 + 32] = address(var69003)
                mem[var69001 + 64] = var69002
                require ext_code.size(arg3)
                call arg3.mem[var73004 len 4] with:
                     gas gas_remaining wei
                    args mem[var73004 + 4 len var73005 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                # nil
    else:
        if var28001 >= uint256(sidepotMembers[arg1].field_0):
            revert with 0, 50
        if arg2 == uint256(stor[(4 * var30001) + sha3(var30002)]):
            if var30003 >= uint256(sidepotMembers[arg1].field_0):
                revert with 0, 50
            if var30003 >= uint256(sidepotMembers[arg1].field_0):
                revert with 0, 50
            if stor5 == stakeToken[arg1]:
                call address(sidepotMembers[arg1][var30003].field_768) with:
                   value uint256(sidepotMembers[arg1][var30003].field_256) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(arg3)
                call arg3.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), address(sidepotMembers[arg1][var30003].field_768), uint256(sidepotMembers[arg1][var30003].field_256)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if var30003 >= uint256(sidepotMembers[arg1].field_0):
                revert with 0, 50
            if uint256(sidepot[arg1].field_1792) < uint256(sidepotMembers[arg1][var30003].field_256):
                revert with 0, 17
            uint256(sidepot[arg1].field_1792) -= uint256(sidepotMembers[arg1][var30003].field_256)
            if var30003 >= uint256(sidepotMembers[arg1].field_0):
                revert with 0, 50
            if var30003 >= uint256(sidepotMembers[arg1].field_0):
                revert with 0, 50
            if sidepotChoiceTotals[arg1][uint256(stor12[arg1][var30003].field_512)] < uint256(sidepotMembers[arg1][var30003].field_256):
                revert with 0, 17
            if var30003 >= uint256(sidepotMembers[arg1].field_0):
                revert with 0, 50
            sidepotChoiceTotals[arg1][uint256(stor12[arg1][var30003].field_512)] -= uint256(sidepotMembers[arg1][var30003].field_256)
            if var30003 >= uint256(sidepotMembers[arg1].field_0):
                revert with 0, 50
            uint256(sidepotMembers[arg1][var30003].field_0) = 0
            uint256(sidepotMembers[arg1][var30003].field_256) = 0
            uint256(sidepotMembers[arg1][var30003].field_512) = 0
            address(sidepotMembers[arg1][var30003].field_768) = 0
            playerDetails[arg1][arg2] = 0
            if uint256(sidepotMembers[arg1].field_0) < 1:
                revert with 0, 17
            if uint256(sidepotMembers[arg1].field_0) - 1 >= uint256(sidepotMembers[arg1].field_0):
                revert with 0, 50
            if var30003 >= uint256(sidepotMembers[arg1].field_0):
                revert with 0, 50
            uint256(sidepotMembers[arg1][var30003].field_0) = uint256(sidepotMembers[arg1][uint256(sidepotMembers[arg1].field_0) - 1].field_0)
            uint256(sidepotMembers[arg1][var30003].field_256) = uint256(sidepotMembers[arg1][uint256(sidepotMembers[arg1].field_0) - 1].field_256)
            uint256(sidepotMembers[arg1][var30003].field_512) = uint256(sidepotMembers[arg1][uint256(sidepotMembers[arg1].field_0) - 1].field_512)
            address(sidepotMembers[arg1][var30003].field_768) = address(sidepotMembers[arg1][uint256(sidepotMembers[arg1].field_0) - 1].field_768)
            if not uint256(sidepotMembers[arg1].field_0):
                revert with 0, 49
            uint256(sidepotMembers[arg1][uint256(sidepotMembers[arg1].field_0) - 1].field_0) = 0
            uint256(sidepotMembers[arg1][uint256(sidepotMembers[arg1].field_0) - 1].field_256) = 0
            uint256(sidepotMembers[arg1][uint256(sidepotMembers[arg1].field_0) - 1].field_512) = 0
            address(sidepotMembers[arg1][uint256(sidepotMembers[arg1].field_0) - 1].field_768) = 0
            uint256(sidepotMembers[arg1].field_0)--
            uint256(sidepot[arg1].field_1280) = uint256(sidepotMembers[arg1].field_0)
            return 1
        if var34001 == -1:
            revert with 0, 17
        if var42001 < 1:
            revert with 0, 17
        if var46002 > var46001:
            if var60001 < 1:
                revert with 0, 17
            if var64002 <= var64001:
                # nil
            else:
                uint8(sidepot[arg1].field_0) = 0
                uint256(sidepot[arg1].field_256) = 0
                uint256(sidepot[arg1].field_512) = 0
                uint256(sidepot[arg1].field_768) = 0
                uint256(sidepot[arg1].field_1024) = 0
                uint256(sidepot[arg1].field_1280) = 0
                uint256(sidepot[arg1].field_1536) = 0
                uint256(sidepot[arg1].field_1792) = 0
                uint256(sidepotMembers[arg1].field_0) = 0
                idx = 0
                while 4 * uint256(sidepotMembers[arg1].field_0) > idx:
                    uint256(sidepotMembers[arg1][idx].field_0) = 0
                    uint256(sidepotMembers[arg1][idx].field_256) = 0
                    uint256(sidepotMembers[arg1][idx].field_512) = 0
                    address(sidepotMembers[arg1][idx].field_768) = 0
                    idx = idx + 4
                    continue 
                return 0
        else:
            if var48001 >= uint256(sidepotMembers[arg1].field_0):
                revert with 0, 50
            if arg2 != uint256(stor[(4 * var50001) + sha3(var50002)]):
                if var54001 == -1:
                    revert with 0, 17
                # nil
            else:
                if var50003 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                if var50003 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                if stor5 == stakeToken[arg1]:
                    call address(sidepotMembers[arg1][var50003].field_768) with:
                       value uint256(sidepotMembers[arg1][var50003].field_256) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(arg3)
                    call arg3.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), address(sidepotMembers[arg1][var50003].field_768), uint256(sidepotMembers[arg1][var50003].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if var50003 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                if uint256(sidepot[arg1].field_1792) < uint256(sidepotMembers[arg1][var50003].field_256):
                    revert with 0, 17
                uint256(sidepot[arg1].field_1792) -= uint256(sidepotMembers[arg1][var50003].field_256)
                if var50003 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                if var50003 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                if sidepotChoiceTotals[arg1][uint256(stor12[arg1][var50003].field_512)] < uint256(sidepotMembers[arg1][var50003].field_256):
                    revert with 0, 17
                if var50003 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                sidepotChoiceTotals[arg1][uint256(stor12[arg1][var50003].field_512)] -= uint256(sidepotMembers[arg1][var50003].field_256)
                if var50003 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                uint256(sidepotMembers[arg1][var50003].field_0) = 0
                uint256(sidepotMembers[arg1][var50003].field_256) = 0
                uint256(sidepotMembers[arg1][var50003].field_512) = 0
                address(sidepotMembers[arg1][var50003].field_768) = 0
                playerDetails[arg1][arg2] = 0
                if uint256(sidepotMembers[arg1].field_0) < 1:
                    revert with 0, 17
                if uint256(sidepotMembers[arg1].field_0) - 1 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                if var50003 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                uint256(sidepotMembers[arg1][var50003].field_0) = uint256(sidepotMembers[arg1][uint256(sidepotMembers[arg1].field_0) - 1].field_0)
                uint256(sidepotMembers[arg1][var50003].field_256) = uint256(sidepotMembers[arg1][uint256(sidepotMembers[arg1].field_0) - 1].field_256)
                uint256(sidepotMembers[arg1][var50003].field_512) = uint256(sidepotMembers[arg1][uint256(sidepotMembers[arg1].field_0) - 1].field_512)
                address(sidepotMembers[arg1][var50003].field_768) = address(sidepotMembers[arg1][uint256(sidepotMembers[arg1].field_0) - 1].field_768)
                if not uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 49
                uint256(sidepotMembers[arg1][uint256(sidepotMembers[arg1].field_0) - 1].field_0) = 0
                uint256(sidepotMembers[arg1][uint256(sidepotMembers[arg1].field_0) - 1].field_256) = 0
                uint256(sidepotMembers[arg1][uint256(sidepotMembers[arg1].field_0) - 1].field_512) = 0
                address(sidepotMembers[arg1][uint256(sidepotMembers[arg1].field_0) - 1].field_768) = 0
                uint256(sidepotMembers[arg1].field_0)--
                uint256(sidepot[arg1].field_1280) = uint256(sidepotMembers[arg1].field_0)
                return 1
}

function refund(bytes32 arg1, uint256 arg2, string arg3, bool arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(arg3.length) + 128 < 96 or ceil32(arg3.length) + 128 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 == arg4
    mem[ceil32(arg3.length) + 132] = arg2
    require ext_code.size(stor7)
    staticcall stor7.0xb0467deb with:
            gas gas_remaining wei
           args arg2
    mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Incorrect address'
    if timeExpires[arg1]:
        if block.timestamp >= timeExpires[arg1]:
            revert with 0, 'Collection closed'
    mem[ceil32(arg3.length) + ceil32(return_data.size) + 160 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if stor17[arg1] != sha3(Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256):
        revert with 0, 'Incorrect secret'
    if not arg4:
        if arg2 == uint256(stakes[arg1].field_768):
            if 2 <= uint256(stakes[arg1].field_1280):
                revert with 0, 'Cannot refund an active stake'
        else:
            if arg2 == uint256(stakes[arg1].field_1024):
                if 2 <= uint256(stakes[arg1].field_1280):
                    revert with 0, 'Cannot refund an active stake'
    if stor5 == stakeToken[arg1]:
        if not uint256(sidepotMembers[arg1].field_0):
            mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 196] = arg4
            mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 228] = stakeToken[arg1]
            mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 260] = arg2
            require ext_code.size(this.address)
            call this.address.0xe3c3cd53 with:
                 gas gas_remaining wei
                args arg1, arg4, stakeToken[arg1], arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if stor5 == stakeToken[arg1]:
                contractBalance = eth.balance(this.address)
                emit 0x3c314cec: arg2, 1, arg1
            else:
                mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 164] = this.address
                require ext_code.size(stakeToken[arg1])
                staticcall stakeToken[arg1].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                tokenBalance[stor21[arg1]] = ext_call.return_data[0]
                mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160] = arg2
                mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 192] = 1
                emit 0x3c314cec: mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 64], arg1
        else:
            mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 164] = arg1
            mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 196] = arg2
            mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 228] = stakeToken[arg1]
            require ext_code.size(this.address)
            call this.address.returnSidepot(bytes32 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args arg1, arg2, stakeToken[arg1]
            mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 164] = arg1
                mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 196] = arg4
                mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 228] = stakeToken[arg1]
                mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 260] = arg2
                require ext_code.size(this.address)
                call this.address.0xe3c3cd53 with:
                     gas gas_remaining wei
                    args mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if stor5 == stakeToken[arg1]:
                    contractBalance = eth.balance(this.address)
                    mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160] = arg2
                    mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 192] = 1
                    emit 0x3c314cec: mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 64], arg1
                else:
                    mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 164] = this.address
                    require ext_code.size(stakeToken[arg1])
                    staticcall stakeToken[arg1].0x70a08231 with:
                            gas gas_remaining wei
                           args mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 32]
                    mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    tokenBalance[stor21[arg1]] = ext_call.return_data[0]
                    mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 160] = arg2
                    mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 192] = 1
                    emit 0x3c314cec: mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 64], arg1
    else:
        mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 164] = this.address
        mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 196] = this.address
        require ext_code.size(stakeToken[arg1])
        staticcall stakeToken[arg1].0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), this.address
        mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 164] = this.address
        require ext_code.size(stakeToken[arg1])
        staticcall stakeToken[arg1].0x70a08231 with:
                gas gas_remaining wei
               args mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 32]
        mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 164] = arg1
            if not uint256(sidepotMembers[arg1].field_0):
                mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 196] = arg4
                mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 228] = stakeToken[arg1]
                mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 260] = arg2
                require ext_code.size(this.address)
                call this.address.0xe3c3cd53 with:
                     gas gas_remaining wei
                    args mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 164 len (5 * ceil32(return_data.size)) + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if stor5 == stakeToken[arg1]:
                    contractBalance = eth.balance(this.address)
                    mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 160] = arg2
                    mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 192] = 1
                    emit 0x3c314cec: mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 160 len (5 * ceil32(return_data.size)) + 64], arg1
                else:
                    mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 164] = this.address
                    require ext_code.size(stakeToken[arg1])
                    staticcall stakeToken[arg1].0x70a08231 with:
                            gas gas_remaining wei
                           args mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 164 len (5 * ceil32(return_data.size)) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    tokenBalance[stor21[arg1]] = ext_call.return_data[0]
                    emit 0x3c314cec: arg2, 1, mem[arg3.length + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)], arg1
            else:
                mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 196] = arg2
                mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 228] = stakeToken[arg1]
                require ext_code.size(this.address)
                call this.address.returnSidepot(bytes32 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 164 len (5 * ceil32(return_data.size)) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    mem[arg3.length + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 196] = arg4
                    mem[arg3.length + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 228] = stakeToken[arg1]
                    mem[arg3.length + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 260] = arg2
                    require ext_code.size(this.address)
                    call this.address.0xe3c3cd53 with:
                         gas gas_remaining wei
                        args arg1, arg4, stakeToken[arg1], arg2, mem[arg3.length + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 292 len 9 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if stor5 == stakeToken[arg1]:
                        contractBalance = eth.balance(this.address)
                        emit 0x3c314cec: arg2, 1, mem[arg3.length + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 224 len 9 * ceil32(return_data.size)], arg1
                    else:
                        require ext_code.size(stakeToken[arg1])
                        staticcall stakeToken[arg1].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address), mem[arg3.length + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        tokenBalance[stor21[arg1]] = ext_call.return_data[0]
                        emit 0x3c314cec: arg2, 1, arg1
        else:
            mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 164] = this.address
            require ext_code.size(stakeToken[arg1])
            staticcall stakeToken[arg1].0x70a08231 with:
                    gas gas_remaining wei
                   args mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 164 len (5 * ceil32(return_data.size)) + 32]
            mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[arg3.length + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 164] = this.address
            mem[arg3.length + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
            require ext_code.size(stakeToken[arg1])
            call stakeToken[arg1].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), ext_call.return_data[0], mem[arg3.length + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
            mem[arg3.length + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not uint256(sidepotMembers[arg1].field_0):
                mem[arg3.length + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 196] = arg4
                mem[arg3.length + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 228] = stakeToken[arg1]
                mem[arg3.length + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 260] = arg2
                require ext_code.size(this.address)
                call this.address.0xe3c3cd53 with:
                     gas gas_remaining wei
                    args arg1, arg4, stakeToken[arg1], arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if stor5 == stakeToken[arg1]:
                    contractBalance = eth.balance(this.address)
                    emit 0x3c314cec: arg2, 1, arg1
                else:
                    mem[arg3.length + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 164] = this.address
                    require ext_code.size(stakeToken[arg1])
                    staticcall stakeToken[arg1].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[arg3.length + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    tokenBalance[stor21[arg1]] = ext_call.return_data[0]
                    mem[arg3.length + ceil32(arg3.length) + (8 * ceil32(return_data.size)) + 160] = arg2
                    mem[arg3.length + ceil32(arg3.length) + (8 * ceil32(return_data.size)) + 192] = 1
                    emit 0x3c314cec: mem[arg3.length + ceil32(arg3.length) + (8 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 64], arg1
            else:
                mem[arg3.length + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 164] = arg1
                mem[arg3.length + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 196] = arg2
                mem[arg3.length + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 228] = stakeToken[arg1]
                require ext_code.size(this.address)
                call this.address.returnSidepot(bytes32 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args arg1, arg2, stakeToken[arg1]
                mem[arg3.length + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    mem[arg3.length + ceil32(arg3.length) + (8 * ceil32(return_data.size)) + 164] = arg1
                    mem[arg3.length + ceil32(arg3.length) + (8 * ceil32(return_data.size)) + 196] = arg4
                    mem[arg3.length + ceil32(arg3.length) + (8 * ceil32(return_data.size)) + 228] = stakeToken[arg1]
                    mem[arg3.length + ceil32(arg3.length) + (8 * ceil32(return_data.size)) + 260] = arg2
                    require ext_code.size(this.address)
                    call this.address.0xe3c3cd53 with:
                         gas gas_remaining wei
                        args mem[arg3.length + ceil32(arg3.length) + (8 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if stor5 == stakeToken[arg1]:
                        contractBalance = eth.balance(this.address)
                        mem[arg3.length + ceil32(arg3.length) + (8 * ceil32(return_data.size)) + 160] = arg2
                        mem[arg3.length + ceil32(arg3.length) + (8 * ceil32(return_data.size)) + 192] = 1
                        emit 0x3c314cec: mem[arg3.length + ceil32(arg3.length) + (8 * ceil32(return_data.size)) + 160 len ceil32(return_data.size) + 64], arg1
                    else:
                        mem[arg3.length + ceil32(arg3.length) + (8 * ceil32(return_data.size)) + 164] = this.address
                        require ext_code.size(stakeToken[arg1])
                        staticcall stakeToken[arg1].0x70a08231 with:
                                gas gas_remaining wei
                               args mem[arg3.length + ceil32(arg3.length) + (8 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        tokenBalance[stor21[arg1]] = ext_call.return_data[0]
                        emit 0x3c314cec: arg2, 1, mem[arg3.length + ceil32(arg3.length) + (10 * ceil32(return_data.size)) + 224 len 17 * ceil32(return_data.size)], arg1
}

function sub_67f82b00(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if msg.sender != this.address:
        revert with 0, 'only contract can call'
    mem[96] = 0xd8a3073200000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    require ext_code.size(stor6)
    staticcall stor6.0xd8a30732 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96 len 4], address(this.address) << 64
    require mem[96 len 4], address(this.address) << 64 <= test266151307()
    require mem[96 len 4], address(this.address) << 64 + 127 < return_data.size + 96
    _7 = mem[mem[96 len 4], address(this.address) << 64 + 96]
    if mem[mem[96 len 4], address(this.address) << 64 + 96] > test266151307():
        revert with 0, 65
    if (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 32 < 0 or ceil32(return_data.size) + (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 128 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _7
    require return_data.size >= _6 + (32 * _7) + 32
    s = _6 + 128
    t = ceil32(return_data.size) + 128
    u = 32 * _7
    idx = 0
    while idx < _7:
        _276 = mem[s]
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        u = _276
        idx = idx + 1
        continue 
    if _7:
        if var43001 < 1:
            revert with 0, 17
        if var47002 > var47001:
            if 750 * 10^18 >= uint256(stakes[arg1].field_1792):
                if uint256(stakes[arg1].field_1792) > 0x2aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
                    revert with 0, 17
                uint256(stakes[arg1].field_256) = 6 * uint256(stakes[arg1].field_1792) / 100
                if var66001 < 1:
                    revert with 0, 17
                if var70002 <= var70001:
                    if var72001 >= uint256(stakeMembers[arg1].field_0):
                        revert with 0, 50
                    if arg3 == uint256(stor[(4 * var74001) + sha3(var74002) + 2]):
                        mem[64] = mem[64] + 64
                        if var76001 >= uint256(stakeMembers[arg1].field_0):
                            revert with 0, 50
                        mem[0] = var78002
                        mem[var78003] = uint256(stor[(4 * var78001) + sha3(var78002)])
                        mem[32] = 10
                        if var78006 >= uint256(stakeMembers[arg1].field_0):
                            revert with 0, 50
                        mem[var78003 + 32] = address(stakeMembers[arg1][var78006].field_768)
                        uint256(stor[var78005])++
                        mem[0] = var78005
                        uint256(stor[(2 * uint256(stor[var78005])) + sha3(var78005)]) = mem[var78004]
                        address(stor[(2 * uint256(stor[var78005])) + sha3(var78005) + 1]) = mem[var78004 + 44 len 20]
                        if var80001 == -1:
                            revert with 0, 17
                        if var88001 < 1:
                            revert with 0, 17
                        # nil
                    else:
                        if var78001 == -1:
                            revert with 0, 17
                        if var86001 < 1:
                            revert with 0, 17
                        if var90002 <= var90001:
                            # nil
                        else:
                            uint256(stakes[arg1].field_1536) = uint256(stakeWinners[arg1].field_0)
                            if uint256(stakes[arg1].field_1792) < uint256(stakes[arg1].field_256):
                                revert with 0, 17
                            uint256(stakes[arg1].field_1792) -= uint256(stakes[arg1].field_256)
                            if not uint256(stakes[arg1].field_1536):
                                revert with 0, 18
                            uint256(stakes[arg1].field_512) = uint256(stakes[arg1].field_1792) - uint256(stakes[arg1].field_256) / uint256(stakes[arg1].field_1536)
                            if stor5 == stakeToken[arg1]:
                                call gubAddyAddress with:
                                   value uint256(stakes[arg1].field_256) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                # nil
                            else:
                                mem[0] = arg1
                                mem[32] = 8
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = gubAddyAddress
                                mem[mem[64] + 68] = uint256(stakes[arg1].field_256)
                                require ext_code.size(address(arg2))
                                call address(arg2).0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), gubAddyAddress, uint256(stakes[arg1].field_256)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14213 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_14213] == bool(mem[_14213])
                                # nil
                else:
                    uint256(stakes[arg1].field_1536) = uint256(stakeWinners[arg1].field_0)
                    if uint256(stakes[arg1].field_1792) < uint256(stakes[arg1].field_256):
                        revert with 0, 17
                    uint256(stakes[arg1].field_1792) -= uint256(stakes[arg1].field_256)
                    if not uint256(stakes[arg1].field_1536):
                        revert with 0, 18
                    uint256(stakes[arg1].field_512) = uint256(stakes[arg1].field_1792) - uint256(stakes[arg1].field_256) / uint256(stakes[arg1].field_1536)
                    if stor5 == stakeToken[arg1]:
                        call gubAddyAddress with:
                           value uint256(stakes[arg1].field_256) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if var91001 < 1:
                            revert with 0, 17
                        if var95002 > var95001:
                        if stor5 != stakeToken[arg1]:
                            if var112001:
                                if var113001 >= uint256(stakeWinners[arg1].field_0):
                                    revert with 0, 50
                                # nil
                            else:
                                if var105001 >= uint256(stakeWinners[arg1].field_0):
                                    revert with 0, 50
                                call address(stor[(2 * var107001) + sha3(var107002) + 1]) with:
                                   value uint256(stakes[arg1].field_512) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                # nil
                        else:
                            if var103001:
                                if var114001 >= uint256(stakeWinners[arg1].field_0):
                                    revert with 0, 50
                                # nil
                            else:
                                if var103002 >= uint256(stakeWinners[arg1].field_0):
                                    revert with 0, 50
                                call address(stakeWinners[arg1][var103002].field_256) with:
                                   value uint256(stakes[arg1].field_512) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if var119001 == -1:
                                    revert with 0, 17
                                # nil
                    else:
                        mem[0] = arg1
                        mem[32] = 8
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = gubAddyAddress
                        mem[mem[64] + 68] = uint256(stakes[arg1].field_256)
                        require ext_code.size(address(arg2))
                        call address(arg2).0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), gubAddyAddress, uint256(stakes[arg1].field_256)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3708 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3708] == bool(mem[_3708])
                        if var99001 < 1:
                            revert with 0, 17
                        if var103002 > var103001:
                        if stor5 != stakeToken[arg1]:
                            if var120001:
                                if var121001 >= uint256(stakeWinners[arg1].field_0):
                                    revert with 0, 50
                                # nil
                            else:
                                if var113001 >= uint256(stakeWinners[arg1].field_0):
                                    revert with 0, 50
                                call address(stor[(2 * var115001) + sha3(var115002) + 1]) with:
                                   value uint256(stakes[arg1].field_512) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                # nil
                        else:
                            if var111001:
                                if var122001 >= uint256(stakeWinners[arg1].field_0):
                                    revert with 0, 50
                                # nil
                            else:
                                if var111002 >= uint256(stakeWinners[arg1].field_0):
                                    revert with 0, 50
                                call address(stakeWinners[arg1][var111002].field_256) with:
                                   value uint256(stakes[arg1].field_512) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if var127001 == -1:
                                    revert with 0, 17
                                # nil
            else:
                if uint256(stakes[arg1].field_1792) > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                uint256(stakes[arg1].field_256) = 4 * uint256(stakes[arg1].field_1792) / 100
                if var66001 < 1:
                    revert with 0, 17
                if var70002 <= var70001:
                    if var72001 >= uint256(stakeMembers[arg1].field_0):
                        revert with 0, 50
                    if arg3 == uint256(stor[(4 * var74001) + sha3(var74002) + 2]):
                        mem[64] = mem[64] + 64
                        if var76001 >= uint256(stakeMembers[arg1].field_0):
                            revert with 0, 50
                        mem[0] = var78002
                        mem[var78003] = uint256(stor[(4 * var78001) + sha3(var78002)])
                        mem[32] = 10
                        if var78006 >= uint256(stakeMembers[arg1].field_0):
                            revert with 0, 50
                        mem[var78003 + 32] = address(stakeMembers[arg1][var78006].field_768)
                        uint256(stor[var78005])++
                        mem[0] = var78005
                        uint256(stor[(2 * uint256(stor[var78005])) + sha3(var78005)]) = mem[var78004]
                        address(stor[(2 * uint256(stor[var78005])) + sha3(var78005) + 1]) = mem[var78004 + 44 len 20]
                        if var80001 == -1:
                            revert with 0, 17
                        if var88001 < 1:
                            revert with 0, 17
                        # nil
                    else:
                        if var78001 == -1:
                            revert with 0, 17
                        if var86001 < 1:
                            revert with 0, 17
                        if var90002 <= var90001:
                            # nil
                        else:
                            uint256(stakes[arg1].field_1536) = uint256(stakeWinners[arg1].field_0)
                            if uint256(stakes[arg1].field_1792) < uint256(stakes[arg1].field_256):
                                revert with 0, 17
                            uint256(stakes[arg1].field_1792) -= uint256(stakes[arg1].field_256)
                            if not uint256(stakes[arg1].field_1536):
                                revert with 0, 18
                            uint256(stakes[arg1].field_512) = uint256(stakes[arg1].field_1792) - uint256(stakes[arg1].field_256) / uint256(stakes[arg1].field_1536)
                            if stor5 == stakeToken[arg1]:
                                call gubAddyAddress with:
                                   value uint256(stakes[arg1].field_256) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                # nil
                            else:
                                mem[0] = arg1
                                mem[32] = 8
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = gubAddyAddress
                                mem[mem[64] + 68] = uint256(stakes[arg1].field_256)
                                require ext_code.size(address(arg2))
                                call address(arg2).0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), gubAddyAddress, uint256(stakes[arg1].field_256)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14228 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_14228] == bool(mem[_14228])
                                # nil
                else:
                    uint256(stakes[arg1].field_1536) = uint256(stakeWinners[arg1].field_0)
                    if uint256(stakes[arg1].field_1792) < uint256(stakes[arg1].field_256):
                        revert with 0, 17
                    uint256(stakes[arg1].field_1792) -= uint256(stakes[arg1].field_256)
                    if not uint256(stakes[arg1].field_1536):
                        revert with 0, 18
                    uint256(stakes[arg1].field_512) = uint256(stakes[arg1].field_1792) - uint256(stakes[arg1].field_256) / uint256(stakes[arg1].field_1536)
                    if stor5 == stakeToken[arg1]:
                        call gubAddyAddress with:
                           value uint256(stakes[arg1].field_256) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if var91001 < 1:
                            revert with 0, 17
                        if var95002 > var95001:
                        if stor5 != stakeToken[arg1]:
                            if var112001:
                                if var113001 >= uint256(stakeWinners[arg1].field_0):
                                    revert with 0, 50
                                # nil
                            else:
                                if var105001 >= uint256(stakeWinners[arg1].field_0):
                                    revert with 0, 50
                                call address(stor[(2 * var107001) + sha3(var107002) + 1]) with:
                                   value uint256(stakes[arg1].field_512) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                # nil
                        else:
                            if var103001:
                                if var114001 >= uint256(stakeWinners[arg1].field_0):
                                    revert with 0, 50
                                # nil
                            else:
                                if var103002 >= uint256(stakeWinners[arg1].field_0):
                                    revert with 0, 50
                                call address(stakeWinners[arg1][var103002].field_256) with:
                                   value uint256(stakes[arg1].field_512) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if var119001 == -1:
                                    revert with 0, 17
                                # nil
                    else:
                        mem[0] = arg1
                        mem[32] = 8
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = gubAddyAddress
                        mem[mem[64] + 68] = uint256(stakes[arg1].field_256)
                        require ext_code.size(address(arg2))
                        call address(arg2).0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), gubAddyAddress, uint256(stakes[arg1].field_256)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3710 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3710] == bool(mem[_3710])
                        if var99001 < 1:
                            revert with 0, 17
                        if var103002 > var103001:
                        if stor5 != stakeToken[arg1]:
                            if var120001:
                                if var121001 >= uint256(stakeWinners[arg1].field_0):
                                    revert with 0, 50
                                # nil
                            else:
                                if var113001 >= uint256(stakeWinners[arg1].field_0):
                                    revert with 0, 50
                                call address(stor[(2 * var115001) + sha3(var115002) + 1]) with:
                                   value uint256(stakes[arg1].field_512) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                # nil
                        else:
                            if var111001:
                                if var122001 >= uint256(stakeWinners[arg1].field_0):
                                    revert with 0, 50
                                # nil
                            else:
                                if var111002 >= uint256(stakeWinners[arg1].field_0):
                                    revert with 0, 50
                                call address(stakeWinners[arg1][var111002].field_256) with:
                                   value uint256(stakes[arg1].field_512) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if var127001 == -1:
                                    revert with 0, 17
                                # nil
        else:
            if var49001 >= _7:
                revert with 0, 50
            if address(arg2) != mem[(32 * var51001) + ceil32(return_data.size) + 140 len 20]:
                if var55001 == -1:
                    revert with 0, 17
                if var63001 < 1:
                    revert with 0, 17
                if var67002 <= var67001:
                    if var69001 >= _7:
                        revert with 0, 50
                    if address(arg2) != mem[(32 * var71001) + ceil32(return_data.size) + 140 len 20]:
                        if var75001 == -1:
                            revert with 0, 17
                        # nil
                    else:
                        if uint256(stakes[arg1].field_1792) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        uint256(stakes[arg1].field_256) = 2 * uint256(stakes[arg1].field_1792) / 100
                        if var89001 < 1:
                            revert with 0, 17
                        # nil
                else:
                    if 750 * 10^18 >= uint256(stakes[arg1].field_1792):
                        if uint256(stakes[arg1].field_1792) > 0x2aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
                            revert with 0, 17
                        uint256(stakes[arg1].field_256) = 6 * uint256(stakes[arg1].field_1792) / 100
                        if var86001 < 1:
                            revert with 0, 17
                        if var90002 <= var90001:
                            # nil
                        else:
                            uint256(stakes[arg1].field_1536) = uint256(stakeWinners[arg1].field_0)
                            if uint256(stakes[arg1].field_1792) < uint256(stakes[arg1].field_256):
                                revert with 0, 17
                            uint256(stakes[arg1].field_1792) -= uint256(stakes[arg1].field_256)
                            if not uint256(stakes[arg1].field_1536):
                                revert with 0, 18
                            uint256(stakes[arg1].field_512) = uint256(stakes[arg1].field_1792) - uint256(stakes[arg1].field_256) / uint256(stakes[arg1].field_1536)
                            if stor5 == stakeToken[arg1]:
                                call gubAddyAddress with:
                                   value uint256(stakes[arg1].field_256) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                # nil
                            else:
                                mem[0] = arg1
                                mem[32] = 8
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = gubAddyAddress
                                mem[mem[64] + 68] = uint256(stakes[arg1].field_256)
                                require ext_code.size(address(arg2))
                                call address(arg2).0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), gubAddyAddress, uint256(stakes[arg1].field_256)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14231 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_14231] == bool(mem[_14231])
                                # nil
                    else:
                        if uint256(stakes[arg1].field_1792) > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        uint256(stakes[arg1].field_256) = 4 * uint256(stakes[arg1].field_1792) / 100
                        if var86001 < 1:
                            revert with 0, 17
                        if var90002 <= var90001:
                            # nil
                        else:
                            uint256(stakes[arg1].field_1536) = uint256(stakeWinners[arg1].field_0)
                            if uint256(stakes[arg1].field_1792) < uint256(stakes[arg1].field_256):
                                revert with 0, 17
                            uint256(stakes[arg1].field_1792) -= uint256(stakes[arg1].field_256)
                            if not uint256(stakes[arg1].field_1536):
                                revert with 0, 18
                            uint256(stakes[arg1].field_512) = uint256(stakes[arg1].field_1792) - uint256(stakes[arg1].field_256) / uint256(stakes[arg1].field_1536)
                            if stor5 == stakeToken[arg1]:
                                call gubAddyAddress with:
                                   value uint256(stakes[arg1].field_256) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                # nil
                            else:
                                mem[0] = arg1
                                mem[32] = 8
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = gubAddyAddress
                                mem[mem[64] + 68] = uint256(stakes[arg1].field_256)
                                require ext_code.size(address(arg2))
                                call address(arg2).0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), gubAddyAddress, uint256(stakes[arg1].field_256)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14233 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_14233] == bool(mem[_14233])
                                # nil
            else:
                if uint256(stakes[arg1].field_1792) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                uint256(stakes[arg1].field_256) = 2 * uint256(stakes[arg1].field_1792) / 100
                if var69001 < 1:
                    revert with 0, 17
                if var73002 <= var73001:
                    if var75001 >= uint256(stakeMembers[arg1].field_0):
                        revert with 0, 50
                    if arg3 != uint256(stor[(4 * var77001) + sha3(var77002) + 2]):
                        if var81001 == -1:
                            revert with 0, 17
                        if var89001 < 1:
                            revert with 0, 17
                        # nil
                    else:
                        mem[64] = mem[64] + 64
                        if var79001 >= uint256(stakeMembers[arg1].field_0):
                            revert with 0, 50
                        mem[0] = var81002
                        mem[var81003] = uint256(stor[(4 * var81001) + sha3(var81002)])
                        mem[32] = 10
                        if var81006 >= uint256(stakeMembers[arg1].field_0):
                            revert with 0, 50
                        mem[var81003 + 32] = address(stakeMembers[arg1][var81006].field_768)
                        uint256(stor[var81005])++
                        mem[0] = var81005
                        uint256(stor[(2 * uint256(stor[var81005])) + sha3(var81005)]) = mem[var81004]
                        address(stor[(2 * uint256(stor[var81005])) + sha3(var81005) + 1]) = mem[var81004 + 44 len 20]
                        if var83001 == -1:
                            revert with 0, 17
                        # nil
                else:
                    uint256(stakes[arg1].field_1536) = uint256(stakeWinners[arg1].field_0)
                    if uint256(stakes[arg1].field_1792) < uint256(stakes[arg1].field_256):
                        revert with 0, 17
                    uint256(stakes[arg1].field_1792) -= uint256(stakes[arg1].field_256)
                    if not uint256(stakes[arg1].field_1536):
                        revert with 0, 18
                    uint256(stakes[arg1].field_512) = uint256(stakes[arg1].field_1792) - uint256(stakes[arg1].field_256) / uint256(stakes[arg1].field_1536)
                    if stor5 == stakeToken[arg1]:
                        call gubAddyAddress with:
                           value uint256(stakes[arg1].field_256) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if var94001 < 1:
                            revert with 0, 17
                        if var98002 > var98001:
                        if stor5 != stakeToken[arg1]:
                            # nil
                        else:
                            if var106001:
                                # nil
                            else:
                                if var106002 >= uint256(stakeWinners[arg1].field_0):
                                    revert with 0, 50
                                call address(stakeWinners[arg1][var106002].field_256) with:
                                   value uint256(stakes[arg1].field_512) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                # nil
                    else:
                        mem[0] = arg1
                        mem[32] = 8
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = gubAddyAddress
                        mem[mem[64] + 68] = uint256(stakes[arg1].field_256)
                        require ext_code.size(address(arg2))
                        call address(arg2).0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), gubAddyAddress, uint256(stakes[arg1].field_256)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5190 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5190] == bool(mem[_5190])
                        if var102001 < 1:
                            revert with 0, 17
                        if var106002 > var106001:
                        if stor5 != stakeToken[arg1]:
                            # nil
                        else:
                            if var114001:
                                # nil
                            else:
                                if var114002 >= uint256(stakeWinners[arg1].field_0):
                                    revert with 0, 50
                                call address(stakeWinners[arg1][var114002].field_256) with:
                                   value uint256(stakes[arg1].field_512) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                # nil
    else:
        if 750 * 10^18 >= uint256(stakes[arg1].field_1792):
            if uint256(stakes[arg1].field_1792) > 0x2aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
                revert with 0, 17
            uint256(stakes[arg1].field_256) = 6 * uint256(stakes[arg1].field_1792) / 100
            if var56001 < 1:
                revert with 0, 17
            if var60002 <= var60001:
                if var62001 >= uint256(stakeMembers[arg1].field_0):
                    revert with 0, 50
                if arg3 == uint256(stor[(4 * var64001) + sha3(var64002) + 2]):
                    _2932 = mem[64]
                    mem[64] = mem[64] + 64
                    if var66001 < uint256(stakeMembers[arg1].field_0):
                        mem[0] = sha3(arg1, 10)
                        mem[_2932] = uint256(stakeMembers[arg1][var66001].field_0)
                        mem[0] = arg1
                        mem[32] = 10
                        s = var66001
                        s = 0
                        s = _2932
                        t = _2932
                        u = 0
                        idx = var66001
                        while idx < uint256(stakeMembers[arg1].field_0):
                            mem[s + 32] = address(stakeMembers[arg1][idx].field_768)
                            uint256(stakeWinners[arg1][u].field_0)++
                            mem[0] = u + sha3(arg1, 11)
                            uint256(stor[(2 * uint256(stakeWinners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'stakeWinners', 11)))].field_0) = mem[t]
                            address(stor[(2 * uint256(stakeWinners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'stakeWinners', 11)))].field_256) = mem[t + 44 len 20]
                            if var70001 == -1:
                                revert with 0, 17
                            if var78001 < 1:
                                revert with 0, 17
                            if var82002 <= var82001:
                                if var84001 >= uint256(stakeMembers[arg1].field_0):
                                    revert with 0, 50
                                if arg3 != uint256(stor[(4 * var86001) + sha3(var86002) + 2]):
                                    # nil
                                else:
                                    _13600 = mem[64]
                                    mem[64] = mem[64] + 64
                                    if var86003 >= uint256(stakeMembers[arg1].field_0):
                                        revert with 0, 50
                                    mem[0] = sha3(arg1, 10)
                                    mem[_13600] = uint256(stakeMembers[arg1][var86003].field_0)
                                    mem[0] = arg1
                                    mem[32] = 10
                                    s = var86003
                                    s = sha3(arg1, 10)
                                    s = _13600
                                    t = _13600
                                    u = sha3(arg1, 11)
                                    idx = var86003
                                    continue 
                            else:
                                uint256(stakes[arg1].field_1536) = uint256(stakeWinners[arg1].field_0)
                                if uint256(stakes[arg1].field_1792) < uint256(stakes[arg1].field_256):
                                    revert with 0, 17
                                uint256(stakes[arg1].field_1792) -= uint256(stakes[arg1].field_256)
                                if not uint256(stakes[arg1].field_1536):
                                    revert with 0, 18
                                uint256(stakes[arg1].field_512) = uint256(stakes[arg1].field_1792) - uint256(stakes[arg1].field_256) / uint256(stakes[arg1].field_1536)
                                if stor5 == stakeToken[arg1]:
                                    call gubAddyAddress with:
                                       value uint256(stakes[arg1].field_256) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if var106001 < 1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    mem[0] = arg1
                                    mem[32] = 8
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = gubAddyAddress
                                    mem[mem[64] + 68] = uint256(stakes[arg1].field_256)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), gubAddyAddress, uint256(stakes[arg1].field_256)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11239 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_11239] == bool(mem[_11239])
                                    if var114001 < 1:
                                        revert with 0, 17
                                    # nil
                    revert with 0, 50
                if var68001 == -1:
                    revert with 0, 17
                if var76001 < 1:
                    revert with 0, 17
                if var80002 <= var80001:
                    if var82001 >= uint256(stakeMembers[arg1].field_0):
                        revert with 0, 50
                    if arg3 != uint256(stor[(4 * var84001) + sha3(var84002) + 2]):
                        if var88001 == -1:
                            revert with 0, 17
                        # nil
                    else:
                        mem[64] = mem[64] + 64
                        if var86001 >= uint256(stakeMembers[arg1].field_0):
                            revert with 0, 50
                        mem[0] = var88002
                        mem[var88003] = uint256(stor[(4 * var88001) + sha3(var88002)])
                        mem[32] = 10
                        if var88006 >= uint256(stakeMembers[arg1].field_0):
                            revert with 0, 50
                        mem[var88003 + 32] = address(stakeMembers[arg1][var88006].field_768)
                        uint256(stor[var88005])++
                        mem[0] = var88005
                        uint256(stor[(2 * uint256(stor[var88005])) + sha3(var88005)]) = mem[var88004]
                        address(stor[(2 * uint256(stor[var88005])) + sha3(var88005) + 1]) = mem[var88004 + 44 len 20]
                        # nil
                else:
                    uint256(stakes[arg1].field_1536) = uint256(stakeWinners[arg1].field_0)
                    if uint256(stakes[arg1].field_1792) < uint256(stakes[arg1].field_256):
                        revert with 0, 17
                    uint256(stakes[arg1].field_1792) -= uint256(stakes[arg1].field_256)
                    if not uint256(stakes[arg1].field_1536):
                        revert with 0, 18
                    uint256(stakes[arg1].field_512) = uint256(stakes[arg1].field_1792) - uint256(stakes[arg1].field_256) / uint256(stakes[arg1].field_1536)
                    if stor5 == stakeToken[arg1]:
                        call gubAddyAddress with:
                           value uint256(stakes[arg1].field_256) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if var101001 < 1:
                            revert with 0, 17
                        if var105002 > var105001:
                        # nil
                    else:
                        mem[0] = arg1
                        mem[32] = 8
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = gubAddyAddress
                        mem[mem[64] + 68] = uint256(stakes[arg1].field_256)
                        require ext_code.size(address(arg2))
                        call address(arg2).0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), gubAddyAddress, uint256(stakes[arg1].field_256)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8738 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_8738] == bool(mem[_8738])
                        if var109001 < 1:
                            revert with 0, 17
                        if var113002 > var113001:
                        # nil
            else:
                uint256(stakes[arg1].field_1536) = uint256(stakeWinners[arg1].field_0)
                if uint256(stakes[arg1].field_1792) < uint256(stakes[arg1].field_256):
                    revert with 0, 17
                uint256(stakes[arg1].field_1792) -= uint256(stakes[arg1].field_256)
                if not uint256(stakes[arg1].field_1536):
                    revert with 0, 18
                uint256(stakes[arg1].field_512) = uint256(stakes[arg1].field_1792) - uint256(stakes[arg1].field_256) / uint256(stakes[arg1].field_1536)
                if stor5 == stakeToken[arg1]:
                    call gubAddyAddress with:
                       value uint256(stakes[arg1].field_256) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if var81001 < 1:
                        revert with 0, 17
                    if var85002 > var85001:
                    if stor5 != stakeToken[arg1]:
                        if not var102001:
                            if var95001 >= uint256(stakeWinners[arg1].field_0):
                                revert with 0, 50
                            call address(stor[(2 * var97001) + sha3(var97002) + 1]) with:
                               value uint256(stakes[arg1].field_512) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if var103001 == -1:
                                revert with 0, 17
                            # nil
                        else:
                            if var103001 >= uint256(stakeWinners[arg1].field_0):
                                revert with 0, 50
                            mem[0] = arg1
                            mem[32] = 8
                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[var107001] = this.address
                            mem[var107001 + 32] = address(var107003)
                            mem[var107001 + 64] = var107002
                            require ext_code.size(address(arg2))
                            call address(arg2).mem[var111004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var111004 + 4 len var111005 - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            # nil
                    else:
                        if not var93001:
                            if var93002 >= uint256(stakeWinners[arg1].field_0):
                                revert with 0, 50
                            call address(stakeWinners[arg1][var93002].field_256) with:
                               value uint256(stakes[arg1].field_512) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if var109001 == -1:
                                revert with 0, 17
                            if var117001 < 1:
                                revert with 0, 17
                            # nil
                        else:
                            if var104001 >= uint256(stakeWinners[arg1].field_0):
                                revert with 0, 50
                            mem[0] = arg1
                            mem[32] = 8
                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[var108001] = this.address
                            mem[var108001 + 32] = address(var108003)
                            mem[var108001 + 64] = var108002
                            require ext_code.size(address(arg2))
                            call address(arg2).mem[var112004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var112004 + 4 len var112005 - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            # nil
                else:
                    mem[0] = arg1
                    mem[32] = 8
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = gubAddyAddress
                    mem[mem[64] + 68] = uint256(stakes[arg1].field_256)
                    require ext_code.size(address(arg2))
                    call address(arg2).0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), gubAddyAddress, uint256(stakes[arg1].field_256)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1402 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1402] == bool(mem[_1402])
                    if var89001 < 1:
                        revert with 0, 17
                    if var93002 > var93001:
                    if stor5 != stakeToken[arg1]:
                        if not var110001:
                            if var103001 >= uint256(stakeWinners[arg1].field_0):
                                revert with 0, 50
                            call address(stor[(2 * var105001) + sha3(var105002) + 1]) with:
                               value uint256(stakes[arg1].field_512) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if var111001 == -1:
                                revert with 0, 17
                            # nil
                        else:
                            if var111001 >= uint256(stakeWinners[arg1].field_0):
                                revert with 0, 50
                            mem[0] = arg1
                            mem[32] = 8
                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[var115001] = this.address
                            mem[var115001 + 32] = address(var115003)
                            mem[var115001 + 64] = var115002
                            require ext_code.size(address(arg2))
                            call address(arg2).mem[var119004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var119004 + 4 len var119005 - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            # nil
                    else:
                        if not var101001:
                            if var101002 >= uint256(stakeWinners[arg1].field_0):
                                revert with 0, 50
                            call address(stakeWinners[arg1][var101002].field_256) with:
                               value uint256(stakes[arg1].field_512) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if var117001 == -1:
                                revert with 0, 17
                            if var125001 < 1:
                                revert with 0, 17
                            # nil
                        else:
                            if var112001 >= uint256(stakeWinners[arg1].field_0):
                                revert with 0, 50
                            mem[0] = arg1
                            mem[32] = 8
                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[var116001] = this.address
                            mem[var116001 + 32] = address(var116003)
                            mem[var116001 + 64] = var116002
                            require ext_code.size(address(arg2))
                            call address(arg2).mem[var120004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var120004 + 4 len var120005 - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            # nil
        else:
            if uint256(stakes[arg1].field_1792) > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            uint256(stakes[arg1].field_256) = 4 * uint256(stakes[arg1].field_1792) / 100
            if var56001 < 1:
                revert with 0, 17
            if var60002 <= var60001:
                if var62001 >= uint256(stakeMembers[arg1].field_0):
                    revert with 0, 50
                if arg3 == uint256(stor[(4 * var64001) + sha3(var64002) + 2]):
                    _2935 = mem[64]
                    mem[64] = mem[64] + 64
                    if var66001 < uint256(stakeMembers[arg1].field_0):
                        mem[0] = sha3(arg1, 10)
                        mem[_2935] = uint256(stakeMembers[arg1][var66001].field_0)
                        mem[0] = arg1
                        mem[32] = 10
                        s = var66001
                        s = 0
                        s = _2935
                        t = _2935
                        u = 0
                        idx = var66001
                        while idx < uint256(stakeMembers[arg1].field_0):
                            mem[s + 32] = address(stakeMembers[arg1][idx].field_768)
                            uint256(stakeWinners[arg1][u].field_0)++
                            mem[0] = u + sha3(arg1, 11)
                            uint256(stor[(2 * uint256(stakeWinners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'stakeWinners', 11)))].field_0) = mem[t]
                            address(stor[(2 * uint256(stakeWinners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'stakeWinners', 11)))].field_256) = mem[t + 44 len 20]
                            if var70001 == -1:
                                revert with 0, 17
                            if var78001 < 1:
                                revert with 0, 17
                            if var82002 <= var82001:
                                if var84001 >= uint256(stakeMembers[arg1].field_0):
                                    revert with 0, 50
                                if arg3 != uint256(stor[(4 * var86001) + sha3(var86002) + 2]):
                                    # nil
                                else:
                                    _13607 = mem[64]
                                    mem[64] = mem[64] + 64
                                    if var86003 >= uint256(stakeMembers[arg1].field_0):
                                        revert with 0, 50
                                    mem[0] = sha3(arg1, 10)
                                    mem[_13607] = uint256(stakeMembers[arg1][var86003].field_0)
                                    mem[0] = arg1
                                    mem[32] = 10
                                    s = var86003
                                    s = sha3(arg1, 10)
                                    s = _13607
                                    t = _13607
                                    u = sha3(arg1, 11)
                                    idx = var86003
                                    continue 
                            else:
                                uint256(stakes[arg1].field_1536) = uint256(stakeWinners[arg1].field_0)
                                if uint256(stakes[arg1].field_1792) < uint256(stakes[arg1].field_256):
                                    revert with 0, 17
                                uint256(stakes[arg1].field_1792) -= uint256(stakes[arg1].field_256)
                                if not uint256(stakes[arg1].field_1536):
                                    revert with 0, 18
                                uint256(stakes[arg1].field_512) = uint256(stakes[arg1].field_1792) - uint256(stakes[arg1].field_256) / uint256(stakes[arg1].field_1536)
                                if stor5 == stakeToken[arg1]:
                                    call gubAddyAddress with:
                                       value uint256(stakes[arg1].field_256) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if var106001 < 1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    mem[0] = arg1
                                    mem[32] = 8
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = gubAddyAddress
                                    mem[mem[64] + 68] = uint256(stakes[arg1].field_256)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), gubAddyAddress, uint256(stakes[arg1].field_256)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11247 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_11247] == bool(mem[_11247])
                                    if var114001 < 1:
                                        revert with 0, 17
                                    # nil
                    revert with 0, 50
                if var68001 == -1:
                    revert with 0, 17
                if var76001 < 1:
                    revert with 0, 17
                if var80002 <= var80001:
                    if var82001 >= uint256(stakeMembers[arg1].field_0):
                        revert with 0, 50
                    if arg3 != uint256(stor[(4 * var84001) + sha3(var84002) + 2]):
                        if var88001 == -1:
                            revert with 0, 17
                        # nil
                    else:
                        mem[64] = mem[64] + 64
                        if var86001 >= uint256(stakeMembers[arg1].field_0):
                            revert with 0, 50
                        mem[0] = var88002
                        mem[var88003] = uint256(stor[(4 * var88001) + sha3(var88002)])
                        mem[32] = 10
                        if var88006 >= uint256(stakeMembers[arg1].field_0):
                            revert with 0, 50
                        mem[var88003 + 32] = address(stakeMembers[arg1][var88006].field_768)
                        uint256(stor[var88005])++
                        mem[0] = var88005
                        uint256(stor[(2 * uint256(stor[var88005])) + sha3(var88005)]) = mem[var88004]
                        address(stor[(2 * uint256(stor[var88005])) + sha3(var88005) + 1]) = mem[var88004 + 44 len 20]
                        # nil
                else:
                    uint256(stakes[arg1].field_1536) = uint256(stakeWinners[arg1].field_0)
                    if uint256(stakes[arg1].field_1792) < uint256(stakes[arg1].field_256):
                        revert with 0, 17
                    uint256(stakes[arg1].field_1792) -= uint256(stakes[arg1].field_256)
                    if not uint256(stakes[arg1].field_1536):
                        revert with 0, 18
                    uint256(stakes[arg1].field_512) = uint256(stakes[arg1].field_1792) - uint256(stakes[arg1].field_256) / uint256(stakes[arg1].field_1536)
                    if stor5 == stakeToken[arg1]:
                        call gubAddyAddress with:
                           value uint256(stakes[arg1].field_256) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if var101001 < 1:
                            revert with 0, 17
                        if var105002 > var105001:
                        # nil
                    else:
                        mem[0] = arg1
                        mem[32] = 8
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = gubAddyAddress
                        mem[mem[64] + 68] = uint256(stakes[arg1].field_256)
                        require ext_code.size(address(arg2))
                        call address(arg2).0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), gubAddyAddress, uint256(stakes[arg1].field_256)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8753 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_8753] == bool(mem[_8753])
                        if var109001 < 1:
                            revert with 0, 17
                        if var113002 > var113001:
                        # nil
            else:
                uint256(stakes[arg1].field_1536) = uint256(stakeWinners[arg1].field_0)
                if uint256(stakes[arg1].field_1792) < uint256(stakes[arg1].field_256):
                    revert with 0, 17
                uint256(stakes[arg1].field_1792) -= uint256(stakes[arg1].field_256)
                if not uint256(stakes[arg1].field_1536):
                    revert with 0, 18
                uint256(stakes[arg1].field_512) = uint256(stakes[arg1].field_1792) - uint256(stakes[arg1].field_256) / uint256(stakes[arg1].field_1536)
                if stor5 == stakeToken[arg1]:
                    call gubAddyAddress with:
                       value uint256(stakes[arg1].field_256) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if var81001 < 1:
                        revert with 0, 17
                    if var85002 > var85001:
                    if stor5 != stakeToken[arg1]:
                        if not var102001:
                            if var95001 >= uint256(stakeWinners[arg1].field_0):
                                revert with 0, 50
                            call address(stor[(2 * var97001) + sha3(var97002) + 1]) with:
                               value uint256(stakes[arg1].field_512) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if var103001 == -1:
                                revert with 0, 17
                            # nil
                        else:
                            if var103001 >= uint256(stakeWinners[arg1].field_0):
                                revert with 0, 50
                            mem[0] = arg1
                            mem[32] = 8
                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[var107001] = this.address
                            mem[var107001 + 32] = address(var107003)
                            mem[var107001 + 64] = var107002
                            require ext_code.size(address(arg2))
                            call address(arg2).mem[var111004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var111004 + 4 len var111005 - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            # nil
                    else:
                        if not var93001:
                            if var93002 >= uint256(stakeWinners[arg1].field_0):
                                revert with 0, 50
                            call address(stakeWinners[arg1][var93002].field_256) with:
                               value uint256(stakes[arg1].field_512) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if var109001 == -1:
                                revert with 0, 17
                            if var117001 < 1:
                                revert with 0, 17
                            # nil
                        else:
                            if var104001 >= uint256(stakeWinners[arg1].field_0):
                                revert with 0, 50
                            mem[0] = arg1
                            mem[32] = 8
                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[var108001] = this.address
                            mem[var108001 + 32] = address(var108003)
                            mem[var108001 + 64] = var108002
                            require ext_code.size(address(arg2))
                            call address(arg2).mem[var112004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var112004 + 4 len var112005 - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            # nil
                else:
                    mem[0] = arg1
                    mem[32] = 8
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = gubAddyAddress
                    mem[mem[64] + 68] = uint256(stakes[arg1].field_256)
                    require ext_code.size(address(arg2))
                    call address(arg2).0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), gubAddyAddress, uint256(stakes[arg1].field_256)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1404 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1404] == bool(mem[_1404])
                    if var89001 < 1:
                        revert with 0, 17
                    if var93002 > var93001:
                    if stor5 != stakeToken[arg1]:
                        if not var110001:
                            if var103001 >= uint256(stakeWinners[arg1].field_0):
                                revert with 0, 50
                            call address(stor[(2 * var105001) + sha3(var105002) + 1]) with:
                               value uint256(stakes[arg1].field_512) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if var111001 == -1:
                                revert with 0, 17
                            # nil
                        else:
                            if var111001 >= uint256(stakeWinners[arg1].field_0):
                                revert with 0, 50
                            mem[0] = arg1
                            mem[32] = 8
                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[var115001] = this.address
                            mem[var115001 + 32] = address(var115003)
                            mem[var115001 + 64] = var115002
                            require ext_code.size(address(arg2))
                            call address(arg2).mem[var119004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var119004 + 4 len var119005 - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            # nil
                    else:
                        if not var101001:
                            if var101002 >= uint256(stakeWinners[arg1].field_0):
                                revert with 0, 50
                            call address(stakeWinners[arg1][var101002].field_256) with:
                               value uint256(stakes[arg1].field_512) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if var117001 == -1:
                                revert with 0, 17
                            if var125001 < 1:
                                revert with 0, 17
                            # nil
                        else:
                            if var112001 >= uint256(stakeWinners[arg1].field_0):
                                revert with 0, 50
                            mem[0] = arg1
                            mem[32] = 8
                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[var116001] = this.address
                            mem[var116001 + 32] = address(var116003)
                            mem[var116001 + 64] = var116002
                            require ext_code.size(address(arg2))
                            call address(arg2).mem[var120004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var120004 + 4 len var120005 - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            # nil
}

function parseSidepotWinners(bytes32 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if msg.sender != this.address:
        revert with 0, 'only contract can call'
    mem[0] = arg1
    mem[32] = 12
    if not uint256(sidepotMembers[arg1].field_0):
    mem[96] = 0xd8a3073200000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    require ext_code.size(stor6)
    staticcall stor6.0xd8a30732 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _7 = mem[96 len 4], address(this.address) << 64
    require mem[96 len 4], address(this.address) << 64 <= test266151307()
    require mem[96 len 4], address(this.address) << 64 + 127 < return_data.size + 96
    _8 = mem[mem[96 len 4], address(this.address) << 64 + 96]
    if mem[mem[96 len 4], address(this.address) << 64 + 96] > test266151307():
        revert with 0, 65
    if (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 32 < 0 or ceil32(return_data.size) + (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 128 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _8
    require return_data.size >= _7 + (32 * _8) + 32
    s = _7 + 128
    t = ceil32(return_data.size) + 128
    u = 32 * _8
    idx = 0
    while idx < _8:
        _317 = mem[s]
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        u = _317
        idx = idx + 1
        continue 
    if _8:
        if var44001 < 1:
            revert with 0, 17
        if var48002 > var48001:
            if 750 * 10^18 >= uint256(stakes[arg1].field_1792):
                if uint256(sidepot[arg1].field_1792) > 0x2aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
                    revert with 0, 17
                uint256(sidepot[arg1].field_256) = 6 * uint256(sidepot[arg1].field_1792) / 100
                if uint256(sidepot[arg1].field_1792) < uint256(sidepot[arg1].field_256):
                    revert with 0, 17
                uint256(sidepot[arg1].field_1792) -= uint256(sidepot[arg1].field_256)
                if stor5 == stakeToken[arg1]:
                    call gubAddyAddress with:
                       value uint256(sidepot[arg1].field_256) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if var101001 < 1:
                        revert with 0, 17
                    if var105002 > var105001:
                        uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
                    if var107001 >= uint256(sidepotMembers[arg1].field_0):
                        revert with 0, 50
                    if uint256(stor[(4 * var109001) + sha3(var109002) + 2]) != arg2:
                        if var113001 == -1:
                            revert with 0, 17
                        if var121001 < 1:
                            revert with 0, 17
                        if var125002 <= var125001:
                            # nil
                        else:
                            uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
                    else:
                        mem[64] = mem[64] + 160
                        mem[32] = 12
                        if var111001 >= uint256(sidepotMembers[arg1].field_0):
                            revert with 0, 50
                        mem[0] = var113002
                        mem[var113003] = uint256(stor[(4 * var113001) + sha3(var113002)])
                        mem[var113003 + 32] = arg2
                        if var113006 >= uint256(sidepotMembers[arg1].field_0):
                            revert with 0, 50
                        mem[var113003 + 64] = uint256(sidepotMembers[arg1][var113006].field_256)
                        if var113006 >= uint256(sidepotMembers[arg1].field_0):
                            revert with 0, 50
                        if uint256(sidepotMembers[arg1][var113006].field_256) and stor4 > -1 / uint256(sidepotMembers[arg1][var113006].field_256):
                            revert with 0, 17
                        if not sidepotChoiceTotals[arg1][arg2]:
                            revert with 0, 18
                        if uint256(sidepot[arg1].field_1792) and uint256(sidepotMembers[arg1][var113006].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] > -1 / uint256(sidepot[arg1].field_1792):
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        mem[var113003 + 96] = uint256(sidepot[arg1].field_1792) * uint256(sidepotMembers[arg1][var113006].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] / stor4
                        mem[32] = 12
                        if var113006 >= uint256(sidepotMembers[arg1].field_0):
                            revert with 0, 50
                        mem[var113003 + 128] = address(sidepotMembers[arg1][var113006].field_768)
                        uint256(stor[var113005])++
                        mem[0] = var113005
                        uint256(stor[(5 * uint256(stor[var113005])) + sha3(var113005)]) = mem[var113004]
                        uint256(stor[(5 * uint256(stor[var113005])) + sha3(var113005) + 1]) = mem[var113004 + 32]
                        uint256(stor[(5 * uint256(stor[var113005])) + sha3(var113005) + 2]) = mem[var113004 + 64]
                        uint256(stor[(5 * uint256(stor[var113005])) + sha3(var113005) + 3]) = mem[var113004 + 96]
                        address(stor[(5 * uint256(stor[var113005])) + sha3(var113005) + 4]) = mem[var113004 + 140 len 20]
                        if var115001 == -1:
                            revert with 0, 17
                        if var123001 < 1:
                            revert with 0, 17
                        # nil
                else:
                    mem[0] = arg1
                    mem[32] = 9
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = gubAddyAddress
                    mem[mem[64] + 68] = uint256(sidepot[arg1].field_256)
                    require ext_code.size(arg3)
                    call arg3.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), gubAddyAddress, uint256(sidepot[arg1].field_256)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1594 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1594] == bool(mem[_1594])
                    if var109001 < 1:
                        revert with 0, 17
                    if var113002 > var113001:
                        uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
                    if var115001 >= uint256(sidepotMembers[arg1].field_0):
                        revert with 0, 50
                    if uint256(stor[(4 * var117001) + sha3(var117002) + 2]) != arg2:
                        if var121001 == -1:
                            revert with 0, 17
                        if var129001 < 1:
                            revert with 0, 17
                        if var133002 <= var133001:
                            # nil
                        else:
                            uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
                    else:
                        mem[64] = mem[64] + 160
                        mem[32] = 12
                        if var119001 >= uint256(sidepotMembers[arg1].field_0):
                            revert with 0, 50
                        mem[0] = var121002
                        mem[var121003] = uint256(stor[(4 * var121001) + sha3(var121002)])
                        mem[var121003 + 32] = arg2
                        if var121006 >= uint256(sidepotMembers[arg1].field_0):
                            revert with 0, 50
                        mem[var121003 + 64] = uint256(sidepotMembers[arg1][var121006].field_256)
                        if var121006 >= uint256(sidepotMembers[arg1].field_0):
                            revert with 0, 50
                        if uint256(sidepotMembers[arg1][var121006].field_256) and stor4 > -1 / uint256(sidepotMembers[arg1][var121006].field_256):
                            revert with 0, 17
                        if not sidepotChoiceTotals[arg1][arg2]:
                            revert with 0, 18
                        if uint256(sidepot[arg1].field_1792) and uint256(sidepotMembers[arg1][var121006].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] > -1 / uint256(sidepot[arg1].field_1792):
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        mem[var121003 + 96] = uint256(sidepot[arg1].field_1792) * uint256(sidepotMembers[arg1][var121006].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] / stor4
                        mem[32] = 12
                        if var121006 >= uint256(sidepotMembers[arg1].field_0):
                            revert with 0, 50
                        mem[var121003 + 128] = address(sidepotMembers[arg1][var121006].field_768)
                        uint256(stor[var121005])++
                        mem[0] = var121005
                        uint256(stor[(5 * uint256(stor[var121005])) + sha3(var121005)]) = mem[var121004]
                        uint256(stor[(5 * uint256(stor[var121005])) + sha3(var121005) + 1]) = mem[var121004 + 32]
                        uint256(stor[(5 * uint256(stor[var121005])) + sha3(var121005) + 2]) = mem[var121004 + 64]
                        uint256(stor[(5 * uint256(stor[var121005])) + sha3(var121005) + 3]) = mem[var121004 + 96]
                        address(stor[(5 * uint256(stor[var121005])) + sha3(var121005) + 4]) = mem[var121004 + 140 len 20]
                        if var123001 == -1:
                            revert with 0, 17
                        if var131001 < 1:
                            revert with 0, 17
                        # nil
            else:
                if uint256(sidepot[arg1].field_1792) > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                uint256(sidepot[arg1].field_256) = 4 * uint256(sidepot[arg1].field_1792) / 100
                if uint256(sidepot[arg1].field_1792) < uint256(sidepot[arg1].field_256):
                    revert with 0, 17
                uint256(sidepot[arg1].field_1792) -= uint256(sidepot[arg1].field_256)
                if stor5 == stakeToken[arg1]:
                    call gubAddyAddress with:
                       value uint256(sidepot[arg1].field_256) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if var101001 < 1:
                        revert with 0, 17
                    if var105002 > var105001:
                        uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
                    if var107001 >= uint256(sidepotMembers[arg1].field_0):
                        revert with 0, 50
                    if uint256(stor[(4 * var109001) + sha3(var109002) + 2]) != arg2:
                        if var113001 == -1:
                            revert with 0, 17
                        if var121001 < 1:
                            revert with 0, 17
                        if var125002 <= var125001:
                            # nil
                        else:
                            uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
                    else:
                        mem[64] = mem[64] + 160
                        mem[32] = 12
                        if var111001 >= uint256(sidepotMembers[arg1].field_0):
                            revert with 0, 50
                        mem[0] = var113002
                        mem[var113003] = uint256(stor[(4 * var113001) + sha3(var113002)])
                        mem[var113003 + 32] = arg2
                        if var113006 >= uint256(sidepotMembers[arg1].field_0):
                            revert with 0, 50
                        mem[var113003 + 64] = uint256(sidepotMembers[arg1][var113006].field_256)
                        if var113006 >= uint256(sidepotMembers[arg1].field_0):
                            revert with 0, 50
                        if uint256(sidepotMembers[arg1][var113006].field_256) and stor4 > -1 / uint256(sidepotMembers[arg1][var113006].field_256):
                            revert with 0, 17
                        if not sidepotChoiceTotals[arg1][arg2]:
                            revert with 0, 18
                        if uint256(sidepot[arg1].field_1792) and uint256(sidepotMembers[arg1][var113006].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] > -1 / uint256(sidepot[arg1].field_1792):
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        mem[var113003 + 96] = uint256(sidepot[arg1].field_1792) * uint256(sidepotMembers[arg1][var113006].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] / stor4
                        mem[32] = 12
                        if var113006 >= uint256(sidepotMembers[arg1].field_0):
                            revert with 0, 50
                        mem[var113003 + 128] = address(sidepotMembers[arg1][var113006].field_768)
                        uint256(stor[var113005])++
                        mem[0] = var113005
                        uint256(stor[(5 * uint256(stor[var113005])) + sha3(var113005)]) = mem[var113004]
                        uint256(stor[(5 * uint256(stor[var113005])) + sha3(var113005) + 1]) = mem[var113004 + 32]
                        uint256(stor[(5 * uint256(stor[var113005])) + sha3(var113005) + 2]) = mem[var113004 + 64]
                        uint256(stor[(5 * uint256(stor[var113005])) + sha3(var113005) + 3]) = mem[var113004 + 96]
                        address(stor[(5 * uint256(stor[var113005])) + sha3(var113005) + 4]) = mem[var113004 + 140 len 20]
                        if var115001 == -1:
                            revert with 0, 17
                        if var123001 < 1:
                            revert with 0, 17
                        # nil
                else:
                    mem[0] = arg1
                    mem[32] = 9
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = gubAddyAddress
                    mem[mem[64] + 68] = uint256(sidepot[arg1].field_256)
                    require ext_code.size(arg3)
                    call arg3.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), gubAddyAddress, uint256(sidepot[arg1].field_256)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1596 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1596] == bool(mem[_1596])
                    if var109001 < 1:
                        revert with 0, 17
                    if var113002 > var113001:
                        uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
                    if var115001 >= uint256(sidepotMembers[arg1].field_0):
                        revert with 0, 50
                    if uint256(stor[(4 * var117001) + sha3(var117002) + 2]) != arg2:
                        if var121001 == -1:
                            revert with 0, 17
                        if var129001 < 1:
                            revert with 0, 17
                        if var133002 <= var133001:
                            # nil
                        else:
                            uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
                    else:
                        mem[64] = mem[64] + 160
                        mem[32] = 12
                        if var119001 >= uint256(sidepotMembers[arg1].field_0):
                            revert with 0, 50
                        mem[0] = var121002
                        mem[var121003] = uint256(stor[(4 * var121001) + sha3(var121002)])
                        mem[var121003 + 32] = arg2
                        if var121006 >= uint256(sidepotMembers[arg1].field_0):
                            revert with 0, 50
                        mem[var121003 + 64] = uint256(sidepotMembers[arg1][var121006].field_256)
                        if var121006 >= uint256(sidepotMembers[arg1].field_0):
                            revert with 0, 50
                        if uint256(sidepotMembers[arg1][var121006].field_256) and stor4 > -1 / uint256(sidepotMembers[arg1][var121006].field_256):
                            revert with 0, 17
                        if not sidepotChoiceTotals[arg1][arg2]:
                            revert with 0, 18
                        if uint256(sidepot[arg1].field_1792) and uint256(sidepotMembers[arg1][var121006].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] > -1 / uint256(sidepot[arg1].field_1792):
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        mem[var121003 + 96] = uint256(sidepot[arg1].field_1792) * uint256(sidepotMembers[arg1][var121006].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] / stor4
                        mem[32] = 12
                        if var121006 >= uint256(sidepotMembers[arg1].field_0):
                            revert with 0, 50
                        mem[var121003 + 128] = address(sidepotMembers[arg1][var121006].field_768)
                        uint256(stor[var121005])++
                        mem[0] = var121005
                        uint256(stor[(5 * uint256(stor[var121005])) + sha3(var121005)]) = mem[var121004]
                        uint256(stor[(5 * uint256(stor[var121005])) + sha3(var121005) + 1]) = mem[var121004 + 32]
                        uint256(stor[(5 * uint256(stor[var121005])) + sha3(var121005) + 2]) = mem[var121004 + 64]
                        uint256(stor[(5 * uint256(stor[var121005])) + sha3(var121005) + 3]) = mem[var121004 + 96]
                        address(stor[(5 * uint256(stor[var121005])) + sha3(var121005) + 4]) = mem[var121004 + 140 len 20]
                        if var123001 == -1:
                            revert with 0, 17
                        if var131001 < 1:
                            revert with 0, 17
                        # nil
        else:
            if var50001 >= _8:
                revert with 0, 50
            if arg3 != mem[(32 * var52001) + ceil32(return_data.size) + 140 len 20]:
                if var56001 == -1:
                    revert with 0, 17
                if var64001 < 1:
                    revert with 0, 17
                if var68002 <= var68001:
                    if var70001 >= _8:
                        revert with 0, 50
                    if arg3 != mem[(32 * var72001) + ceil32(return_data.size) + 140 len 20]:
                        if var76001 == -1:
                            revert with 0, 17
                        # nil
                    else:
                        if uint256(sidepot[arg1].field_1792) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        uint256(sidepot[arg1].field_256) = 2 * uint256(sidepot[arg1].field_1792) / 100
                        if uint256(sidepot[arg1].field_1792) < uint256(sidepot[arg1].field_256):
                            revert with 0, 17
                        uint256(sidepot[arg1].field_1792) -= uint256(sidepot[arg1].field_256)
                        if stor5 == stakeToken[arg1]:
                            call gubAddyAddress with:
                               value uint256(sidepot[arg1].field_256) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if var124001 < 1:
                                revert with 0, 17
                            # nil
                        else:
                            mem[0] = arg1
                            mem[32] = 9
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = gubAddyAddress
                            mem[mem[64] + 68] = uint256(sidepot[arg1].field_256)
                            require ext_code.size(arg3)
                            call arg3.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), gubAddyAddress, uint256(sidepot[arg1].field_256)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8407 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8407] == bool(mem[_8407])
                            if var132001 < 1:
                                revert with 0, 17
                            # nil
                else:
                    if 750 * 10^18 >= uint256(stakes[arg1].field_1792):
                        if uint256(sidepot[arg1].field_1792) > 0x2aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
                            revert with 0, 17
                        uint256(sidepot[arg1].field_256) = 6 * uint256(sidepot[arg1].field_1792) / 100
                        if uint256(sidepot[arg1].field_1792) < uint256(sidepot[arg1].field_256):
                            revert with 0, 17
                        uint256(sidepot[arg1].field_1792) -= uint256(sidepot[arg1].field_256)
                        if stor5 == stakeToken[arg1]:
                            call gubAddyAddress with:
                               value uint256(sidepot[arg1].field_256) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if var121001 < 1:
                                revert with 0, 17
                            if var125002 <= var125001:
                                # nil
                            else:
                                uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
                        else:
                            mem[0] = arg1
                            mem[32] = 9
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = gubAddyAddress
                            mem[mem[64] + 68] = uint256(sidepot[arg1].field_256)
                            require ext_code.size(arg3)
                            call arg3.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), gubAddyAddress, uint256(sidepot[arg1].field_256)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7000 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7000] == bool(mem[_7000])
                            if var129001 < 1:
                                revert with 0, 17
                            if var133002 <= var133001:
                                # nil
                            else:
                                uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
                    else:
                        if uint256(sidepot[arg1].field_1792) > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        uint256(sidepot[arg1].field_256) = 4 * uint256(sidepot[arg1].field_1792) / 100
                        if uint256(sidepot[arg1].field_1792) < uint256(sidepot[arg1].field_256):
                            revert with 0, 17
                        uint256(sidepot[arg1].field_1792) -= uint256(sidepot[arg1].field_256)
                        if stor5 == stakeToken[arg1]:
                            call gubAddyAddress with:
                               value uint256(sidepot[arg1].field_256) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if var121001 < 1:
                                revert with 0, 17
                            if var125002 <= var125001:
                                # nil
                            else:
                                uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
                        else:
                            mem[0] = arg1
                            mem[32] = 9
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = gubAddyAddress
                            mem[mem[64] + 68] = uint256(sidepot[arg1].field_256)
                            require ext_code.size(arg3)
                            call arg3.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), gubAddyAddress, uint256(sidepot[arg1].field_256)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7002 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7002] == bool(mem[_7002])
                            if var129001 < 1:
                                revert with 0, 17
                            if var133002 <= var133001:
                                # nil
                            else:
                                uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
            else:
                if uint256(sidepot[arg1].field_1792) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                uint256(sidepot[arg1].field_256) = 2 * uint256(sidepot[arg1].field_1792) / 100
                if uint256(sidepot[arg1].field_1792) < uint256(sidepot[arg1].field_256):
                    revert with 0, 17
                uint256(sidepot[arg1].field_1792) -= uint256(sidepot[arg1].field_256)
                if stor5 == stakeToken[arg1]:
                    call gubAddyAddress with:
                       value uint256(sidepot[arg1].field_256) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if var104001 < 1:
                        revert with 0, 17
                    if var108002 > var108001:
                        uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
                    if var110001 >= uint256(sidepotMembers[arg1].field_0):
                        revert with 0, 50
                    if uint256(stor[(4 * var112001) + sha3(var112002) + 2]) != arg2:
                        if var116001 == -1:
                            revert with 0, 17
                        if var124001 < 1:
                            revert with 0, 17
                        # nil
                    else:
                        mem[64] = mem[64] + 160
                        mem[32] = 12
                        if var114001 >= uint256(sidepotMembers[arg1].field_0):
                            revert with 0, 50
                        mem[0] = var116002
                        mem[var116003] = uint256(stor[(4 * var116001) + sha3(var116002)])
                        mem[var116003 + 32] = arg2
                        if var116006 >= uint256(sidepotMembers[arg1].field_0):
                            revert with 0, 50
                        mem[var116003 + 64] = uint256(sidepotMembers[arg1][var116006].field_256)
                        if var116006 >= uint256(sidepotMembers[arg1].field_0):
                            revert with 0, 50
                        if uint256(sidepotMembers[arg1][var116006].field_256) and stor4 > -1 / uint256(sidepotMembers[arg1][var116006].field_256):
                            revert with 0, 17
                        if not sidepotChoiceTotals[arg1][arg2]:
                            revert with 0, 18
                        if uint256(sidepot[arg1].field_1792) and uint256(sidepotMembers[arg1][var116006].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] > -1 / uint256(sidepot[arg1].field_1792):
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        mem[var116003 + 96] = uint256(sidepot[arg1].field_1792) * uint256(sidepotMembers[arg1][var116006].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] / stor4
                        mem[32] = 12
                        if var116006 >= uint256(sidepotMembers[arg1].field_0):
                            revert with 0, 50
                        mem[var116003 + 128] = address(sidepotMembers[arg1][var116006].field_768)
                        uint256(stor[var116005])++
                        mem[0] = var116005
                        uint256(stor[(5 * uint256(stor[var116005])) + sha3(var116005)]) = mem[var116004]
                        uint256(stor[(5 * uint256(stor[var116005])) + sha3(var116005) + 1]) = mem[var116004 + 32]
                        uint256(stor[(5 * uint256(stor[var116005])) + sha3(var116005) + 2]) = mem[var116004 + 64]
                        uint256(stor[(5 * uint256(stor[var116005])) + sha3(var116005) + 3]) = mem[var116004 + 96]
                        address(stor[(5 * uint256(stor[var116005])) + sha3(var116005) + 4]) = mem[var116004 + 140 len 20]
                        if var118001 == -1:
                            revert with 0, 17
                        # nil
                else:
                    mem[0] = arg1
                    mem[32] = 9
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = gubAddyAddress
                    mem[mem[64] + 68] = uint256(sidepot[arg1].field_256)
                    require ext_code.size(arg3)
                    call arg3.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), gubAddyAddress, uint256(sidepot[arg1].field_256)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2503 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2503] == bool(mem[_2503])
                    if var112001 < 1:
                        revert with 0, 17
                    if var116002 > var116001:
                        uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
                    if var118001 >= uint256(sidepotMembers[arg1].field_0):
                        revert with 0, 50
                    if uint256(stor[(4 * var120001) + sha3(var120002) + 2]) != arg2:
                        if var124001 == -1:
                            revert with 0, 17
                        if var132001 < 1:
                            revert with 0, 17
                        # nil
                    else:
                        mem[64] = mem[64] + 160
                        mem[32] = 12
                        if var122001 >= uint256(sidepotMembers[arg1].field_0):
                            revert with 0, 50
                        mem[0] = var124002
                        mem[var124003] = uint256(stor[(4 * var124001) + sha3(var124002)])
                        mem[var124003 + 32] = arg2
                        if var124006 >= uint256(sidepotMembers[arg1].field_0):
                            revert with 0, 50
                        mem[var124003 + 64] = uint256(sidepotMembers[arg1][var124006].field_256)
                        if var124006 >= uint256(sidepotMembers[arg1].field_0):
                            revert with 0, 50
                        if uint256(sidepotMembers[arg1][var124006].field_256) and stor4 > -1 / uint256(sidepotMembers[arg1][var124006].field_256):
                            revert with 0, 17
                        if not sidepotChoiceTotals[arg1][arg2]:
                            revert with 0, 18
                        if uint256(sidepot[arg1].field_1792) and uint256(sidepotMembers[arg1][var124006].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] > -1 / uint256(sidepot[arg1].field_1792):
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        mem[var124003 + 96] = uint256(sidepot[arg1].field_1792) * uint256(sidepotMembers[arg1][var124006].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] / stor4
                        mem[32] = 12
                        if var124006 >= uint256(sidepotMembers[arg1].field_0):
                            revert with 0, 50
                        mem[var124003 + 128] = address(sidepotMembers[arg1][var124006].field_768)
                        uint256(stor[var124005])++
                        mem[0] = var124005
                        uint256(stor[(5 * uint256(stor[var124005])) + sha3(var124005)]) = mem[var124004]
                        uint256(stor[(5 * uint256(stor[var124005])) + sha3(var124005) + 1]) = mem[var124004 + 32]
                        uint256(stor[(5 * uint256(stor[var124005])) + sha3(var124005) + 2]) = mem[var124004 + 64]
                        uint256(stor[(5 * uint256(stor[var124005])) + sha3(var124005) + 3]) = mem[var124004 + 96]
                        address(stor[(5 * uint256(stor[var124005])) + sha3(var124005) + 4]) = mem[var124004 + 140 len 20]
                        if var126001 == -1:
                            revert with 0, 17
                        # nil
    else:
        if 750 * 10^18 >= uint256(stakes[arg1].field_1792):
            if uint256(sidepot[arg1].field_1792) > 0x2aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
                revert with 0, 17
            uint256(sidepot[arg1].field_256) = 6 * uint256(sidepot[arg1].field_1792) / 100
            if uint256(sidepot[arg1].field_1792) < uint256(sidepot[arg1].field_256):
                revert with 0, 17
            uint256(sidepot[arg1].field_1792) -= uint256(sidepot[arg1].field_256)
            if stor5 == stakeToken[arg1]:
                call gubAddyAddress with:
                   value uint256(sidepot[arg1].field_256) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if var91001 < 1:
                    revert with 0, 17
                if var95002 > var95001:
                    uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
                if var97001 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                if uint256(stor[(4 * var99001) + sha3(var99002) + 2]) == arg2:
                    _2852 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[32] = 12
                    if var101001 < uint256(sidepotMembers[arg1].field_0):
                        mem[0] = sha3(arg1, 12)
                        mem[_2852] = uint256(sidepotMembers[arg1][var101001].field_0)
                        mem[_2852 + 32] = arg2
                        mem[0] = arg1
                        mem[32] = 12
                        s = var101001
                        s = 0
                        s = _2852
                        t = _2852
                        u = 0
                        idx = var101001
                        while idx < uint256(sidepotMembers[arg1].field_0):
                            mem[s + 64] = uint256(sidepotMembers[arg1][idx].field_256)
                            if idx >= uint256(sidepotMembers[arg1].field_0):
                                revert with 0, 50
                            if uint256(sidepotMembers[arg1][idx].field_256) and stor4 > -1 / uint256(sidepotMembers[arg1][idx].field_256):
                                revert with 0, 17
                            if not sidepotChoiceTotals[arg1][arg2]:
                                revert with 0, 18
                            if uint256(sidepot[arg1].field_1792) and uint256(sidepotMembers[arg1][idx].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] > -1 / uint256(sidepot[arg1].field_1792):
                                revert with 0, 17
                            if not stor4:
                                revert with 0, 18
                            mem[s + 96] = uint256(sidepot[arg1].field_1792) * uint256(sidepotMembers[arg1][idx].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] / stor4
                            mem[32] = 12
                            if idx >= uint256(sidepotMembers[arg1].field_0):
                                revert with 0, 50
                            mem[s + 128] = address(sidepotMembers[arg1][idx].field_768)
                            uint256(sidepotWinners[arg1][u].field_0)++
                            mem[0] = u + sha3(arg1, 13)
                            uint256(stor[(5 * uint256(sidepotWinners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'sidepotWinners', 13)))].field_0) = mem[t]
                            uint256(stor[(5 * uint256(sidepotWinners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'sidepotWinners', 13)))].field_256) = mem[t + 32]
                            uint256(stor[(5 * uint256(sidepotWinners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'sidepotWinners', 13)))].field_512) = mem[t + 64]
                            uint256(stor[(5 * uint256(sidepotWinners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'sidepotWinners', 13)))].field_768) = mem[t + 96]
                            address(stor[(5 * uint256(sidepotWinners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'sidepotWinners', 13)))].field_1024) = mem[t + 140 len 20]
                            if var105001 == -1:
                                revert with 0, 17
                            if var113001 < 1:
                                revert with 0, 17
                            if var117002 > var117001:
                                uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
                            if var119001 >= uint256(sidepotMembers[arg1].field_0):
                                revert with 0, 50
                            if uint256(stor[(4 * var121001) + sha3(var121002) + 2]) != arg2:
                                # nil
                            else:
                                _9604 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[32] = 12
                                if var121004 >= uint256(sidepotMembers[arg1].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(arg1, 12)
                                mem[_9604] = uint256(sidepotMembers[arg1][var121004].field_0)
                                mem[_9604 + 32] = arg2
                                mem[0] = arg1
                                mem[32] = 12
                                s = var121004
                                s = sha3(arg1, 12)
                                s = _9604
                                t = _9604
                                u = sha3(arg1, 13)
                                idx = var121004
                                continue 
                    revert with 0, 50
                if var103001 == -1:
                    revert with 0, 17
                if var111001 < 1:
                    revert with 0, 17
                if var115002 > var115001:
                    uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
                if var117001 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                if uint256(stor[(4 * var119001) + sha3(var119002) + 2]) != arg2:
                    if var123001 == -1:
                        revert with 0, 17
                    # nil
                else:
                    mem[64] = mem[64] + 160
                    mem[32] = 12
                    if var121001 >= uint256(sidepotMembers[arg1].field_0):
                        revert with 0, 50
                    mem[0] = var123002
                    mem[var123003] = uint256(stor[(4 * var123001) + sha3(var123002)])
                    mem[var123003 + 32] = arg2
                    if var123006 >= uint256(sidepotMembers[arg1].field_0):
                        revert with 0, 50
                    mem[var123003 + 64] = uint256(sidepotMembers[arg1][var123006].field_256)
                    if var123006 >= uint256(sidepotMembers[arg1].field_0):
                        revert with 0, 50
                    if uint256(sidepotMembers[arg1][var123006].field_256) and stor4 > -1 / uint256(sidepotMembers[arg1][var123006].field_256):
                        revert with 0, 17
                    if not sidepotChoiceTotals[arg1][arg2]:
                        revert with 0, 18
                    if uint256(sidepot[arg1].field_1792) and uint256(sidepotMembers[arg1][var123006].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] > -1 / uint256(sidepot[arg1].field_1792):
                        revert with 0, 17
                    if not stor4:
                        revert with 0, 18
                    mem[var123003 + 96] = uint256(sidepot[arg1].field_1792) * uint256(sidepotMembers[arg1][var123006].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] / stor4
                    mem[32] = 12
                    if var123006 >= uint256(sidepotMembers[arg1].field_0):
                        revert with 0, 50
                    mem[var123003 + 128] = address(sidepotMembers[arg1][var123006].field_768)
                    uint256(stor[var123005])++
                    mem[0] = var123005
                    uint256(stor[(5 * uint256(stor[var123005])) + sha3(var123005)]) = mem[var123004]
                    uint256(stor[(5 * uint256(stor[var123005])) + sha3(var123005) + 1]) = mem[var123004 + 32]
                    uint256(stor[(5 * uint256(stor[var123005])) + sha3(var123005) + 2]) = mem[var123004 + 64]
                    uint256(stor[(5 * uint256(stor[var123005])) + sha3(var123005) + 3]) = mem[var123004 + 96]
                    address(stor[(5 * uint256(stor[var123005])) + sha3(var123005) + 4]) = mem[var123004 + 140 len 20]
                    # nil
            else:
                mem[0] = arg1
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = gubAddyAddress
                mem[mem[64] + 68] = uint256(sidepot[arg1].field_256)
                require ext_code.size(arg3)
                call arg3.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), gubAddyAddress, uint256(sidepot[arg1].field_256)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _358 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_358] == bool(mem[_358])
                if var99001 < 1:
                    revert with 0, 17
                if var103002 > var103001:
                    uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
                if var105001 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                if uint256(stor[(4 * var107001) + sha3(var107002) + 2]) == arg2:
                    _2849 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[32] = 12
                    if var109001 < uint256(sidepotMembers[arg1].field_0):
                        mem[0] = sha3(arg1, 12)
                        mem[_2849] = uint256(sidepotMembers[arg1][var109001].field_0)
                        mem[_2849 + 32] = arg2
                        mem[0] = arg1
                        mem[32] = 12
                        s = var109001
                        s = 0
                        s = _2849
                        t = _2849
                        u = 0
                        idx = var109001
                        while idx < uint256(sidepotMembers[arg1].field_0):
                            mem[s + 64] = uint256(sidepotMembers[arg1][idx].field_256)
                            if idx >= uint256(sidepotMembers[arg1].field_0):
                                revert with 0, 50
                            if uint256(sidepotMembers[arg1][idx].field_256) and stor4 > -1 / uint256(sidepotMembers[arg1][idx].field_256):
                                revert with 0, 17
                            if not sidepotChoiceTotals[arg1][arg2]:
                                revert with 0, 18
                            if uint256(sidepot[arg1].field_1792) and uint256(sidepotMembers[arg1][idx].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] > -1 / uint256(sidepot[arg1].field_1792):
                                revert with 0, 17
                            if not stor4:
                                revert with 0, 18
                            mem[s + 96] = uint256(sidepot[arg1].field_1792) * uint256(sidepotMembers[arg1][idx].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] / stor4
                            mem[32] = 12
                            if idx >= uint256(sidepotMembers[arg1].field_0):
                                revert with 0, 50
                            mem[s + 128] = address(sidepotMembers[arg1][idx].field_768)
                            uint256(sidepotWinners[arg1][u].field_0)++
                            mem[0] = u + sha3(arg1, 13)
                            uint256(stor[(5 * uint256(sidepotWinners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'sidepotWinners', 13)))].field_0) = mem[t]
                            uint256(stor[(5 * uint256(sidepotWinners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'sidepotWinners', 13)))].field_256) = mem[t + 32]
                            uint256(stor[(5 * uint256(sidepotWinners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'sidepotWinners', 13)))].field_512) = mem[t + 64]
                            uint256(stor[(5 * uint256(sidepotWinners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'sidepotWinners', 13)))].field_768) = mem[t + 96]
                            address(stor[(5 * uint256(sidepotWinners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'sidepotWinners', 13)))].field_1024) = mem[t + 140 len 20]
                            if var113001 == -1:
                                revert with 0, 17
                            if var121001 < 1:
                                revert with 0, 17
                            if var125002 > var125001:
                                uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
                            if var127001 >= uint256(sidepotMembers[arg1].field_0):
                                revert with 0, 50
                            if uint256(stor[(4 * var129001) + sha3(var129002) + 2]) != arg2:
                                # nil
                            else:
                                _9599 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[32] = 12
                                if var129004 >= uint256(sidepotMembers[arg1].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(arg1, 12)
                                mem[_9599] = uint256(sidepotMembers[arg1][var129004].field_0)
                                mem[_9599 + 32] = arg2
                                mem[0] = arg1
                                mem[32] = 12
                                s = var129004
                                s = sha3(arg1, 12)
                                s = _9599
                                t = _9599
                                u = sha3(arg1, 13)
                                idx = var129004
                                continue 
                    revert with 0, 50
                if var111001 == -1:
                    revert with 0, 17
                if var119001 < 1:
                    revert with 0, 17
                if var123002 > var123001:
                    uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
                if var125001 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                if uint256(stor[(4 * var127001) + sha3(var127002) + 2]) != arg2:
                    if var131001 == -1:
                        revert with 0, 17
                    # nil
                else:
                    mem[64] = mem[64] + 160
                    mem[32] = 12
                    if var129001 >= uint256(sidepotMembers[arg1].field_0):
                        revert with 0, 50
                    mem[0] = var131002
                    mem[var131003] = uint256(stor[(4 * var131001) + sha3(var131002)])
                    mem[var131003 + 32] = arg2
                    if var131006 >= uint256(sidepotMembers[arg1].field_0):
                        revert with 0, 50
                    mem[var131003 + 64] = uint256(sidepotMembers[arg1][var131006].field_256)
                    if var131006 >= uint256(sidepotMembers[arg1].field_0):
                        revert with 0, 50
                    if uint256(sidepotMembers[arg1][var131006].field_256) and stor4 > -1 / uint256(sidepotMembers[arg1][var131006].field_256):
                        revert with 0, 17
                    if not sidepotChoiceTotals[arg1][arg2]:
                        revert with 0, 18
                    if uint256(sidepot[arg1].field_1792) and uint256(sidepotMembers[arg1][var131006].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] > -1 / uint256(sidepot[arg1].field_1792):
                        revert with 0, 17
                    if not stor4:
                        revert with 0, 18
                    mem[var131003 + 96] = uint256(sidepot[arg1].field_1792) * uint256(sidepotMembers[arg1][var131006].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] / stor4
                    mem[32] = 12
                    if var131006 >= uint256(sidepotMembers[arg1].field_0):
                        revert with 0, 50
                    mem[var131003 + 128] = address(sidepotMembers[arg1][var131006].field_768)
                    uint256(stor[var131005])++
                    mem[0] = var131005
                    uint256(stor[(5 * uint256(stor[var131005])) + sha3(var131005)]) = mem[var131004]
                    uint256(stor[(5 * uint256(stor[var131005])) + sha3(var131005) + 1]) = mem[var131004 + 32]
                    uint256(stor[(5 * uint256(stor[var131005])) + sha3(var131005) + 2]) = mem[var131004 + 64]
                    uint256(stor[(5 * uint256(stor[var131005])) + sha3(var131005) + 3]) = mem[var131004 + 96]
                    address(stor[(5 * uint256(stor[var131005])) + sha3(var131005) + 4]) = mem[var131004 + 140 len 20]
                    # nil
        else:
            if uint256(sidepot[arg1].field_1792) > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            uint256(sidepot[arg1].field_256) = 4 * uint256(sidepot[arg1].field_1792) / 100
            if uint256(sidepot[arg1].field_1792) < uint256(sidepot[arg1].field_256):
                revert with 0, 17
            uint256(sidepot[arg1].field_1792) -= uint256(sidepot[arg1].field_256)
            if stor5 == stakeToken[arg1]:
                call gubAddyAddress with:
                   value uint256(sidepot[arg1].field_256) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if var91001 < 1:
                    revert with 0, 17
                if var95002 > var95001:
                    uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
                if var97001 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                if uint256(stor[(4 * var99001) + sha3(var99002) + 2]) == arg2:
                    _2858 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[32] = 12
                    if var101001 < uint256(sidepotMembers[arg1].field_0):
                        mem[0] = sha3(arg1, 12)
                        mem[_2858] = uint256(sidepotMembers[arg1][var101001].field_0)
                        mem[_2858 + 32] = arg2
                        mem[0] = arg1
                        mem[32] = 12
                        s = var101001
                        s = 0
                        s = _2858
                        t = _2858
                        u = 0
                        idx = var101001
                        while idx < uint256(sidepotMembers[arg1].field_0):
                            mem[s + 64] = uint256(sidepotMembers[arg1][idx].field_256)
                            if idx >= uint256(sidepotMembers[arg1].field_0):
                                revert with 0, 50
                            if uint256(sidepotMembers[arg1][idx].field_256) and stor4 > -1 / uint256(sidepotMembers[arg1][idx].field_256):
                                revert with 0, 17
                            if not sidepotChoiceTotals[arg1][arg2]:
                                revert with 0, 18
                            if uint256(sidepot[arg1].field_1792) and uint256(sidepotMembers[arg1][idx].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] > -1 / uint256(sidepot[arg1].field_1792):
                                revert with 0, 17
                            if not stor4:
                                revert with 0, 18
                            mem[s + 96] = uint256(sidepot[arg1].field_1792) * uint256(sidepotMembers[arg1][idx].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] / stor4
                            mem[32] = 12
                            if idx >= uint256(sidepotMembers[arg1].field_0):
                                revert with 0, 50
                            mem[s + 128] = address(sidepotMembers[arg1][idx].field_768)
                            uint256(sidepotWinners[arg1][u].field_0)++
                            mem[0] = u + sha3(arg1, 13)
                            uint256(stor[(5 * uint256(sidepotWinners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'sidepotWinners', 13)))].field_0) = mem[t]
                            uint256(stor[(5 * uint256(sidepotWinners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'sidepotWinners', 13)))].field_256) = mem[t + 32]
                            uint256(stor[(5 * uint256(sidepotWinners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'sidepotWinners', 13)))].field_512) = mem[t + 64]
                            uint256(stor[(5 * uint256(sidepotWinners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'sidepotWinners', 13)))].field_768) = mem[t + 96]
                            address(stor[(5 * uint256(sidepotWinners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'sidepotWinners', 13)))].field_1024) = mem[t + 140 len 20]
                            if var105001 == -1:
                                revert with 0, 17
                            if var113001 < 1:
                                revert with 0, 17
                            if var117002 > var117001:
                                uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
                            if var119001 >= uint256(sidepotMembers[arg1].field_0):
                                revert with 0, 50
                            if uint256(stor[(4 * var121001) + sha3(var121002) + 2]) != arg2:
                                # nil
                            else:
                                _9614 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[32] = 12
                                if var121004 >= uint256(sidepotMembers[arg1].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(arg1, 12)
                                mem[_9614] = uint256(sidepotMembers[arg1][var121004].field_0)
                                mem[_9614 + 32] = arg2
                                mem[0] = arg1
                                mem[32] = 12
                                s = var121004
                                s = sha3(arg1, 12)
                                s = _9614
                                t = _9614
                                u = sha3(arg1, 13)
                                idx = var121004
                                continue 
                    revert with 0, 50
                if var103001 == -1:
                    revert with 0, 17
                if var111001 < 1:
                    revert with 0, 17
                if var115002 > var115001:
                    uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
                if var117001 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                if uint256(stor[(4 * var119001) + sha3(var119002) + 2]) != arg2:
                    if var123001 == -1:
                        revert with 0, 17
                    # nil
                else:
                    mem[64] = mem[64] + 160
                    mem[32] = 12
                    if var121001 >= uint256(sidepotMembers[arg1].field_0):
                        revert with 0, 50
                    mem[0] = var123002
                    mem[var123003] = uint256(stor[(4 * var123001) + sha3(var123002)])
                    mem[var123003 + 32] = arg2
                    if var123006 >= uint256(sidepotMembers[arg1].field_0):
                        revert with 0, 50
                    mem[var123003 + 64] = uint256(sidepotMembers[arg1][var123006].field_256)
                    if var123006 >= uint256(sidepotMembers[arg1].field_0):
                        revert with 0, 50
                    if uint256(sidepotMembers[arg1][var123006].field_256) and stor4 > -1 / uint256(sidepotMembers[arg1][var123006].field_256):
                        revert with 0, 17
                    if not sidepotChoiceTotals[arg1][arg2]:
                        revert with 0, 18
                    if uint256(sidepot[arg1].field_1792) and uint256(sidepotMembers[arg1][var123006].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] > -1 / uint256(sidepot[arg1].field_1792):
                        revert with 0, 17
                    if not stor4:
                        revert with 0, 18
                    mem[var123003 + 96] = uint256(sidepot[arg1].field_1792) * uint256(sidepotMembers[arg1][var123006].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] / stor4
                    mem[32] = 12
                    if var123006 >= uint256(sidepotMembers[arg1].field_0):
                        revert with 0, 50
                    mem[var123003 + 128] = address(sidepotMembers[arg1][var123006].field_768)
                    uint256(stor[var123005])++
                    mem[0] = var123005
                    uint256(stor[(5 * uint256(stor[var123005])) + sha3(var123005)]) = mem[var123004]
                    uint256(stor[(5 * uint256(stor[var123005])) + sha3(var123005) + 1]) = mem[var123004 + 32]
                    uint256(stor[(5 * uint256(stor[var123005])) + sha3(var123005) + 2]) = mem[var123004 + 64]
                    uint256(stor[(5 * uint256(stor[var123005])) + sha3(var123005) + 3]) = mem[var123004 + 96]
                    address(stor[(5 * uint256(stor[var123005])) + sha3(var123005) + 4]) = mem[var123004 + 140 len 20]
                    # nil
            else:
                mem[0] = arg1
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = gubAddyAddress
                mem[mem[64] + 68] = uint256(sidepot[arg1].field_256)
                require ext_code.size(arg3)
                call arg3.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), gubAddyAddress, uint256(sidepot[arg1].field_256)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _360 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_360] == bool(mem[_360])
                if var99001 < 1:
                    revert with 0, 17
                if var103002 > var103001:
                    uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
                if var105001 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                if uint256(stor[(4 * var107001) + sha3(var107002) + 2]) == arg2:
                    _2855 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[32] = 12
                    if var109001 < uint256(sidepotMembers[arg1].field_0):
                        mem[0] = sha3(arg1, 12)
                        mem[_2855] = uint256(sidepotMembers[arg1][var109001].field_0)
                        mem[_2855 + 32] = arg2
                        mem[0] = arg1
                        mem[32] = 12
                        s = var109001
                        s = 0
                        s = _2855
                        t = _2855
                        u = 0
                        idx = var109001
                        while idx < uint256(sidepotMembers[arg1].field_0):
                            mem[s + 64] = uint256(sidepotMembers[arg1][idx].field_256)
                            if idx >= uint256(sidepotMembers[arg1].field_0):
                                revert with 0, 50
                            if uint256(sidepotMembers[arg1][idx].field_256) and stor4 > -1 / uint256(sidepotMembers[arg1][idx].field_256):
                                revert with 0, 17
                            if not sidepotChoiceTotals[arg1][arg2]:
                                revert with 0, 18
                            if uint256(sidepot[arg1].field_1792) and uint256(sidepotMembers[arg1][idx].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] > -1 / uint256(sidepot[arg1].field_1792):
                                revert with 0, 17
                            if not stor4:
                                revert with 0, 18
                            mem[s + 96] = uint256(sidepot[arg1].field_1792) * uint256(sidepotMembers[arg1][idx].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] / stor4
                            mem[32] = 12
                            if idx >= uint256(sidepotMembers[arg1].field_0):
                                revert with 0, 50
                            mem[s + 128] = address(sidepotMembers[arg1][idx].field_768)
                            uint256(sidepotWinners[arg1][u].field_0)++
                            mem[0] = u + sha3(arg1, 13)
                            uint256(stor[(5 * uint256(sidepotWinners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'sidepotWinners', 13)))].field_0) = mem[t]
                            uint256(stor[(5 * uint256(sidepotWinners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'sidepotWinners', 13)))].field_256) = mem[t + 32]
                            uint256(stor[(5 * uint256(sidepotWinners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'sidepotWinners', 13)))].field_512) = mem[t + 64]
                            uint256(stor[(5 * uint256(sidepotWinners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'sidepotWinners', 13)))].field_768) = mem[t + 96]
                            address(stor[(5 * uint256(sidepotWinners[arg1][u].field_0)) + ('array', ('var', 3), ('map', ('param', 'arg1'), ('name', 'sidepotWinners', 13)))].field_1024) = mem[t + 140 len 20]
                            if var113001 == -1:
                                revert with 0, 17
                            if var121001 < 1:
                                revert with 0, 17
                            if var125002 > var125001:
                                uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
                            if var127001 >= uint256(sidepotMembers[arg1].field_0):
                                revert with 0, 50
                            if uint256(stor[(4 * var129001) + sha3(var129002) + 2]) != arg2:
                                # nil
                            else:
                                _9609 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[32] = 12
                                if var129004 >= uint256(sidepotMembers[arg1].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(arg1, 12)
                                mem[_9609] = uint256(sidepotMembers[arg1][var129004].field_0)
                                mem[_9609 + 32] = arg2
                                mem[0] = arg1
                                mem[32] = 12
                                s = var129004
                                s = sha3(arg1, 12)
                                s = _9609
                                t = _9609
                                u = sha3(arg1, 13)
                                idx = var129004
                                continue 
                    revert with 0, 50
                if var111001 == -1:
                    revert with 0, 17
                if var119001 < 1:
                    revert with 0, 17
                if var123002 > var123001:
                    uint256(sidepot[arg1].field_1536) = uint256(sidepotWinners[arg1].field_0)
                if var125001 >= uint256(sidepotMembers[arg1].field_0):
                    revert with 0, 50
                if uint256(stor[(4 * var127001) + sha3(var127002) + 2]) != arg2:
                    if var131001 == -1:
                        revert with 0, 17
                    # nil
                else:
                    mem[64] = mem[64] + 160
                    mem[32] = 12
                    if var129001 >= uint256(sidepotMembers[arg1].field_0):
                        revert with 0, 50
                    mem[0] = var131002
                    mem[var131003] = uint256(stor[(4 * var131001) + sha3(var131002)])
                    mem[var131003 + 32] = arg2
                    if var131006 >= uint256(sidepotMembers[arg1].field_0):
                        revert with 0, 50
                    mem[var131003 + 64] = uint256(sidepotMembers[arg1][var131006].field_256)
                    if var131006 >= uint256(sidepotMembers[arg1].field_0):
                        revert with 0, 50
                    if uint256(sidepotMembers[arg1][var131006].field_256) and stor4 > -1 / uint256(sidepotMembers[arg1][var131006].field_256):
                        revert with 0, 17
                    if not sidepotChoiceTotals[arg1][arg2]:
                        revert with 0, 18
                    if uint256(sidepot[arg1].field_1792) and uint256(sidepotMembers[arg1][var131006].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] > -1 / uint256(sidepot[arg1].field_1792):
                        revert with 0, 17
                    if not stor4:
                        revert with 0, 18
                    mem[var131003 + 96] = uint256(sidepot[arg1].field_1792) * uint256(sidepotMembers[arg1][var131006].field_256) * stor4 / sidepotChoiceTotals[arg1][arg2] / stor4
                    mem[32] = 12
                    if var131006 >= uint256(sidepotMembers[arg1].field_0):
                        revert with 0, 50
                    mem[var131003 + 128] = address(sidepotMembers[arg1][var131006].field_768)
                    uint256(stor[var131005])++
                    mem[0] = var131005
                    uint256(stor[(5 * uint256(stor[var131005])) + sha3(var131005)]) = mem[var131004]
                    uint256(stor[(5 * uint256(stor[var131005])) + sha3(var131005) + 1]) = mem[var131004 + 32]
                    uint256(stor[(5 * uint256(stor[var131005])) + sha3(var131005) + 2]) = mem[var131004 + 64]
                    uint256(stor[(5 * uint256(stor[var131005])) + sha3(var131005) + 3]) = mem[var131004 + 96]
                    address(stor[(5 * uint256(stor[var131005])) + sha3(var131005) + 4]) = mem[var131004 + 140 len 20]
                    # nil
}

function claimSidePool(bytes32 arg1, uint256 arg2, string arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(arg3.length) + 128 < 96 or ceil32(arg3.length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(arg3.length) + 132] = arg2
    require ext_code.size(stor7)
    staticcall stor7.0xb0467deb with:
            gas gas_remaining wei
           args arg2
    mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Incorrect address'
    mem[ceil32(arg3.length) + ceil32(return_data.size) + 160 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    mem[ceil32(arg3.length) + ceil32(return_data.size) + 128] = arg3.length
    mem[64] = arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 160
    if stor17[arg1] != sha3(mem[ceil32(arg3.length) + ceil32(return_data.size) + 160 len arg3.length]):
        revert with 0, 'Incorrect secret'
    if block.timestamp <= timeExpires[arg1]:
        revert with 0, 'Claim not available'
    if not uint256(sidepotWinners[arg1].field_0):
        revert with 0, 'No sidepot winners'
    if ceil32(arg3.length) <= arg3.length:
        if stor5 == stakeToken[arg1]:
            if var68001 < 1:
                revert with 0, 17
            if var72002 > var72001:
                if uint256(sidepotWinners[arg1].field_0):
                uint256(sidepotMembers[arg1].field_0) = 0
                idx = 0
                while 4 * uint256(sidepotMembers[arg1].field_0) > idx:
                    uint256(sidepotMembers[arg1][idx].field_0) = 0
                    uint256(sidepotMembers[arg1][idx].field_256) = 0
                    uint256(sidepotMembers[arg1][idx].field_512) = 0
                    address(sidepotMembers[arg1][idx].field_768) = 0
                    idx = idx + 4
                    continue 
                uint8(sidepot[arg1].field_0) = 0
                uint256(sidepot[arg1].field_256) = 0
                uint256(sidepot[arg1].field_512) = 0
                uint256(sidepot[arg1].field_768) = 0
                uint256(sidepot[arg1].field_1024) = 0
                uint256(sidepot[arg1].field_1280) = 0
                uint256(sidepot[arg1].field_1536) = 0
                uint256(sidepot[arg1].field_1792) = 0
                if 1 >= betIDRec.length:
                    if 0 >= betIDRec.length:
                        revert with 0, 50
                    if arg1 == betIDRec:
                        if 0 >= betIDRec.length:
                            revert with 0, 50
                        betIDRec = 0
                        if not betIDRec.length:
                            revert with 0, 49
                        betIDRec[betIDRec.length] = 0
                        betIDRec.length--
                    if not numberOfBets:
                        revert with 0, 17
                    numberOfBets--
                if betIDRec.length < 1:
                    revert with 0, 17
                if var87002 > betIDRec.length - 1:
                    if not numberOfBets:
                        revert with 0, 17
                    numberOfBets--
                if var89001 >= betIDRec.length:
                    revert with 0, 50
                if arg1 != betIDRec[var91001]:
                    if var95001 == -1:
                        revert with 0, 17
                    if betIDRec.length < 1:
                        revert with 0, 17
                    # nil
                else:
                    if var93001 >= betIDRec.length:
                        revert with 0, 50
                    betIDRec[var95001] = 0
                    if betIDRec.length < 1:
                        revert with 0, 17
                    if betIDRec.length - 1 >= betIDRec.length:
                        revert with 0, 50
                    if var101003 >= betIDRec.length:
                        revert with 0, 50
                    betIDRec[var101003] = betIDRec[betIDRec.length]
                    if not betIDRec.length:
                        revert with 0, 49
                    betIDRec[betIDRec.length] = 0
                    betIDRec.length--
                    if var100001 == -1:
                        revert with 0, 17
                    # nil
            else:
                if var74001 >= uint256(sidepotWinners[arg1].field_0):
                    revert with 0, 50
                if arg2 == uint256(stor[(5 * var76001) + sha3(var76002)]):
                    if stor5 != stakeToken[arg1]:
                        if not var93001:
                            if var86001 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            if var88003 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            call var90004 with:
                               value uint256(stor[(5 * var90001) + sha3(var90002) + 3]) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if var94001 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            address(stor[var96004][uint256(stor[sha3(var96002) + (5 * var96001)])]) = 0
                            if var96005 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            uint256(stor[(5 * var98001) + sha3(var98002)]) = 0
                            uint256(stor[(5 * var98001) + sha3(var98002) + 1]) = 0
                            uint256(stor[(5 * var98001) + sha3(var98002) + 2]) = 0
                            uint256(stor[(5 * var98001) + sha3(var98002) + 3]) = 0
                            address(stor[(5 * var98001) + sha3(var98002) + 4]) = 0
                            # nil
                        else:
                            if var94001 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            mem[32] = 13
                            if var96006 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            mem[0] = var98002
                            mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[var100001] = this.address
                            mem[var100001 + 32] = address(var100003)
                            mem[var100001 + 64] = var100002
                            require ext_code.size(stakeToken[arg1])
                            call stakeToken[arg1].mem[var104004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var104004 + 4 len var104005 - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require var108002 - var108001 >= 32
                            # nil
                    else:
                        if var84001:
                            if var95001 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            mem[32] = 13
                            if var97006 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            mem[0] = var99002
                            mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[var101001] = this.address
                            mem[var101001 + 32] = address(var101003)
                            mem[var101001 + 64] = var101002
                            require ext_code.size(stakeToken[arg1])
                            call stakeToken[arg1].mem[var105004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var105004 + 4 len var105005 - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require var109002 - var109001 >= 32
                            # nil
                        else:
                            if var84002 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            if var84002 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            call address(sidepotWinners[arg1][var84002].field_1024) with:
                               value uint256(sidepotWinners[arg1][var84002].field_768) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if var99001 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            address(stor[var101004][uint256(stor[sha3(var101002) + (5 * var101001)])]) = 0
                            if var101005 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            uint256(stor[(5 * var103001) + sha3(var103002)]) = 0
                            uint256(stor[(5 * var103001) + sha3(var103002) + 1]) = 0
                            uint256(stor[(5 * var103001) + sha3(var103002) + 2]) = 0
                            uint256(stor[(5 * var103001) + sha3(var103002) + 3]) = 0
                            address(stor[(5 * var103001) + sha3(var103002) + 4]) = 0
                            if var107001 == -1:
                                revert with 0, 17
                            # nil
                else:
                    if var80001 == -1:
                        revert with 0, 17
                    if var88001 < 1:
                        revert with 0, 17
                    if var92002 <= var92001:
                        if var94001 >= uint256(sidepotWinners[arg1].field_0):
                            revert with 0, 50
                        if arg2 != uint256(stor[(5 * var96001) + sha3(var96002)]):
                            if var100001 == -1:
                                revert with 0, 17
                            # nil
                        else:
                            # nil
                    else:
                        if uint256(sidepotWinners[arg1].field_0):
                        uint256(sidepotMembers[arg1].field_0) = 0
                        idx = 0
                        while 4 * uint256(sidepotMembers[arg1].field_0) > idx:
                            uint256(sidepotMembers[arg1][idx].field_0) = 0
                            uint256(sidepotMembers[arg1][idx].field_256) = 0
                            uint256(sidepotMembers[arg1][idx].field_512) = 0
                            address(sidepotMembers[arg1][idx].field_768) = 0
                            idx = idx + 4
                            continue 
                        uint8(sidepot[arg1].field_0) = 0
                        uint256(sidepot[arg1].field_256) = 0
                        uint256(sidepot[arg1].field_512) = 0
                        uint256(sidepot[arg1].field_768) = 0
                        uint256(sidepot[arg1].field_1024) = 0
                        uint256(sidepot[arg1].field_1280) = 0
                        uint256(sidepot[arg1].field_1536) = 0
                        uint256(sidepot[arg1].field_1792) = 0
                        if 1 < betIDRec.length:
                            if betIDRec.length < 1:
                                revert with 0, 17
                            # nil
                        else:
                            if 0 >= betIDRec.length:
                                revert with 0, 50
                            if arg1 == betIDRec:
                                if 0 >= betIDRec.length:
                                    revert with 0, 50
                                betIDRec = 0
                                if not betIDRec.length:
                                    revert with 0, 49
                                betIDRec[betIDRec.length] = 0
                                betIDRec.length--
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
        else:
            mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 164] = this.address
            mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 196] = this.address
            require ext_code.size(stakeToken[arg1])
            staticcall stakeToken[arg1].0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), this.address
            mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 164] = this.address
            require ext_code.size(stakeToken[arg1])
            staticcall stakeToken[arg1].0x70a08231 with:
                    gas gas_remaining wei
                   args mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 32]
            mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 160
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                if var86001 < 1:
                    revert with 0, 17
                if var90002 > var90001:
                    if uint256(sidepotWinners[arg1].field_0):
                    uint256(sidepotMembers[arg1].field_0) = 0
                    idx = 0
                    while 4 * uint256(sidepotMembers[arg1].field_0) > idx:
                        uint256(sidepotMembers[arg1][idx].field_0) = 0
                        uint256(sidepotMembers[arg1][idx].field_256) = 0
                        uint256(sidepotMembers[arg1][idx].field_512) = 0
                        address(sidepotMembers[arg1][idx].field_768) = 0
                        idx = idx + 4
                        continue 
                    uint8(sidepot[arg1].field_0) = 0
                    uint256(sidepot[arg1].field_256) = 0
                    uint256(sidepot[arg1].field_512) = 0
                    uint256(sidepot[arg1].field_768) = 0
                    uint256(sidepot[arg1].field_1024) = 0
                    uint256(sidepot[arg1].field_1280) = 0
                    uint256(sidepot[arg1].field_1536) = 0
                    uint256(sidepot[arg1].field_1792) = 0
                    if 1 >= betIDRec.length:
                        if 0 >= betIDRec.length:
                            revert with 0, 50
                        if arg1 == betIDRec:
                            if 0 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec = 0
                            if not betIDRec.length:
                                revert with 0, 49
                            betIDRec[betIDRec.length] = 0
                            betIDRec.length--
                        if not numberOfBets:
                            revert with 0, 17
                        numberOfBets--
                    if betIDRec.length < 1:
                        revert with 0, 17
                    if var105002 > betIDRec.length - 1:
                        if not numberOfBets:
                            revert with 0, 17
                        numberOfBets--
                    if var107001 >= betIDRec.length:
                        revert with 0, 50
                    if arg1 != betIDRec[var109001]:
                        if var113001 == -1:
                            revert with 0, 17
                        if betIDRec.length < 1:
                            revert with 0, 17
                        # nil
                    else:
                        if var111001 >= betIDRec.length:
                            revert with 0, 50
                        betIDRec[var113001] = 0
                        if betIDRec.length < 1:
                            revert with 0, 17
                        if betIDRec.length - 1 >= betIDRec.length:
                            revert with 0, 50
                        if var119003 >= betIDRec.length:
                            revert with 0, 50
                        betIDRec[var119003] = betIDRec[betIDRec.length]
                        if not betIDRec.length:
                            revert with 0, 49
                        betIDRec[betIDRec.length] = 0
                        betIDRec.length--
                        if var118001 == -1:
                            revert with 0, 17
                        # nil
                else:
                    if var92001 >= uint256(sidepotWinners[arg1].field_0):
                        revert with 0, 50
                    if arg2 == uint256(stor[(5 * var94001) + sha3(var94002)]):
                        if stor5 != stakeToken[arg1]:
                            if not var111001:
                                if var104001 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                if var106003 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                call var108004 with:
                                   value uint256(stor[(5 * var108001) + sha3(var108002) + 3]) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if var112001 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                address(stor[var114004][uint256(stor[sha3(var114002) + (5 * var114001)])]) = 0
                                if var114005 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                uint256(stor[(5 * var116001) + sha3(var116002)]) = 0
                                uint256(stor[(5 * var116001) + sha3(var116002) + 1]) = 0
                                uint256(stor[(5 * var116001) + sha3(var116002) + 2]) = 0
                                uint256(stor[(5 * var116001) + sha3(var116002) + 3]) = 0
                                address(stor[(5 * var116001) + sha3(var116002) + 4]) = 0
                                # nil
                            else:
                                if var112001 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                mem[32] = 13
                                if var114006 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                mem[0] = var116002
                                mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[var118001] = this.address
                                mem[var118001 + 32] = address(var118003)
                                mem[var118001 + 64] = var118002
                                require ext_code.size(stakeToken[arg1])
                                call stakeToken[arg1].mem[var122004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var122004 + 4 len var122005 - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require var126002 - var126001 >= 32
                                # nil
                        else:
                            if var102001:
                                if var113001 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                mem[32] = 13
                                if var115006 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                mem[0] = var117002
                                mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[var119001] = this.address
                                mem[var119001 + 32] = address(var119003)
                                mem[var119001 + 64] = var119002
                                require ext_code.size(stakeToken[arg1])
                                call stakeToken[arg1].mem[var123004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var123004 + 4 len var123005 - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require var127002 - var127001 >= 32
                                # nil
                            else:
                                if var102002 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                if var102002 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                call address(sidepotWinners[arg1][var102002].field_1024) with:
                                   value uint256(sidepotWinners[arg1][var102002].field_768) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if var117001 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                address(stor[var119004][uint256(stor[sha3(var119002) + (5 * var119001)])]) = 0
                                if var119005 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                uint256(stor[(5 * var121001) + sha3(var121002)]) = 0
                                uint256(stor[(5 * var121001) + sha3(var121002) + 1]) = 0
                                uint256(stor[(5 * var121001) + sha3(var121002) + 2]) = 0
                                uint256(stor[(5 * var121001) + sha3(var121002) + 3]) = 0
                                address(stor[(5 * var121001) + sha3(var121002) + 4]) = 0
                                if var125001 == -1:
                                    revert with 0, 17
                                # nil
                    else:
                        if var98001 == -1:
                            revert with 0, 17
                        if var106001 < 1:
                            revert with 0, 17
                        if var110002 <= var110001:
                            if var112001 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            if arg2 != uint256(stor[(5 * var114001) + sha3(var114002)]):
                                if var118001 == -1:
                                    revert with 0, 17
                                # nil
                            else:
                                # nil
                        else:
                            if uint256(sidepotWinners[arg1].field_0):
                            uint256(sidepotMembers[arg1].field_0) = 0
                            idx = 0
                            while 4 * uint256(sidepotMembers[arg1].field_0) > idx:
                                uint256(sidepotMembers[arg1][idx].field_0) = 0
                                uint256(sidepotMembers[arg1][idx].field_256) = 0
                                uint256(sidepotMembers[arg1][idx].field_512) = 0
                                address(sidepotMembers[arg1][idx].field_768) = 0
                                idx = idx + 4
                                continue 
                            uint8(sidepot[arg1].field_0) = 0
                            uint256(sidepot[arg1].field_256) = 0
                            uint256(sidepot[arg1].field_512) = 0
                            uint256(sidepot[arg1].field_768) = 0
                            uint256(sidepot[arg1].field_1024) = 0
                            uint256(sidepot[arg1].field_1280) = 0
                            uint256(sidepot[arg1].field_1536) = 0
                            uint256(sidepot[arg1].field_1792) = 0
                            if 1 < betIDRec.length:
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                # nil
                            else:
                                if 0 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 == betIDRec:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec = 0
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                if not numberOfBets:
                                    revert with 0, 17
                                numberOfBets--
            else:
                mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 164] = this.address
                require ext_code.size(stakeToken[arg1])
                staticcall stakeToken[arg1].0x70a08231 with:
                        gas gas_remaining wei
                       args mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 164 len (5 * ceil32(return_data.size)) + 32]
                mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[arg3.length + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 164] = this.address
                mem[arg3.length + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                require ext_code.size(stakeToken[arg1])
                call stakeToken[arg1].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), ext_call.return_data[0], mem[arg3.length + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
                mem[arg3.length + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = arg3.length + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 160
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if var105001 < 1:
                    revert with 0, 17
                if var109002 > var109001:
                    if uint256(sidepotWinners[arg1].field_0):
                    uint256(sidepotMembers[arg1].field_0) = 0
                    idx = 0
                    while 4 * uint256(sidepotMembers[arg1].field_0) > idx:
                        uint256(sidepotMembers[arg1][idx].field_0) = 0
                        uint256(sidepotMembers[arg1][idx].field_256) = 0
                        uint256(sidepotMembers[arg1][idx].field_512) = 0
                        address(sidepotMembers[arg1][idx].field_768) = 0
                        idx = idx + 4
                        continue 
                    uint8(sidepot[arg1].field_0) = 0
                    uint256(sidepot[arg1].field_256) = 0
                    uint256(sidepot[arg1].field_512) = 0
                    uint256(sidepot[arg1].field_768) = 0
                    uint256(sidepot[arg1].field_1024) = 0
                    uint256(sidepot[arg1].field_1280) = 0
                    uint256(sidepot[arg1].field_1536) = 0
                    uint256(sidepot[arg1].field_1792) = 0
                    if 1 >= betIDRec.length:
                        if 0 >= betIDRec.length:
                            revert with 0, 50
                        if arg1 == betIDRec:
                            if 0 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec = 0
                            if not betIDRec.length:
                                revert with 0, 49
                            betIDRec[betIDRec.length] = 0
                            betIDRec.length--
                        if not numberOfBets:
                            revert with 0, 17
                        numberOfBets--
                    if betIDRec.length < 1:
                        revert with 0, 17
                    if var124002 > betIDRec.length - 1:
                        if not numberOfBets:
                            revert with 0, 17
                        numberOfBets--
                    if var126001 >= betIDRec.length:
                        revert with 0, 50
                    if arg1 != betIDRec[var128001]:
                        if var132001 == -1:
                            revert with 0, 17
                        if betIDRec.length < 1:
                            revert with 0, 17
                        # nil
                    else:
                        if var130001 >= betIDRec.length:
                            revert with 0, 50
                        betIDRec[var132001] = 0
                        if betIDRec.length < 1:
                            revert with 0, 17
                        if betIDRec.length - 1 >= betIDRec.length:
                            revert with 0, 50
                        if var138003 >= betIDRec.length:
                            revert with 0, 50
                        betIDRec[var138003] = betIDRec[betIDRec.length]
                        if not betIDRec.length:
                            revert with 0, 49
                        betIDRec[betIDRec.length] = 0
                        betIDRec.length--
                        if var137001 == -1:
                            revert with 0, 17
                        # nil
                else:
                    if var111001 >= uint256(sidepotWinners[arg1].field_0):
                        revert with 0, 50
                    if arg2 == uint256(stor[(5 * var113001) + sha3(var113002)]):
                        if stor5 != stakeToken[arg1]:
                            if not var130001:
                                if var123001 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                if var125003 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                call var127004 with:
                                   value uint256(stor[(5 * var127001) + sha3(var127002) + 3]) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if var131001 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                address(stor[var133004][uint256(stor[sha3(var133002) + (5 * var133001)])]) = 0
                                if var133005 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                uint256(stor[(5 * var135001) + sha3(var135002)]) = 0
                                uint256(stor[(5 * var135001) + sha3(var135002) + 1]) = 0
                                uint256(stor[(5 * var135001) + sha3(var135002) + 2]) = 0
                                uint256(stor[(5 * var135001) + sha3(var135002) + 3]) = 0
                                address(stor[(5 * var135001) + sha3(var135002) + 4]) = 0
                                # nil
                            else:
                                if var131001 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                mem[32] = 13
                                if var133006 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                mem[0] = var135002
                                mem[arg3.length + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[var137001] = this.address
                                mem[var137001 + 32] = address(var137003)
                                mem[var137001 + 64] = var137002
                                require ext_code.size(stakeToken[arg1])
                                call stakeToken[arg1].mem[var141004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var141004 + 4 len var141005 - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require var145002 - var145001 >= 32
                                # nil
                        else:
                            if var121001:
                                if var132001 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                mem[32] = 13
                                if var134006 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                mem[0] = var136002
                                mem[arg3.length + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[var138001] = this.address
                                mem[var138001 + 32] = address(var138003)
                                mem[var138001 + 64] = var138002
                                require ext_code.size(stakeToken[arg1])
                                call stakeToken[arg1].mem[var142004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var142004 + 4 len var142005 - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require var146002 - var146001 >= 32
                                # nil
                            else:
                                if var121002 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                if var121002 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                call address(sidepotWinners[arg1][var121002].field_1024) with:
                                   value uint256(sidepotWinners[arg1][var121002].field_768) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if var136001 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                address(stor[var138004][uint256(stor[sha3(var138002) + (5 * var138001)])]) = 0
                                if var138005 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                uint256(stor[(5 * var140001) + sha3(var140002)]) = 0
                                uint256(stor[(5 * var140001) + sha3(var140002) + 1]) = 0
                                uint256(stor[(5 * var140001) + sha3(var140002) + 2]) = 0
                                uint256(stor[(5 * var140001) + sha3(var140002) + 3]) = 0
                                address(stor[(5 * var140001) + sha3(var140002) + 4]) = 0
                                if var144001 == -1:
                                    revert with 0, 17
                                # nil
                    else:
                        if var117001 == -1:
                            revert with 0, 17
                        if var125001 < 1:
                            revert with 0, 17
                        if var129002 <= var129001:
                            if var131001 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            if arg2 != uint256(stor[(5 * var133001) + sha3(var133002)]):
                                if var137001 == -1:
                                    revert with 0, 17
                                # nil
                            else:
                                # nil
                        else:
                            if uint256(sidepotWinners[arg1].field_0):
                            uint256(sidepotMembers[arg1].field_0) = 0
                            idx = 0
                            while 4 * uint256(sidepotMembers[arg1].field_0) > idx:
                                uint256(sidepotMembers[arg1][idx].field_0) = 0
                                uint256(sidepotMembers[arg1][idx].field_256) = 0
                                uint256(sidepotMembers[arg1][idx].field_512) = 0
                                address(sidepotMembers[arg1][idx].field_768) = 0
                                idx = idx + 4
                                continue 
                            uint8(sidepot[arg1].field_0) = 0
                            uint256(sidepot[arg1].field_256) = 0
                            uint256(sidepot[arg1].field_512) = 0
                            uint256(sidepot[arg1].field_768) = 0
                            uint256(sidepot[arg1].field_1024) = 0
                            uint256(sidepot[arg1].field_1280) = 0
                            uint256(sidepot[arg1].field_1536) = 0
                            uint256(sidepot[arg1].field_1792) = 0
                            if 1 < betIDRec.length:
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                # nil
                            else:
                                if 0 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 == betIDRec:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec = 0
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                if not numberOfBets:
                                    revert with 0, 17
                                numberOfBets--
    else:
        if stor5 == stakeToken[arg1]:
            if var69001 < 1:
                revert with 0, 17
            if var73002 > var73001:
                if uint256(sidepotWinners[arg1].field_0):
                uint256(sidepotMembers[arg1].field_0) = 0
                idx = 0
                while 4 * uint256(sidepotMembers[arg1].field_0) > idx:
                    uint256(sidepotMembers[arg1][idx].field_0) = 0
                    uint256(sidepotMembers[arg1][idx].field_256) = 0
                    uint256(sidepotMembers[arg1][idx].field_512) = 0
                    address(sidepotMembers[arg1][idx].field_768) = 0
                    idx = idx + 4
                    continue 
                uint8(sidepot[arg1].field_0) = 0
                uint256(sidepot[arg1].field_256) = 0
                uint256(sidepot[arg1].field_512) = 0
                uint256(sidepot[arg1].field_768) = 0
                uint256(sidepot[arg1].field_1024) = 0
                uint256(sidepot[arg1].field_1280) = 0
                uint256(sidepot[arg1].field_1536) = 0
                uint256(sidepot[arg1].field_1792) = 0
                if 1 >= betIDRec.length:
                    if 0 >= betIDRec.length:
                        revert with 0, 50
                    if arg1 == betIDRec:
                        if 0 >= betIDRec.length:
                            revert with 0, 50
                        betIDRec = 0
                        if not betIDRec.length:
                            revert with 0, 49
                        betIDRec[betIDRec.length] = 0
                        betIDRec.length--
                    if not numberOfBets:
                        revert with 0, 17
                    numberOfBets--
                if betIDRec.length < 1:
                    revert with 0, 17
                if var88002 > betIDRec.length - 1:
                    if not numberOfBets:
                        revert with 0, 17
                    numberOfBets--
                if var90001 >= betIDRec.length:
                    revert with 0, 50
                if arg1 != betIDRec[var92001]:
                    if var96001 == -1:
                        revert with 0, 17
                    if betIDRec.length < 1:
                        revert with 0, 17
                    # nil
                else:
                    if var94001 >= betIDRec.length:
                        revert with 0, 50
                    betIDRec[var96001] = 0
                    if betIDRec.length < 1:
                        revert with 0, 17
                    if betIDRec.length - 1 >= betIDRec.length:
                        revert with 0, 50
                    if var102003 >= betIDRec.length:
                        revert with 0, 50
                    betIDRec[var102003] = betIDRec[betIDRec.length]
                    if not betIDRec.length:
                        revert with 0, 49
                    betIDRec[betIDRec.length] = 0
                    betIDRec.length--
                    if var101001 == -1:
                        revert with 0, 17
                    # nil
            else:
                if var75001 >= uint256(sidepotWinners[arg1].field_0):
                    revert with 0, 50
                if arg2 == uint256(stor[(5 * var77001) + sha3(var77002)]):
                    if stor5 != stakeToken[arg1]:
                        if not var94001:
                            if var87001 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            if var89003 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            call var91004 with:
                               value uint256(stor[(5 * var91001) + sha3(var91002) + 3]) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if var95001 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            address(stor[var97004][uint256(stor[sha3(var97002) + (5 * var97001)])]) = 0
                            if var97005 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            uint256(stor[(5 * var99001) + sha3(var99002)]) = 0
                            uint256(stor[(5 * var99001) + sha3(var99002) + 1]) = 0
                            uint256(stor[(5 * var99001) + sha3(var99002) + 2]) = 0
                            uint256(stor[(5 * var99001) + sha3(var99002) + 3]) = 0
                            address(stor[(5 * var99001) + sha3(var99002) + 4]) = 0
                            # nil
                        else:
                            if var95001 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            mem[32] = 13
                            if var97006 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            mem[0] = var99002
                            mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[var101001] = this.address
                            mem[var101001 + 32] = address(var101003)
                            mem[var101001 + 64] = var101002
                            require ext_code.size(stakeToken[arg1])
                            call stakeToken[arg1].mem[var105004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var105004 + 4 len var105005 - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require var109002 - var109001 >= 32
                            # nil
                    else:
                        if var85001:
                            if var96001 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            mem[32] = 13
                            if var98006 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            mem[0] = var100002
                            mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[var102001] = this.address
                            mem[var102001 + 32] = address(var102003)
                            mem[var102001 + 64] = var102002
                            require ext_code.size(stakeToken[arg1])
                            call stakeToken[arg1].mem[var106004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var106004 + 4 len var106005 - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require var110002 - var110001 >= 32
                            # nil
                        else:
                            if var85002 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            if var85002 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            call address(sidepotWinners[arg1][var85002].field_1024) with:
                               value uint256(sidepotWinners[arg1][var85002].field_768) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if var100001 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            address(stor[var102004][uint256(stor[sha3(var102002) + (5 * var102001)])]) = 0
                            if var102005 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            uint256(stor[(5 * var104001) + sha3(var104002)]) = 0
                            uint256(stor[(5 * var104001) + sha3(var104002) + 1]) = 0
                            uint256(stor[(5 * var104001) + sha3(var104002) + 2]) = 0
                            uint256(stor[(5 * var104001) + sha3(var104002) + 3]) = 0
                            address(stor[(5 * var104001) + sha3(var104002) + 4]) = 0
                            if var108001 == -1:
                                revert with 0, 17
                            # nil
                else:
                    if var81001 == -1:
                        revert with 0, 17
                    if var89001 < 1:
                        revert with 0, 17
                    if var93002 <= var93001:
                        if var95001 >= uint256(sidepotWinners[arg1].field_0):
                            revert with 0, 50
                        if arg2 != uint256(stor[(5 * var97001) + sha3(var97002)]):
                            if var101001 == -1:
                                revert with 0, 17
                            # nil
                        else:
                            # nil
                    else:
                        if uint256(sidepotWinners[arg1].field_0):
                        uint256(sidepotMembers[arg1].field_0) = 0
                        idx = 0
                        while 4 * uint256(sidepotMembers[arg1].field_0) > idx:
                            uint256(sidepotMembers[arg1][idx].field_0) = 0
                            uint256(sidepotMembers[arg1][idx].field_256) = 0
                            uint256(sidepotMembers[arg1][idx].field_512) = 0
                            address(sidepotMembers[arg1][idx].field_768) = 0
                            idx = idx + 4
                            continue 
                        uint8(sidepot[arg1].field_0) = 0
                        uint256(sidepot[arg1].field_256) = 0
                        uint256(sidepot[arg1].field_512) = 0
                        uint256(sidepot[arg1].field_768) = 0
                        uint256(sidepot[arg1].field_1024) = 0
                        uint256(sidepot[arg1].field_1280) = 0
                        uint256(sidepot[arg1].field_1536) = 0
                        uint256(sidepot[arg1].field_1792) = 0
                        if 1 < betIDRec.length:
                            if betIDRec.length < 1:
                                revert with 0, 17
                            # nil
                        else:
                            if 0 >= betIDRec.length:
                                revert with 0, 50
                            if arg1 == betIDRec:
                                if 0 >= betIDRec.length:
                                    revert with 0, 50
                                betIDRec = 0
                                if not betIDRec.length:
                                    revert with 0, 49
                                betIDRec[betIDRec.length] = 0
                                betIDRec.length--
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
        else:
            mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 164] = this.address
            mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 196] = this.address
            require ext_code.size(stakeToken[arg1])
            staticcall stakeToken[arg1].0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), this.address
            mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 164] = this.address
            require ext_code.size(stakeToken[arg1])
            staticcall stakeToken[arg1].0x70a08231 with:
                    gas gas_remaining wei
                   args mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 32]
            mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 160
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                if var87001 < 1:
                    revert with 0, 17
                if var91002 > var91001:
                    if uint256(sidepotWinners[arg1].field_0):
                    uint256(sidepotMembers[arg1].field_0) = 0
                    idx = 0
                    while 4 * uint256(sidepotMembers[arg1].field_0) > idx:
                        uint256(sidepotMembers[arg1][idx].field_0) = 0
                        uint256(sidepotMembers[arg1][idx].field_256) = 0
                        uint256(sidepotMembers[arg1][idx].field_512) = 0
                        address(sidepotMembers[arg1][idx].field_768) = 0
                        idx = idx + 4
                        continue 
                    uint8(sidepot[arg1].field_0) = 0
                    uint256(sidepot[arg1].field_256) = 0
                    uint256(sidepot[arg1].field_512) = 0
                    uint256(sidepot[arg1].field_768) = 0
                    uint256(sidepot[arg1].field_1024) = 0
                    uint256(sidepot[arg1].field_1280) = 0
                    uint256(sidepot[arg1].field_1536) = 0
                    uint256(sidepot[arg1].field_1792) = 0
                    if 1 >= betIDRec.length:
                        if 0 >= betIDRec.length:
                            revert with 0, 50
                        if arg1 == betIDRec:
                            if 0 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec = 0
                            if not betIDRec.length:
                                revert with 0, 49
                            betIDRec[betIDRec.length] = 0
                            betIDRec.length--
                        if not numberOfBets:
                            revert with 0, 17
                        numberOfBets--
                    if betIDRec.length < 1:
                        revert with 0, 17
                    if var106002 > betIDRec.length - 1:
                        if not numberOfBets:
                            revert with 0, 17
                        numberOfBets--
                    if var108001 >= betIDRec.length:
                        revert with 0, 50
                    if arg1 != betIDRec[var110001]:
                        if var114001 == -1:
                            revert with 0, 17
                        if betIDRec.length < 1:
                            revert with 0, 17
                        # nil
                    else:
                        if var112001 >= betIDRec.length:
                            revert with 0, 50
                        betIDRec[var114001] = 0
                        if betIDRec.length < 1:
                            revert with 0, 17
                        if betIDRec.length - 1 >= betIDRec.length:
                            revert with 0, 50
                        if var120003 >= betIDRec.length:
                            revert with 0, 50
                        betIDRec[var120003] = betIDRec[betIDRec.length]
                        if not betIDRec.length:
                            revert with 0, 49
                        betIDRec[betIDRec.length] = 0
                        betIDRec.length--
                        if var119001 == -1:
                            revert with 0, 17
                        # nil
                else:
                    if var93001 >= uint256(sidepotWinners[arg1].field_0):
                        revert with 0, 50
                    if arg2 == uint256(stor[(5 * var95001) + sha3(var95002)]):
                        if stor5 != stakeToken[arg1]:
                            if not var112001:
                                if var105001 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                if var107003 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                call var109004 with:
                                   value uint256(stor[(5 * var109001) + sha3(var109002) + 3]) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if var113001 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                address(stor[var115004][uint256(stor[sha3(var115002) + (5 * var115001)])]) = 0
                                if var115005 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                uint256(stor[(5 * var117001) + sha3(var117002)]) = 0
                                uint256(stor[(5 * var117001) + sha3(var117002) + 1]) = 0
                                uint256(stor[(5 * var117001) + sha3(var117002) + 2]) = 0
                                uint256(stor[(5 * var117001) + sha3(var117002) + 3]) = 0
                                address(stor[(5 * var117001) + sha3(var117002) + 4]) = 0
                                # nil
                            else:
                                if var113001 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                mem[32] = 13
                                if var115006 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                mem[0] = var117002
                                mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[var119001] = this.address
                                mem[var119001 + 32] = address(var119003)
                                mem[var119001 + 64] = var119002
                                require ext_code.size(stakeToken[arg1])
                                call stakeToken[arg1].mem[var123004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var123004 + 4 len var123005 - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require var127002 - var127001 >= 32
                                # nil
                        else:
                            if var103001:
                                if var114001 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                mem[32] = 13
                                if var116006 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                mem[0] = var118002
                                mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[var120001] = this.address
                                mem[var120001 + 32] = address(var120003)
                                mem[var120001 + 64] = var120002
                                require ext_code.size(stakeToken[arg1])
                                call stakeToken[arg1].mem[var124004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var124004 + 4 len var124005 - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require var128002 - var128001 >= 32
                                # nil
                            else:
                                if var103002 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                if var103002 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                call address(sidepotWinners[arg1][var103002].field_1024) with:
                                   value uint256(sidepotWinners[arg1][var103002].field_768) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if var118001 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                address(stor[var120004][uint256(stor[sha3(var120002) + (5 * var120001)])]) = 0
                                if var120005 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                uint256(stor[(5 * var122001) + sha3(var122002)]) = 0
                                uint256(stor[(5 * var122001) + sha3(var122002) + 1]) = 0
                                uint256(stor[(5 * var122001) + sha3(var122002) + 2]) = 0
                                uint256(stor[(5 * var122001) + sha3(var122002) + 3]) = 0
                                address(stor[(5 * var122001) + sha3(var122002) + 4]) = 0
                                if var126001 == -1:
                                    revert with 0, 17
                                # nil
                    else:
                        if var99001 == -1:
                            revert with 0, 17
                        if var107001 < 1:
                            revert with 0, 17
                        if var111002 <= var111001:
                            if var113001 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            if arg2 != uint256(stor[(5 * var115001) + sha3(var115002)]):
                                if var119001 == -1:
                                    revert with 0, 17
                                # nil
                            else:
                                # nil
                        else:
                            if uint256(sidepotWinners[arg1].field_0):
                            uint256(sidepotMembers[arg1].field_0) = 0
                            idx = 0
                            while 4 * uint256(sidepotMembers[arg1].field_0) > idx:
                                uint256(sidepotMembers[arg1][idx].field_0) = 0
                                uint256(sidepotMembers[arg1][idx].field_256) = 0
                                uint256(sidepotMembers[arg1][idx].field_512) = 0
                                address(sidepotMembers[arg1][idx].field_768) = 0
                                idx = idx + 4
                                continue 
                            uint8(sidepot[arg1].field_0) = 0
                            uint256(sidepot[arg1].field_256) = 0
                            uint256(sidepot[arg1].field_512) = 0
                            uint256(sidepot[arg1].field_768) = 0
                            uint256(sidepot[arg1].field_1024) = 0
                            uint256(sidepot[arg1].field_1280) = 0
                            uint256(sidepot[arg1].field_1536) = 0
                            uint256(sidepot[arg1].field_1792) = 0
                            if 1 < betIDRec.length:
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                # nil
                            else:
                                if 0 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 == betIDRec:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec = 0
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                if not numberOfBets:
                                    revert with 0, 17
                                numberOfBets--
            else:
                mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 164] = this.address
                require ext_code.size(stakeToken[arg1])
                staticcall stakeToken[arg1].0x70a08231 with:
                        gas gas_remaining wei
                       args mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 164 len (5 * ceil32(return_data.size)) + 32]
                mem[arg3.length + ceil32(arg3.length) + (4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[arg3.length + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 164] = this.address
                mem[arg3.length + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                require ext_code.size(stakeToken[arg1])
                call stakeToken[arg1].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), ext_call.return_data[0], mem[arg3.length + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
                mem[arg3.length + ceil32(arg3.length) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = arg3.length + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 160
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if var106001 < 1:
                    revert with 0, 17
                if var110002 > var110001:
                    if uint256(sidepotWinners[arg1].field_0):
                    uint256(sidepotMembers[arg1].field_0) = 0
                    idx = 0
                    while 4 * uint256(sidepotMembers[arg1].field_0) > idx:
                        uint256(sidepotMembers[arg1][idx].field_0) = 0
                        uint256(sidepotMembers[arg1][idx].field_256) = 0
                        uint256(sidepotMembers[arg1][idx].field_512) = 0
                        address(sidepotMembers[arg1][idx].field_768) = 0
                        idx = idx + 4
                        continue 
                    uint8(sidepot[arg1].field_0) = 0
                    uint256(sidepot[arg1].field_256) = 0
                    uint256(sidepot[arg1].field_512) = 0
                    uint256(sidepot[arg1].field_768) = 0
                    uint256(sidepot[arg1].field_1024) = 0
                    uint256(sidepot[arg1].field_1280) = 0
                    uint256(sidepot[arg1].field_1536) = 0
                    uint256(sidepot[arg1].field_1792) = 0
                    if 1 >= betIDRec.length:
                        if 0 >= betIDRec.length:
                            revert with 0, 50
                        if arg1 == betIDRec:
                            if 0 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec = 0
                            if not betIDRec.length:
                                revert with 0, 49
                            betIDRec[betIDRec.length] = 0
                            betIDRec.length--
                        if not numberOfBets:
                            revert with 0, 17
                        numberOfBets--
                    if betIDRec.length < 1:
                        revert with 0, 17
                    if var125002 > betIDRec.length - 1:
                        if not numberOfBets:
                            revert with 0, 17
                        numberOfBets--
                    if var127001 >= betIDRec.length:
                        revert with 0, 50
                    if arg1 != betIDRec[var129001]:
                        if var133001 == -1:
                            revert with 0, 17
                        if betIDRec.length < 1:
                            revert with 0, 17
                        # nil
                    else:
                        if var131001 >= betIDRec.length:
                            revert with 0, 50
                        betIDRec[var133001] = 0
                        if betIDRec.length < 1:
                            revert with 0, 17
                        if betIDRec.length - 1 >= betIDRec.length:
                            revert with 0, 50
                        if var139003 >= betIDRec.length:
                            revert with 0, 50
                        betIDRec[var139003] = betIDRec[betIDRec.length]
                        if not betIDRec.length:
                            revert with 0, 49
                        betIDRec[betIDRec.length] = 0
                        betIDRec.length--
                        if var138001 == -1:
                            revert with 0, 17
                        # nil
                else:
                    if var112001 >= uint256(sidepotWinners[arg1].field_0):
                        revert with 0, 50
                    if arg2 == uint256(stor[(5 * var114001) + sha3(var114002)]):
                        if stor5 != stakeToken[arg1]:
                            if not var131001:
                                if var124001 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                if var126003 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                call var128004 with:
                                   value uint256(stor[(5 * var128001) + sha3(var128002) + 3]) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if var132001 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                address(stor[var134004][uint256(stor[sha3(var134002) + (5 * var134001)])]) = 0
                                if var134005 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                uint256(stor[(5 * var136001) + sha3(var136002)]) = 0
                                uint256(stor[(5 * var136001) + sha3(var136002) + 1]) = 0
                                uint256(stor[(5 * var136001) + sha3(var136002) + 2]) = 0
                                uint256(stor[(5 * var136001) + sha3(var136002) + 3]) = 0
                                address(stor[(5 * var136001) + sha3(var136002) + 4]) = 0
                                # nil
                            else:
                                if var132001 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                mem[32] = 13
                                if var134006 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                mem[0] = var136002
                                mem[arg3.length + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[var138001] = this.address
                                mem[var138001 + 32] = address(var138003)
                                mem[var138001 + 64] = var138002
                                require ext_code.size(stakeToken[arg1])
                                call stakeToken[arg1].mem[var142004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var142004 + 4 len var142005 - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require var146002 - var146001 >= 32
                                # nil
                        else:
                            if var122001:
                                if var133001 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                mem[32] = 13
                                if var135006 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                mem[0] = var137002
                                mem[arg3.length + ceil32(arg3.length) + (7 * ceil32(return_data.size)) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[var139001] = this.address
                                mem[var139001 + 32] = address(var139003)
                                mem[var139001 + 64] = var139002
                                require ext_code.size(stakeToken[arg1])
                                call stakeToken[arg1].mem[var143004 len 4] with:
                                     gas gas_remaining wei
                                    args mem[var143004 + 4 len var143005 - 4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require var147002 - var147001 >= 32
                                # nil
                            else:
                                if var122002 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                if var122002 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                call address(sidepotWinners[arg1][var122002].field_1024) with:
                                   value uint256(sidepotWinners[arg1][var122002].field_768) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if var137001 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                address(stor[var139004][uint256(stor[sha3(var139002) + (5 * var139001)])]) = 0
                                if var139005 >= uint256(sidepotWinners[arg1].field_0):
                                    revert with 0, 50
                                uint256(stor[(5 * var141001) + sha3(var141002)]) = 0
                                uint256(stor[(5 * var141001) + sha3(var141002) + 1]) = 0
                                uint256(stor[(5 * var141001) + sha3(var141002) + 2]) = 0
                                uint256(stor[(5 * var141001) + sha3(var141002) + 3]) = 0
                                address(stor[(5 * var141001) + sha3(var141002) + 4]) = 0
                                if var145001 == -1:
                                    revert with 0, 17
                                # nil
                    else:
                        if var118001 == -1:
                            revert with 0, 17
                        if var126001 < 1:
                            revert with 0, 17
                        if var130002 <= var130001:
                            if var132001 >= uint256(sidepotWinners[arg1].field_0):
                                revert with 0, 50
                            if arg2 != uint256(stor[(5 * var134001) + sha3(var134002)]):
                                if var138001 == -1:
                                    revert with 0, 17
                                # nil
                            else:
                                # nil
                        else:
                            if uint256(sidepotWinners[arg1].field_0):
                            uint256(sidepotMembers[arg1].field_0) = 0
                            idx = 0
                            while 4 * uint256(sidepotMembers[arg1].field_0) > idx:
                                uint256(sidepotMembers[arg1][idx].field_0) = 0
                                uint256(sidepotMembers[arg1][idx].field_256) = 0
                                uint256(sidepotMembers[arg1][idx].field_512) = 0
                                address(sidepotMembers[arg1][idx].field_768) = 0
                                idx = idx + 4
                                continue 
                            uint8(sidepot[arg1].field_0) = 0
                            uint256(sidepot[arg1].field_256) = 0
                            uint256(sidepot[arg1].field_512) = 0
                            uint256(sidepot[arg1].field_768) = 0
                            uint256(sidepot[arg1].field_1024) = 0
                            uint256(sidepot[arg1].field_1280) = 0
                            uint256(sidepot[arg1].field_1536) = 0
                            uint256(sidepot[arg1].field_1792) = 0
                            if 1 < betIDRec.length:
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                # nil
                            else:
                                if 0 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 == betIDRec:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec = 0
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                if not numberOfBets:
                                    revert with 0, 17
                                numberOfBets--
}

function returnStake(bytes32 arg1, bool arg2, address arg3, uint256 arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg2 == arg2
    require arg3 == arg3
    if msg.sender != this.address:
        revert with 0, 'only contract can call'
    if var50001 < 1:
        revert with 0, 17
    if var54002 > var54001:
        uint8(stakes[arg1].field_0) = 0
        uint256(stakes[arg1].field_256) = 0
        uint256(stakes[arg1].field_512) = 0
        uint256(stakes[arg1].field_768) = 0
        uint256(stakes[arg1].field_1024) = 0
        uint256(stakes[arg1].field_1280) = 0
        uint256(stakes[arg1].field_1536) = 0
        uint256(stakes[arg1].field_1792) = 0
        uint256(stakeMembers[arg1].field_0) = 0
        idx = 0
        while 4 * uint256(stakeMembers[arg1].field_0) > idx:
            uint256(stakeMembers[arg1][idx].field_0) = 0
            uint256(stakeMembers[arg1][idx].field_256) = 0
            uint256(stakeMembers[arg1][idx].field_512) = 0
            address(stakeMembers[arg1][idx].field_768) = 0
            idx = idx + 4
            continue 
        uint256(stakeWinners[arg1].field_0) = 0
        idx = 0
        while 2 * uint256(stakeWinners[arg1].field_0) > idx:
            uint256(stakeWinners[arg1][idx].field_0) = 0
            address(stakeWinners[arg1][idx].field_256) = 0
            idx = idx + 2
            continue 
        if bool(stor15[arg1].field_0):
            if bool(stor15[arg1].field_0) == uint255(stor15[arg1].field_1) < 32:
                revert with 0, 34
            uint256(stor15[arg1].field_0) = 0
            if 31 >= uint255(stor15[arg1].field_1):
                stakeToken[arg1] = 0
                if bool(stor20[arg1].field_0):
                    if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
                        revert with 0, 34
                    uint256(stor20[arg1].field_0) = 0
                    if 31 < uint255(stor20[arg1].field_1):
                        idx = 0
                        while uint255(stor20[arg1].field_1) + 31 / 32 > idx:
                            uint256(stor20[arg1][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        timeCreated[arg1] = 0
                        timeExpires[arg1] = 0
                        stor17[arg1] = 0
                        if 1 >= betIDRec.length:
                            if 0 >= betIDRec.length:
                                revert with 0, 50
                            if arg1 == betIDRec:
                                if 0 >= betIDRec.length:
                                    revert with 0, 50
                                betIDRec = 0
                                if not betIDRec.length:
                                    revert with 0, 49
                                betIDRec[betIDRec.length] = 0
                                betIDRec.length--
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if betIDRec.length < 1:
                            revert with 0, 17
                        if var82002 > betIDRec.length - 1:
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if var84001 >= betIDRec.length:
                            revert with 0, 50
                        if arg1 != betIDRec[var86001]:
                            if var90001 == -1:
                                revert with 0, 17
                            if betIDRec.length < 1:
                                revert with 0, 17
                            # nil
                        else:
                            if var88001 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var90001] = 0
                            if betIDRec.length < 1:
                                revert with 0, 17
                            if betIDRec.length - 1 >= betIDRec.length:
                                revert with 0, 50
                            if var96003 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var96003] = betIDRec[betIDRec.length]
                            if not betIDRec.length:
                                revert with 0, 49
                            betIDRec[betIDRec.length] = 0
                            betIDRec.length--
                            # nil
                    else:
                        timeCreated[arg1] = 0
                        timeExpires[arg1] = 0
                        stor17[arg1] = 0
                        if 1 >= betIDRec.length:
                            if 0 >= betIDRec.length:
                                revert with 0, 50
                            if arg1 == betIDRec:
                                if 0 >= betIDRec.length:
                                    revert with 0, 50
                                betIDRec = 0
                                if not betIDRec.length:
                                    revert with 0, 49
                                betIDRec[betIDRec.length] = 0
                                betIDRec.length--
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if betIDRec.length < 1:
                            revert with 0, 17
                        if var78002 > betIDRec.length - 1:
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if var80001 >= betIDRec.length:
                            revert with 0, 50
                        if arg1 != betIDRec[var82001]:
                            if var86001 == -1:
                                revert with 0, 17
                            if betIDRec.length < 1:
                                revert with 0, 17
                            # nil
                        else:
                            if var84001 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var86001] = 0
                            if betIDRec.length < 1:
                                revert with 0, 17
                            if betIDRec.length - 1 >= betIDRec.length:
                                revert with 0, 50
                            if var92003 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var92003] = betIDRec[betIDRec.length]
                            if not betIDRec.length:
                                revert with 0, 49
                            betIDRec[betIDRec.length] = 0
                            betIDRec.length--
                            if var91001 == -1:
                                revert with 0, 17
                            # nil
                else:
                    if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    uint256(stor20[arg1].field_0) = 0
                    if 31 < stor20[arg1].field_1 % 128:
                        idx = 0
                        while stor20[arg1].field_1 % 128 + 31 / 32 > idx:
                            uint256(stor20[arg1][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        timeCreated[arg1] = 0
                        timeExpires[arg1] = 0
                        stor17[arg1] = 0
                        if 1 >= betIDRec.length:
                            if 0 >= betIDRec.length:
                                revert with 0, 50
                            if arg1 == betIDRec:
                                if 0 >= betIDRec.length:
                                    revert with 0, 50
                                betIDRec = 0
                                if not betIDRec.length:
                                    revert with 0, 49
                                betIDRec[betIDRec.length] = 0
                                betIDRec.length--
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if betIDRec.length < 1:
                            revert with 0, 17
                        if var83002 > betIDRec.length - 1:
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if var85001 >= betIDRec.length:
                            revert with 0, 50
                        if arg1 != betIDRec[var87001]:
                            if var91001 == -1:
                                revert with 0, 17
                            if betIDRec.length < 1:
                                revert with 0, 17
                            # nil
                        else:
                            if var89001 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var91001] = 0
                            if betIDRec.length < 1:
                                revert with 0, 17
                            if betIDRec.length - 1 >= betIDRec.length:
                                revert with 0, 50
                            if var97003 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var97003] = betIDRec[betIDRec.length]
                            if not betIDRec.length:
                                revert with 0, 49
                            betIDRec[betIDRec.length] = 0
                            betIDRec.length--
                            # nil
                    else:
                        timeCreated[arg1] = 0
                        timeExpires[arg1] = 0
                        stor17[arg1] = 0
                        if 1 >= betIDRec.length:
                            if 0 >= betIDRec.length:
                                revert with 0, 50
                            if arg1 == betIDRec:
                                if 0 >= betIDRec.length:
                                    revert with 0, 50
                                betIDRec = 0
                                if not betIDRec.length:
                                    revert with 0, 49
                                betIDRec[betIDRec.length] = 0
                                betIDRec.length--
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if betIDRec.length < 1:
                            revert with 0, 17
                        if var79002 > betIDRec.length - 1:
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if var81001 >= betIDRec.length:
                            revert with 0, 50
                        if arg1 != betIDRec[var83001]:
                            if var87001 == -1:
                                revert with 0, 17
                            if betIDRec.length < 1:
                                revert with 0, 17
                            # nil
                        else:
                            if var85001 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var87001] = 0
                            if betIDRec.length < 1:
                                revert with 0, 17
                            if betIDRec.length - 1 >= betIDRec.length:
                                revert with 0, 50
                            if var93003 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var93003] = betIDRec[betIDRec.length]
                            if not betIDRec.length:
                                revert with 0, 49
                            betIDRec[betIDRec.length] = 0
                            betIDRec.length--
                            if var92001 == -1:
                                revert with 0, 17
                            # nil
            else:
                idx = 0
                while uint255(stor15[arg1].field_1) + 31 / 32 > idx:
                    uint256(stor15[arg1][idx].field_0) = 0
                    idx = idx + 1
                    continue 
                stakeToken[arg1] = 0
                if bool(stor20[arg1].field_0):
                    if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
                        revert with 0, 34
                    uint256(stor20[arg1].field_0) = 0
                    if 31 >= uint255(stor20[arg1].field_1):
                        timeCreated[arg1] = 0
                        timeExpires[arg1] = 0
                        stor17[arg1] = 0
                        if 1 >= betIDRec.length:
                            if 0 >= betIDRec.length:
                                revert with 0, 50
                            if arg1 == betIDRec:
                                if 0 >= betIDRec.length:
                                    revert with 0, 50
                                betIDRec = 0
                                if not betIDRec.length:
                                    revert with 0, 49
                                betIDRec[betIDRec.length] = 0
                                betIDRec.length--
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if betIDRec.length < 1:
                            revert with 0, 17
                        if var82002 > betIDRec.length - 1:
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if var84001 >= betIDRec.length:
                            revert with 0, 50
                        if arg1 != betIDRec[var86001]:
                            if var90001 == -1:
                                revert with 0, 17
                            if betIDRec.length < 1:
                                revert with 0, 17
                            # nil
                        else:
                            if var88001 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var90001] = 0
                            if betIDRec.length < 1:
                                revert with 0, 17
                            if betIDRec.length - 1 >= betIDRec.length:
                                revert with 0, 50
                            if var96003 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var96003] = betIDRec[betIDRec.length]
                            if not betIDRec.length:
                                revert with 0, 49
                            betIDRec[betIDRec.length] = 0
                            betIDRec.length--
                            # nil
                    else:
                        idx = 0
                        while uint255(stor20[arg1].field_1) + 31 / 32 > idx:
                            uint256(stor20[arg1][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        timeCreated[arg1] = 0
                        timeExpires[arg1] = 0
                        stor17[arg1] = 0
                        if 1 >= betIDRec.length:
                            if 0 >= betIDRec.length:
                                revert with 0, 50
                            if arg1 == betIDRec:
                                if 0 >= betIDRec.length:
                                    revert with 0, 50
                                betIDRec = 0
                                if not betIDRec.length:
                                    revert with 0, 49
                                betIDRec[betIDRec.length] = 0
                                betIDRec.length--
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if betIDRec.length < 1:
                            revert with 0, 17
                        if var86002 > betIDRec.length - 1:
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if var88001 >= betIDRec.length:
                            revert with 0, 50
                        if arg1 != betIDRec[var90001]:
                            if var94001 == -1:
                                revert with 0, 17
                            # nil
                        else:
                            if var92001 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var94001] = 0
                            if betIDRec.length < 1:
                                revert with 0, 17
                            if betIDRec.length - 1 >= betIDRec.length:
                                revert with 0, 50
                            if var100003 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var100003] = betIDRec[betIDRec.length]
                            if not betIDRec.length:
                                revert with 0, 49
                            betIDRec[betIDRec.length] = 0
                            betIDRec.length--
                            # nil
                else:
                    if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    uint256(stor20[arg1].field_0) = 0
                    if 31 >= stor20[arg1].field_1 % 128:
                        timeCreated[arg1] = 0
                        timeExpires[arg1] = 0
                        stor17[arg1] = 0
                        if 1 >= betIDRec.length:
                            if 0 >= betIDRec.length:
                                revert with 0, 50
                            if arg1 == betIDRec:
                                if 0 >= betIDRec.length:
                                    revert with 0, 50
                                betIDRec = 0
                                if not betIDRec.length:
                                    revert with 0, 49
                                betIDRec[betIDRec.length] = 0
                                betIDRec.length--
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if betIDRec.length < 1:
                            revert with 0, 17
                        if var83002 > betIDRec.length - 1:
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if var85001 >= betIDRec.length:
                            revert with 0, 50
                        if arg1 != betIDRec[var87001]:
                            if var91001 == -1:
                                revert with 0, 17
                            if betIDRec.length < 1:
                                revert with 0, 17
                            # nil
                        else:
                            if var89001 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var91001] = 0
                            if betIDRec.length < 1:
                                revert with 0, 17
                            if betIDRec.length - 1 >= betIDRec.length:
                                revert with 0, 50
                            if var97003 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var97003] = betIDRec[betIDRec.length]
                            if not betIDRec.length:
                                revert with 0, 49
                            betIDRec[betIDRec.length] = 0
                            betIDRec.length--
                            # nil
                    else:
                        idx = 0
                        while stor20[arg1].field_1 % 128 + 31 / 32 > idx:
                            uint256(stor20[arg1][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        timeCreated[arg1] = 0
                        timeExpires[arg1] = 0
                        stor17[arg1] = 0
                        if 1 >= betIDRec.length:
                            if 0 >= betIDRec.length:
                                revert with 0, 50
                            if arg1 == betIDRec:
                                if 0 >= betIDRec.length:
                                    revert with 0, 50
                                betIDRec = 0
                                if not betIDRec.length:
                                    revert with 0, 49
                                betIDRec[betIDRec.length] = 0
                                betIDRec.length--
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if betIDRec.length < 1:
                            revert with 0, 17
                        if var87002 > betIDRec.length - 1:
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if var89001 >= betIDRec.length:
                            revert with 0, 50
                        if arg1 != betIDRec[var91001]:
                            if var95001 == -1:
                                revert with 0, 17
                            # nil
                        else:
                            if var93001 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var95001] = 0
                            if betIDRec.length < 1:
                                revert with 0, 17
                            if betIDRec.length - 1 >= betIDRec.length:
                                revert with 0, 50
                            if var101003 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var101003] = betIDRec[betIDRec.length]
                            if not betIDRec.length:
                                revert with 0, 49
                            betIDRec[betIDRec.length] = 0
                            betIDRec.length--
                            # nil
        else:
            if bool(stor15[arg1].field_0) == stor15[arg1].field_1 % 128 < 32:
                revert with 0, 34
            uint256(stor15[arg1].field_0) = 0
            if 31 >= stor15[arg1].field_1 % 128:
                stakeToken[arg1] = 0
                if bool(stor20[arg1].field_0):
                    if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
                        revert with 0, 34
                    uint256(stor20[arg1].field_0) = 0
                    if 31 < uint255(stor20[arg1].field_1):
                        idx = 0
                        while uint255(stor20[arg1].field_1) + 31 / 32 > idx:
                            uint256(stor20[arg1][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        timeCreated[arg1] = 0
                        timeExpires[arg1] = 0
                        stor17[arg1] = 0
                        if 1 >= betIDRec.length:
                            if 0 >= betIDRec.length:
                                revert with 0, 50
                            if arg1 == betIDRec:
                                if 0 >= betIDRec.length:
                                    revert with 0, 50
                                betIDRec = 0
                                if not betIDRec.length:
                                    revert with 0, 49
                                betIDRec[betIDRec.length] = 0
                                betIDRec.length--
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if betIDRec.length < 1:
                            revert with 0, 17
                        if var83002 > betIDRec.length - 1:
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if var85001 >= betIDRec.length:
                            revert with 0, 50
                        if arg1 != betIDRec[var87001]:
                            if var91001 == -1:
                                revert with 0, 17
                            if betIDRec.length < 1:
                                revert with 0, 17
                            # nil
                        else:
                            if var89001 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var91001] = 0
                            if betIDRec.length < 1:
                                revert with 0, 17
                            if betIDRec.length - 1 >= betIDRec.length:
                                revert with 0, 50
                            if var97003 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var97003] = betIDRec[betIDRec.length]
                            if not betIDRec.length:
                                revert with 0, 49
                            betIDRec[betIDRec.length] = 0
                            betIDRec.length--
                            # nil
                    else:
                        timeCreated[arg1] = 0
                        timeExpires[arg1] = 0
                        stor17[arg1] = 0
                        if 1 >= betIDRec.length:
                            if 0 >= betIDRec.length:
                                revert with 0, 50
                            if arg1 == betIDRec:
                                if 0 >= betIDRec.length:
                                    revert with 0, 50
                                betIDRec = 0
                                if not betIDRec.length:
                                    revert with 0, 49
                                betIDRec[betIDRec.length] = 0
                                betIDRec.length--
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if betIDRec.length < 1:
                            revert with 0, 17
                        if var79002 > betIDRec.length - 1:
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if var81001 >= betIDRec.length:
                            revert with 0, 50
                        if arg1 != betIDRec[var83001]:
                            if var87001 == -1:
                                revert with 0, 17
                            if betIDRec.length < 1:
                                revert with 0, 17
                            # nil
                        else:
                            if var85001 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var87001] = 0
                            if betIDRec.length < 1:
                                revert with 0, 17
                            if betIDRec.length - 1 >= betIDRec.length:
                                revert with 0, 50
                            if var93003 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var93003] = betIDRec[betIDRec.length]
                            if not betIDRec.length:
                                revert with 0, 49
                            betIDRec[betIDRec.length] = 0
                            betIDRec.length--
                            if var92001 == -1:
                                revert with 0, 17
                            # nil
                else:
                    if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    uint256(stor20[arg1].field_0) = 0
                    if 31 < stor20[arg1].field_1 % 128:
                        idx = 0
                        while stor20[arg1].field_1 % 128 + 31 / 32 > idx:
                            uint256(stor20[arg1][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        timeCreated[arg1] = 0
                        timeExpires[arg1] = 0
                        stor17[arg1] = 0
                        if 1 >= betIDRec.length:
                            if 0 >= betIDRec.length:
                                revert with 0, 50
                            if arg1 == betIDRec:
                                if 0 >= betIDRec.length:
                                    revert with 0, 50
                                betIDRec = 0
                                if not betIDRec.length:
                                    revert with 0, 49
                                betIDRec[betIDRec.length] = 0
                                betIDRec.length--
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if betIDRec.length < 1:
                            revert with 0, 17
                        if var84002 > betIDRec.length - 1:
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if var86001 >= betIDRec.length:
                            revert with 0, 50
                        if arg1 != betIDRec[var88001]:
                            if var92001 == -1:
                                revert with 0, 17
                            if betIDRec.length < 1:
                                revert with 0, 17
                            # nil
                        else:
                            if var90001 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var92001] = 0
                            if betIDRec.length < 1:
                                revert with 0, 17
                            if betIDRec.length - 1 >= betIDRec.length:
                                revert with 0, 50
                            if var98003 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var98003] = betIDRec[betIDRec.length]
                            if not betIDRec.length:
                                revert with 0, 49
                            betIDRec[betIDRec.length] = 0
                            betIDRec.length--
                            # nil
                    else:
                        timeCreated[arg1] = 0
                        timeExpires[arg1] = 0
                        stor17[arg1] = 0
                        if 1 >= betIDRec.length:
                            if 0 >= betIDRec.length:
                                revert with 0, 50
                            if arg1 == betIDRec:
                                if 0 >= betIDRec.length:
                                    revert with 0, 50
                                betIDRec = 0
                                if not betIDRec.length:
                                    revert with 0, 49
                                betIDRec[betIDRec.length] = 0
                                betIDRec.length--
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if betIDRec.length < 1:
                            revert with 0, 17
                        if var80002 > betIDRec.length - 1:
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if var82001 >= betIDRec.length:
                            revert with 0, 50
                        if arg1 != betIDRec[var84001]:
                            if var88001 == -1:
                                revert with 0, 17
                            if betIDRec.length < 1:
                                revert with 0, 17
                            # nil
                        else:
                            if var86001 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var88001] = 0
                            if betIDRec.length < 1:
                                revert with 0, 17
                            if betIDRec.length - 1 >= betIDRec.length:
                                revert with 0, 50
                            if var94003 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var94003] = betIDRec[betIDRec.length]
                            if not betIDRec.length:
                                revert with 0, 49
                            betIDRec[betIDRec.length] = 0
                            betIDRec.length--
                            if var93001 == -1:
                                revert with 0, 17
                            # nil
            else:
                idx = 0
                while stor15[arg1].field_1 % 128 + 31 / 32 > idx:
                    uint256(stor15[arg1][idx].field_0) = 0
                    idx = idx + 1
                    continue 
                stakeToken[arg1] = 0
                if bool(stor20[arg1].field_0):
                    if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
                        revert with 0, 34
                    uint256(stor20[arg1].field_0) = 0
                    if 31 >= uint255(stor20[arg1].field_1):
                        timeCreated[arg1] = 0
                        timeExpires[arg1] = 0
                        stor17[arg1] = 0
                        if 1 >= betIDRec.length:
                            if 0 >= betIDRec.length:
                                revert with 0, 50
                            if arg1 == betIDRec:
                                if 0 >= betIDRec.length:
                                    revert with 0, 50
                                betIDRec = 0
                                if not betIDRec.length:
                                    revert with 0, 49
                                betIDRec[betIDRec.length] = 0
                                betIDRec.length--
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if betIDRec.length < 1:
                            revert with 0, 17
                        if var83002 > betIDRec.length - 1:
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if var85001 >= betIDRec.length:
                            revert with 0, 50
                        if arg1 != betIDRec[var87001]:
                            if var91001 == -1:
                                revert with 0, 17
                            if betIDRec.length < 1:
                                revert with 0, 17
                            # nil
                        else:
                            if var89001 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var91001] = 0
                            if betIDRec.length < 1:
                                revert with 0, 17
                            if betIDRec.length - 1 >= betIDRec.length:
                                revert with 0, 50
                            if var97003 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var97003] = betIDRec[betIDRec.length]
                            if not betIDRec.length:
                                revert with 0, 49
                            betIDRec[betIDRec.length] = 0
                            betIDRec.length--
                            # nil
                    else:
                        idx = 0
                        while uint255(stor20[arg1].field_1) + 31 / 32 > idx:
                            uint256(stor20[arg1][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        timeCreated[arg1] = 0
                        timeExpires[arg1] = 0
                        stor17[arg1] = 0
                        if 1 >= betIDRec.length:
                            if 0 >= betIDRec.length:
                                revert with 0, 50
                            if arg1 == betIDRec:
                                if 0 >= betIDRec.length:
                                    revert with 0, 50
                                betIDRec = 0
                                if not betIDRec.length:
                                    revert with 0, 49
                                betIDRec[betIDRec.length] = 0
                                betIDRec.length--
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if betIDRec.length < 1:
                            revert with 0, 17
                        if var87002 > betIDRec.length - 1:
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if var89001 >= betIDRec.length:
                            revert with 0, 50
                        if arg1 != betIDRec[var91001]:
                            if var95001 == -1:
                                revert with 0, 17
                            # nil
                        else:
                            if var93001 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var95001] = 0
                            if betIDRec.length < 1:
                                revert with 0, 17
                            if betIDRec.length - 1 >= betIDRec.length:
                                revert with 0, 50
                            if var101003 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var101003] = betIDRec[betIDRec.length]
                            if not betIDRec.length:
                                revert with 0, 49
                            betIDRec[betIDRec.length] = 0
                            betIDRec.length--
                            # nil
                else:
                    if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    uint256(stor20[arg1].field_0) = 0
                    if 31 >= stor20[arg1].field_1 % 128:
                        timeCreated[arg1] = 0
                        timeExpires[arg1] = 0
                        stor17[arg1] = 0
                        if 1 >= betIDRec.length:
                            if 0 >= betIDRec.length:
                                revert with 0, 50
                            if arg1 == betIDRec:
                                if 0 >= betIDRec.length:
                                    revert with 0, 50
                                betIDRec = 0
                                if not betIDRec.length:
                                    revert with 0, 49
                                betIDRec[betIDRec.length] = 0
                                betIDRec.length--
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if betIDRec.length < 1:
                            revert with 0, 17
                        if var84002 > betIDRec.length - 1:
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if var86001 >= betIDRec.length:
                            revert with 0, 50
                        if arg1 != betIDRec[var88001]:
                            if var92001 == -1:
                                revert with 0, 17
                            if betIDRec.length < 1:
                                revert with 0, 17
                            # nil
                        else:
                            if var90001 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var92001] = 0
                            if betIDRec.length < 1:
                                revert with 0, 17
                            if betIDRec.length - 1 >= betIDRec.length:
                                revert with 0, 50
                            if var98003 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var98003] = betIDRec[betIDRec.length]
                            if not betIDRec.length:
                                revert with 0, 49
                            betIDRec[betIDRec.length] = 0
                            betIDRec.length--
                            # nil
                    else:
                        idx = 0
                        while stor20[arg1].field_1 % 128 + 31 / 32 > idx:
                            uint256(stor20[arg1][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        timeCreated[arg1] = 0
                        timeExpires[arg1] = 0
                        stor17[arg1] = 0
                        if 1 >= betIDRec.length:
                            if 0 >= betIDRec.length:
                                revert with 0, 50
                            if arg1 == betIDRec:
                                if 0 >= betIDRec.length:
                                    revert with 0, 50
                                betIDRec = 0
                                if not betIDRec.length:
                                    revert with 0, 49
                                betIDRec[betIDRec.length] = 0
                                betIDRec.length--
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if betIDRec.length < 1:
                            revert with 0, 17
                        if var88002 > betIDRec.length - 1:
                            if not numberOfBets:
                                revert with 0, 17
                            numberOfBets--
                        if var90001 >= betIDRec.length:
                            revert with 0, 50
                        if arg1 != betIDRec[var92001]:
                            if var96001 == -1:
                                revert with 0, 17
                            # nil
                        else:
                            if var94001 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var96001] = 0
                            if betIDRec.length < 1:
                                revert with 0, 17
                            if betIDRec.length - 1 >= betIDRec.length:
                                revert with 0, 50
                            if var102003 >= betIDRec.length:
                                revert with 0, 50
                            betIDRec[var102003] = betIDRec[betIDRec.length]
                            if not betIDRec.length:
                                revert with 0, 49
                            betIDRec[betIDRec.length] = 0
                            betIDRec.length--
                            # nil
    else:
        if not arg2:
            if arg4 != uint256(stakes[arg1].field_768):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The creator must refunc this stake'
            if var56001 >= uint256(stakeMembers[arg1].field_0):
                revert with 0, 50
            if var56001 >= uint256(stakeMembers[arg1].field_0):
                revert with 0, 50
            if stor5 == stakeToken[arg1]:
                call address(stakeMembers[arg1][var56001].field_768) with:
                   value uint256(stakeMembers[arg1][var56001].field_256) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if var56001 >= uint256(stakeMembers[arg1].field_0):
                    revert with 0, 50
                playerDetails[arg1][uint256(stor10[arg1][var56001].field_0)] = 0
                if var56001 == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 10
                if uint256(stakeMembers[arg1].field_0) < 1:
                    revert with 0, 17
                if var56001 + 1 <= uint256(stakeMembers[arg1].field_0) - 1:
                    var56001 = var56001 + 1
                    var56002 = var56002
                    continue 
                uint8(stakes[arg1].field_0) = 0
                uint256(stakes[arg1].field_256) = 0
                uint256(stakes[arg1].field_512) = 0
                uint256(stakes[arg1].field_768) = 0
                uint256(stakes[arg1].field_1024) = 0
                uint256(stakes[arg1].field_1280) = 0
                uint256(stakes[arg1].field_1536) = 0
                uint256(stakes[arg1].field_1792) = 0
                uint256(stakeMembers[arg1].field_0) = 0
                idx = 0
                while 4 * uint256(stakeMembers[arg1].field_0) > idx:
                    uint256(stakeMembers[arg1][idx].field_0) = 0
                    uint256(stakeMembers[arg1][idx].field_256) = 0
                    uint256(stakeMembers[arg1][idx].field_512) = 0
                    address(stakeMembers[arg1][idx].field_768) = 0
                    idx = idx + 4
                    continue 
                uint256(stakeWinners[arg1].field_0) = 0
                idx = 0
                while 2 * uint256(stakeWinners[arg1].field_0) > idx:
                    uint256(stakeWinners[arg1][idx].field_0) = 0
                    address(stakeWinners[arg1][idx].field_256) = 0
                    idx = idx + 2
                    continue 
                if bool(stor15[arg1].field_0):
                    if bool(stor15[arg1].field_0) == uint255(stor15[arg1].field_1) < 32:
                        revert with 0, 34
                    uint256(stor15[arg1].field_0) = 0
                    if 31 < uint255(stor15[arg1].field_1):
                        idx = 0
                        while uint255(stor15[arg1].field_1) + 31 / 32 > idx:
                            uint256(stor15[arg1][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        stakeToken[arg1] = 0
                        if bool(stor20[arg1].field_0):
                            if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 < uint255(stor20[arg1].field_1):
                                idx = 0
                                while uint255(stor20[arg1].field_1) + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 < betIDRec.length:
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if var107002 > betIDRec.length - 1:
                                        if not numberOfBets:
                                            revert with 0, 17
                                        numberOfBets--
                                    if var109001 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 != betIDRec[var111001]:
                                        if var115001 == -1:
                                            revert with 0, 17
                                        # nil
                                    else:
                                        if var113001 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec[var115001] = 0
                                        if betIDRec.length < 1:
                                            revert with 0, 17
                                        # nil
                                else:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                            else:
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var103002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var105001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var107001]:
                                    if var111001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var109001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var111001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var117003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var117003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                        else:
                            if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 < stor20[arg1].field_1 % 128:
                                idx = 0
                                while stor20[arg1].field_1 % 128 + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 < betIDRec.length:
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if var108002 > betIDRec.length - 1:
                                        if not numberOfBets:
                                            revert with 0, 17
                                        numberOfBets--
                                    if var110001 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 != betIDRec[var112001]:
                                        if var116001 == -1:
                                            revert with 0, 17
                                        # nil
                                    else:
                                        if var114001 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec[var116001] = 0
                                        if betIDRec.length < 1:
                                            revert with 0, 17
                                        # nil
                                else:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                            else:
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var104002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var106001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var108001]:
                                    if var112001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var110001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var112001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var118003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var118003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                    else:
                        stakeToken[arg1] = 0
                        if bool(stor20[arg1].field_0):
                            if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 >= uint255(stor20[arg1].field_1):
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var99002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var101001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var103001]:
                                    if var107001 == -1:
                                        revert with 0, 17
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var105001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var107001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var113003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var113003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                            else:
                                idx = 0
                                while uint255(stor20[arg1].field_1) + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var103002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var105001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var107001]:
                                    if var111001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var109001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var111001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var117003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var117003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                        else:
                            if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 >= stor20[arg1].field_1 % 128:
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var100002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var102001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var104001]:
                                    if var108001 == -1:
                                        revert with 0, 17
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var106001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var108001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var114003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var114003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                            else:
                                idx = 0
                                while stor20[arg1].field_1 % 128 + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var104002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var106001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var108001]:
                                    if var112001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var110001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var112001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var118003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var118003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                else:
                    if bool(stor15[arg1].field_0) == stor15[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    uint256(stor15[arg1].field_0) = 0
                    if 31 < stor15[arg1].field_1 % 128:
                        idx = 0
                        while stor15[arg1].field_1 % 128 + 31 / 32 > idx:
                            uint256(stor15[arg1][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        stakeToken[arg1] = 0
                        if bool(stor20[arg1].field_0):
                            if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 < uint255(stor20[arg1].field_1):
                                idx = 0
                                while uint255(stor20[arg1].field_1) + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 < betIDRec.length:
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if var108002 > betIDRec.length - 1:
                                        if not numberOfBets:
                                            revert with 0, 17
                                        numberOfBets--
                                    if var110001 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 != betIDRec[var112001]:
                                        if var116001 == -1:
                                            revert with 0, 17
                                        # nil
                                    else:
                                        if var114001 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec[var116001] = 0
                                        if betIDRec.length < 1:
                                            revert with 0, 17
                                        # nil
                                else:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                            else:
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var104002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var106001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var108001]:
                                    if var112001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var110001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var112001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var118003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var118003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                        else:
                            if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 < stor20[arg1].field_1 % 128:
                                idx = 0
                                while stor20[arg1].field_1 % 128 + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 < betIDRec.length:
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if var109002 > betIDRec.length - 1:
                                        if not numberOfBets:
                                            revert with 0, 17
                                        numberOfBets--
                                    if var111001 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 != betIDRec[var113001]:
                                        if var117001 == -1:
                                            revert with 0, 17
                                        # nil
                                    else:
                                        if var115001 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec[var117001] = 0
                                        if betIDRec.length < 1:
                                            revert with 0, 17
                                        # nil
                                else:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                            else:
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var105002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var107001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var109001]:
                                    if var113001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var111001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var113001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var119003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var119003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                    else:
                        stakeToken[arg1] = 0
                        if bool(stor20[arg1].field_0):
                            if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 >= uint255(stor20[arg1].field_1):
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var100002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var102001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var104001]:
                                    if var108001 == -1:
                                        revert with 0, 17
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var106001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var108001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var114003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var114003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                            else:
                                idx = 0
                                while uint255(stor20[arg1].field_1) + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var104002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var106001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var108001]:
                                    if var112001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var110001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var112001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var118003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var118003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                        else:
                            if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 >= stor20[arg1].field_1 % 128:
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var101002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var103001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var105001]:
                                    if var109001 == -1:
                                        revert with 0, 17
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var107001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var109001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var115003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var115003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                            else:
                                idx = 0
                                while stor20[arg1].field_1 % 128 + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var105002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var107001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var109001]:
                                    if var113001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var111001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var113001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var119003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var119003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
            else:
                mem[100] = this.address
                mem[132] = address(stakeMembers[arg1][var56001].field_768)
                mem[164] = uint256(stakeMembers[arg1][var56001].field_256)
                require ext_code.size(arg3)
                call arg3.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), address(stakeMembers[arg1][var56001].field_768), uint256(stakeMembers[arg1][var56001].field_256)
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if var56001 >= uint256(stakeMembers[arg1].field_0):
                    revert with 0, 50
                playerDetails[arg1][uint256(stor10[arg1][var56001].field_0)] = 0
                if var56001 == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 10
                if uint256(stakeMembers[arg1].field_0) < 1:
                    revert with 0, 17
                if var56001 + 1 <= uint256(stakeMembers[arg1].field_0) - 1:
                    var56001 = var56001 + 1
                    var56002 = var56002
                    continue 
                uint8(stakes[arg1].field_0) = 0
                uint256(stakes[arg1].field_256) = 0
                uint256(stakes[arg1].field_512) = 0
                uint256(stakes[arg1].field_768) = 0
                uint256(stakes[arg1].field_1024) = 0
                uint256(stakes[arg1].field_1280) = 0
                uint256(stakes[arg1].field_1536) = 0
                uint256(stakes[arg1].field_1792) = 0
                uint256(stakeMembers[arg1].field_0) = 0
                idx = 0
                while 4 * uint256(stakeMembers[arg1].field_0) > idx:
                    uint256(stakeMembers[arg1][idx].field_0) = 0
                    uint256(stakeMembers[arg1][idx].field_256) = 0
                    uint256(stakeMembers[arg1][idx].field_512) = 0
                    address(stakeMembers[arg1][idx].field_768) = 0
                    idx = idx + 4
                    continue 
                uint256(stakeWinners[arg1].field_0) = 0
                idx = 0
                while 2 * uint256(stakeWinners[arg1].field_0) > idx:
                    uint256(stakeWinners[arg1][idx].field_0) = 0
                    address(stakeWinners[arg1][idx].field_256) = 0
                    idx = idx + 2
                    continue 
                if bool(stor15[arg1].field_0):
                    if bool(stor15[arg1].field_0) == uint255(stor15[arg1].field_1) < 32:
                        revert with 0, 34
                    uint256(stor15[arg1].field_0) = 0
                    if 31 < uint255(stor15[arg1].field_1):
                        idx = 0
                        while uint255(stor15[arg1].field_1) + 31 / 32 > idx:
                            uint256(stor15[arg1][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        stakeToken[arg1] = 0
                        if bool(stor20[arg1].field_0):
                            if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 < uint255(stor20[arg1].field_1):
                                idx = 0
                                while uint255(stor20[arg1].field_1) + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 < betIDRec.length:
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if var116002 > betIDRec.length - 1:
                                        if not numberOfBets:
                                            revert with 0, 17
                                        numberOfBets--
                                    if var118001 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 != betIDRec[var120001]:
                                        if var124001 == -1:
                                            revert with 0, 17
                                        # nil
                                    else:
                                        if var122001 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec[var124001] = 0
                                        if betIDRec.length < 1:
                                            revert with 0, 17
                                        # nil
                                else:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                            else:
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var112002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var114001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var116001]:
                                    if var120001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var118001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var120001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var126003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var126003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                        else:
                            if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 < stor20[arg1].field_1 % 128:
                                idx = 0
                                while stor20[arg1].field_1 % 128 + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 < betIDRec.length:
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if var117002 > betIDRec.length - 1:
                                        if not numberOfBets:
                                            revert with 0, 17
                                        numberOfBets--
                                    if var119001 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 != betIDRec[var121001]:
                                        if var125001 == -1:
                                            revert with 0, 17
                                        # nil
                                    else:
                                        if var123001 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec[var125001] = 0
                                        if betIDRec.length < 1:
                                            revert with 0, 17
                                        # nil
                                else:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                            else:
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var113002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var115001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var117001]:
                                    if var121001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var119001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var121001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var127003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var127003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                    else:
                        stakeToken[arg1] = 0
                        if bool(stor20[arg1].field_0):
                            if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 >= uint255(stor20[arg1].field_1):
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var108002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var110001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var112001]:
                                    if var116001 == -1:
                                        revert with 0, 17
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var114001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var116001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var122003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var122003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                            else:
                                idx = 0
                                while uint255(stor20[arg1].field_1) + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var112002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var114001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var116001]:
                                    if var120001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var118001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var120001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var126003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var126003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                        else:
                            if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 >= stor20[arg1].field_1 % 128:
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var109002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var111001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var113001]:
                                    if var117001 == -1:
                                        revert with 0, 17
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var115001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var117001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var123003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var123003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                            else:
                                idx = 0
                                while stor20[arg1].field_1 % 128 + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var113002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var115001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var117001]:
                                    if var121001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var119001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var121001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var127003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var127003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                else:
                    if bool(stor15[arg1].field_0) == stor15[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    uint256(stor15[arg1].field_0) = 0
                    if 31 < stor15[arg1].field_1 % 128:
                        idx = 0
                        while stor15[arg1].field_1 % 128 + 31 / 32 > idx:
                            uint256(stor15[arg1][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        stakeToken[arg1] = 0
                        if bool(stor20[arg1].field_0):
                            if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 < uint255(stor20[arg1].field_1):
                                idx = 0
                                while uint255(stor20[arg1].field_1) + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 < betIDRec.length:
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if var117002 > betIDRec.length - 1:
                                        if not numberOfBets:
                                            revert with 0, 17
                                        numberOfBets--
                                    if var119001 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 != betIDRec[var121001]:
                                        if var125001 == -1:
                                            revert with 0, 17
                                        # nil
                                    else:
                                        if var123001 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec[var125001] = 0
                                        if betIDRec.length < 1:
                                            revert with 0, 17
                                        # nil
                                else:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                            else:
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var113002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var115001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var117001]:
                                    if var121001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var119001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var121001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var127003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var127003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                        else:
                            if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 < stor20[arg1].field_1 % 128:
                                idx = 0
                                while stor20[arg1].field_1 % 128 + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 < betIDRec.length:
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if var118002 > betIDRec.length - 1:
                                        if not numberOfBets:
                                            revert with 0, 17
                                        numberOfBets--
                                    if var120001 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 != betIDRec[var122001]:
                                        if var126001 == -1:
                                            revert with 0, 17
                                        # nil
                                    else:
                                        if var124001 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec[var126001] = 0
                                        if betIDRec.length < 1:
                                            revert with 0, 17
                                        # nil
                                else:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                            else:
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var114002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var116001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var118001]:
                                    if var122001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var120001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var122001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var128003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var128003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                    else:
                        stakeToken[arg1] = 0
                        if bool(stor20[arg1].field_0):
                            if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 >= uint255(stor20[arg1].field_1):
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var109002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var111001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var113001]:
                                    if var117001 == -1:
                                        revert with 0, 17
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var115001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var117001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var123003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var123003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                            else:
                                idx = 0
                                while uint255(stor20[arg1].field_1) + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var113002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var115001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var117001]:
                                    if var121001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var119001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var121001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var127003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var127003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                        else:
                            if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 >= stor20[arg1].field_1 % 128:
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var110002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var112001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var114001]:
                                    if var118001 == -1:
                                        revert with 0, 17
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var116001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var118001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var124003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var124003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                            else:
                                idx = 0
                                while stor20[arg1].field_1 % 128 + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var114002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var116001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var118001]:
                                    if var122001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var120001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var122001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var128003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var128003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
        else:
            if var56001 >= uint256(stakeMembers[arg1].field_0):
                revert with 0, 50
            if uint256(stakeMembers[arg1][var56001].field_256) > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if stor5 == stakeToken[arg1]:
                call gubAddyAddress with:
                   value 10 * uint256(stakeMembers[arg1][var56001].field_256) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if var56001 >= uint256(stakeMembers[arg1].field_0):
                    revert with 0, 50
                if uint256(stakeMembers[arg1][var56001].field_256) < 10 * uint256(stakeMembers[arg1][var56001].field_256) / 100:
                    revert with 0, 17
                if var56001 >= uint256(stakeMembers[arg1].field_0):
                    revert with 0, 50
                uint256(stakeMembers[arg1][var56001].field_256) -= 10 * uint256(stakeMembers[arg1][var56001].field_256) / 100
                if var56001 >= uint256(stakeMembers[arg1].field_0):
                    revert with 0, 50
                if var56001 >= uint256(stakeMembers[arg1].field_0):
                    revert with 0, 50
                call address(stakeMembers[arg1][var56001].field_768) with:
                   value uint256(stakeMembers[arg1][var56001].field_256) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if var56001 >= uint256(stakeMembers[arg1].field_0):
                    revert with 0, 50
                playerDetails[arg1][uint256(stor10[arg1][var56001].field_0)] = 0
                if var56001 == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 10
                if uint256(stakeMembers[arg1].field_0) < 1:
                    revert with 0, 17
                if var56001 + 1 <= uint256(stakeMembers[arg1].field_0) - 1:
                    var56001 = var56001 + 1
                    var56002 = 10 * uint256(stakeMembers[arg1][var56001].field_256) / 100
                    continue 
                uint8(stakes[arg1].field_0) = 0
                uint256(stakes[arg1].field_256) = 0
                uint256(stakes[arg1].field_512) = 0
                uint256(stakes[arg1].field_768) = 0
                uint256(stakes[arg1].field_1024) = 0
                uint256(stakes[arg1].field_1280) = 0
                uint256(stakes[arg1].field_1536) = 0
                uint256(stakes[arg1].field_1792) = 0
                uint256(stakeMembers[arg1].field_0) = 0
                idx = 0
                while 4 * uint256(stakeMembers[arg1].field_0) > idx:
                    uint256(stakeMembers[arg1][idx].field_0) = 0
                    uint256(stakeMembers[arg1][idx].field_256) = 0
                    uint256(stakeMembers[arg1][idx].field_512) = 0
                    address(stakeMembers[arg1][idx].field_768) = 0
                    idx = idx + 4
                    continue 
                uint256(stakeWinners[arg1].field_0) = 0
                idx = 0
                while 2 * uint256(stakeWinners[arg1].field_0) > idx:
                    uint256(stakeWinners[arg1][idx].field_0) = 0
                    address(stakeWinners[arg1][idx].field_256) = 0
                    idx = idx + 2
                    continue 
                if bool(stor15[arg1].field_0):
                    if bool(stor15[arg1].field_0) == uint255(stor15[arg1].field_1) < 32:
                        revert with 0, 34
                    uint256(stor15[arg1].field_0) = 0
                    if 31 < uint255(stor15[arg1].field_1):
                        idx = 0
                        while uint255(stor15[arg1].field_1) + 31 / 32 > idx:
                            uint256(stor15[arg1][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        stakeToken[arg1] = 0
                        if bool(stor20[arg1].field_0):
                            if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 < uint255(stor20[arg1].field_1):
                                idx = 0
                                while uint255(stor20[arg1].field_1) + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 < betIDRec.length:
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if var122002 > betIDRec.length - 1:
                                        if not numberOfBets:
                                            revert with 0, 17
                                        numberOfBets--
                                    if var124001 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 != betIDRec[var126001]:
                                        if var130001 == -1:
                                            revert with 0, 17
                                        # nil
                                    else:
                                        if var128001 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec[var130001] = 0
                                        if betIDRec.length < 1:
                                            revert with 0, 17
                                        # nil
                                else:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                            else:
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var118002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var120001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var122001]:
                                    if var126001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var124001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var126001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var132003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var132003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                        else:
                            if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 < stor20[arg1].field_1 % 128:
                                idx = 0
                                while stor20[arg1].field_1 % 128 + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 < betIDRec.length:
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if var123002 > betIDRec.length - 1:
                                        if not numberOfBets:
                                            revert with 0, 17
                                        numberOfBets--
                                    if var125001 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 != betIDRec[var127001]:
                                        if var131001 == -1:
                                            revert with 0, 17
                                        # nil
                                    else:
                                        if var129001 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec[var131001] = 0
                                        if betIDRec.length < 1:
                                            revert with 0, 17
                                        # nil
                                else:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                            else:
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var119002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var121001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var123001]:
                                    if var127001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var125001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var127001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var133003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var133003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                    else:
                        stakeToken[arg1] = 0
                        if bool(stor20[arg1].field_0):
                            if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 >= uint255(stor20[arg1].field_1):
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var114002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var116001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var118001]:
                                    if var122001 == -1:
                                        revert with 0, 17
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var120001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var122001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var128003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var128003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                            else:
                                idx = 0
                                while uint255(stor20[arg1].field_1) + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var118002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var120001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var122001]:
                                    if var126001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var124001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var126001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var132003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var132003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                        else:
                            if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 >= stor20[arg1].field_1 % 128:
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var115002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var117001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var119001]:
                                    if var123001 == -1:
                                        revert with 0, 17
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var121001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var123001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var129003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var129003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                            else:
                                idx = 0
                                while stor20[arg1].field_1 % 128 + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var119002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var121001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var123001]:
                                    if var127001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var125001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var127001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var133003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var133003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                else:
                    if bool(stor15[arg1].field_0) == stor15[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    uint256(stor15[arg1].field_0) = 0
                    if 31 < stor15[arg1].field_1 % 128:
                        idx = 0
                        while stor15[arg1].field_1 % 128 + 31 / 32 > idx:
                            uint256(stor15[arg1][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        stakeToken[arg1] = 0
                        if bool(stor20[arg1].field_0):
                            if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 < uint255(stor20[arg1].field_1):
                                idx = 0
                                while uint255(stor20[arg1].field_1) + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 < betIDRec.length:
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if var123002 > betIDRec.length - 1:
                                        if not numberOfBets:
                                            revert with 0, 17
                                        numberOfBets--
                                    if var125001 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 != betIDRec[var127001]:
                                        if var131001 == -1:
                                            revert with 0, 17
                                        # nil
                                    else:
                                        if var129001 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec[var131001] = 0
                                        if betIDRec.length < 1:
                                            revert with 0, 17
                                        # nil
                                else:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                            else:
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var119002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var121001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var123001]:
                                    if var127001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var125001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var127001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var133003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var133003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                        else:
                            if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 < stor20[arg1].field_1 % 128:
                                idx = 0
                                while stor20[arg1].field_1 % 128 + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 < betIDRec.length:
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if var124002 > betIDRec.length - 1:
                                        if not numberOfBets:
                                            revert with 0, 17
                                        numberOfBets--
                                    if var126001 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 != betIDRec[var128001]:
                                        if var132001 == -1:
                                            revert with 0, 17
                                        # nil
                                    else:
                                        if var130001 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec[var132001] = 0
                                        if betIDRec.length < 1:
                                            revert with 0, 17
                                        # nil
                                else:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                            else:
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var120002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var122001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var124001]:
                                    if var128001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var126001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var128001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var134003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var134003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                    else:
                        stakeToken[arg1] = 0
                        if bool(stor20[arg1].field_0):
                            if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 >= uint255(stor20[arg1].field_1):
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var115002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var117001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var119001]:
                                    if var123001 == -1:
                                        revert with 0, 17
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var121001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var123001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var129003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var129003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                            else:
                                idx = 0
                                while uint255(stor20[arg1].field_1) + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var119002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var121001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var123001]:
                                    if var127001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var125001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var127001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var133003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var133003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                        else:
                            if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 >= stor20[arg1].field_1 % 128:
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var116002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var118001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var120001]:
                                    if var124001 == -1:
                                        revert with 0, 17
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var122001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var124001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var130003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var130003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                            else:
                                idx = 0
                                while stor20[arg1].field_1 % 128 + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var120002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var122001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var124001]:
                                    if var128001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var126001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var128001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var134003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var134003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
            else:
                mem[100] = this.address
                mem[132] = gubAddyAddress
                mem[164] = 10 * uint256(stakeMembers[arg1][var56001].field_256) / 100
                require ext_code.size(arg3)
                call arg3.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), gubAddyAddress, 10 * uint256(stakeMembers[arg1][var56001].field_256) / 100
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if var56001 >= uint256(stakeMembers[arg1].field_0):
                    revert with 0, 50
                if uint256(stakeMembers[arg1][var56001].field_256) < 10 * uint256(stakeMembers[arg1][var56001].field_256) / 100:
                    revert with 0, 17
                if var56001 >= uint256(stakeMembers[arg1].field_0):
                    revert with 0, 50
                uint256(stakeMembers[arg1][var56001].field_256) -= 10 * uint256(stakeMembers[arg1][var56001].field_256) / 100
                if var56001 >= uint256(stakeMembers[arg1].field_0):
                    revert with 0, 50
                if var56001 >= uint256(stakeMembers[arg1].field_0):
                    revert with 0, 50
                mem[ceil32(return_data.size) + 100] = this.address
                mem[ceil32(return_data.size) + 132] = address(stakeMembers[arg1][var56001].field_768)
                mem[ceil32(return_data.size) + 164] = uint256(stakeMembers[arg1][var56001].field_256)
                require ext_code.size(arg3)
                call arg3.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), address(stakeMembers[arg1][var56001].field_768), uint256(stakeMembers[arg1][var56001].field_256)
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if var56001 >= uint256(stakeMembers[arg1].field_0):
                    revert with 0, 50
                playerDetails[arg1][uint256(stor10[arg1][var56001].field_0)] = 0
                if var56001 == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 10
                if uint256(stakeMembers[arg1].field_0) < 1:
                    revert with 0, 17
                if var56001 + 1 <= uint256(stakeMembers[arg1].field_0) - 1:
                    var56001 = var56001 + 1
                    var56002 = 10 * uint256(stakeMembers[arg1][var56001].field_256) / 100
                    continue 
                uint8(stakes[arg1].field_0) = 0
                uint256(stakes[arg1].field_256) = 0
                uint256(stakes[arg1].field_512) = 0
                uint256(stakes[arg1].field_768) = 0
                uint256(stakes[arg1].field_1024) = 0
                uint256(stakes[arg1].field_1280) = 0
                uint256(stakes[arg1].field_1536) = 0
                uint256(stakes[arg1].field_1792) = 0
                uint256(stakeMembers[arg1].field_0) = 0
                idx = 0
                while 4 * uint256(stakeMembers[arg1].field_0) > idx:
                    uint256(stakeMembers[arg1][idx].field_0) = 0
                    uint256(stakeMembers[arg1][idx].field_256) = 0
                    uint256(stakeMembers[arg1][idx].field_512) = 0
                    address(stakeMembers[arg1][idx].field_768) = 0
                    idx = idx + 4
                    continue 
                uint256(stakeWinners[arg1].field_0) = 0
                idx = 0
                while 2 * uint256(stakeWinners[arg1].field_0) > idx:
                    uint256(stakeWinners[arg1][idx].field_0) = 0
                    address(stakeWinners[arg1][idx].field_256) = 0
                    idx = idx + 2
                    continue 
                if bool(stor15[arg1].field_0):
                    if bool(stor15[arg1].field_0) == uint255(stor15[arg1].field_1) < 32:
                        revert with 0, 34
                    uint256(stor15[arg1].field_0) = 0
                    if 31 < uint255(stor15[arg1].field_1):
                        idx = 0
                        while uint255(stor15[arg1].field_1) + 31 / 32 > idx:
                            uint256(stor15[arg1][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        stakeToken[arg1] = 0
                        if bool(stor20[arg1].field_0):
                            if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 < uint255(stor20[arg1].field_1):
                                idx = 0
                                while uint255(stor20[arg1].field_1) + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 < betIDRec.length:
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if var139002 > betIDRec.length - 1:
                                        if not numberOfBets:
                                            revert with 0, 17
                                        numberOfBets--
                                    if var141001 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 != betIDRec[var143001]:
                                        if var147001 == -1:
                                            revert with 0, 17
                                        # nil
                                    else:
                                        if var145001 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec[var147001] = 0
                                        if betIDRec.length < 1:
                                            revert with 0, 17
                                        # nil
                                else:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                            else:
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var135002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var137001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var139001]:
                                    if var143001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var141001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var143001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var149003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var149003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                        else:
                            if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 < stor20[arg1].field_1 % 128:
                                idx = 0
                                while stor20[arg1].field_1 % 128 + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 < betIDRec.length:
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if var140002 > betIDRec.length - 1:
                                        if not numberOfBets:
                                            revert with 0, 17
                                        numberOfBets--
                                    if var142001 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 != betIDRec[var144001]:
                                        if var148001 == -1:
                                            revert with 0, 17
                                        # nil
                                    else:
                                        if var146001 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec[var148001] = 0
                                        if betIDRec.length < 1:
                                            revert with 0, 17
                                        # nil
                                else:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                            else:
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var136002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var138001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var140001]:
                                    if var144001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var142001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var144001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var150003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var150003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                    else:
                        stakeToken[arg1] = 0
                        if bool(stor20[arg1].field_0):
                            if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 >= uint255(stor20[arg1].field_1):
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var131002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var133001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var135001]:
                                    if var139001 == -1:
                                        revert with 0, 17
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var137001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var139001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var145003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var145003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                            else:
                                idx = 0
                                while uint255(stor20[arg1].field_1) + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var135002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var137001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var139001]:
                                    if var143001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var141001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var143001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var149003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var149003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                        else:
                            if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 >= stor20[arg1].field_1 % 128:
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var132002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var134001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var136001]:
                                    if var140001 == -1:
                                        revert with 0, 17
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var138001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var140001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var146003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var146003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                            else:
                                idx = 0
                                while stor20[arg1].field_1 % 128 + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var136002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var138001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var140001]:
                                    if var144001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var142001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var144001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var150003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var150003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                else:
                    if bool(stor15[arg1].field_0) == stor15[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    uint256(stor15[arg1].field_0) = 0
                    if 31 < stor15[arg1].field_1 % 128:
                        idx = 0
                        while stor15[arg1].field_1 % 128 + 31 / 32 > idx:
                            uint256(stor15[arg1][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        stakeToken[arg1] = 0
                        if bool(stor20[arg1].field_0):
                            if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 < uint255(stor20[arg1].field_1):
                                idx = 0
                                while uint255(stor20[arg1].field_1) + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 < betIDRec.length:
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if var140002 > betIDRec.length - 1:
                                        if not numberOfBets:
                                            revert with 0, 17
                                        numberOfBets--
                                    if var142001 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 != betIDRec[var144001]:
                                        if var148001 == -1:
                                            revert with 0, 17
                                        # nil
                                    else:
                                        if var146001 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec[var148001] = 0
                                        if betIDRec.length < 1:
                                            revert with 0, 17
                                        # nil
                                else:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                            else:
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var136002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var138001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var140001]:
                                    if var144001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var142001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var144001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var150003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var150003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                        else:
                            if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 < stor20[arg1].field_1 % 128:
                                idx = 0
                                while stor20[arg1].field_1 % 128 + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 < betIDRec.length:
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if var141002 > betIDRec.length - 1:
                                        if not numberOfBets:
                                            revert with 0, 17
                                        numberOfBets--
                                    if var143001 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 != betIDRec[var145001]:
                                        if var149001 == -1:
                                            revert with 0, 17
                                        # nil
                                    else:
                                        if var147001 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec[var149001] = 0
                                        if betIDRec.length < 1:
                                            revert with 0, 17
                                        # nil
                                else:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                            else:
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var137002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var139001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var141001]:
                                    if var145001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var143001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var145001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var151003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var151003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                    else:
                        stakeToken[arg1] = 0
                        if bool(stor20[arg1].field_0):
                            if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_1) < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 >= uint255(stor20[arg1].field_1):
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var132002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var134001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var136001]:
                                    if var140001 == -1:
                                        revert with 0, 17
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var138001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var140001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var146003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var146003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                            else:
                                idx = 0
                                while uint255(stor20[arg1].field_1) + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var136002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var138001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var140001]:
                                    if var144001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var142001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var144001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var150003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var150003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                        else:
                            if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            uint256(stor20[arg1].field_0) = 0
                            if 31 >= stor20[arg1].field_1 % 128:
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var133002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var135001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var137001]:
                                    if var141001 == -1:
                                        revert with 0, 17
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var139001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var141001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var147003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var147003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
                            else:
                                idx = 0
                                while stor20[arg1].field_1 % 128 + 31 / 32 > idx:
                                    uint256(stor20[arg1][idx].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                timeCreated[arg1] = 0
                                timeExpires[arg1] = 0
                                stor17[arg1] = 0
                                if 1 >= betIDRec.length:
                                    if 0 >= betIDRec.length:
                                        revert with 0, 50
                                    if arg1 == betIDRec:
                                        if 0 >= betIDRec.length:
                                            revert with 0, 50
                                        betIDRec = 0
                                        if not betIDRec.length:
                                            revert with 0, 49
                                        betIDRec[betIDRec.length] = 0
                                        betIDRec.length--
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if betIDRec.length < 1:
                                    revert with 0, 17
                                if var137002 > betIDRec.length - 1:
                                    if not numberOfBets:
                                        revert with 0, 17
                                    numberOfBets--
                                if var139001 >= betIDRec.length:
                                    revert with 0, 50
                                if arg1 != betIDRec[var141001]:
                                    if var145001 == -1:
                                        revert with 0, 17
                                    # nil
                                else:
                                    if var143001 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var145001] = 0
                                    if betIDRec.length < 1:
                                        revert with 0, 17
                                    if betIDRec.length - 1 >= betIDRec.length:
                                        revert with 0, 50
                                    if var151003 >= betIDRec.length:
                                        revert with 0, 50
                                    betIDRec[var151003] = betIDRec[betIDRec.length]
                                    if not betIDRec.length:
                                        revert with 0, 49
                                    betIDRec[betIDRec.length] = 0
                                    betIDRec.length--
                                    # nil
}



}
