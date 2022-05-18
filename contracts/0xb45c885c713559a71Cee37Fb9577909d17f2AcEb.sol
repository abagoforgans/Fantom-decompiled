contract main {




// =====================  Runtime code  =====================


const decimals = 18


address owner;
address newOwner;
address LPAddress;
address tokenAddress;
array of address stakers;
uint256 count;
uint256 sub_f3861666;
uint256 totalLP;
uint256 totalFees;
uint256 sub_fc80c139;
uint256 sub_76e7b8c3;
uint256 epoch;
uint256 sub_fb804c3d;
uint256 sub_a2b0488f;
uint256 sub_16b9fde4;
mapping of uint256 stakingBal;
mapping of uint8 stor16;
mapping of uint8 stor17;
mapping of uint256 share;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 mintPrice;
uint256 sub_3d357096;
uint256 sub_ec640ae0;
uint256 sub_58d01bbb;
uint256 burnRate;
uint256 feesRate;
uint256 ether;
array of struct stor30;
array of struct stor31;

function count() {
    return count
}

function Ether() {
    return ether
}

function feesRate() {
    return feesRate
}

function totalFees() {
    return totalFees
}

function totalLP() {
    return totalLP
}

function sub_16b9fde4(?) {
    return sub_16b9fde4
}

function totalSupply() {
    return totalSupply
}

function share(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return share[arg1]
}

function getStakingBal(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakingBal[address(arg1)]
}

function sub_3d357096(?) {
    return sub_3d357096
}

function getShare(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return share[address(arg1)]
}

function sub_58d01bbb(?) {
    return sub_58d01bbb
}

function mintPrice() {
    return mintPrice
}

function isStaking(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor17[arg1])
}

function Epoch() {
    return epoch
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_76e7b8c3(?) {
    return sub_76e7b8c3
}

function sub_8d850364(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return stakingBal[arg1]
}

function owner() {
    return owner
}

function sub_a2b0488f(?) {
    return sub_a2b0488f
}

function LP() {
    return LPAddress
}

function burnRate() {
    return burnRate
}

function hasStaked(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor16[arg1])
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_ec640ae0(?) {
    return sub_ec640ae0
}

function sub_f3861666(?) {
    return sub_f3861666
}

function sub_fb804c3d(?) {
    return sub_fb804c3d
}

function token() {
    return tokenAddress
}

function sub_fc80c139(?) {
    return sub_fc80c139
}

function stakers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stakers.length
    return stakers[arg1]
}

function _fallback() payable {
    revert
}

function setLP(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    LPAddress = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    newOwner = arg1
}

function setLottoPayout(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if sub_16b9fde4 <= 10^18:
        revert with 0, 'must be higher than 1'
    sub_16b9fde4 = arg1
}

function setFeeRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if 10 <= arg1:
        revert with 0, 'must be between 1 and 10'
    if arg1 <= 1:
        revert with 0, 'must be between 1 and 10'
    feesRate = arg1
}

function setBurnRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if 10 <= arg1:
        revert with 0, 'must be between 1 and 10'
    if arg1 <= 1:
        revert with 0, 'must be between 1 and 10'
    burnRate = arg1
}

function transferERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
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

function stakeTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(LPAddress)
    call LPAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if totalLP > -arg1 - 1:
        revert with 'NH{q', 17
    totalLP += arg1
    if stakingBal[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    stakingBal[address(msg.sender)] += arg1
    if not stor16[address(msg.sender)]:
        stakers.length++
        stakers[stakers.length] = msg.sender
    stor17[address(msg.sender)] = 1
    stor16[address(msg.sender)] = 1
}

function unstakeTokens() {
    if stakingBal[address(msg.sender)] <= 0:
        revert with 0, 'staking balance cannot be 0'
    if totalLP < stakingBal[address(msg.sender)]:
        revert with 'NH{q', 17
    totalLP -= stakingBal[address(msg.sender)]
    require ext_code.size(LPAddress)
    call LPAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stakingBal[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if share[address(msg.sender)] > 0:
        require ext_code.size(this.address)
        call this.address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, share[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stakingBal[address(msg.sender)] = 0
    share[address(msg.sender)] = 0
    stor17[address(msg.sender)] = 0
}

function burnForEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require totalSupply > 180
    require arg1 > 0
    require eth.balance(this.address) > 0
    if eth.balance(this.address) and 9 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    if 9 * eth.balance(this.address) / 10 and 10^18 > -1 / 9 * eth.balance(this.address) / 10:
        revert with 'NH{q', 17
    if not totalSupply:
        revert with 'NH{q', 18
    if 10^18 * 9 * eth.balance(this.address) / 10 / totalSupply and arg1 > -1 / 10^18 * 9 * eth.balance(this.address) / 10 / totalSupply:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 'NH{q', 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    call msg.sender with:
       value 10^18 * 9 * eth.balance(this.address) / 10 / totalSupply * arg1 / 10^18 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_3d357096 = 10^18 * 9 * eth.balance(this.address) / 10 / totalSupply
    ether = eth.balance(this.address)
}

function mintForEth() payable {
    if not ether:
        mintPrice = 0
    else:
        if ether == 1:
            mintPrice = 0
        else:
            if ether == 2:
                mintPrice = 0
            else:
                if bool(bool(ether < 11)) or bool(bool(ether < 307)):
                    if ether^2 > -1:
                        revert with 'NH{q', 17
                    mintPrice = ether^2 / 10000 / 10^18
                else:
                    s = ether
                    idx = 2
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        s = s * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if 1 > -1 / s:
                        revert with 'NH{q', 17
                    mintPrice = s / 10000 / 10^18
    if msg.value / 100 and 5 > -1 / msg.value / 100:
        revert with 'NH{q', 17
    if msg.value < 5 * msg.value / 100:
        revert with 'NH{q', 17
    if not mintPrice:
        revert with 'NH{q', 18
    if msg.value - (5 * msg.value / 100) / mintPrice and 10^18 > -1 / msg.value - (5 * msg.value / 100) / mintPrice:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > (-1 * 10^18 * msg.value - (5 * msg.value / 100) / mintPrice) - 1:
        revert with 'NH{q', 17
    totalSupply += 10^18 * msg.value - (5 * msg.value / 100) / mintPrice
    if balanceOf[address(msg.sender)] > (-1 * 10^18 * msg.value - (5 * msg.value / 100) / mintPrice) - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += 10^18 * msg.value - (5 * msg.value / 100) / mintPrice
    emit Transfer((10^18 * msg.value - (5 * msg.value / 100) / mintPrice), 0, msg.sender);
    call owner with:
       value 5 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_ec640ae0 = msg.value - (5 * msg.value / 100) / mintPrice
    ether = eth.balance(this.address)
    if eth.balance(this.address) and 9 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    if 9 * eth.balance(this.address) / 10 and 10^18 > -1 / 9 * eth.balance(this.address) / 10:
        revert with 'NH{q', 17
    if not totalSupply:
        revert with 'NH{q', 18
    sub_3d357096 = 10^18 * 9 * eth.balance(this.address) / 10 / totalSupply
}

function name() {
    if bool(stor30.length):
        if bool(stor30.length) == stor30.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor30.length):
            if bool(stor30.length) == stor30.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor30.length.field_1:
                if 31 < stor30.length.field_1:
                    mem[128] = uint256(stor30.field_0)
                    idx = 128
                    s = 0
                    while stor30.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor30[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor30.length.field_1), data=mem[128 len ceil32(stor30.length.field_1)])
                mem[128] = 256 * stor30.length.field_8
        else:
            if bool(stor30.length) == stor30.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor30.length.field_1:
                if 31 < stor30.length.field_1:
                    mem[128] = uint256(stor30.field_0)
                    idx = 128
                    s = 0
                    while stor30.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor30[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor30.length.field_1), data=mem[128 len ceil32(stor30.length.field_1)])
                mem[128] = 256 * stor30.length.field_8
        mem[ceil32(stor30.length.field_1) + 192 len ceil32(stor30.length.field_1)] = mem[128 len ceil32(stor30.length.field_1)]
        if ceil32(stor30.length.field_1) > stor30.length.field_1:
            mem[ceil32(stor30.length.field_1) + stor30.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor30.length.field_1), data=mem[128 len ceil32(stor30.length.field_1)], mem[(2 * ceil32(stor30.length.field_1)) + 192 len 2 * ceil32(stor30.length.field_1)]), 
    if bool(stor30.length) == stor30.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor30.length):
        if bool(stor30.length) == stor30.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor30.length.field_1:
            if 31 < stor30.length.field_1:
                mem[128] = uint256(stor30.field_0)
                idx = 128
                s = 0
                while stor30.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor30[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor30.length % 128, data=mem[128 len ceil32(stor30.length.field_1)])
            mem[128] = 256 * stor30.length.field_8
    else:
        if bool(stor30.length) == stor30.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor30.length.field_1:
            if 31 < stor30.length.field_1:
                mem[128] = uint256(stor30.field_0)
                idx = 128
                s = 0
                while stor30.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor30[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor30.length % 128, data=mem[128 len ceil32(stor30.length.field_1)])
            mem[128] = 256 * stor30.length.field_8
    mem[ceil32(stor30.length.field_1) + 192 len ceil32(stor30.length.field_1)] = mem[128 len ceil32(stor30.length.field_1)]
    if ceil32(stor30.length.field_1) > stor30.length.field_1:
        mem[ceil32(stor30.length.field_1) + stor30.length.field_1 + 192] = 0
    return Array(len=stor30.length % 128, data=mem[128 len ceil32(stor30.length.field_1)], mem[(2 * ceil32(stor30.length.field_1)) + 192 len 2 * ceil32(stor30.length.field_1)]), 
}

function symbol() {
    if bool(stor31.length):
        if bool(stor31.length) == stor31.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor31.length):
            if bool(stor31.length) == stor31.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor31.length.field_1:
                if 31 < stor31.length.field_1:
                    mem[128] = uint256(stor31.field_0)
                    idx = 128
                    s = 0
                    while stor31.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor31[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor31.length.field_1), data=mem[128 len ceil32(stor31.length.field_1)])
                mem[128] = 256 * stor31.length.field_8
        else:
            if bool(stor31.length) == stor31.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor31.length.field_1:
                if 31 < stor31.length.field_1:
                    mem[128] = uint256(stor31.field_0)
                    idx = 128
                    s = 0
                    while stor31.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor31[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor31.length.field_1), data=mem[128 len ceil32(stor31.length.field_1)])
                mem[128] = 256 * stor31.length.field_8
        mem[ceil32(stor31.length.field_1) + 192 len ceil32(stor31.length.field_1)] = mem[128 len ceil32(stor31.length.field_1)]
        if ceil32(stor31.length.field_1) > stor31.length.field_1:
            mem[ceil32(stor31.length.field_1) + stor31.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor31.length.field_1), data=mem[128 len ceil32(stor31.length.field_1)], mem[(2 * ceil32(stor31.length.field_1)) + 192 len 2 * ceil32(stor31.length.field_1)]), 
    if bool(stor31.length) == stor31.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor31.length):
        if bool(stor31.length) == stor31.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor31.length.field_1:
            if 31 < stor31.length.field_1:
                mem[128] = uint256(stor31.field_0)
                idx = 128
                s = 0
                while stor31.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor31[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor31.length % 128, data=mem[128 len ceil32(stor31.length.field_1)])
            mem[128] = 256 * stor31.length.field_8
    else:
        if bool(stor31.length) == stor31.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor31.length.field_1:
            if 31 < stor31.length.field_1:
                mem[128] = uint256(stor31.field_0)
                idx = 128
                s = 0
                while stor31.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor31[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor31.length % 128, data=mem[128 len ceil32(stor31.length.field_1)])
            mem[128] = 256 * stor31.length.field_8
    mem[ceil32(stor31.length.field_1) + 192 len ceil32(stor31.length.field_1)] = mem[128 len ceil32(stor31.length.field_1)]
    if ceil32(stor31.length.field_1) > stor31.length.field_1:
        mem[ceil32(stor31.length.field_1) + stor31.length.field_1 + 192] = 0
    return Array(len=stor31.length % 128, data=mem[128 len ceil32(stor31.length.field_1)], mem[(2 * ceil32(stor31.length.field_1)) + 192 len 2 * ceil32(stor31.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if msg.sender == this.address:
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if arg2 / 100 and 1 > -1 / arg2 / 100:
            revert with 'NH{q', 17
        if arg2 / 100 and burnRate > -1 / arg2 / 100:
            revert with 'NH{q', 17
        if arg2 / 100 and feesRate > -1 / arg2 / 100:
            revert with 'NH{q', 17
        if arg2 / 100 * burnRate > (-1 * arg2 / 100 * feesRate) - 1:
            revert with 'NH{q', 17
        if (arg2 / 100 * burnRate) + (arg2 / 100 * feesRate) > -(arg2 / 100) - 1:
            revert with 'NH{q', 17
        if arg2 < (arg2 / 100 * burnRate) + (arg2 / 100 * feesRate) + (arg2 / 100):
            revert with 'NH{q', 17
        if sub_a2b0488f > -(arg2 / 100) - 1:
            revert with 'NH{q', 17
        sub_a2b0488f += arg2 / 100
        if totalFees > (-1 * arg2 / 100 * feesRate) - 1:
            revert with 'NH{q', 17
        totalFees += arg2 / 100 * feesRate
        if sub_fc80c139 > (-1 * arg2 / 100 * feesRate) - 1:
            revert with 'NH{q', 17
        sub_fc80c139 += arg2 / 100 * feesRate
        if sub_a2b0488f <= sub_16b9fde4:
            if stakers.length > 0:
                idx = 0
                while idx < 5:
                    if count < stakers.length:
                        mem[0] = stakers[stor5]
                        mem[32] = 17
                        if bool(stor17[stor4[stor5]]) == 1:
                            if count >= stakers.length:
                                revert with 'NH{q', 50
                            require stakingBal[stor4[stor5]] > 0
                            if not totalLP:
                                revert with 'NH{q', 18
                            if stakingBal[stor4[stor5]] / totalLP and sub_76e7b8c3 > -1 / stakingBal[stor4[stor5]] / totalLP:
                                revert with 'NH{q', 17
                            if share[stor4[stor5]] > (-1 * stakingBal[stor4[stor5]] / totalLP * sub_76e7b8c3) - 1:
                                revert with 'NH{q', 17
                            mem[0] = stakers[stor5]
                            mem[32] = 18
                            share[stor4[stor5]] += stakingBal[stor4[stor5]] / totalLP * sub_76e7b8c3
                        if count == -1:
                            revert with 'NH{q', 17
                        count++
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    count = 0
                    sub_76e7b8c3 = sub_fc80c139
                    sub_fc80c139 = 0
                    if epoch > -2:
                        revert with 'NH{q', 17
                    epoch++
                    if balanceOf[address(arg1)] > -arg2 + (arg2 / 100 * burnRate) + (arg2 / 100 * feesRate) + (arg2 / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 * burnRate) - (arg2 / 100 * feesRate) - (arg2 / 100)
                    if arg2 / 100 > (-1 * arg2 / 100 * feesRate) - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(this.address)] > -(arg2 / 100) + (-1 * arg2 / 100 * feesRate) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 / 100) + (arg2 / 100 * feesRate)
                    if arg2 / 100 > (-1 * arg2 / 100 * feesRate) - 1:
                        revert with 'NH{q', 17
                    emit Transfer(((arg2 / 100) + (arg2 / 100 * feesRate)), msg.sender, this.address);
                    emit Transfer((arg2 - (arg2 / 100 * burnRate) - (arg2 / 100 * feesRate) - (arg2 / 100)), msg.sender, arg1);
                    emit Transfer((arg2 / 100 * burnRate), msg.sender, 0);
                    sub_58d01bbb = arg2 / 100 * burnRate
                    return 1
            else:
                if epoch > -2:
                    revert with 'NH{q', 17
                epoch++
                if sub_76e7b8c3 > -sub_fc80c139 - 1:
                    revert with 'NH{q', 17
                sub_76e7b8c3 += sub_fc80c139
        else:
            if stakers.length <= 0:
                if epoch > -2:
                    revert with 'NH{q', 17
                epoch++
                if sub_76e7b8c3 > -sub_fc80c139 - 1:
                    revert with 'NH{q', 17
                sub_76e7b8c3 += sub_fc80c139
            else:
                if not stakers.length:
                    revert with 'NH{q', 18
                if block.timestamp % stakers.length >= stakers.length:
                    revert with 'NH{q', 50
                if share[stor4[block.timestamp % stor4.length]] > -sub_16b9fde4 - 1:
                    revert with 'NH{q', 17
                share[stor4[block.timestamp % stor4.length]] += sub_16b9fde4
                sub_a2b0488f = 0
                if stakers.length > 0:
                    idx = 0
                    while idx < 5:
                        if count < stakers.length:
                            mem[0] = stakers[stor5]
                            mem[32] = 17
                            if bool(stor17[stor4[stor5]]) == 1:
                                if count >= stakers.length:
                                    revert with 'NH{q', 50
                                require stakingBal[stor4[stor5]] > 0
                                if not totalLP:
                                    revert with 'NH{q', 18
                                if stakingBal[stor4[stor5]] / totalLP and sub_76e7b8c3 > -1 / stakingBal[stor4[stor5]] / totalLP:
                                    revert with 'NH{q', 17
                                if share[stor4[stor5]] > (-1 * stakingBal[stor4[stor5]] / totalLP * sub_76e7b8c3) - 1:
                                    revert with 'NH{q', 17
                                mem[0] = stakers[stor5]
                                mem[32] = 18
                                share[stor4[stor5]] += stakingBal[stor4[stor5]] / totalLP * sub_76e7b8c3
                            if count == -1:
                                revert with 'NH{q', 17
                            count++
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        count = 0
                        sub_76e7b8c3 = sub_fc80c139
                        sub_fc80c139 = 0
                        if epoch > -2:
                            revert with 'NH{q', 17
                        epoch++
                        if balanceOf[address(arg1)] > -arg2 + (arg2 / 100 * burnRate) + (arg2 / 100 * feesRate) + (arg2 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 * burnRate) - (arg2 / 100 * feesRate) - (arg2 / 100)
                        if arg2 / 100 > (-1 * arg2 / 100 * feesRate) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] > -(arg2 / 100) + (-1 * arg2 / 100 * feesRate) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 / 100) + (arg2 / 100 * feesRate)
                        if arg2 / 100 > (-1 * arg2 / 100 * feesRate) - 1:
                            revert with 'NH{q', 17
                        emit Transfer(((arg2 / 100) + (arg2 / 100 * feesRate)), msg.sender, this.address);
                        emit Transfer((arg2 - (arg2 / 100 * burnRate) - (arg2 / 100 * feesRate) - (arg2 / 100)), msg.sender, arg1);
                        emit Transfer((arg2 / 100 * burnRate), msg.sender, 0);
                        sub_58d01bbb = arg2 / 100 * burnRate
                        return 1
                else:
                    if epoch > -2:
                        revert with 'NH{q', 17
                    epoch++
                    if sub_76e7b8c3 > -sub_fc80c139 - 1:
                        revert with 'NH{q', 17
                    sub_76e7b8c3 += sub_fc80c139
        if balanceOf[address(arg1)] > -arg2 + (arg2 / 100 * burnRate) + (arg2 / 100 * feesRate) + (arg2 / 100) - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 * burnRate) - (arg2 / 100 * feesRate) - (arg2 / 100)
        if arg2 / 100 > (-1 * arg2 / 100 * feesRate) - 1:
            revert with 'NH{q', 17
        if balanceOf[address(this.address)] > -(arg2 / 100) + (-1 * arg2 / 100 * feesRate) - 1:
            revert with 'NH{q', 17
        balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 / 100) + (arg2 / 100 * feesRate)
        if arg2 / 100 > (-1 * arg2 / 100 * feesRate) - 1:
            revert with 'NH{q', 17
        emit Transfer(((arg2 / 100) + (arg2 / 100 * feesRate)), msg.sender, this.address);
        emit Transfer((arg2 - (arg2 / 100 * burnRate) - (arg2 / 100 * feesRate) - (arg2 / 100)), msg.sender, arg1);
        emit Transfer((arg2 / 100 * burnRate), msg.sender, 0);
        sub_58d01bbb = arg2 / 100 * burnRate
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if arg1 == this.address:
        if balanceOf[address(arg2)] > -arg3 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if arg3 / 100 and 1 > -1 / arg3 / 100:
            revert with 'NH{q', 17
        if arg3 / 100 and burnRate > -1 / arg3 / 100:
            revert with 'NH{q', 17
        if arg3 / 100 and feesRate > -1 / arg3 / 100:
            revert with 'NH{q', 17
        if arg3 / 100 * burnRate > (-1 * arg3 / 100 * feesRate) - 1:
            revert with 'NH{q', 17
        if (arg3 / 100 * burnRate) + (arg3 / 100 * feesRate) > -(arg3 / 100) - 1:
            revert with 'NH{q', 17
        if arg3 < (arg3 / 100 * burnRate) + (arg3 / 100 * feesRate) + (arg3 / 100):
            revert with 'NH{q', 17
        if sub_a2b0488f > -(arg3 / 100) - 1:
            revert with 'NH{q', 17
        sub_a2b0488f += arg3 / 100
        if totalFees > (-1 * arg3 / 100 * feesRate) - 1:
            revert with 'NH{q', 17
        totalFees += arg3 / 100 * feesRate
        if sub_fc80c139 > (-1 * arg3 / 100 * feesRate) - 1:
            revert with 'NH{q', 17
        sub_fc80c139 += arg3 / 100 * feesRate
        if sub_a2b0488f <= sub_16b9fde4:
            if stakers.length > 0:
                idx = 0
                while idx < 5:
                    if count < stakers.length:
                        mem[0] = stakers[stor5]
                        mem[32] = 17
                        if bool(stor17[stor4[stor5]]) == 1:
                            if count >= stakers.length:
                                revert with 'NH{q', 50
                            require stakingBal[stor4[stor5]] > 0
                            if not totalLP:
                                revert with 'NH{q', 18
                            if stakingBal[stor4[stor5]] / totalLP and sub_76e7b8c3 > -1 / stakingBal[stor4[stor5]] / totalLP:
                                revert with 'NH{q', 17
                            if share[stor4[stor5]] > (-1 * stakingBal[stor4[stor5]] / totalLP * sub_76e7b8c3) - 1:
                                revert with 'NH{q', 17
                            mem[0] = stakers[stor5]
                            mem[32] = 18
                            share[stor4[stor5]] += stakingBal[stor4[stor5]] / totalLP * sub_76e7b8c3
                        if count == -1:
                            revert with 'NH{q', 17
                        count++
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    count = 0
                    sub_76e7b8c3 = sub_fc80c139
                    sub_fc80c139 = 0
                    if epoch > -2:
                        revert with 'NH{q', 17
                    epoch++
                    if balanceOf[address(arg2)] > -arg3 + (arg3 / 100 * burnRate) + (arg3 / 100 * feesRate) + (arg3 / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 * burnRate) - (arg3 / 100 * feesRate) - (arg3 / 100)
                    if arg3 / 100 > (-1 * arg3 / 100 * feesRate) - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(this.address)] > -(arg3 / 100) + (-1 * arg3 / 100 * feesRate) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg3 / 100) + (arg3 / 100 * feesRate)
                    if arg3 / 100 > (-1 * arg3 / 100 * feesRate) - 1:
                        revert with 'NH{q', 17
                    emit Transfer(((arg3 / 100) + (arg3 / 100 * feesRate)), arg1, this.address);
                    emit Transfer((arg3 - (arg3 / 100 * burnRate) - (arg3 / 100 * feesRate) - (arg3 / 100)), arg1, arg2);
                    emit Transfer((arg3 / 100 * burnRate), arg1, 0);
                    sub_58d01bbb = arg3 / 100 * burnRate
                    if allowance[address(arg1)][address(msg.sender)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    return 1
            else:
                if epoch > -2:
                    revert with 'NH{q', 17
                epoch++
                if sub_76e7b8c3 > -sub_fc80c139 - 1:
                    revert with 'NH{q', 17
                sub_76e7b8c3 += sub_fc80c139
        else:
            if stakers.length <= 0:
                if epoch > -2:
                    revert with 'NH{q', 17
                epoch++
                if sub_76e7b8c3 > -sub_fc80c139 - 1:
                    revert with 'NH{q', 17
                sub_76e7b8c3 += sub_fc80c139
            else:
                if not stakers.length:
                    revert with 'NH{q', 18
                if block.timestamp % stakers.length >= stakers.length:
                    revert with 'NH{q', 50
                if share[stor4[block.timestamp % stor4.length]] > -sub_16b9fde4 - 1:
                    revert with 'NH{q', 17
                share[stor4[block.timestamp % stor4.length]] += sub_16b9fde4
                sub_a2b0488f = 0
                if stakers.length > 0:
                    idx = 0
                    while idx < 5:
                        if count < stakers.length:
                            mem[0] = stakers[stor5]
                            mem[32] = 17
                            if bool(stor17[stor4[stor5]]) == 1:
                                if count >= stakers.length:
                                    revert with 'NH{q', 50
                                require stakingBal[stor4[stor5]] > 0
                                if not totalLP:
                                    revert with 'NH{q', 18
                                if stakingBal[stor4[stor5]] / totalLP and sub_76e7b8c3 > -1 / stakingBal[stor4[stor5]] / totalLP:
                                    revert with 'NH{q', 17
                                if share[stor4[stor5]] > (-1 * stakingBal[stor4[stor5]] / totalLP * sub_76e7b8c3) - 1:
                                    revert with 'NH{q', 17
                                mem[0] = stakers[stor5]
                                mem[32] = 18
                                share[stor4[stor5]] += stakingBal[stor4[stor5]] / totalLP * sub_76e7b8c3
                            if count == -1:
                                revert with 'NH{q', 17
                            count++
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        count = 0
                        sub_76e7b8c3 = sub_fc80c139
                        sub_fc80c139 = 0
                        if epoch > -2:
                            revert with 'NH{q', 17
                        epoch++
                        if balanceOf[address(arg2)] > -arg3 + (arg3 / 100 * burnRate) + (arg3 / 100 * feesRate) + (arg3 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 * burnRate) - (arg3 / 100 * feesRate) - (arg3 / 100)
                        if arg3 / 100 > (-1 * arg3 / 100 * feesRate) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] > -(arg3 / 100) + (-1 * arg3 / 100 * feesRate) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg3 / 100) + (arg3 / 100 * feesRate)
                        if arg3 / 100 > (-1 * arg3 / 100 * feesRate) - 1:
                            revert with 'NH{q', 17
                        emit Transfer(((arg3 / 100) + (arg3 / 100 * feesRate)), arg1, this.address);
                        emit Transfer((arg3 - (arg3 / 100 * burnRate) - (arg3 / 100 * feesRate) - (arg3 / 100)), arg1, arg2);
                        emit Transfer((arg3 / 100 * burnRate), arg1, 0);
                        sub_58d01bbb = arg3 / 100 * burnRate
                        if allowance[address(arg1)][address(msg.sender)] < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)] -= arg3
                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                        return 1
                else:
                    if epoch > -2:
                        revert with 'NH{q', 17
                    epoch++
                    if sub_76e7b8c3 > -sub_fc80c139 - 1:
                        revert with 'NH{q', 17
                    sub_76e7b8c3 += sub_fc80c139
        if balanceOf[address(arg2)] > -arg3 + (arg3 / 100 * burnRate) + (arg3 / 100 * feesRate) + (arg3 / 100) - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 * burnRate) - (arg3 / 100 * feesRate) - (arg3 / 100)
        if arg3 / 100 > (-1 * arg3 / 100 * feesRate) - 1:
            revert with 'NH{q', 17
        if balanceOf[address(this.address)] > -(arg3 / 100) + (-1 * arg3 / 100 * feesRate) - 1:
            revert with 'NH{q', 17
        balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg3 / 100) + (arg3 / 100 * feesRate)
        if arg3 / 100 > (-1 * arg3 / 100 * feesRate) - 1:
            revert with 'NH{q', 17
        emit Transfer(((arg3 / 100) + (arg3 / 100 * feesRate)), arg1, this.address);
        emit Transfer((arg3 - (arg3 / 100 * burnRate) - (arg3 / 100 * feesRate) - (arg3 / 100)), arg1, arg2);
        emit Transfer((arg3 / 100 * burnRate), arg1, 0);
        sub_58d01bbb = arg3 / 100 * burnRate
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



}
