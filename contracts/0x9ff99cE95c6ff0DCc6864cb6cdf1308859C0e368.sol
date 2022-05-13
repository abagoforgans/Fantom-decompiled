contract main {




// =====================  Runtime code  =====================


#
#  - sub_13a55aa5(?)
#
address owner;
mapping of uint256 balanceOf;
mapping of struct stor2;
mapping of uint256 allowance;
mapping of uint8 stor4;
uint8 decimals;
uint32 sub_9e0ffbce; offset 8
uint256 taxFee;
uint256 totalSupply;
array of uint8 sub_f22b1084;
uint8 sub_fb3fbc12;
array of struct stor10;
array of struct stor11;
address burnWalletAddress;

function burnWallet() {
    return burnWalletAddress
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_9e0ffbce(?) {
    return sub_9e0ffbce
}

function taxFee() {
    return taxFee
}

function isExcluded(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[address(arg1)])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_f22b1084(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 5
    return sub_f22b1084[uint8(arg1)].field_0
}

function sub_fb3fbc12(?) {
    return bool(sub_fb3fbc12)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function endOfPeriod() {
    if stor2[address(msg.sender)].field_512 > -sub_9e0ffbce - 1:
        revert with 'NH{q', 17
    return (stor2[address(msg.sender)].field_512 + sub_9e0ffbce)
}

function setRewardRate(uint32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9e0ffbce = arg1
}

function setCircuitBreaker(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fb3fbc12 = uint8(arg1)
}

function includeInTaxes(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor4[address(arg1)]:
        revert with 0, 'already taxed'
    stor4[address(arg1)] = 0
}

function excludeFromTaxes(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor4[address(arg1)]:
        revert with 0, 'already excluded'
    stor4[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    if stor2[address(msg.sender)].field_256 > -86401:
        revert with 'NH{q', 17
    if block.timestamp > stor2[address(msg.sender)].field_256 + (24 * 3600):
        stor2[address(msg.sender)].field_0 = 0
    if stor4[address(msg.sender)]:
        stor2[address(arg1)].field_256 = block.timestamp
        if balanceOf[address(msg.sender)] < arg2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] -= arg2
        if arg2 < 0:
            revert with 'NH{q', 17
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        emit Transfer(0, msg.sender, burnWalletAddress);
    else:
        if stor4[address(arg1)]:
            stor2[address(arg1)].field_256 = block.timestamp
            if balanceOf[address(msg.sender)] < arg2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] -= arg2
            if arg2 < 0:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            emit Transfer(0, msg.sender, burnWalletAddress);
        else:
            if sub_fb3fbc12:
                stor2[address(arg1)].field_256 = block.timestamp
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if arg2 < 0:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
                emit Transfer(0, msg.sender, burnWalletAddress);
            else:
                if arg2 and taxFee > -1 / arg2:
                    revert with 'NH{q', 17
                if balanceOf[stor12] > -(arg2 * taxFee / 10000) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor12] += arg2 * taxFee / 10000
                stor2[address(arg1)].field_256 = block.timestamp
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if arg2 < arg2 * taxFee / 10000:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] > -arg2 + (arg2 * taxFee / 10000) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxFee / 10000)
                emit Transfer(arg2, msg.sender, arg1);
                emit Transfer((arg2 * taxFee / 10000), msg.sender, burnWalletAddress);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    if stor2[address(arg1)].field_256 > -86401:
        revert with 'NH{q', 17
    if block.timestamp > stor2[address(arg1)].field_256 + (24 * 3600):
        stor2[address(arg1)].field_0 = 0
    if stor4[address(arg1)]:
        stor2[address(arg2)].field_256 = block.timestamp
        if balanceOf[address(arg1)] < arg3:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] -= arg3
        if arg3 < 0:
            revert with 'NH{q', 17
        if balanceOf[address(arg2)] > -arg3 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
        emit Transfer(0, arg1, burnWalletAddress);
    else:
        if stor4[address(arg2)]:
            stor2[address(arg2)].field_256 = block.timestamp
            if balanceOf[address(arg1)] < arg3:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] -= arg3
            if arg3 < 0:
                revert with 'NH{q', 17
            if balanceOf[address(arg2)] > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            emit Transfer(0, arg1, burnWalletAddress);
        else:
            if sub_fb3fbc12:
                stor2[address(arg2)].field_256 = block.timestamp
                if balanceOf[address(arg1)] < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] -= arg3
                if arg3 < 0:
                    revert with 'NH{q', 17
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                emit Transfer(0, arg1, burnWalletAddress);
            else:
                if arg3 and taxFee > -1 / arg3:
                    revert with 'NH{q', 17
                if balanceOf[stor12] > -(arg3 * taxFee / 10000) - 1:
                    revert with 'NH{q', 17
                balanceOf[stor12] += arg3 * taxFee / 10000
                stor2[address(arg2)].field_256 = block.timestamp
                if balanceOf[address(arg1)] < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] -= arg3
                if arg3 < arg3 * taxFee / 10000:
                    revert with 'NH{q', 17
                if balanceOf[address(arg2)] > -arg3 + (arg3 * taxFee / 10000) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * taxFee / 10000)
                emit Transfer(arg3, arg1, arg2);
                emit Transfer((arg3 * taxFee / 10000), arg1, burnWalletAddress);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function name() {
    if bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor10.length):
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor10.length.field_1:
                if 31 < stor10.length.field_1:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)])
                mem[128] = 256 * stor10.length.field_8
        else:
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor10.length.field_1:
                if 31 < stor10.length.field_1:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)])
                mem[128] = 256 * stor10.length.field_8
        mem[ceil32(stor10.length.field_1) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
        if ceil32(stor10.length.field_1) > stor10.length.field_1:
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 192 len 2 * ceil32(stor10.length.field_1)]), 
    if bool(stor10.length) == stor10.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor10.length.field_1:
            if 31 < stor10.length.field_1:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor10.length.field_1:
            if 31 < stor10.length.field_1:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    mem[ceil32(stor10.length.field_1) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
    if ceil32(stor10.length.field_1) > stor10.length.field_1:
        mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 192] = 0
    return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 192 len 2 * ceil32(stor10.length.field_1)]), 
}

function symbol() {
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor11.length):
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)])
                mem[128] = 256 * stor11.length.field_8
        else:
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)])
                mem[128] = 256 * stor11.length.field_8
        mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) > stor11.length.field_1:
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
    if ceil32(stor11.length.field_1) > stor11.length.field_1:
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
    return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
}

function computeReward() {
    if stor2[address(msg.sender)].field_512 > -sub_9e0ffbce - 1:
        revert with 'NH{q', 17
    if stor2[address(msg.sender)].field_512 + sub_9e0ffbce > block.timestamp:
        return 0
    if totalSupply < balanceOf[57005]:
        revert with 'NH{q', 17
    if block.timestamp < stor2[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if not sub_9e0ffbce:
        revert with 'NH{q', 18
    if balanceOf[address(msg.sender)] and block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce > -1 / balanceOf[address(msg.sender)]:
        revert with 'NH{q', 17
    if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce and eth.balance(this.address) > -1 / balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[57005] and 24 * 3600 > -1 / totalSupply - balanceOf[57005]:
        revert with 'NH{q', 17
    if not (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]):
        revert with 'NH{q', 18
    if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) > 2 * 10^18:
        if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) and sub_f22b1084.length.field_32 > -1 / balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]):
            revert with 'NH{q', 17
        if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) < balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_32 / 100:
            revert with 'NH{q', 17
        return (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005])) - (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_32 / 100), 
               balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_32 / 100
    if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) > 15 * 10^17:
        if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) and sub_f22b1084.length.field_24 > -1 / balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]):
            revert with 'NH{q', 17
        if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) < balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_24 / 100:
            revert with 'NH{q', 17
        return (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005])) - (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_24 / 100), 
               balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_24 / 100
    if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) > 10^18:
        if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) and sub_f22b1084.length.field_16 > -1 / balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]):
            revert with 'NH{q', 17
        if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) < balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_16 / 100:
            revert with 'NH{q', 17
        return (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005])) - (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_16 / 100), 
               balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_16 / 100
    if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) > 5 * 10^17:
        if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) and sub_f22b1084.length.field_8 > -1 / balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]):
            revert with 'NH{q', 17
        if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) < balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_8 / 100:
            revert with 'NH{q', 17
        return (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005])) - (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_8 / 100), 
               balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_8 / 100
    if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) <= 25 * 10^16:
        if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) < 0:
            revert with 'NH{q', 17
        return balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]), 
               0
    if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) and sub_f22b1084.length > -1 / balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]):
        revert with 'NH{q', 17
    if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) < balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length / 100:
        revert with 'NH{q', 17
    return (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005])) - (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length / 100), 
           balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length / 100
}

function claimReward() {
    if stor2[address(msg.sender)].field_512 > -sub_9e0ffbce - 1:
        revert with 'NH{q', 17
    if stor2[address(msg.sender)].field_512 + sub_9e0ffbce > block.timestamp:
        revert with 0, 'Claim: 0'
    if totalSupply < balanceOf[57005]:
        revert with 'NH{q', 17
    if block.timestamp < stor2[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if not sub_9e0ffbce:
        revert with 'NH{q', 18
    if balanceOf[address(msg.sender)] and block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce > -1 / balanceOf[address(msg.sender)]:
        revert with 'NH{q', 17
    if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce and eth.balance(this.address) > -1 / balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[57005] and 24 * 3600 > -1 / totalSupply - balanceOf[57005]:
        revert with 'NH{q', 17
    if not (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]):
        revert with 'NH{q', 18
    if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) > 2 * 10^18:
        if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) and sub_f22b1084.length.field_32 > -1 / balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]):
            revert with 'NH{q', 17
        if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) < balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_32 / 100:
            revert with 'NH{q', 17
        if (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005])) - (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_32 / 100) <= 0:
            revert with 0, 'Claim: 0'
        stor2[address(msg.sender)].field_512 = block.timestamp
        emit Transfer((balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_32 / 100), msg.sender, this.address);
        call msg.sender with:
           value (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005])) - (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_32 / 100) wei
             gas gas_remaining wei
    else:
        if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) > 15 * 10^17:
            if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) and sub_f22b1084.length.field_24 > -1 / balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]):
                revert with 'NH{q', 17
            if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) < balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_24 / 100:
                revert with 'NH{q', 17
            if (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005])) - (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_24 / 100) <= 0:
                revert with 0, 'Claim: 0'
            stor2[address(msg.sender)].field_512 = block.timestamp
            emit Transfer((balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_24 / 100), msg.sender, this.address);
            call msg.sender with:
               value (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005])) - (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_24 / 100) wei
                 gas gas_remaining wei
        else:
            if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) > 10^18:
                if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) and sub_f22b1084.length.field_16 > -1 / balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]):
                    revert with 'NH{q', 17
                if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) < balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_16 / 100:
                    revert with 'NH{q', 17
                if (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005])) - (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_16 / 100) <= 0:
                    revert with 0, 'Claim: 0'
                stor2[address(msg.sender)].field_512 = block.timestamp
                emit Transfer((balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_16 / 100), msg.sender, this.address);
                call msg.sender with:
                   value (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005])) - (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_16 / 100) wei
                     gas gas_remaining wei
            else:
                if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) > 5 * 10^17:
                    if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) and sub_f22b1084.length.field_8 > -1 / balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]):
                        revert with 'NH{q', 17
                    if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) < balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_8 / 100:
                        revert with 'NH{q', 17
                    if (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005])) - (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_8 / 100) <= 0:
                        revert with 0, 'Claim: 0'
                    stor2[address(msg.sender)].field_512 = block.timestamp
                    emit Transfer((balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_8 / 100), msg.sender, this.address);
                    call msg.sender with:
                       value (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005])) - (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length.field_8 / 100) wei
                         gas gas_remaining wei
                else:
                    if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) <= 25 * 10^16:
                        if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) < 0:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) <= 0:
                            revert with 0, 'Claim: 0'
                        stor2[address(msg.sender)].field_512 = block.timestamp
                        emit Transfer(0, msg.sender, this.address);
                        call msg.sender with:
                           value balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) wei
                             gas gas_remaining wei
                    else:
                        if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) and sub_f22b1084.length > -1 / balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]):
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) < balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length / 100:
                            revert with 'NH{q', 17
                        if (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005])) - (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length / 100) <= 0:
                            revert with 0, 'Claim: 0'
                        stor2[address(msg.sender)].field_512 = block.timestamp
                        emit Transfer((balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length / 100), msg.sender, this.address);
                        call msg.sender with:
                           value (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005])) - (balanceOf[address(msg.sender)] * block.timestamp - stor2[address(msg.sender)].field_256 % sub_9e0ffbce * eth.balance(this.address) / (24 * 3600 * totalSupply) - (24 * 3600 * balanceOf[57005]) * sub_f22b1084.length / 100) wei
                             gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: ETH_TRANSFER_FAILED'
}



}
