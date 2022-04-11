contract main {




// =====================  Runtime code  =====================


#
#  - sub_88f61f9f(?)
#  - zapInToken(address arg1, uint256 arg2, address arg3, address arg4)
#  - zapOut(address arg1, uint256 arg2, address arg3)
#  - zapOutToken(address arg1, uint256 arg2, address arg3, address arg4)
#  - sub_f5f83f20(?)
#
address owner;
address stor1;

function owner() {
    return owner
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

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function zapIn(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = stor1
    mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = 0
    mem[(2 * ceil32(return_data.size)) + 228] = 128
    mem[(2 * ceil32(return_data.size)) + 324] = 2
    if address(ext_call.return_data[0]) == stor1:
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 356
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 260] = this.address
        mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
        require ext_code.size(arg2)
        call arg2.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value msg.value / 2 wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _125 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _129 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        require _125 + (32 * _129) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _125 + 224
        t = (4 * ceil32(return_data.size)) + 224
        while idx < _129:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _129 < 1:
            revert with 'NH{q', 17
        if _129 - 1 >= _129:
            revert with 'NH{q', 50
        _492 = mem[(32 * _129 - 1) + (4 * ceil32(return_data.size)) + 224]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = arg2
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _506 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_506] == mem[_506]
        if mem[_506]:
            if msg.value < msg.value / 2:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = 0
            mem[mem[64] + 132] = msg.sender
            mem[mem[64] + 164] = block.timestamp
            require ext_code.size(arg2)
            call arg2.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value msg.value - (msg.value / 2) wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _492, 0, 0, msg.sender, block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _557 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_557] == mem[_557]
            require mem[_557 + 32] == mem[_557 + 32]
            require mem[_557 + 64] == mem[_557 + 64]
        else:
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), arg2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _525 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_525] == mem[_525]
            if mem[_525]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            _534 = mem[64]
            mem[mem[64] + 36] = arg2
            mem[mem[64] + 68] = -1
            _545 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
            mem[64] = mem[64] + 164
            mem[_534 + 100] = 32
            mem[_534 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(ext_call.return_data[0])) <= 0:
                revert with 0, 'Address: call to non-contract'
            _575 = mem[_545]
            mem[_534 + 164 len ceil32(mem[_545])] = mem[_545 + 32 len ceil32(mem[_545])]
            if ceil32(_575) > _575:
                mem[_534 + _575 + 164] = 0
            call address(ext_call.return_data[0]) with:
                 gas gas_remaining wei
                args mem[_534 + 168 len _575 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_534 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_534 + 196] == bool(mem[_534 + 196])
                    if not mem[_534 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if msg.value < msg.value / 2:
                revert with 'NH{q', 17
            require ext_code.size(arg2)
            call arg2.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value msg.value - (msg.value / 2) wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _492, 0, 0, msg.sender, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
    else:
        if ext_call.return_data[12 len 20] == stor1:
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 260] = this.address
            mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
            require ext_code.size(arg2)
            call arg2.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value msg.value / 2 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            if address(ext_call.return_data[0]) == stor1:
                _127 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                _131 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                require _127 + (32 * _131) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + _127 + 224
                t = (4 * ceil32(return_data.size)) + 224
                while idx < _131:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _131 < 1:
                    revert with 'NH{q', 17
                if _131 - 1 >= _131:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), arg2
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _507 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_507] == mem[_507]
                if mem[_507]:
                    if msg.value < msg.value / 2:
                        revert with 'NH{q', 17
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = msg.sender
                    mem[mem[64] + 164] = block.timestamp
                    require ext_code.size(arg2)
                    call arg2.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), mem[(32 * _131 - 1) + (4 * ceil32(return_data.size)) + 224], 0, 0, msg.sender, block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _559 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_559] == mem[_559]
                    require mem[_559 + 32] == mem[_559 + 32]
                    require mem[_559 + 64] == mem[_559 + 64]
                else:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _526 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_526] == mem[_526]
                    if mem[_526]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    _536 = mem[64]
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = -1
                    _547 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
                    mem[64] = mem[64] + 164
                    mem[_536 + 100] = 32
                    mem[_536 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(address(ext_call.return_data[0])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _576 = mem[_547]
                    mem[_536 + 164 len ceil32(mem[_547])] = mem[_547 + 32 len ceil32(mem[_547])]
                    if ceil32(_576) > _576:
                        mem[_536 + _576 + 164] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[_536 + 168 len _576 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_536 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[_536 + 196] == bool(mem[_536 + 196])
                            if not mem[_536 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if msg.value < msg.value / 2:
                        revert with 'NH{q', 17
                    require ext_code.size(arg2)
                    call arg2.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), mem[(32 * _131 - 1) + (4 * ceil32(return_data.size)) + 224], 0, 0, msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
            else:
                _128 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                _132 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                require _128 + (32 * _132) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + _128 + 224
                t = (4 * ceil32(return_data.size)) + 224
                while idx < _132:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _132 < 1:
                    revert with 'NH{q', 17
                if _132 - 1 >= _132:
                    revert with 'NH{q', 50
                _495 = mem[(32 * _132 - 1) + (4 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), arg2
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _508 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_508] == mem[_508]
                if mem[_508]:
                    if msg.value < msg.value / 2:
                        revert with 'NH{q', 17
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = msg.sender
                    mem[mem[64] + 164] = block.timestamp
                    require ext_code.size(arg2)
                    call arg2.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), _495, 0, 0, msg.sender, block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _561 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_561] == mem[_561]
                    require mem[_561 + 32] == mem[_561 + 32]
                    require mem[_561 + 64] == mem[_561 + 64]
                else:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _527 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_527] == mem[_527]
                    if mem[_527]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    _538 = mem[64]
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = -1
                    _549 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
                    mem[64] = mem[64] + 164
                    mem[_538 + 100] = 32
                    mem[_538 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(address(ext_call.return_data[0])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _577 = mem[_549]
                    mem[_538 + 164 len ceil32(mem[_549])] = mem[_549 + 32 len ceil32(mem[_549])]
                    if ceil32(_577) > _577:
                        mem[_538 + _577 + 164] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[_538 + 168 len _577 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_538 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[_538 + 196] == bool(mem[_538 + 196])
                            if not mem[_538 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if msg.value < msg.value / 2:
                        revert with 'NH{q', 17
                    require ext_code.size(arg2)
                    call arg2.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), _495, 0, 0, msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
        else:
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 260] = this.address
            mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
            require ext_code.size(arg2)
            call arg2.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value msg.value / 2 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _126 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
            _130 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            require _126 + (32 * _130) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _126 + 224
            t = (4 * ceil32(return_data.size)) + 224
            while idx < _130:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _130 < 1:
                revert with 'NH{q', 17
            if _130 - 1 >= _130:
                revert with 'NH{q', 50
            _493 = mem[(32 * _130 - 1) + (4 * ceil32(return_data.size)) + 224]
            if msg.value < msg.value / 2:
                revert with 'NH{q', 17
            _499 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_499]:
                revert with 'NH{q', 50
            mem[_499 + 32] = stor1
            if 1 >= mem[_499]:
                revert with 'NH{q', 50
            mem[_499 + 64] = address(ext_call.return_data[0])
            mem[_499 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[_499 + 100] = 0
            mem[_499 + 132] = 128
            mem[_499 + 228] = mem[_499]
            idx = 0
            s = _499 + 32
            t = _499 + 260
            while idx < mem[_499]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_499 + 164] = this.address
            mem[_499 + 196] = block.timestamp
            require ext_code.size(arg2)
            call arg2.mem[mem[64] len 4] with:
               value msg.value - (msg.value / 2) wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _499 + (32 * mem[_499]) + -mem[64] + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1059 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1066 = mem[_1059]
            require mem[_1059] <= test266151307()
            require _1059 + mem[_1059] + 31 < _1059 + return_data.size
            _1085 = mem[_1059 + mem[_1059]]
            if mem[_1059 + mem[_1059]] > test266151307():
                revert with 'NH{q', 65
            if _1059 + ceil32(return_data.size) + floor32(mem[_1059 + mem[_1059]]) + 1 > test266151307() or floor32(mem[_1059 + mem[_1059]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1059 + ceil32(return_data.size) + floor32(mem[_1059 + mem[_1059]]) + 1
            mem[_1059 + ceil32(return_data.size)] = _1085
            require _1066 + (32 * _1085) + 32 <= return_data.size
            idx = 0
            s = _1059 + _1066 + 32
            t = _1059 + ceil32(return_data.size) + 32
            while idx < _1085:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _1085 < 1:
                revert with 'NH{q', 17
            if _1085 - 1 >= _1085:
                revert with 'NH{q', 50
            _1542 = mem[(32 * _1085 - 1) + _1059 + ceil32(return_data.size) + 32]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), arg2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1545 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1545] == mem[_1545]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), arg2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_1545]:
                _1551 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1551] == mem[_1551]
                if mem[_1551]:
                    mem[mem[64] + 68] = _493
                    mem[mem[64] + 100] = _1542
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = msg.sender
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(arg2)
                    call arg2.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _493, _1542, 0, 0, msg.sender, block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1613 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1613] == mem[_1613]
                    require mem[_1613 + 32] == mem[_1613 + 32]
                    require mem[_1613 + 64] == mem[_1613 + 64]
                else:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1565 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1565] == mem[_1565]
                    if mem[_1565]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    _1573 = mem[64]
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = -1
                    _1596 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
                    mem[64] = mem[64] + 164
                    mem[_1573 + 100] = 32
                    mem[_1573 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(address(ext_call.return_data[0])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _1625 = mem[_1596]
                    mem[_1573 + 164 len ceil32(mem[_1596])] = mem[_1596 + 32 len ceil32(mem[_1596])]
                    if ceil32(_1625) > _1625:
                        mem[_1573 + _1625 + 164] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[_1573 + 168 len _1625 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96] > 0:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_1573 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[_1573 + 196] == bool(mem[_1573 + 196])
                            if not mem[_1573 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(arg2)
                    call arg2.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _493, _1542, 0, 0, msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
            else:
                _1552 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1552] == mem[_1552]
                if mem[_1552]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                _1556 = mem[64]
                mem[mem[64] + 36] = arg2
                mem[mem[64] + 68] = -1
                _1560 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
                mem[64] = mem[64] + 164
                mem[_1556 + 100] = 32
                mem[_1556 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[0])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1569 = mem[_1560]
                mem[_1556 + 164 len ceil32(mem[_1560])] = mem[_1560 + 32 len ceil32(mem[_1560])]
                if ceil32(_1569) > _1569:
                    mem[_1556 + _1569 + 164] = 0
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args mem[_1556 + 168 len _1569 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_1556 + 168] = this.address
                    mem[_1556 + 200] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), arg2
                    mem[_1556 + 164] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if not ext_call.return_data[0]:
                        mem[_1556 + ceil32(return_data.size) + 168] = this.address
                        mem[_1556 + ceil32(return_data.size) + 200] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), arg2
                        mem[_1556 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_1556 + (2 * ceil32(return_data.size)) + 200] = arg2
                        mem[_1556 + (2 * ceil32(return_data.size)) + 232] = -1
                        mem[_1556 + (2 * ceil32(return_data.size)) + 164] = 68
                        mem[_1556 + (2 * ceil32(return_data.size)) + 196 len 4] = approve(address rg1, uint256 rg2)
                        mem[_1556 + (2 * ceil32(return_data.size)) + 264] = 32
                        mem[_1556 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(address(ext_call.return_data[0])) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[_1556 + (2 * ceil32(return_data.size)) + 328 len 96] = 0, address(arg2), -1, 0
                        mem[_1556 + (2 * ceil32(return_data.size)) + 396] = 0
                        call address(ext_call.return_data[0]) with:
                           funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_1556 + (2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_1556 + (2 * ceil32(return_data.size)) + 360] == bool(mem[_1556 + (2 * ceil32(return_data.size)) + 360])
                                if not mem[_1556 + (2 * ceil32(return_data.size)) + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(arg2)
                    call arg2.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _493, _1542, 0, 0, msg.sender, block.timestamp
                else:
                    mem[_1556 + 164] = return_data.size
                    mem[_1556 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1556 + 196] == bool(mem[_1556 + 196])
                        if not mem[_1556 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_1556 + ceil32(return_data.size) + 169] = this.address
                    mem[_1556 + ceil32(return_data.size) + 201] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), arg2
                    mem[_1556 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        require ext_code.size(arg2)
                        call arg2.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _493, _1542, 0, 0, msg.sender, block.timestamp
                    else:
                        mem[_1556 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                        mem[_1556 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), arg2
                        mem[_1556 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_1556 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = arg2
                        mem[_1556 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = -1
                        mem[_1556 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = 68
                        mem[_1556 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = approve(address rg1, uint256 rg2)
                        mem[_1556 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
                        mem[_1556 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(address(ext_call.return_data[0])) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[_1556 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = 0, address(arg2), -1, 0
                        mem[_1556 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 0
                        call address(ext_call.return_data[0]) with:
                           funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(arg2)
                            call arg2.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _493, _1542, 0, 0, msg.sender, block.timestamp
                        else:
                            mem[_1556 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = return_data.size
                            mem[_1556 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1556 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1556 + (4 * ceil32(return_data.size)) + 334] = 32
                                mem[_1556 + (4 * ceil32(return_data.size)) + 366] = 32
                                mem[_1556 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                                revert with memory
                                  from _1556 + (4 * ceil32(return_data.size)) + 330
                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_1556 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] == bool(mem[_1556 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361])
                                if not mem[_1556 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361]:
                                    mem[_1556 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1556 + (4 * ceil32(return_data.size)) + 334] = 32
                                    mem[_1556 + (4 * ceil32(return_data.size)) + 366] = 42
                                    mem[_1556 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                                    mem[_1556 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
                                    revert with memory
                                      from _1556 + (4 * ceil32(return_data.size)) + 330
                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            mem[_1556 + (4 * ceil32(return_data.size)) + 334] = address(ext_call.return_data[0])
                            mem[_1556 + (4 * ceil32(return_data.size)) + 366] = address(ext_call.return_data[0])
                            mem[_1556 + (4 * ceil32(return_data.size)) + 398] = _493
                            mem[_1556 + (4 * ceil32(return_data.size)) + 430] = _1542
                            mem[_1556 + (4 * ceil32(return_data.size)) + 462] = 0
                            mem[_1556 + (4 * ceil32(return_data.size)) + 494] = 0
                            mem[_1556 + (4 * ceil32(return_data.size)) + 526] = msg.sender
                            mem[_1556 + (4 * ceil32(return_data.size)) + 558] = block.timestamp
                            require ext_code.size(arg2)
                            call arg2.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[_1556 + (4 * ceil32(return_data.size)) + 334 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                require ext_call.return_data[64] == ext_call.return_data[64]
}



}
