contract main {




// =====================  Runtime code  =====================


const name = 'Beep', 0

const decimals = 18

const symbol = 'BEEP', 0


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getOwner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_7282075f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor8 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function liquidateUnclaimed() {
    if stor7 <= 0:
        revert with 0, 'ERR: not yet closed'
    if stor7 > -121:
        revert with 'NH{q', 17
    if block.timestamp <= stor7 + 120:
        revert with 0, 'ERR: too soon'
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 'Address: insufficient balance'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
}

function start() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor6:
        revert with 0, 'ERR: already opened'
    stor6 = block.timestamp
    if 1000000000000 * 10^18 < totalSupply:
        revert with 'NH{q', 17
    if not this.address:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > totalSupply - 0xc9f2c9cd04674edea40000001:
        revert with 'NH{q', 17
    totalSupply = 1000000000000 * 10^18
    if balanceOf[address(this.address)] > totalSupply - 0xc9f2c9cd04674edea40000001:
        revert with 'NH{q', 17
    balanceOf[address(this.address)] = balanceOf[address(this.address)] + -totalSupply + 1000000000000 * 10^18
    emit Transfer((-totalSupply + 1000000000000 * 10^18), 0, this.address);
    require ext_code.size(stor4)
    call stor4.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args 0, 0, balanceOf[address(this.address)], 0, 0, address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
}

function close() {
    if not stor6:
        revert with 0, 'ERR: not yet opened'
    if stor7:
        revert with 0, 'ERR: already closed'
    if stor6 > -61:
        revert with 'NH{q', 17
    if block.timestamp <= stor6 + 60:
        revert with 0, 'ERR: too soon'
    stor7 = block.timestamp
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor4)
    call stor4.removeLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if not this.address:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(this.address)] < ext_call.return_data[0]:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(this.address)] -= ext_call.return_data[0]
    if totalSupply < ext_call.return_data[0]:
        revert with 'NH{q', 17
    totalSupply -= ext_call.return_data[0]
    emit Transfer(ext_call.return_data[0], this.address, 0);
}

function liquidate() {
    if stor7 <= 0:
        revert with 0, 'ERR: not yet closed'
    if not balanceOf[address(msg.sender)]:
        revert with 0, 'ERR: zero balance'
    if eth.balance(this.address) and balanceOf[address(msg.sender)] > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    if not totalSupply:
        revert with 'NH{q', 18
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] = 0
    if totalSupply < balanceOf[address(msg.sender)]:
        revert with 'NH{q', 17
    totalSupply -= balanceOf[address(msg.sender)]
    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
    if eth.balance(this.address) < eth.balance(this.address) * balanceOf[address(msg.sender)] / totalSupply:
        revert with 0, 'Address: insufficient balance'
    call msg.sender with:
       value eth.balance(this.address) * balanceOf[address(msg.sender)] / totalSupply wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
}

function mint(address arg1, uint256[] arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (64 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor6:
        revert with 0, 'ERR: already opened'
    idx = 0
    while idx < arg1.length:
        require calldata.size + -(64 * idx) + -arg1 - 36 >= 64
        _13 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[((64 * idx) + arg1 + 36)] == address(cd[((64 * idx) + arg1 + 36)])
        mem[_13] = cd[((64 * idx) + arg1 + 36)]
        require cd[((64 * idx) + arg1 + 68)] == cd[((64 * idx) + arg1 + 68)]
        mem[_13 + 32] = cd[((64 * idx) + arg1 + 68)]
        if not address(cd[((64 * idx) + arg1 + 36)]):
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > -cd[((64 * idx) + arg1 + 68)] - 1:
            revert with 'NH{q', 17
        totalSupply += cd[((64 * idx) + arg1 + 68)]
        mem[0] = address(cd[((64 * idx) + arg1 + 36)])
        mem[32] = 1
        if balanceOf[address(cd[((64 * idx) + arg1 + 36)])] > -cd[((64 * idx) + arg1 + 68)] - 1:
            revert with 'NH{q', 17
        balanceOf[address(cd[((64 * idx) + arg1 + 36)])] += cd[((64 * idx) + arg1 + 68)]
        mem[mem[64]] = cd[((64 * idx) + arg1 + 68)]
        emit Transfer(cd[((64 * idx) + arg1 + 68)], 0, address(cd[((64 * idx) + arg1 + 36)]));
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if msg.sender:
        if arg1:
            if this.address != msg.sender:
                if arg1 != this.address:
                    if 0xf491e7b69e4244ad4002bc14e878a34207e38c29 != msg.sender:
                        if arg1 != 0xf491e7b69e4244ad4002bc14e878a34207e38c29:
                            require stor6 > 0
                            require arg2 <= 5000000000 * 10^18
                            if msg.sender == 0xf491e7b69e4244ad4002bc14e878a34207e38c29:
                                if stor5 != msg.sender:
                                    if arg1 == stor5:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 / 10:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2 / 10
                                        if totalSupply < arg2 / 10:
                                            revert with 'NH{q', 17
                                        totalSupply -= arg2 / 10
                                        emit Transfer((arg2 / 10), msg.sender, 0);
                                        if balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] < 1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                                        balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec]--
                                        if totalSupply < 1:
                                            revert with 'NH{q', 17
                                        totalSupply--
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      1,
                                        emit 0x308fdcac: 1
                                        emit 0x0: 1
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                else:
                                    if arg2 < stor8:
                                        if totalSupply > -2:
                                            revert with 'NH{q', 17
                                        totalSupply++
                                        if balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] > -2:
                                            revert with 'NH{q', 17
                                        balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec]++
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      1,
                                        emit 0x0: 1
                                        emit 0x308fdcac: 1
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    else:
                                        if not sha3(block.difficulty, block.timestamp, totalSupply) % 10:
                                            if not arg1:
                                                revert with 0, 'ERC20: mint to the zero address'
                                            if totalSupply > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            totalSupply += arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, 0, arg1);
                                        if totalSupply > -2:
                                            revert with 'NH{q', 17
                                        totalSupply++
                                        if balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] > -2:
                                            revert with 'NH{q', 17
                                        balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec]++
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      1,
                                        emit 0x0: 1
                                        emit 0x308fdcac: 1
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                            else:
                                if stor5 != msg.sender:
                                    revert with 0, 'ERR: sender must be uniswap'
                                if arg2 < stor8:
                                    if totalSupply > -2:
                                        revert with 'NH{q', 17
                                    totalSupply++
                                    if balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] > -2:
                                        revert with 'NH{q', 17
                                    balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec]++
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  1,
                                    emit 0x0: 1
                                    emit 0x308fdcac: 1
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                else:
                                    if not sha3(block.difficulty, block.timestamp, totalSupply) % 10:
                                        if not arg1:
                                            revert with 0, 'ERC20: mint to the zero address'
                                        if totalSupply > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        totalSupply += arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, 0, arg1);
                                    if totalSupply > -2:
                                        revert with 'NH{q', 17
                                    totalSupply++
                                    if balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] > -2:
                                        revert with 'NH{q', 17
                                    balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec]++
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  1,
                                    emit 0x0: 1
                                    emit 0x308fdcac: 1
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                            ('ge', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))), ('param', 'arg2'))
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
    if not arg1:
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    else:
        if not arg2:
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            if arg1 == this.address:
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            else:
                if arg2 == this.address:
                    if allowance[address(arg1)][address(msg.sender)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                else:
                    if arg1 == 0xf491e7b69e4244ad4002bc14e878a34207e38c29:
                        if allowance[address(arg1)][address(msg.sender)] < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    else:
                        if arg2 == 0xf491e7b69e4244ad4002bc14e878a34207e38c29:
                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        else:
                            require stor6 > 0
                            require arg3 <= 5000000000 * 10^18
                            if 0xf491e7b69e4244ad4002bc14e878a34207e38c29 != msg.sender:
                                if stor5 != msg.sender:
                                    revert with 0, 'ERR: sender must be uniswap'
                            if arg1 != stor5:
                                if arg2 == stor5:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                                    if balanceOf[address(arg1)] < arg3 / 10:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3 / 10
                                    if totalSupply < arg3 / 10:
                                        revert with 'NH{q', 17
                                    totalSupply -= arg3 / 10
                                    emit Transfer((arg3 / 10), arg1, 0);
                                    if balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] < 1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                                    balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec]--
                                    if totalSupply < 1:
                                        revert with 'NH{q', 17
                                    totalSupply--
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  1,
                                    emit 0x308fdcac: 1
                                    emit 0x0: 1
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
                            else:
                                if arg3 < stor8:
                                    if totalSupply > -2:
                                        revert with 'NH{q', 17
                                    totalSupply++
                                    if balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] > -2:
                                        revert with 'NH{q', 17
                                    balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec]++
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  1,
                                    emit 0x0: 1
                                    emit 0x308fdcac: 1
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
                                else:
                                    if not sha3(block.difficulty, block.timestamp, totalSupply) % 10:
                                        if not arg2:
                                            revert with 0, 'ERC20: mint to the zero address'
                                        if totalSupply > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        totalSupply += arg3
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, 0, arg2);
                                    if totalSupply > -2:
                                        revert with 'NH{q', 17
                                    totalSupply++
                                    if balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] > -2:
                                        revert with 'NH{q', 17
                                    balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec]++
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  1,
                                    emit 0x0: 1
                                    emit 0x308fdcac: 1
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if allowance[address(arg1)][address(msg.sender)] < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds allowance'
                                    if not arg1:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not msg.sender:
                                        revert with 0, 'ERC20: approve to the zero address'
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
