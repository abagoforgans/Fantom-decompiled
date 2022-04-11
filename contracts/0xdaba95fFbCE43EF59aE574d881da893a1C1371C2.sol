contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address stor5;
uint256 stor6;
address stor7;
address stor9;
address stor10;
uint256 stor11;
address stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
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

function sub_3d3d056e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if msg.sender == stor9:
        stor10 = address(arg1)
}

function sub_f9f48a07(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if msg.sender == stor9:
        stor5 = address(arg1)
        stor12 = address(arg1)
}

function sub_7e52aaa6(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == stor9:
        if arg1 > 0xcebcf8bb5b4169cab347dfb27922b9bdc77853fcc50c1d1292fa58d532e08:
            revert with 'NH{q', 17
        stor6 = 5072 * arg1
}

function a(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == stor9:
        call stor9 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_250bbb97(?) {
    if stor11 > -stor13 - 1:
        revert with 'NH{q', 17
    if block.timestamp > stor11 + stor13:
        return 0
    if stor11 > -stor13 - 1:
        revert with 'NH{q', 17
    if stor11 + stor13 < block.timestamp:
        revert with 'NH{q', 17
    return (stor11 + stor13 - block.timestamp)
}

function b() {
    if msg.sender == stor9:
        if not stor9:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffffead2fd381eb5097fffff:
            revert with 'NH{q', 17
        totalSupply += 100000 * 10^18
        if balanceOf[stor9] > 0xffffffffffffffffffffffffffffffffffffffffffffead2fd381eb5097fffff:
            revert with 'NH{q', 17
        balanceOf[stor9] += 100000 * 10^18
        emit Transfer(100000 * 10^18, 0, stor9);
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

function sub_35332a23(?) {
    if stor14 < 1:
        revert with 'NH{q', 17
    if block.timestamp >= stor14 - 1:
        return 0
    if stor14 < stor15:
        revert with 'NH{q', 17
    if stor14 < block.timestamp:
        revert with 'NH{q', 17
    if stor14 - block.timestamp > 0x53e2d6238da3c21187e7c06e19b90ea9e6eeb702602c9081c2e33eff1950:
        revert with 'NH{q', 17
    if not stor14 - stor15:
        revert with 'NH{q', 18
    if (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15 and 10^15 > -1 / (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15:
        revert with 'NH{q', 17
    return (10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15)
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
    if stor7 != msg.sender:
        if stor5 != msg.sender:
            if this.address != msg.sender:
                if block.timestamp < stor6:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: tokens are locked until unlock_date()'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
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
    if arg1 != stor7:
        if arg1 != stor5:
            if arg1 != this.address:
                if block.timestamp < stor6:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: tokens are locked until unlock_date()'
    if balanceOf[address(arg1)] < arg3:
        revert with 'NH{q', 17
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
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() {
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

function sub_34f76d5d(?) {
    if stor11 > -stor13 - 1:
        revert with 'NH{q', 17
    if block.timestamp <= stor11 + stor13:
        revert with 0, 'Error: last drop too recent'
    stor11 = block.timestamp
    if stor14 < 1:
        revert with 'NH{q', 17
    if block.timestamp >= stor14 - 1:
        if 0 < balanceOf[stor12]:
            revert with 'NH{q', 17
        if not this.address:
            revert with 0, 'ERC20: mint to the zero address'
        if -balanceOf[stor12] > 0:
            if totalSupply > -1:
                revert with 'NH{q', 17
            if balanceOf[address(this.address)] > -1:
                revert with 'NH{q', 17
            emit Transfer(0, 0, this.address);
        else:
            if totalSupply > balanceOf[stor12] - 1:
                revert with 'NH{q', 17
            totalSupply -= balanceOf[stor12]
            if balanceOf[address(this.address)] > balanceOf[stor12] - 1:
                revert with 'NH{q', 17
            balanceOf[address(this.address)] -= balanceOf[stor12]
            emit Transfer(-balanceOf[stor12], 0, this.address);
            if -balanceOf[stor12] > 100000:
                if stor9 != msg.sender:
                    revert with 0, ''
                mem[128] = this.address
                require ext_code.size(stor10)
                staticcall stor10.WETH() with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[160] = ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 196] = stor10
                mem[ceil32(return_data.size) + 228] = -balanceOf[stor12]
                require ext_code.size(this.address)
                call this.address.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor10, -balanceOf[stor12]
                mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = -balanceOf[stor12]
                mem[(2 * ceil32(return_data.size)) + 228] = 0
                mem[(2 * ceil32(return_data.size)) + 260] = 160
                mem[(2 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = 128
                t = (2 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 292] = this.address
                mem[(2 * ceil32(return_data.size)) + 324] = 1715189033
                require ext_code.size(stor10)
                call stor10.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args -balanceOf[stor12], 0, 160, address(this.address), 1715189033, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _82 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, -balanceOf[stor12]) >> 32
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, -balanceOf[stor12]) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, -balanceOf[stor12]) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                _83 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, -balanceOf[stor12]) >> 32 + 192]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, -balanceOf[stor12]) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, -balanceOf[stor12]) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, -balanceOf[stor12]) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, -balanceOf[stor12]) >> 32 + 192]) + 193
                mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, -balanceOf[stor12]) >> 32 + 192]
                require _82 + (32 * _83) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + _82 + 224
                t = (4 * ceil32(return_data.size)) + 224
                while idx < _83:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
    else:
        if stor14 < stor15:
            revert with 'NH{q', 17
        if stor14 < block.timestamp:
            revert with 'NH{q', 17
        if stor14 - block.timestamp > 0x53e2d6238da3c21187e7c06e19b90ea9e6eeb702602c9081c2e33eff1950:
            revert with 'NH{q', 17
        if not stor14 - stor15:
            revert with 'NH{q', 18
        if (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15 and 10^15 > -1 / (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15:
            revert with 'NH{q', 17
        if 10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15 < balanceOf[stor12]:
            revert with 'NH{q', 17
        if not this.address:
            revert with 0, 'ERC20: mint to the zero address'
        if (10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) - balanceOf[stor12] <= 10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15 / 2:
            if totalSupply > (-1 * 10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) + balanceOf[stor12] - 1:
                revert with 'NH{q', 17
            totalSupply = totalSupply + (10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) - balanceOf[stor12]
            if balanceOf[address(this.address)] > (-1 * 10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) + balanceOf[stor12] - 1:
                revert with 'NH{q', 17
            balanceOf[address(this.address)] = balanceOf[address(this.address)] + (10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) - balanceOf[stor12]
            emit Transfer(((10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) - balanceOf[stor12]), 0, this.address);
            if (10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) - balanceOf[stor12] > 100000:
                if stor9 != msg.sender:
                    revert with 0, ''
                mem[128] = this.address
                require ext_code.size(stor10)
                staticcall stor10.WETH() with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[160] = ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 196] = stor10
                mem[ceil32(return_data.size) + 228] = (10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) - balanceOf[stor12]
                require ext_code.size(this.address)
                call this.address.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor10, (10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) - balanceOf[stor12]
                mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = (10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) - balanceOf[stor12]
                mem[(2 * ceil32(return_data.size)) + 228] = 0
                mem[(2 * ceil32(return_data.size)) + 260] = 160
                mem[(2 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = 128
                t = (2 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 292] = this.address
                mem[(2 * ceil32(return_data.size)) + 324] = 1715189033
                require ext_code.size(stor10)
                call stor10.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args (10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) - balanceOf[stor12], 0, 160, address(this.address), 1715189033, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _105 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) - balanceOf[stor12]) >> 32
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) - balanceOf[stor12]) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) - balanceOf[stor12]) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                _107 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) - balanceOf[stor12]) >> 32 + 192]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) - balanceOf[stor12]) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) - balanceOf[stor12]) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) - balanceOf[stor12]) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) - balanceOf[stor12]) >> 32 + 192]) + 193
                mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) - balanceOf[stor12]) >> 32 + 192]
                require _105 + (32 * _107) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + _105 + 224
                t = (4 * ceil32(return_data.size)) + 224
                while idx < _107:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
        else:
            if totalSupply > -(10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15 / 2) - 1:
                revert with 'NH{q', 17
            totalSupply += 10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15 / 2
            if balanceOf[address(this.address)] > -(10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15 / 2) - 1:
                revert with 'NH{q', 17
            balanceOf[address(this.address)] += 10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15 / 2
            emit Transfer((10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15 / 2), 0, this.address);
            if 10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15 / 2 > 100000:
                if stor9 != msg.sender:
                    revert with 0, ''
                mem[128] = this.address
                require ext_code.size(stor10)
                staticcall stor10.WETH() with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[160] = ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 196] = stor10
                mem[ceil32(return_data.size) + 228] = 10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15 / 2
                require ext_code.size(this.address)
                call this.address.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor10, 10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15 / 2
                mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15 / 2
                mem[(2 * ceil32(return_data.size)) + 228] = 0
                mem[(2 * ceil32(return_data.size)) + 260] = 160
                mem[(2 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = 128
                t = (2 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 292] = this.address
                mem[(2 * ceil32(return_data.size)) + 324] = 1715189033
                require ext_code.size(stor10)
                call stor10.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args Mask(255, 1, 10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15), 0, 160, address(this.address), 1715189033, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _106 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) >> 32
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                _108 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) >> 32 + 192]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) >> 32 + 192]) + 193
                mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^15 * (200000 * stor14) - (200000 * block.timestamp) / stor14 - stor15) >> 32 + 192]
                require _106 + (32 * _108) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + _106 + 224
                t = (4 * ceil32(return_data.size)) + 224
                while idx < _108:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
}



}
