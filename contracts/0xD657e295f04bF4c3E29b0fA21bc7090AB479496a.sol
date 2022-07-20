contract main {




// =====================  Runtime code  =====================


const name = ''

const decimals = 2

const symbol = ''


address stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor3;
uint256 stor4;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function totalSupply() {
    return (stor3 - stor4)
}

function transfer(address arg1, uint256 arg2) {
    if arg2 > balanceOf[address(msg.sender)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        return 0
    if arg3 > balanceOf[address(arg1)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    allowance[address(arg1)][address(msg.sender)] -= arg3
    return 1
}

function mint(uint256 arg1) {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: Caller is not the deployr address'
    idx = 0
    while idx < arg1:
        mem[96] = 0x756eb3f879cb30fe243b4dfee438691c043318585733ff6000526016600af3
        create contract with 0 wei
                        code: 0x756eb3f879cb30fe243b4dfee438691c043318585733ff6000526016600af3
        idx = idx + 1
        continue 
    stor3 += arg1
    balanceOf[address(msg.sender)] += arg1
}

function free(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: Caller is not the deployr address'
    mem[0] = msg.sender
    mem[32] = 1
    if arg1 > balanceOf[address(msg.sender)]:
        return 0
    idx = stor4 + 1
    while idx <= arg1 + stor4:
        require idx <= test266151307()
        if 0 >= idx:
            s = 1
            t = 0
            while idx >= s:
                s = 256 * s
                t = t + 1
                continue 
            if idx <= 0:
                _86 = mem[64]
                mem[64] = mem[64] + 32
                mem[_86] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                call address(sha3(mem[_86 len t + 23])) with:
                     gas gas_remaining wei
            else:
                if idx >= 128:
                    _92 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_92] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[_92 len t + 23])) with:
                         gas gas_remaining wei
                else:
                    _94 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_94] = (address(this.address) << 80) + (t + 214 << 248) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[_94 len t + 23])) with:
                         gas gas_remaining wei
        else:
            if idx < 128:
                if idx <= 0:
                    _50 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_50] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                    call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                         gas gas_remaining wei
                else:
                    if idx >= 128:
                        _54 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_54] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                             gas gas_remaining wei
                    else:
                        _56 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_56] = (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)) with:
                             gas gas_remaining wei
            else:
                s = 1
                t = 0
                while idx >= s:
                    s = 256 * s
                    t = t + 1
                    continue 
                if idx <= 0:
                    _88 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_88] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[_88 len t + 23])) with:
                         gas gas_remaining wei
                else:
                    if idx >= 128:
                        _98 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_98] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_98 len t + 23])) with:
                             gas gas_remaining wei
                    else:
                        _100 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_100] = (address(this.address) << 80) + (t + 214 << 248) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_100 len t + 23])) with:
                             gas gas_remaining wei
        idx = idx + 1
        continue 
    stor4 += arg1
    balanceOf[address(msg.sender)] -= arg1
    return 1
}

function freeFrom(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: Caller is not the deployr address'
    if arg2 > balanceOf[address(arg1)]:
        return 0
    mem[0] = msg.sender
    mem[32] = sha3(address(arg1), 2)
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        return 0
    idx = stor4 + 1
    while idx <= arg2 + stor4:
        require idx <= test266151307()
        if 0 >= idx:
            s = 1
            t = 0
            while idx >= s:
                s = 256 * s
                t = t + 1
                continue 
            if idx <= 0:
                _92 = mem[64]
                mem[64] = mem[64] + 32
                mem[_92] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                call address(sha3(mem[_92 len t + 23])) with:
                     gas gas_remaining wei
            else:
                if idx >= 128:
                    _98 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_98] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[_98 len t + 23])) with:
                         gas gas_remaining wei
                else:
                    _100 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_100] = (address(this.address) << 80) + (t + 214 << 248) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[_100 len t + 23])) with:
                         gas gas_remaining wei
        else:
            if idx < 128:
                if idx <= 0:
                    _56 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_56] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                    call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                         gas gas_remaining wei
                else:
                    if idx >= 128:
                        _60 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_60] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                             gas gas_remaining wei
                    else:
                        _62 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_62] = (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)) with:
                             gas gas_remaining wei
            else:
                s = 1
                t = 0
                while idx >= s:
                    s = 256 * s
                    t = t + 1
                    continue 
                if idx <= 0:
                    _94 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_94] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[_94 len t + 23])) with:
                         gas gas_remaining wei
                else:
                    if idx >= 128:
                        _104 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_104] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_104 len t + 23])) with:
                             gas gas_remaining wei
                    else:
                        _106 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_106] = (address(this.address) << 80) + (t + 214 << 248) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_106 len t + 23])) with:
                             gas gas_remaining wei
        idx = idx + 1
        continue 
    stor4 += arg2
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    return 1
}

function freeUpTo(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: Caller is not the deployr address'
    mem[0] = msg.sender
    mem[32] = 1
    if arg1 <= balanceOf[address(msg.sender)]:
        idx = stor4 + 1
        while idx <= arg1 + stor4:
            require idx <= test266151307()
            if 0 >= idx:
                s = 1
                t = 0
                while idx >= s:
                    s = 256 * s
                    t = t + 1
                    continue 
                if idx <= 0:
                    _162 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_162] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[_162 len t + 23])) with:
                         gas gas_remaining wei
                else:
                    if idx >= 128:
                        _172 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_172] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_172 len t + 23])) with:
                             gas gas_remaining wei
                    else:
                        _174 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_174] = (address(this.address) << 80) + (t + 214 << 248) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_174 len t + 23])) with:
                             gas gas_remaining wei
            else:
                if idx < 128:
                    if idx <= 0:
                        _90 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_90] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                             gas gas_remaining wei
                    else:
                        if idx >= 128:
                            _96 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_96] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                            call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                                 gas gas_remaining wei
                        else:
                            _98 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_98] = (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)) with:
                                 gas gas_remaining wei
                else:
                    s = 1
                    t = 0
                    while idx >= s:
                        s = 256 * s
                        t = t + 1
                        continue 
                    if idx <= 0:
                        _164 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_164] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_164 len t + 23])) with:
                             gas gas_remaining wei
                    else:
                        if idx >= 128:
                            _178 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_178] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(mem[_178 len t + 23])) with:
                                 gas gas_remaining wei
                        else:
                            _180 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_180] = (address(this.address) << 80) + (t + 214 << 248) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(mem[_180 len t + 23])) with:
                                 gas gas_remaining wei
            idx = idx + 1
            continue 
        stor4 += arg1
        balanceOf[address(msg.sender)] -= arg1
        return arg1
    idx = stor4 + 1
    while idx <= balanceOf[address(msg.sender)] + stor4:
        require idx <= test266151307()
        if 0 >= idx:
            s = 1
            t = 0
            while idx >= s:
                s = 256 * s
                t = t + 1
                continue 
            if idx <= 0:
                _166 = mem[64]
                mem[64] = mem[64] + 32
                mem[_166] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                call address(sha3(mem[_166 len t + 23])) with:
                     gas gas_remaining wei
            else:
                if idx >= 128:
                    _184 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_184] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[_184 len t + 23])) with:
                         gas gas_remaining wei
                else:
                    _186 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_186] = (address(this.address) << 80) + (t + 214 << 248) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[_186 len t + 23])) with:
                         gas gas_remaining wei
        else:
            if idx < 128:
                if idx <= 0:
                    _92 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_92] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                    call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                         gas gas_remaining wei
                else:
                    if idx >= 128:
                        _102 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_102] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                             gas gas_remaining wei
                    else:
                        _104 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_104] = (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)) with:
                             gas gas_remaining wei
            else:
                s = 1
                t = 0
                while idx >= s:
                    s = 256 * s
                    t = t + 1
                    continue 
                if idx <= 0:
                    _168 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_168] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[_168 len t + 23])) with:
                         gas gas_remaining wei
                else:
                    if idx >= 128:
                        _190 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_190] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_190 len t + 23])) with:
                             gas gas_remaining wei
                    else:
                        _192 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_192] = (address(this.address) << 80) + (t + 214 << 248) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_192 len t + 23])) with:
                             gas gas_remaining wei
        idx = idx + 1
        continue 
    stor4 += balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    return balanceOf[address(msg.sender)]
}

function freeFromUpTo(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: Caller is not the deployr address'
    mem[0] = msg.sender
    mem[32] = sha3(address(arg1), 2)
    if arg2 <= balanceOf[address(arg1)]:
        if arg2 <= allowance[address(arg1)][address(msg.sender)]:
            idx = stor4 + 1
            while idx <= arg2 + stor4:
                require idx <= test266151307()
                if 0 >= idx:
                    s = 1
                    t = 0
                    while idx >= s:
                        s = 256 * s
                        t = t + 1
                        continue 
                    if idx <= 0:
                        _330 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_330] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_330 len t + 23])) with:
                             gas gas_remaining wei
                    else:
                        if idx >= 128:
                            _348 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_348] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(mem[_348 len t + 23])) with:
                                 gas gas_remaining wei
                        else:
                            _350 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_350] = (address(this.address) << 80) + (t + 214 << 248) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(mem[_350 len t + 23])) with:
                                 gas gas_remaining wei
                else:
                    if idx < 128:
                        if idx <= 0:
                            _186 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_186] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                            call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                                 gas gas_remaining wei
                        else:
                            if idx >= 128:
                                _196 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_196] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                                call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                                     gas gas_remaining wei
                            else:
                                _198 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_198] = (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                                call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)) with:
                                     gas gas_remaining wei
                    else:
                        s = 1
                        t = 0
                        while idx >= s:
                            s = 256 * s
                            t = t + 1
                            continue 
                        if idx <= 0:
                            _332 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_332] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(mem[_332 len t + 23])) with:
                                 gas gas_remaining wei
                        else:
                            if idx >= 128:
                                _354 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_354] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                call address(sha3(mem[_354 len t + 23])) with:
                                     gas gas_remaining wei
                            else:
                                _356 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_356] = (address(this.address) << 80) + (t + 214 << 248) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                call address(sha3(mem[_356 len t + 23])) with:
                                     gas gas_remaining wei
                idx = idx + 1
                continue 
            stor4 += arg2
            balanceOf[address(arg1)] -= arg2
            allowance[address(arg1)][address(msg.sender)] -= arg2
            return arg2
        idx = stor4 + 1
        while idx <= allowance[address(arg1)][address(msg.sender)] + stor4:
            require idx <= test266151307()
            if 0 >= idx:
                s = 1
                t = 0
                while idx >= s:
                    s = 256 * s
                    t = t + 1
                    continue 
                if idx <= 0:
                    _334 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_334] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[_334 len t + 23])) with:
                         gas gas_remaining wei
                else:
                    if idx >= 128:
                        _360 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_360] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_360 len t + 23])) with:
                             gas gas_remaining wei
                    else:
                        _362 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_362] = (address(this.address) << 80) + (t + 214 << 248) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_362 len t + 23])) with:
                             gas gas_remaining wei
            else:
                if idx < 128:
                    if idx <= 0:
                        _188 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_188] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                             gas gas_remaining wei
                    else:
                        if idx >= 128:
                            _202 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_202] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                            call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                                 gas gas_remaining wei
                        else:
                            _204 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_204] = (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)) with:
                                 gas gas_remaining wei
                else:
                    s = 1
                    t = 0
                    while idx >= s:
                        s = 256 * s
                        t = t + 1
                        continue 
                    if idx <= 0:
                        _336 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_336] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_336 len t + 23])) with:
                             gas gas_remaining wei
                    else:
                        if idx >= 128:
                            _366 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_366] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(mem[_366 len t + 23])) with:
                                 gas gas_remaining wei
                        else:
                            _368 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_368] = (address(this.address) << 80) + (t + 214 << 248) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(mem[_368 len t + 23])) with:
                                 gas gas_remaining wei
            idx = idx + 1
            continue 
    else:
        if balanceOf[address(arg1)] <= allowance[address(arg1)][address(msg.sender)]:
            idx = stor4 + 1
            while idx <= balanceOf[address(arg1)] + stor4:
                require idx <= test266151307()
                if 0 >= idx:
                    s = 1
                    t = 0
                    while idx >= s:
                        s = 256 * s
                        t = t + 1
                        continue 
                    if idx <= 0:
                        _338 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_338] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_338 len t + 23])) with:
                             gas gas_remaining wei
                    else:
                        if idx >= 128:
                            _372 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_372] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(mem[_372 len t + 23])) with:
                                 gas gas_remaining wei
                        else:
                            _374 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_374] = (address(this.address) << 80) + (t + 214 << 248) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(mem[_374 len t + 23])) with:
                                 gas gas_remaining wei
                else:
                    if idx < 128:
                        if idx <= 0:
                            _190 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_190] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                            call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                                 gas gas_remaining wei
                        else:
                            if idx >= 128:
                                _208 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_208] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                                call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                                     gas gas_remaining wei
                            else:
                                _210 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_210] = (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                                call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)) with:
                                     gas gas_remaining wei
                    else:
                        s = 1
                        t = 0
                        while idx >= s:
                            s = 256 * s
                            t = t + 1
                            continue 
                        if idx <= 0:
                            _340 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_340] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(mem[_340 len t + 23])) with:
                                 gas gas_remaining wei
                        else:
                            if idx >= 128:
                                _378 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_378] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                                call address(sha3(mem[_378 len t + 23])) with:
                                     gas gas_remaining wei
                            else:
                                _380 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_380] = (address(this.address) << 80) + (t + 214 << 248) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                                call address(sha3(mem[_380 len t + 23])) with:
                                     gas gas_remaining wei
                idx = idx + 1
                continue 
            stor4 += balanceOf[address(arg1)]
            balanceOf[address(arg1)] = 0
            allowance[address(arg1)][address(msg.sender)] -= balanceOf[address(arg1)]
            return balanceOf[address(arg1)]
        idx = stor4 + 1
        while idx <= allowance[address(arg1)][address(msg.sender)] + stor4:
            require idx <= test266151307()
            if 0 >= idx:
                s = 1
                t = 0
                while idx >= s:
                    s = 256 * s
                    t = t + 1
                    continue 
                if idx <= 0:
                    _342 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_342] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                    call address(sha3(mem[_342 len t + 23])) with:
                         gas gas_remaining wei
                else:
                    if idx >= 128:
                        _384 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_384] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_384 len t + 23])) with:
                             gas gas_remaining wei
                    else:
                        _386 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_386] = (address(this.address) << 80) + (t + 214 << 248) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_386 len t + 23])) with:
                             gas gas_remaining wei
            else:
                if idx < 128:
                    if idx <= 0:
                        _192 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_192] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                        call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                             gas gas_remaining wei
                    else:
                        if idx >= 128:
                            _214 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_214] = (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000
                            call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 64) - 0x296bffffffffffffffffffffffffffffffffffffffff7f000000000000000000) >> 72)) with:
                                 gas gas_remaining wei
                        else:
                            _216 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_216] = (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(Mask(184, 72, (address(this.address) << 80) + (idx << 72) - 0x296c000000000000000000000000000000000000000000000000000000000000) >> 72)) with:
                                 gas gas_remaining wei
                else:
                    s = 1
                    t = 0
                    while idx >= s:
                        s = 256 * s
                        t = t + 1
                        continue 
                    if idx <= 0:
                        _344 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_344] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                        call address(sha3(mem[_344 len t + 23])) with:
                             gas gas_remaining wei
                    else:
                        if idx >= 128:
                            _390 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_390] = (address(this.address) << 80) + (t + 214 << 248) + (t + 128 << 72) + (idx * 256^(-t + 9)) + 0x94000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(mem[_390 len t + 23])) with:
                                 gas gas_remaining wei
                        else:
                            _392 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_392] = (address(this.address) << 80) + (t + 214 << 248) + (idx << 72) + 0x94000000000000000000000000000000000000000000000000000000000000
                            call address(sha3(mem[_392 len t + 23])) with:
                                 gas gas_remaining wei
            idx = idx + 1
            continue 
    stor4 += allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] = 0
    return allowance[address(arg1)][address(msg.sender)]
}



}
