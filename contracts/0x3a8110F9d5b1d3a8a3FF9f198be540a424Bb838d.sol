contract main {




// =====================  Runtime code  =====================


const sub_03628038(?) = 60000 * 10^18

const decimals = 18

const sub_c5c0cf13(?) = 600 * 10^18


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor4;
array of struct stor5;
uint256 stor6;
address feeAddress;
uint256 salePriceE35;
uint256 sub_2bc8d20e;
uint256 startTime;
uint256 endTime;
mapping of uint256 sub_3dd1c361;

function totalSupply() {
    return totalSupply
}

function sub_2bc8d20e(?) {
    return sub_2bc8d20e
}

function EndTime() {
    return endTime
}

function sub_3dd1c361(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3dd1c361[arg1]
}

function feeAddress() {
    return feeAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function salePriceE35() {
    return salePriceE35
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function StartTime() {
    return startTime
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

function setSalePriceE35(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp >= endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot change time after presale ends !!!'
    if arg1 < 125000000000000000 * 10^18:
        revert with 0, 'new price can't too low'
    if arg1 > 300000000000000000 * 10^18:
        revert with 0, 'new price can't too high'
    salePriceE35 = arg1
    emit salePriceE35Changed(salePriceE35);
}

function setStartTime(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp >= startTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'cannot change start block if sale has already commenced'
    if block.timestamp >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot set start block in the past'
    startTime = arg1
    endTime = arg2
    emit StartTimeChanged(arg1, arg2);
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
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
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
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
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
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function symbol() {
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
        if ceil32(stor5.length.field_1) > stor5.length.field_1:
            mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function sub_fe83faa9(?) payable {
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    if block.timestamp < startTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'presale hasn't started yet, good things come to those that wait'
    if block.timestamp >= endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'presale has ended, come back next time!'
    if sub_2bc8d20e <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No more plith remaining! Come back next time!'
    require ext_code.size(this.address)
    staticcall this.address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No more plith left! Come back next time!'
    if msg.value <= 0:
        revert with 0, 'not enough ftm provided'
    if msg.value > 30000 * 10^18:
        revert with 0, 'too much ftm provided'
    if sub_3dd1c361[address(msg.sender)] >= 600 * 10^18:
        revert with 0, 'user has already purchased too much plith'
    if msg.value and salePriceE35 > -1 / msg.value:
        revert with 'NH{q', 17
    if msg.value * salePriceE35 / 100000000000000000 * 10^18 <= 600 * 10^18:
        if sub_3dd1c361[address(msg.sender)] > -(msg.value * salePriceE35 / 100000000000000000 * 10^18) - 1:
            revert with 'NH{q', 17
        if sub_3dd1c361[address(msg.sender)] + (msg.value * salePriceE35 / 100000000000000000 * 10^18) <= 600 * 10^18:
            if sub_2bc8d20e >= msg.value * salePriceE35 / 100000000000000000 * 10^18:
                if msg.value * salePriceE35 / 100000000000000000 * 10^18 <= 0:
                    revert with 0, 'user cannot purchase 0 plith'
                if msg.value * salePriceE35 / 100000000000000000 * 10^18 > sub_2bc8d20e:
                    revert with 'NH{q', 1
                require ext_code.size(this.address)
                staticcall this.address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if msg.value * salePriceE35 / 100000000000000000 * 10^18 > ext_call.return_data[0]:
                    revert with 'NH{q', 1
                require ext_code.size(this.address)
                call this.address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, msg.value * salePriceE35 / 100000000000000000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if sub_2bc8d20e < msg.value * salePriceE35 / 100000000000000000 * 10^18:
                    revert with 'NH{q', 17
                sub_2bc8d20e -= msg.value * salePriceE35 / 100000000000000000 * 10^18
                if sub_3dd1c361[address(msg.sender)] > -(msg.value * salePriceE35 / 100000000000000000 * 10^18) - 1:
                    revert with 'NH{q', 17
                sub_3dd1c361[address(msg.sender)] += msg.value * salePriceE35 / 100000000000000000 * 10^18
                if msg.value * salePriceE35 / 100000000000000000 * 10^18 >= msg.value * salePriceE35 / 100000000000000000 * 10^18:
                    if msg.value > 0:
                        call feeAddress with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'failed to send ftm to fee address'
                    emit 0x75b0a0e5: msg.sender, msg.value, msg.value * salePriceE35 / 100000000000000000 * 10^18
                else:
                    if msg.value * salePriceE35 / 100000000000000000 * 10^18 and msg.value > -1 / msg.value * salePriceE35 / 100000000000000000 * 10^18:
                        revert with 'NH{q', 17
                    if msg.value * salePriceE35 / 100000000000000000 * 10^18 * msg.value and 1000000 * 10^18 > -1 / msg.value * salePriceE35 / 100000000000000000 * 10^18 * msg.value:
                        revert with 'NH{q', 17
                    if not msg.value * salePriceE35 / 100000000000000000 * 10^18:
                        revert with 'NH{q', 18
                    if msg.value < 1000000 * 10^18 * msg.value * salePriceE35 / 100000000000000000 * 10^18 * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18:
                        revert with 'NH{q', 17
                    if 1000000 * 10^18 * msg.value * salePriceE35 / 100000000000000000 * 10^18 * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18 > 0:
                        call feeAddress with:
                           value 1000000 * 10^18 * msg.value * salePriceE35 / 100000000000000000 * 10^18 * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'failed to send ftm to fee address'
                    if msg.value - (1000000 * 10^18 * msg.value * salePriceE35 / 100000000000000000 * 10^18 * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18) > 0:
                        call msg.sender with:
                           value msg.value - (1000000 * 10^18 * msg.value * salePriceE35 / 100000000000000000 * 10^18 * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18) wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'failed to send ftm to customer address'
                    emit 0x75b0a0e5: msg.sender, 1000000 * 10^18 * msg.value * salePriceE35 / 100000000000000000 * 10^18 * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18, msg.value * salePriceE35 / 100000000000000000 * 10^18
            else:
                if sub_2bc8d20e <= 0:
                    revert with 0, 'user cannot purchase 0 plith'
                if sub_2bc8d20e > sub_2bc8d20e:
                    revert with 'NH{q', 1
                require ext_code.size(this.address)
                staticcall this.address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if sub_2bc8d20e > ext_call.return_data[0]:
                    revert with 'NH{q', 1
                require ext_code.size(this.address)
                call this.address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_2bc8d20e
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if sub_2bc8d20e < sub_2bc8d20e:
                    revert with 'NH{q', 17
                sub_2bc8d20e = 0
                if sub_3dd1c361[address(msg.sender)] > -sub_2bc8d20e - 1:
                    revert with 'NH{q', 17
                sub_3dd1c361[address(msg.sender)] += sub_2bc8d20e
                if sub_2bc8d20e >= msg.value * salePriceE35 / 100000000000000000 * 10^18:
                    if msg.value > 0:
                        call feeAddress with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'failed to send ftm to fee address'
                    emit 0x75b0a0e5: msg.sender, msg.value, sub_2bc8d20e
                else:
                    if sub_2bc8d20e and msg.value > -1 / sub_2bc8d20e:
                        revert with 'NH{q', 17
                    if sub_2bc8d20e * msg.value and 1000000 * 10^18 > -1 / sub_2bc8d20e * msg.value:
                        revert with 'NH{q', 17
                    if not msg.value * salePriceE35 / 100000000000000000 * 10^18:
                        revert with 'NH{q', 18
                    if msg.value < 1000000 * 10^18 * sub_2bc8d20e * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18:
                        revert with 'NH{q', 17
                    if 1000000 * 10^18 * sub_2bc8d20e * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18 > 0:
                        call feeAddress with:
                           value 1000000 * 10^18 * sub_2bc8d20e * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'failed to send ftm to fee address'
                    if msg.value - (1000000 * 10^18 * sub_2bc8d20e * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18) > 0:
                        call msg.sender with:
                           value msg.value - (1000000 * 10^18 * sub_2bc8d20e * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18) wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'failed to send ftm to customer address'
                    emit 0x75b0a0e5: msg.sender, 1000000 * 10^18 * sub_2bc8d20e * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18, sub_2bc8d20e
        else:
            if 600 * 10^18 < sub_3dd1c361[address(msg.sender)]:
                revert with 'NH{q', 17
            if sub_2bc8d20e >= -sub_3dd1c361[address(msg.sender)] + 600 * 10^18:
                if -sub_3dd1c361[address(msg.sender)] + 600 * 10^18 <= 0:
                    revert with 0, 'user cannot purchase 0 plith'
                if -sub_3dd1c361[address(msg.sender)] + 600 * 10^18 > sub_2bc8d20e:
                    revert with 'NH{q', 1
                require ext_code.size(this.address)
                staticcall this.address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if -sub_3dd1c361[address(msg.sender)] + 600 * 10^18 > ext_call.return_data[0]:
                    revert with 'NH{q', 1
                require ext_code.size(this.address)
                call this.address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -sub_3dd1c361[address(msg.sender)] + 600 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if sub_2bc8d20e < -sub_3dd1c361[address(msg.sender)] + 600 * 10^18:
                    revert with 'NH{q', 17
                sub_2bc8d20e = sub_2bc8d20e + sub_3dd1c361[address(msg.sender)] - 600 * 10^18
                if sub_3dd1c361[address(msg.sender)] > sub_3dd1c361[address(msg.sender)] - 600000000000000000001:
                    revert with 'NH{q', 17
                sub_3dd1c361[address(msg.sender)] = 600 * 10^18
                if -sub_3dd1c361[address(msg.sender)] + 600 * 10^18 >= msg.value * salePriceE35 / 100000000000000000 * 10^18:
                    if msg.value > 0:
                        call feeAddress with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'failed to send ftm to fee address'
                    emit 0x75b0a0e5: msg.sender, msg.value, -sub_3dd1c361[address(msg.sender)] + 600 * 10^18
                else:
                    if -sub_3dd1c361[address(msg.sender)] + 600 * 10^18 and msg.value > -1 / -sub_3dd1c361[address(msg.sender)] + 600 * 10^18:
                        revert with 'NH{q', 17
                    if (600 * 10^18 * msg.value) - (sub_3dd1c361[address(msg.sender)] * msg.value) and 1000000 * 10^18 > -1 / (600 * 10^18 * msg.value) - (sub_3dd1c361[address(msg.sender)] * msg.value):
                        revert with 'NH{q', 17
                    if not msg.value * salePriceE35 / 100000000000000000 * 10^18:
                        revert with 'NH{q', 18
                    if msg.value < (600000000000000000000000000 * 10^18 * msg.value) - (1000000 * 10^18 * sub_3dd1c361[address(msg.sender)] * msg.value) / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18:
                        revert with 'NH{q', 17
                    if (600000000000000000000000000 * 10^18 * msg.value) - (1000000 * 10^18 * sub_3dd1c361[address(msg.sender)] * msg.value) / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18 > 0:
                        call feeAddress with:
                           value (600000000000000000000000000 * 10^18 * msg.value) - (1000000 * 10^18 * sub_3dd1c361[address(msg.sender)] * msg.value) / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'failed to send ftm to fee address'
                    if msg.value - ((600000000000000000000000000 * 10^18 * msg.value) - (1000000 * 10^18 * sub_3dd1c361[address(msg.sender)] * msg.value) / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18) > 0:
                        call msg.sender with:
                           value msg.value - ((600000000000000000000000000 * 10^18 * msg.value) - (1000000 * 10^18 * sub_3dd1c361[address(msg.sender)] * msg.value) / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18) wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'failed to send ftm to customer address'
                    emit 0x75b0a0e5: msg.sender, (600000000000000000000000000 * 10^18 * msg.value) - (1000000 * 10^18 * sub_3dd1c361[address(msg.sender)] * msg.value) / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18, -sub_3dd1c361[address(msg.sender)] + 600 * 10^18
            else:
                if sub_2bc8d20e <= 0:
                    revert with 0, 'user cannot purchase 0 plith'
                if sub_2bc8d20e > sub_2bc8d20e:
                    revert with 'NH{q', 1
                require ext_code.size(this.address)
                staticcall this.address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if sub_2bc8d20e > ext_call.return_data[0]:
                    revert with 'NH{q', 1
                require ext_code.size(this.address)
                call this.address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_2bc8d20e
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if sub_2bc8d20e < sub_2bc8d20e:
                    revert with 'NH{q', 17
                sub_2bc8d20e = 0
                if sub_3dd1c361[address(msg.sender)] > -sub_2bc8d20e - 1:
                    revert with 'NH{q', 17
                sub_3dd1c361[address(msg.sender)] += sub_2bc8d20e
                if sub_2bc8d20e >= msg.value * salePriceE35 / 100000000000000000 * 10^18:
                    if msg.value > 0:
                        call feeAddress with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'failed to send ftm to fee address'
                    emit 0x75b0a0e5: msg.sender, msg.value, sub_2bc8d20e
                else:
                    if sub_2bc8d20e and msg.value > -1 / sub_2bc8d20e:
                        revert with 'NH{q', 17
                    if sub_2bc8d20e * msg.value and 1000000 * 10^18 > -1 / sub_2bc8d20e * msg.value:
                        revert with 'NH{q', 17
                    if not msg.value * salePriceE35 / 100000000000000000 * 10^18:
                        revert with 'NH{q', 18
                    if msg.value < 1000000 * 10^18 * sub_2bc8d20e * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18:
                        revert with 'NH{q', 17
                    if 1000000 * 10^18 * sub_2bc8d20e * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18 > 0:
                        call feeAddress with:
                           value 1000000 * 10^18 * sub_2bc8d20e * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'failed to send ftm to fee address'
                    if msg.value - (1000000 * 10^18 * sub_2bc8d20e * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18) > 0:
                        call msg.sender with:
                           value msg.value - (1000000 * 10^18 * sub_2bc8d20e * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18) wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'failed to send ftm to customer address'
                    emit 0x75b0a0e5: msg.sender, 1000000 * 10^18 * sub_2bc8d20e * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18, sub_2bc8d20e
    else:
        if sub_3dd1c361[address(msg.sender)] > 0xffffffffffffffffffffffffffffffffffffffffffffffdf7953caefad9fffff:
            revert with 'NH{q', 17
        if sub_3dd1c361[address(msg.sender)] + 600 * 10^18 <= 600 * 10^18:
            if sub_2bc8d20e >= 600 * 10^18:
                if 600 * 10^18 > sub_2bc8d20e:
                    revert with 'NH{q', 1
                require ext_code.size(this.address)
                staticcall this.address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if 600 * 10^18 > ext_call.return_data[0]:
                    revert with 'NH{q', 1
                require ext_code.size(this.address)
                call this.address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 600 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if sub_2bc8d20e < 600 * 10^18:
                    revert with 'NH{q', 17
                sub_2bc8d20e -= 600 * 10^18
                if sub_3dd1c361[address(msg.sender)] > 0xffffffffffffffffffffffffffffffffffffffffffffffdf7953caefad9fffff:
                    revert with 'NH{q', 17
                sub_3dd1c361[address(msg.sender)] += 600 * 10^18
                if 600 * 10^18 >= msg.value * salePriceE35 / 100000000000000000 * 10^18:
                    if msg.value > 0:
                        call feeAddress with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'failed to send ftm to fee address'
                    emit 0x75b0a0e5: msg.sender, msg.value, 600 * 10^18
                else:
                    if msg.value > 0x7dee05986160bc9c5b4dd21319d34e5810147003bfa4377:
                        revert with 'NH{q', 17
                    if 600 * 10^18 * msg.value and 1000000 * 10^18 > -1 / 600 * 10^18 * msg.value:
                        revert with 'NH{q', 17
                    if not msg.value * salePriceE35 / 100000000000000000 * 10^18:
                        revert with 'NH{q', 18
                    if msg.value < 600000000000000000000000000 * 10^18 * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18:
                        revert with 'NH{q', 17
                    if 600000000000000000000000000 * 10^18 * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18 > 0:
                        call feeAddress with:
                           value 600000000000000000000000000 * 10^18 * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'failed to send ftm to fee address'
                    if msg.value - (600000000000000000000000000 * 10^18 * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18) > 0:
                        call msg.sender with:
                           value msg.value - (600000000000000000000000000 * 10^18 * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18) wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'failed to send ftm to customer address'
                    emit 0x75b0a0e5: msg.sender, 600000000000000000000000000 * 10^18 * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18, 600 * 10^18
            else:
                if sub_2bc8d20e <= 0:
                    revert with 0, 'user cannot purchase 0 plith'
                if sub_2bc8d20e > sub_2bc8d20e:
                    revert with 'NH{q', 1
                require ext_code.size(this.address)
                staticcall this.address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if sub_2bc8d20e > ext_call.return_data[0]:
                    revert with 'NH{q', 1
                require ext_code.size(this.address)
                call this.address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_2bc8d20e
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if sub_2bc8d20e < sub_2bc8d20e:
                    revert with 'NH{q', 17
                sub_2bc8d20e = 0
                if sub_3dd1c361[address(msg.sender)] > -sub_2bc8d20e - 1:
                    revert with 'NH{q', 17
                sub_3dd1c361[address(msg.sender)] += sub_2bc8d20e
                if sub_2bc8d20e >= msg.value * salePriceE35 / 100000000000000000 * 10^18:
                    if msg.value > 0:
                        call feeAddress with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'failed to send ftm to fee address'
                    emit 0x75b0a0e5: msg.sender, msg.value, sub_2bc8d20e
                else:
                    if sub_2bc8d20e and msg.value > -1 / sub_2bc8d20e:
                        revert with 'NH{q', 17
                    if sub_2bc8d20e * msg.value and 1000000 * 10^18 > -1 / sub_2bc8d20e * msg.value:
                        revert with 'NH{q', 17
                    if not msg.value * salePriceE35 / 100000000000000000 * 10^18:
                        revert with 'NH{q', 18
                    if msg.value < 1000000 * 10^18 * sub_2bc8d20e * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18:
                        revert with 'NH{q', 17
                    if 1000000 * 10^18 * sub_2bc8d20e * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18 > 0:
                        call feeAddress with:
                           value 1000000 * 10^18 * sub_2bc8d20e * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'failed to send ftm to fee address'
                    if msg.value - (1000000 * 10^18 * sub_2bc8d20e * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18) > 0:
                        call msg.sender with:
                           value msg.value - (1000000 * 10^18 * sub_2bc8d20e * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18) wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'failed to send ftm to customer address'
                    emit 0x75b0a0e5: msg.sender, 1000000 * 10^18 * sub_2bc8d20e * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18, sub_2bc8d20e
        else:
            if 600 * 10^18 < sub_3dd1c361[address(msg.sender)]:
                revert with 'NH{q', 17
            if sub_2bc8d20e >= -sub_3dd1c361[address(msg.sender)] + 600 * 10^18:
                if -sub_3dd1c361[address(msg.sender)] + 600 * 10^18 <= 0:
                    revert with 0, 'user cannot purchase 0 plith'
                if -sub_3dd1c361[address(msg.sender)] + 600 * 10^18 > sub_2bc8d20e:
                    revert with 'NH{q', 1
                require ext_code.size(this.address)
                staticcall this.address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if -sub_3dd1c361[address(msg.sender)] + 600 * 10^18 > ext_call.return_data[0]:
                    revert with 'NH{q', 1
                require ext_code.size(this.address)
                call this.address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -sub_3dd1c361[address(msg.sender)] + 600 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if sub_2bc8d20e < -sub_3dd1c361[address(msg.sender)] + 600 * 10^18:
                    revert with 'NH{q', 17
                sub_2bc8d20e = sub_2bc8d20e + sub_3dd1c361[address(msg.sender)] - 600 * 10^18
                if sub_3dd1c361[address(msg.sender)] > sub_3dd1c361[address(msg.sender)] - 600000000000000000001:
                    revert with 'NH{q', 17
                sub_3dd1c361[address(msg.sender)] = 600 * 10^18
                if -sub_3dd1c361[address(msg.sender)] + 600 * 10^18 >= msg.value * salePriceE35 / 100000000000000000 * 10^18:
                    if msg.value > 0:
                        call feeAddress with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'failed to send ftm to fee address'
                    emit 0x75b0a0e5: msg.sender, msg.value, -sub_3dd1c361[address(msg.sender)] + 600 * 10^18
                else:
                    if -sub_3dd1c361[address(msg.sender)] + 600 * 10^18 and msg.value > -1 / -sub_3dd1c361[address(msg.sender)] + 600 * 10^18:
                        revert with 'NH{q', 17
                    if (600 * 10^18 * msg.value) - (sub_3dd1c361[address(msg.sender)] * msg.value) and 1000000 * 10^18 > -1 / (600 * 10^18 * msg.value) - (sub_3dd1c361[address(msg.sender)] * msg.value):
                        revert with 'NH{q', 17
                    if not msg.value * salePriceE35 / 100000000000000000 * 10^18:
                        revert with 'NH{q', 18
                    if msg.value < (600000000000000000000000000 * 10^18 * msg.value) - (1000000 * 10^18 * sub_3dd1c361[address(msg.sender)] * msg.value) / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18:
                        revert with 'NH{q', 17
                    if (600000000000000000000000000 * 10^18 * msg.value) - (1000000 * 10^18 * sub_3dd1c361[address(msg.sender)] * msg.value) / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18 > 0:
                        call feeAddress with:
                           value (600000000000000000000000000 * 10^18 * msg.value) - (1000000 * 10^18 * sub_3dd1c361[address(msg.sender)] * msg.value) / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'failed to send ftm to fee address'
                    if msg.value - ((600000000000000000000000000 * 10^18 * msg.value) - (1000000 * 10^18 * sub_3dd1c361[address(msg.sender)] * msg.value) / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18) > 0:
                        call msg.sender with:
                           value msg.value - ((600000000000000000000000000 * 10^18 * msg.value) - (1000000 * 10^18 * sub_3dd1c361[address(msg.sender)] * msg.value) / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18) wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'failed to send ftm to customer address'
                    emit 0x75b0a0e5: msg.sender, (600000000000000000000000000 * 10^18 * msg.value) - (1000000 * 10^18 * sub_3dd1c361[address(msg.sender)] * msg.value) / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18, -sub_3dd1c361[address(msg.sender)] + 600 * 10^18
            else:
                if sub_2bc8d20e <= 0:
                    revert with 0, 'user cannot purchase 0 plith'
                if sub_2bc8d20e > sub_2bc8d20e:
                    revert with 'NH{q', 1
                require ext_code.size(this.address)
                staticcall this.address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if sub_2bc8d20e > ext_call.return_data[0]:
                    revert with 'NH{q', 1
                require ext_code.size(this.address)
                call this.address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_2bc8d20e
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if sub_2bc8d20e < sub_2bc8d20e:
                    revert with 'NH{q', 17
                sub_2bc8d20e = 0
                if sub_3dd1c361[address(msg.sender)] > -sub_2bc8d20e - 1:
                    revert with 'NH{q', 17
                sub_3dd1c361[address(msg.sender)] += sub_2bc8d20e
                if sub_2bc8d20e >= msg.value * salePriceE35 / 100000000000000000 * 10^18:
                    if msg.value > 0:
                        call feeAddress with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'failed to send ftm to fee address'
                    emit 0x75b0a0e5: msg.sender, msg.value, sub_2bc8d20e
                else:
                    if sub_2bc8d20e and msg.value > -1 / sub_2bc8d20e:
                        revert with 'NH{q', 17
                    if sub_2bc8d20e * msg.value and 1000000 * 10^18 > -1 / sub_2bc8d20e * msg.value:
                        revert with 'NH{q', 17
                    if not msg.value * salePriceE35 / 100000000000000000 * 10^18:
                        revert with 'NH{q', 18
                    if msg.value < 1000000 * 10^18 * sub_2bc8d20e * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18:
                        revert with 'NH{q', 17
                    if 1000000 * 10^18 * sub_2bc8d20e * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18 > 0:
                        call feeAddress with:
                           value 1000000 * 10^18 * sub_2bc8d20e * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'failed to send ftm to fee address'
                    if msg.value - (1000000 * 10^18 * sub_2bc8d20e * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18) > 0:
                        call msg.sender with:
                           value msg.value - (1000000 * 10^18 * sub_2bc8d20e * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18) wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'failed to send ftm to customer address'
                    emit 0x75b0a0e5: msg.sender, 1000000 * 10^18 * sub_2bc8d20e * msg.value / msg.value * salePriceE35 / 100000000000000000 * 10^18 / 1000000 * 10^18, sub_2bc8d20e
    stor6 = 1
}



}
