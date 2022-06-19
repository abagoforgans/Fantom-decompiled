contract main {




// =====================  Runtime code  =====================


#
#  - burnLP()
#  - kickStake(uint256 arg1)
#  - withdrawReward()
#
const ADMIN_ROLE = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
uint16 stor1;
uint16 stor1; offset 16
uint16 taxFee; offset 32
address stor1; offset 48
uint32 minStakeTime; offset 160
address stor3;
address sub_504bb778Address;
address sub_b20fc75aAddress;
uint8 stor6; offset 160
address sub_ae7e09ebAddress;
uint256 totalTaxAmount;
uint256 sub_f7b17d10;
uint256 totalStaked;
mapping of uint256 stakeAmountByUser;
mapping of uint256 sub_cf02e4e5;
mapping of struct stakeByID;
array of struct stor13;
mapping of uint256 sub_21c1bd6b;

function minStakeTime() payable {
    return minStakeTime
}

function sub_21c1bd6b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_21c1bd6b[arg1][arg2]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function getStakeByID(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return stakeByID[arg1].field_0, 
           stakeByID[arg1].field_0,
           stakeByID[arg1].field_0,
           stakeByID[arg1].field_256,
           stakeByID[arg1].field_512,
           stakeByID[arg1].field_768,
           stakeByID[arg1].field_1024,
           stakeByID[arg1].field_1280,
           stakeByID[arg1].field_1536,
           stakeByID[arg1].field_1792,
           stakeByID[arg1].field_2048,
           stakeByID[arg1].field_2304,
           bool(stakeByID[arg1].field_2464)
}

function sub_504bb778(?) payable {
    return sub_504bb778Address
}

function totalTaxAmount() payable {
    return totalTaxAmount
}

function getStakeAmountByUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakeAmountByUser[address(arg1)]
}

function totalStaked() payable {
    return totalStaked
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function taxFee() payable {
    return taxFee
}

function sub_ae7e09eb(?) payable {
    return sub_ae7e09ebAddress
}

function sub_b20fc75a(?) payable {
    return sub_b20fc75aAddress
}

function stakingPaused() payable {
    return bool(stor6)
}

function sub_cf02e4e5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_cf02e4e5[arg1]
}

function sub_d39f0b0d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return stakeAmountByUser[arg1]
}

function sub_f7b17d10(?) payable {
    return sub_f7b17d10
}

function _fallback() payable {
    revert
}

function pauseStaking() payable {
    if not roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        revert with 0, 'Denied'
    stor6 = 1
}

function unpauseStaking() payable {
    if not roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        revert with 0, 'Denied'
    stor6 = 0
}

function setTimings(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        revert with 0, 'Denied'
    minStakeTime = arg1
}

function setCIL(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        revert with 0, 'Denied'
    uint16(stor1.field_16) = arg1
    emit 0x5cb9bdc8: arg1
}

function withdrawAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor1.field_48) != msg.sender:
        revert with 0, 'Denied'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setTaxFees(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        revert with 0, 'Denied'
    if arg1 <= 0:
        revert with 0, '0'
    taxFee = arg1
    emit 0x78397d81: arg1
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function setAPY(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        revert with 0, 'Denied'
    if arg1 <= 0:
        revert with 0, '0'
    uint16(stor1.field_0) = arg1
    emit 0x24f2ec1f: arg1
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function withdrawErc20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if address(stor1.field_48) != msg.sender:
        revert with 0, 'Denied'
    if stor3 == arg1:
        revert with 0, 'LP'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getStakeidsByUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor13[address(arg1)].field_0:
        mem[128] = stor13[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor13[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor13[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor13[address(arg1)].field_0, data=mem[128 len 32 * stor13[address(arg1)].field_0])
    mem[(32 * stor13[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor13[address(arg1)].field_0) + 160] = stor13[address(arg1)].field_0
    mem[(32 * stor13[address(arg1)].field_0) + 192 len 32 * stor13[address(arg1)].field_0] = mem[128 len 32 * stor13[address(arg1)].field_0]
    return memory
      from (32 * stor13[address(arg1)].field_0) + 128
       len (96 * stor13[address(arg1)].field_0) + 64
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor6:
        revert with 0, 'Paused'
    require ext_code.size(sub_ae7e09ebAddress)
    staticcall sub_ae7e09ebAddress.0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg1
    require arg1 > 0
    require ext_code.size(sub_ae7e09ebAddress)
    staticcall sub_ae7e09ebAddress.getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] and arg1 > -1 / ext_call.return_data[18 len 14]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[50 len 14] and arg1 > -1 / ext_call.return_data[50 len 14]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if not ext_call.return_data[18 len 14] * arg1 / ext_call.return_data[0]:
        revert with 0, '0 Share'
    if ext_call.return_data[50 len 14] * arg1 / ext_call.return_data[0] <= 0:
        revert with 0, '0 Share'
    if stakeAmountByUser[msg.sender] > !arg1:
        revert with 0, 17
    stakeAmountByUser[msg.sender] += arg1
    stakeByID[stor8].field_256 = arg1
    stakeByID[stor8].field_2464 = 0
    stakeByID[stor8].field_1792 = block.timestamp
    stakeByID[stor8].field_32 = minStakeTime
    stakeByID[stor8].field_2304 = msg.sender or Mask(88, 168, stakeByID[stor8].field_2304)
    stakeByID[stor8].field_512 = ext_call.return_data[18 len 14] * arg1 / ext_call.return_data[0]
    stakeByID[stor8].field_768 = 0
    stakeByID[stor8].field_1024 = 0
    stakeByID[stor8].field_1280 = ext_call.return_data[50 len 14] * arg1 / ext_call.return_data[0]
    stakeByID[stor8].field_1536 = 0
    stakeByID[stor8].field_0 = minStakeTime
    stakeByID[stor8].field_0 = uint16(stor1.field_0)
    stakeByID[stor8].field_16 = uint16(stor1.field_16)
    stakeByID[stor8].field_32 = minStakeTime
    stor13[msg.sender].field_0++
    stor13[msg.sender][stor13[msg.sender].field_0].field_0 = sub_f7b17d10
    if totalStaked > !arg1:
        revert with 0, 17
    totalStaked += arg1
    if sub_f7b17d10 == -1:
        revert with 0, 17
    sub_f7b17d10++
    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 164] = this.address
    mem[(2 * ceil32(return_data.size)) + 196] = arg1
    mem[(2 * ceil32(return_data.size)) + 96] = 100
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(2 * ceil32(return_data.size)) + 228] = 32
    mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_b20fc75aAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
    mem[(2 * ceil32(return_data.size)) + 392] = 0
    call sub_b20fc75aAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
            if not mem[(2 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit LogStake(msg.sender, sub_f7b17d10, arg1);
}

function unStake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stakeByID[arg1].field_2304 != msg.sender:
        revert with 0, 'Denied'
    if stakeByID[arg1].field_2464:
        revert with 0, 'closed'
    if stakeAmountByUser[msg.sender] < stakeByID[arg1].field_256:
        revert with 0, 'No balance'
    if stakeAmountByUser[msg.sender] < stakeByID[arg1].field_256:
        revert with 0, 17
    stakeAmountByUser[msg.sender] -= stakeByID[arg1].field_256
    stakeByID[arg1].field_2464 = 1
    stakeByID[arg1].field_2048 = block.timestamp
    if totalStaked < stakeByID[arg1].field_256:
        revert with 0, 17
    totalStaked -= stakeByID[arg1].field_256
    require ext_code.size(sub_ae7e09ebAddress)
    staticcall sub_ae7e09ebAddress.0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= stakeByID[arg1].field_256
    require stakeByID[arg1].field_256 > 0
    require ext_code.size(sub_ae7e09ebAddress)
    staticcall sub_ae7e09ebAddress.getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] and stakeByID[arg1].field_256 > -1 / ext_call.return_data[18 len 14]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[50 len 14] and stakeByID[arg1].field_256 > -1 / ext_call.return_data[50 len 14]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    stakeByID[arg1].field_768 = ext_call.return_data[18 len 14] * stakeByID[arg1].field_256 / ext_call.return_data[0]
    stakeByID[arg1].field_1536 = ext_call.return_data[50 len 14] * stakeByID[arg1].field_256 / ext_call.return_data[0]
    if stakeByID[arg1].field_1792 > !stakeByID[arg1].field_32:
        revert with 0, 17
    if stakeByID[arg1].field_1792 + stakeByID[arg1].field_32 > block.timestamp:
        if stakeByID[arg1].field_256 and taxFee > -1 / stakeByID[arg1].field_256:
            revert with 0, 17
        if totalTaxAmount > !(stakeByID[arg1].field_256 * taxFee / 10000):
            revert with 0, 17
        totalTaxAmount += stakeByID[arg1].field_256 * taxFee / 10000
        if stakeByID[arg1].field_256 < stakeByID[arg1].field_256 * taxFee / 10000:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 164] = stakeByID[arg1].field_256 - (stakeByID[arg1].field_256 * taxFee / 10000)
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_b20fc75aAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, stakeByID[arg1].field_256 - (stakeByID[arg1].field_256 * taxFee / 10000), 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call sub_b20fc75aAddress with:
           funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, stakeByID[arg1].field_256 - (stakeByID[arg1].field_256 * taxFee / 10000), 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, stakeByID[arg1].field_256 - (stakeByID[arg1].field_256 * taxFee / 10000), 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit UnStaked(msg.sender, arg1, stakeByID[arg1].field_256, stakeByID[arg1].field_256 * taxFee / 10000);
    if block.timestamp < stakeByID[arg1].field_1792:
        revert with 0, 17
    if stakeByID[arg1].field_512 and uint16(stor1.field_0) > -1 / stakeByID[arg1].field_512:
        revert with 0, 17
    if stakeByID[arg1].field_512 * uint16(stor1.field_0) and block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 > -1 / stakeByID[arg1].field_512 * uint16(stor1.field_0):
        revert with 0, 17
    if not stakeByID[arg1].field_16:
        stakeByID[arg1].field_1024 = stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(sub_504bb778Address)
        staticcall sub_504bb778Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000:
            if sub_cf02e4e5[msg.sender] > !(stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000):
                revert with 0, 17
            sub_cf02e4e5[msg.sender] += stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000
            if stakeByID[arg1].field_256 < 0:
                revert with 0, 17
            mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 164] = stakeByID[arg1].field_256
            mem[(4 * ceil32(return_data.size)) + 96] = 68
            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
            mem[(4 * ceil32(return_data.size)) + 196] = 32
            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(sub_b20fc75aAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, stakeByID[arg1].field_256, 0
            mem[(4 * ceil32(return_data.size)) + 328] = 0
            call sub_b20fc75aAddress with:
               funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, stakeByID[arg1].field_256, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, stakeByID[arg1].field_256, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                    if not mem[(4 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit UnStaked(msg.sender, arg1, stakeByID[arg1].field_256, 0);
        mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 164] = stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000
        mem[(4 * ceil32(return_data.size)) + 96] = 68
        mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
        mem[(4 * ceil32(return_data.size)) + 196] = 32
        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_504bb778Address):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000, 0
        mem[(4 * ceil32(return_data.size)) + 328] = 0
        call sub_504bb778Address with:
           funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000, 0) << 288)
    else:
        if ext_call.return_data[18 len 14] * stakeByID[arg1].field_256 / ext_call.return_data[0] >= stakeByID[arg1].field_512:
            if stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000 > -1:
                revert with 0, 17
            stakeByID[arg1].field_1024 = stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(sub_504bb778Address)
            staticcall sub_504bb778Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000:
                if sub_cf02e4e5[msg.sender] > !(stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000):
                    revert with 0, 17
                sub_cf02e4e5[msg.sender] += stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000
                if stakeByID[arg1].field_256 < 0:
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 164] = stakeByID[arg1].field_256
                mem[(4 * ceil32(return_data.size)) + 96] = 68
                mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                mem[(4 * ceil32(return_data.size)) + 196] = 32
                mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(sub_b20fc75aAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, stakeByID[arg1].field_256, 0
                mem[(4 * ceil32(return_data.size)) + 328] = 0
                call sub_b20fc75aAddress with:
                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, stakeByID[arg1].field_256, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, stakeByID[arg1].field_256, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                        if not mem[(4 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit UnStaked(msg.sender, arg1, stakeByID[arg1].field_256, 0);
            mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 164] = stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000
            mem[(4 * ceil32(return_data.size)) + 96] = 68
            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
            mem[(4 * ceil32(return_data.size)) + 196] = 32
            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(sub_504bb778Address):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000, 0
            mem[(4 * ceil32(return_data.size)) + 328] = 0
            call sub_504bb778Address with:
               funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000, 0) << 288)
        else:
            if stakeByID[arg1].field_512 < ext_call.return_data[18 len 14] * stakeByID[arg1].field_256 / ext_call.return_data[0]:
                revert with 0, 17
            if stakeByID[arg1].field_512 - (ext_call.return_data[18 len 14] * stakeByID[arg1].field_256 / ext_call.return_data[0]) and stakeByID[arg1].field_16 > -1 / stakeByID[arg1].field_512 - (ext_call.return_data[18 len 14] * stakeByID[arg1].field_256 / ext_call.return_data[0]):
                revert with 0, 17
            if stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000 > !((stakeByID[arg1].field_512 * stakeByID[arg1].field_16) - (ext_call.return_data[18 len 14] * stakeByID[arg1].field_256 / ext_call.return_data[0] * stakeByID[arg1].field_16) / 10000):
                revert with 0, 17
            stakeByID[arg1].field_1024 = (stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000) + ((stakeByID[arg1].field_512 * stakeByID[arg1].field_16) - (ext_call.return_data[18 len 14] * stakeByID[arg1].field_256 / ext_call.return_data[0] * stakeByID[arg1].field_16) / 10000)
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(sub_504bb778Address)
            staticcall sub_504bb778Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= (stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000) + ((stakeByID[arg1].field_512 * stakeByID[arg1].field_16) - (Mask(112, 0, ext_call.return_data[0]) * stakeByID[arg1].field_256 / ext_call.return_data[0] * stakeByID[arg1].field_16) / 10000):
                if sub_cf02e4e5[msg.sender] > !((stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000) + ((stakeByID[arg1].field_512 * stakeByID[arg1].field_16) - (Mask(112, 0, ext_call.return_data[0]) * stakeByID[arg1].field_256 / ext_call.return_data[0] * stakeByID[arg1].field_16) / 10000)):
                    revert with 0, 17
                sub_cf02e4e5[msg.sender] = sub_cf02e4e5[msg.sender] + (stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000) + ((stakeByID[arg1].field_512 * stakeByID[arg1].field_16) - (Mask(112, 0, ext_call.return_data[0]) * stakeByID[arg1].field_256 / ext_call.return_data[0] * stakeByID[arg1].field_16) / 10000)
                if stakeByID[arg1].field_256 < 0:
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 164] = stakeByID[arg1].field_256
                mem[(4 * ceil32(return_data.size)) + 96] = 68
                mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                mem[(4 * ceil32(return_data.size)) + 196] = 32
                mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(sub_b20fc75aAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, stakeByID[arg1].field_256, 0
                mem[(4 * ceil32(return_data.size)) + 328] = 0
                call sub_b20fc75aAddress with:
                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, stakeByID[arg1].field_256, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, stakeByID[arg1].field_256, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                        if not mem[(4 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit UnStaked(msg.sender, arg1, stakeByID[arg1].field_256, 0);
            mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 164] = (stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000) + ((stakeByID[arg1].field_512 * stakeByID[arg1].field_16) - (Mask(112, 0, ext_call.return_data[0]) * stakeByID[arg1].field_256 / ext_call.return_data[0] * stakeByID[arg1].field_16) / 10000)
            mem[(4 * ceil32(return_data.size)) + 96] = 68
            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
            mem[(4 * ceil32(return_data.size)) + 196] = 32
            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(sub_504bb778Address):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, (stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000) + ((stakeByID[arg1].field_512 * stakeByID[arg1].field_16) - (Mask(112, 0, ext_call.return_data[0]) * stakeByID[arg1].field_256 / ext_call.return_data[0] * stakeByID[arg1].field_16) / 10000), 0
            mem[(4 * ceil32(return_data.size)) + 328] = 0
            call sub_504bb778Address with:
               funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, (stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000) + ((stakeByID[arg1].field_512 * stakeByID[arg1].field_16) - (Mask(112, 0, ext_call.return_data[0]) * stakeByID[arg1].field_256 / ext_call.return_data[0] * stakeByID[arg1].field_16) / 10000), 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, (stakeByID[arg1].field_512 * uint16(stor1.field_0) * block.timestamp - stakeByID[arg1].field_1792 / 24 * 3600 / 3650000) + ((stakeByID[arg1].field_512 * stakeByID[arg1].field_16) - (Mask(112, 0, ext_call.return_data[0]) * stakeByID[arg1].field_256 / ext_call.return_data[0] * stakeByID[arg1].field_16) / 10000), 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if stakeByID[arg1].field_256 < 0:
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 296] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 328] = stakeByID[arg1].field_256
        mem[(4 * ceil32(return_data.size)) + 260] = 68
        mem[(4 * ceil32(return_data.size)) + 292 len 4] = transfer(address arg1, uint256 arg2)
        mem[(4 * ceil32(return_data.size)) + 360] = 32
        mem[(4 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_b20fc75aAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 424 len 96] = 0, msg.sender, stakeByID[arg1].field_256, 0
        mem[(4 * ceil32(return_data.size)) + 492] = 0
        call sub_b20fc75aAddress with:
           funct Mask(32, 224, 0, msg.sender, stakeByID[arg1].field_256, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, stakeByID[arg1].field_256, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(4 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 456] == bool(mem[(4 * ceil32(return_data.size)) + 456])
                if not mem[(4 * ceil32(return_data.size)) + 456]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit UnStaked(msg.sender, arg1, stakeByID[arg1].field_256, 0);
    mem[(4 * ceil32(return_data.size)) + 260] = return_data.size
    mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
        if not mem[(4 * ceil32(return_data.size)) + 292]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if stakeByID[arg1].field_256 < 0:
        revert with 0, 17
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = msg.sender
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = stakeByID[arg1].field_256
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = transfer(address arg1, uint256 arg2)
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_b20fc75aAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, msg.sender, stakeByID[arg1].field_256, 0
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
    call sub_b20fc75aAddress with:
       funct Mask(32, 224, 0, msg.sender, stakeByID[arg1].field_256, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, msg.sender, stakeByID[arg1].field_256, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit UnStaked(msg.sender, arg1, stakeByID[arg1].field_256, 0);
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 430] = 32
        mem[(8 * ceil32(return_data.size)) + 462] = 32
        mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
        revert with memory
          from (8 * ceil32(return_data.size)) + 426
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
        mem[(8 * ceil32(return_data.size)) + 426] = msg.sender
        mem[(8 * ceil32(return_data.size)) + 458] = arg1
        mem[(8 * ceil32(return_data.size)) + 490] = stakeByID[arg1].field_256
        mem[(8 * ceil32(return_data.size)) + 522] = 0
        emit UnStaked(address arg1, uint256 arg2, uint256 arg3, uint256 arg4):
                      mem[(8 * ceil32(return_data.size)) + 426 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128],
    require return_data.size >= 32
    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
    if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
        mem[(8 * ceil32(return_data.size)) + 426] = msg.sender
        mem[(8 * ceil32(return_data.size)) + 458] = arg1
        mem[(8 * ceil32(return_data.size)) + 490] = stakeByID[arg1].field_256
        mem[(8 * ceil32(return_data.size)) + 522] = 0
        emit UnStaked(address arg1, uint256 arg2, uint256 arg3, uint256 arg4):
                      mem[(8 * ceil32(return_data.size)) + 426 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128],
    mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 430] = 32
    mem[(8 * ceil32(return_data.size)) + 462] = 42
    mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
    mem[(8 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (8 * ceil32(return_data.size)) + 426
       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
