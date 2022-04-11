contract main {




// =====================  Runtime code  =====================


#
#  - zapIn(address arg1, address arg2)
#  - sub_88f61f9f(?)
#  - zapInToken(address arg1, uint256 arg2, address arg3, address arg4)
#  - zapOut(address arg1, uint256 arg2, address arg3)
#  - zapOutToken(address arg1, uint256 arg2, address arg3, address arg4)
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

function sub_f5f83f20(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token1() with:
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
        require ext_code.size(address(arg2))
        call address(arg2).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value msg.value / 2 wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _119 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _123 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        require _119 + (32 * _123) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _119 + 224
        t = (4 * ceil32(return_data.size)) + 224
        while idx < _123:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _123 < 1:
            revert with 'NH{q', 17
        if _123 - 1 >= _123:
            revert with 'NH{q', 50
        _525 = mem[(32 * _123 - 1) + (4 * ceil32(return_data.size)) + 224]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(arg2)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _539 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_539] == mem[_539]
        if mem[_539]:
            if msg.value < msg.value / 2:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = 0
            mem[mem[64] + 132] = this.address
            mem[mem[64] + 164] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value msg.value - (msg.value / 2) wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _525, 0, 0, address(this.address), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _590 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_590] == mem[_590]
            require mem[_590 + 32] == mem[_590 + 32]
            require mem[_590 + 64] == mem[_590 + 64]
            require ext_code.size(address(arg3))
            call address(arg3).deposit(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[_590 + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _805 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _814 = mem[_805]
            require mem[_805] == mem[_805]
            _835 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = _814
            _842 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_835 + 100] = 32
            mem[_835 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(arg3)) <= 0:
                revert with 0, 'Address: call to non-contract'
            _895 = mem[_842]
            mem[_835 + 164 len ceil32(mem[_842])] = mem[_842 + 32 len ceil32(mem[_842])]
            if ceil32(_895) > _895:
                mem[_835 + _895 + 164] = 0
            call address(arg3) with:
                 gas gas_remaining wei
                args mem[_835 + 168 len _895 - 4]
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
                mem[_835 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_835 + 196] == bool(mem[_835 + 196])
                    if not mem[_835 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(arg2)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _558 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_558] == mem[_558]
        if mem[_558]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        _567 = mem[64]
        mem[mem[64] + 36] = address(arg2)
        mem[mem[64] + 68] = -1
        _578 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
        mem[64] = mem[64] + 164
        mem[_567 + 100] = 32
        mem[_567 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(ext_call.return_data[0])) <= 0:
            revert with 0, 'Address: call to non-contract'
        _608 = mem[_578]
        mem[_567 + 164 len ceil32(mem[_578])] = mem[_578 + 32 len ceil32(mem[_578])]
        if ceil32(_608) > _608:
            mem[_567 + _608 + 164] = 0
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args mem[_567 + 168 len _608 - 4]
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
            if msg.value < msg.value / 2:
                revert with 'NH{q', 17
            mem[_567 + 232] = 0
            mem[_567 + 264] = 0
            mem[_567 + 296] = this.address
            mem[_567 + 328] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value msg.value - (msg.value / 2) wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _525, 0, 0, address(this.address), block.timestamp
            mem[_567 + 164 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_code.size(address(arg3))
            call address(arg3).deposit(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_567 + ceil32(return_data.size) + 168] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[_567 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[_567 + (2 * ceil32(return_data.size)) + 200] = msg.sender
            mem[_567 + (2 * ceil32(return_data.size)) + 232] = ext_call.return_data[0]
            mem[_567 + (2 * ceil32(return_data.size)) + 164] = 68
            mem[_567 + (2 * ceil32(return_data.size)) + 196 len 4] = unknown_0xa9059cbb(?????)
            mem[_567 + (2 * ceil32(return_data.size)) + 264] = 32
            mem[_567 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(arg3)) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[_567 + (2 * ceil32(return_data.size)) + 328 len 96] = 0, msg.sender, ext_call.return_data[0], 0
            mem[_567 + (2 * ceil32(return_data.size)) + 396] = 0
            call address(arg3) with:
               funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
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
                mem[_567 + (2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_567 + (2 * ceil32(return_data.size)) + 360] == bool(mem[_567 + (2 * ceil32(return_data.size)) + 360])
                    if not mem[_567 + (2 * ceil32(return_data.size)) + 360]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_567 + 164] = return_data.size
        mem[_567 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[_567 + 196] == bool(mem[_567 + 196])
            if not mem[_567 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if msg.value < msg.value / 2:
            revert with 'NH{q', 17
        mem[_567 + ceil32(return_data.size) + 233] = 0
        mem[_567 + ceil32(return_data.size) + 265] = 0
        mem[_567 + ceil32(return_data.size) + 297] = this.address
        mem[_567 + ceil32(return_data.size) + 329] = block.timestamp
        require ext_code.size(address(arg2))
        call address(arg2).addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
           value msg.value - (msg.value / 2) wei
             gas gas_remaining wei
            args address(ext_call.return_data[0]), _525, 0, 0, address(this.address), block.timestamp
        mem[_567 + ceil32(return_data.size) + 165 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_code.size(address(arg3))
        call address(arg3).deposit(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_567 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[_567 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[_567 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = msg.sender
        mem[_567 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = ext_call.return_data[0]
        mem[_567 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = 68
        mem[_567 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = unknown_0xa9059cbb(?????)
        mem[_567 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
        mem[_567 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(arg3)) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[_567 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = 0, msg.sender, ext_call.return_data[0], 0
        mem[_567 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 0
        call address(arg3) with:
           funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
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
        mem[_567 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = return_data.size
        mem[_567 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_567 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_567 + (4 * ceil32(return_data.size)) + 334] = 32
            mem[_567 + (4 * ceil32(return_data.size)) + 366] = 32
            mem[_567 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
            revert with memory
              from _567 + (4 * ceil32(return_data.size)) + 330
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if return_data.size <= 0:
        require return_data.size >= 32
        require mem[_567 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] == bool(mem[_567 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361])
        if mem[_567 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361]:
        mem[_567 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_567 + (4 * ceil32(return_data.size)) + 334] = 32
        mem[_567 + (4 * ceil32(return_data.size)) + 366] = 42
        mem[_567 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
        mem[_567 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
        revert with memory
          from _567 + (4 * ceil32(return_data.size)) + 330
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
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
        require ext_code.size(address(arg2))
        call address(arg2).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value msg.value / 2 wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        if address(ext_call.return_data[0]) == stor1:
            _121 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
            _125 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            require _121 + (32 * _125) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _121 + 224
            t = (4 * ceil32(return_data.size)) + 224
            while idx < _125:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _125 < 1:
                revert with 'NH{q', 17
            if _125 - 1 >= _125:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(arg2)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _540 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_540] == mem[_540]
            if mem[_540]:
                if msg.value < msg.value / 2:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = this.address
                mem[mem[64] + 164] = block.timestamp
                require ext_code.size(address(arg2))
                call address(arg2).addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value msg.value - (msg.value / 2) wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), mem[(32 * _125 - 1) + (4 * ceil32(return_data.size)) + 224], 0, 0, address(this.address), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _592 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_592] == mem[_592]
                require mem[_592 + 32] == mem[_592 + 32]
                require mem[_592 + 64] == mem[_592 + 64]
                require ext_code.size(address(arg3))
                call address(arg3).deposit(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[_592 + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _808 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _817 = mem[_808]
                require mem[_808] == mem[_808]
                _836 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _817
                _844 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_836 + 100] = 32
                mem[_836 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(arg3)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _899 = mem[_844]
                mem[_836 + 164 len ceil32(mem[_844])] = mem[_844 + 32 len ceil32(mem[_844])]
                if ceil32(_899) > _899:
                    mem[_836 + _899 + 164] = 0
                call address(arg3) with:
                     gas gas_remaining wei
                    args mem[_836 + 168 len _899 - 4]
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
                    mem[_836 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_836 + 196] == bool(mem[_836 + 196])
                        if not mem[_836 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(arg2)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _559 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_559] == mem[_559]
            if mem[_559]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            _569 = mem[64]
            mem[mem[64] + 36] = address(arg2)
            mem[mem[64] + 68] = -1
            _580 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
            mem[64] = mem[64] + 164
            mem[_569 + 100] = 32
            mem[_569 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(ext_call.return_data[0])) <= 0:
                revert with 0, 'Address: call to non-contract'
            _609 = mem[_580]
            mem[_569 + 164 len ceil32(mem[_580])] = mem[_580 + 32 len ceil32(mem[_580])]
            if ceil32(_609) > _609:
                mem[_569 + _609 + 164] = 0
            call address(ext_call.return_data[0]) with:
                 gas gas_remaining wei
                args mem[_569 + 168 len _609 - 4]
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
                if msg.value < msg.value / 2:
                    revert with 'NH{q', 17
                mem[_569 + 232] = 0
                mem[_569 + 264] = 0
                mem[_569 + 296] = this.address
                mem[_569 + 328] = block.timestamp
                require ext_code.size(address(arg2))
                call address(arg2).addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value msg.value - (msg.value / 2) wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), mem[(32 * _125 - 1) + (4 * ceil32(return_data.size)) + 224], 0, 0, address(this.address), block.timestamp
                mem[_569 + 164 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                require ext_call.return_data[64] == ext_call.return_data[64]
                require ext_code.size(address(arg3))
                call address(arg3).deposit(uint256 rg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_569 + ceil32(return_data.size) + 168] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_569 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[_569 + (2 * ceil32(return_data.size)) + 200] = msg.sender
                mem[_569 + (2 * ceil32(return_data.size)) + 232] = ext_call.return_data[0]
                mem[_569 + (2 * ceil32(return_data.size)) + 164] = 68
                mem[_569 + (2 * ceil32(return_data.size)) + 196 len 4] = unknown_0xa9059cbb(?????)
                mem[_569 + (2 * ceil32(return_data.size)) + 264] = 32
                mem[_569 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(arg3)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[_569 + (2 * ceil32(return_data.size)) + 328 len 96] = 0, msg.sender, ext_call.return_data[0], 0
                mem[_569 + (2 * ceil32(return_data.size)) + 396] = 0
                call address(arg3) with:
                   funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
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
                    mem[_569 + (2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_569 + (2 * ceil32(return_data.size)) + 360] == bool(mem[_569 + (2 * ceil32(return_data.size)) + 360])
                        if not mem[_569 + (2 * ceil32(return_data.size)) + 360]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_569 + 164] = return_data.size
            mem[_569 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_569 + 196] == bool(mem[_569 + 196])
                if not mem[_569 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if msg.value < msg.value / 2:
                revert with 'NH{q', 17
            mem[_569 + ceil32(return_data.size) + 233] = 0
            mem[_569 + ceil32(return_data.size) + 265] = 0
            mem[_569 + ceil32(return_data.size) + 297] = this.address
            mem[_569 + ceil32(return_data.size) + 329] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value msg.value - (msg.value / 2) wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), mem[(32 * _125 - 1) + (4 * ceil32(return_data.size)) + 224], 0, 0, address(this.address), block.timestamp
            mem[_569 + ceil32(return_data.size) + 165 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_code.size(address(arg3))
            call address(arg3).deposit(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_569 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[_569 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[_569 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = msg.sender
            mem[_569 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = ext_call.return_data[0]
            mem[_569 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = 68
            mem[_569 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = unknown_0xa9059cbb(?????)
            mem[_569 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
            mem[_569 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(arg3)) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[_569 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = 0, msg.sender, ext_call.return_data[0], 0
            mem[_569 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 0
            call address(arg3) with:
               funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
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
            mem[_569 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = return_data.size
            mem[_569 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_569 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_569 + (4 * ceil32(return_data.size)) + 334] = 32
                mem[_569 + (4 * ceil32(return_data.size)) + 366] = 32
                mem[_569 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                revert with memory
                  from _569 + (4 * ceil32(return_data.size)) + 330
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if return_data.size <= 0:
            require return_data.size >= 32
            require mem[_569 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] == bool(mem[_569 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361])
            if mem[_569 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361]:
            mem[_569 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_569 + (4 * ceil32(return_data.size)) + 334] = 32
            mem[_569 + (4 * ceil32(return_data.size)) + 366] = 42
            mem[_569 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
            mem[_569 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
            revert with memory
              from _569 + (4 * ceil32(return_data.size)) + 330
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        _122 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _126 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        require _122 + (32 * _126) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _122 + 224
        t = (4 * ceil32(return_data.size)) + 224
        while idx < _126:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _126 < 1:
            revert with 'NH{q', 17
        if _126 - 1 >= _126:
            revert with 'NH{q', 50
        _528 = mem[(32 * _126 - 1) + (4 * ceil32(return_data.size)) + 224]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(arg2)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _541 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_541] == mem[_541]
        if mem[_541]:
            if msg.value < msg.value / 2:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = 0
            mem[mem[64] + 132] = this.address
            mem[mem[64] + 164] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value msg.value - (msg.value / 2) wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _528, 0, 0, address(this.address), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _594 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_594] == mem[_594]
            require mem[_594 + 32] == mem[_594 + 32]
            require mem[_594 + 64] == mem[_594 + 64]
            require ext_code.size(address(arg3))
            call address(arg3).deposit(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[_594 + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _811 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _818 = mem[_811]
            require mem[_811] == mem[_811]
            _837 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = _818
            _846 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_837 + 100] = 32
            mem[_837 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(arg3)) <= 0:
                revert with 0, 'Address: call to non-contract'
            _902 = mem[_846]
            mem[_837 + 164 len ceil32(mem[_846])] = mem[_846 + 32 len ceil32(mem[_846])]
            if ceil32(_902) > _902:
                mem[_837 + _902 + 164] = 0
            call address(arg3) with:
                 gas gas_remaining wei
                args mem[_837 + 168 len _902 - 4]
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
                mem[_837 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_837 + 196] == bool(mem[_837 + 196])
                    if not mem[_837 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(arg2)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _560 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_560] == mem[_560]
        if mem[_560]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        _571 = mem[64]
        mem[mem[64] + 36] = address(arg2)
        mem[mem[64] + 68] = -1
        _582 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
        mem[64] = mem[64] + 164
        mem[_571 + 100] = 32
        mem[_571 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(ext_call.return_data[0])) <= 0:
            revert with 0, 'Address: call to non-contract'
        _610 = mem[_582]
        mem[_571 + 164 len ceil32(mem[_582])] = mem[_582 + 32 len ceil32(mem[_582])]
        if ceil32(_610) > _610:
            mem[_571 + _610 + 164] = 0
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args mem[_571 + 168 len _610 - 4]
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
            if msg.value < msg.value / 2:
                revert with 'NH{q', 17
            mem[_571 + 232] = 0
            mem[_571 + 264] = 0
            mem[_571 + 296] = this.address
            mem[_571 + 328] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value msg.value - (msg.value / 2) wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _528, 0, 0, address(this.address), block.timestamp
            mem[_571 + 164 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_code.size(address(arg3))
            call address(arg3).deposit(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_571 + ceil32(return_data.size) + 168] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[_571 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[_571 + (2 * ceil32(return_data.size)) + 200] = msg.sender
            mem[_571 + (2 * ceil32(return_data.size)) + 232] = ext_call.return_data[0]
            mem[_571 + (2 * ceil32(return_data.size)) + 164] = 68
            mem[_571 + (2 * ceil32(return_data.size)) + 196 len 4] = unknown_0xa9059cbb(?????)
            mem[_571 + (2 * ceil32(return_data.size)) + 264] = 32
            mem[_571 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(arg3)) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[_571 + (2 * ceil32(return_data.size)) + 328 len 96] = 0, msg.sender, ext_call.return_data[0], 0
            mem[_571 + (2 * ceil32(return_data.size)) + 396] = 0
            call address(arg3) with:
               funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
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
                mem[_571 + (2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_571 + (2 * ceil32(return_data.size)) + 360] == bool(mem[_571 + (2 * ceil32(return_data.size)) + 360])
                    if not mem[_571 + (2 * ceil32(return_data.size)) + 360]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_571 + 164] = return_data.size
        mem[_571 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[_571 + 196] == bool(mem[_571 + 196])
            if not mem[_571 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if msg.value < msg.value / 2:
            revert with 'NH{q', 17
        mem[_571 + ceil32(return_data.size) + 233] = 0
        mem[_571 + ceil32(return_data.size) + 265] = 0
        mem[_571 + ceil32(return_data.size) + 297] = this.address
        mem[_571 + ceil32(return_data.size) + 329] = block.timestamp
        require ext_code.size(address(arg2))
        call address(arg2).addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
           value msg.value - (msg.value / 2) wei
             gas gas_remaining wei
            args address(ext_call.return_data[0]), _528, 0, 0, address(this.address), block.timestamp
        mem[_571 + ceil32(return_data.size) + 165 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_code.size(address(arg3))
        call address(arg3).deposit(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_571 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[_571 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[_571 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = msg.sender
        mem[_571 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = ext_call.return_data[0]
        mem[_571 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = 68
        mem[_571 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = unknown_0xa9059cbb(?????)
        mem[_571 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
        mem[_571 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(arg3)) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[_571 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = 0, msg.sender, ext_call.return_data[0], 0
        mem[_571 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 0
        call address(arg3) with:
           funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
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
        mem[_571 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = return_data.size
        mem[_571 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_571 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_571 + (4 * ceil32(return_data.size)) + 334] = 32
            mem[_571 + (4 * ceil32(return_data.size)) + 366] = 32
            mem[_571 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
            revert with memory
              from _571 + (4 * ceil32(return_data.size)) + 330
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if return_data.size <= 0:
        require return_data.size >= 32
        require mem[_571 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] == bool(mem[_571 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361])
        if mem[_571 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361]:
        mem[_571 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_571 + (4 * ceil32(return_data.size)) + 334] = 32
        mem[_571 + (4 * ceil32(return_data.size)) + 366] = 42
        mem[_571 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
        mem[_571 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
        revert with memory
          from _571 + (4 * ceil32(return_data.size)) + 330
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
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
    require ext_code.size(address(arg2))
    call address(arg2).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value / 2 wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _120 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
    _124 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
    require _120 + (32 * _124) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _120 + 224
    t = (4 * ceil32(return_data.size)) + 224
    while idx < _124:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _124 < 1:
        revert with 'NH{q', 17
    if _124 - 1 >= _124:
        revert with 'NH{q', 50
    _526 = mem[(32 * _124 - 1) + (4 * ceil32(return_data.size)) + 224]
    if msg.value < msg.value / 2:
        revert with 'NH{q', 17
    _532 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_532]:
        revert with 'NH{q', 50
    mem[_532 + 32] = stor1
    if 1 >= mem[_532]:
        revert with 'NH{q', 50
    mem[_532 + 64] = address(ext_call.return_data[0])
    mem[_532 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[_532 + 100] = 0
    mem[_532 + 132] = 128
    mem[_532 + 228] = mem[_532]
    idx = 0
    s = _532 + 32
    t = _532 + 260
    while idx < mem[_532]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_532 + 164] = this.address
    mem[_532 + 196] = block.timestamp
    require ext_code.size(address(arg2))
    call address(arg2).mem[mem[64] len 4] with:
       value msg.value - (msg.value / 2) wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len _532 + (32 * mem[_532]) + -mem[64] + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1406 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1419 = mem[_1406]
    require mem[_1406] <= test266151307()
    require _1406 + mem[_1406] + 31 < _1406 + return_data.size
    _1456 = mem[_1406 + mem[_1406]]
    if mem[_1406 + mem[_1406]] > test266151307():
        revert with 'NH{q', 65
    if _1406 + ceil32(return_data.size) + floor32(mem[_1406 + mem[_1406]]) + 1 > test266151307() or floor32(mem[_1406 + mem[_1406]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _1406 + ceil32(return_data.size) + floor32(mem[_1406 + mem[_1406]]) + 1
    mem[_1406 + ceil32(return_data.size)] = _1456
    require _1419 + (32 * _1456) + 32 <= return_data.size
    idx = 0
    s = _1406 + _1419 + 32
    t = _1406 + ceil32(return_data.size) + 32
    while idx < _1456:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _1456 < 1:
        revert with 'NH{q', 17
    if _1456 - 1 >= _1456:
        revert with 'NH{q', 50
    _4070 = mem[(32 * _1456 - 1) + _1406 + ceil32(return_data.size) + 32]
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = address(arg2)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(arg2)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _4841 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_4841] == mem[_4841]
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = address(arg2)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(arg2)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if mem[_4841]:
        _4943 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_4943] == mem[_4943]
        if mem[_4943]:
            mem[mem[64] + 68] = _526
            mem[mem[64] + 100] = _4070
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _526, _4070, 0, 0, address(this.address), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5005 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_5005] == mem[_5005]
            require mem[_5005 + 32] == mem[_5005 + 32]
            require mem[_5005 + 64] == mem[_5005 + 64]
            require ext_code.size(address(arg3))
            call address(arg3).deposit(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[_5005 + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5151 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5156 = mem[_5151]
            require mem[_5151] == mem[_5151]
            _5163 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = _5156
            _5186 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_5163 + 100] = 32
            mem[_5163 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(arg3)) <= 0:
                revert with 0, 'Address: call to non-contract'
            _5246 = mem[_5186]
            mem[_5163 + 164 len ceil32(mem[_5186])] = mem[_5186 + 32 len ceil32(mem[_5186])]
            if ceil32(_5246) > _5246:
                mem[_5163 + _5246 + 164] = 0
            call address(arg3) with:
                 gas gas_remaining wei
                args mem[_5163 + 168 len _5246 - 4]
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
                mem[_5163 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_5163 + 196] == bool(mem[_5163 + 196])
                    if not mem[_5163 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(arg2)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4957 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_4957] == mem[_4957]
        if mem[_4957]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        _4965 = mem[64]
        mem[mem[64] + 36] = address(arg2)
        mem[mem[64] + 68] = -1
        _4988 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
        mem[64] = mem[64] + 164
        mem[_4965 + 100] = 32
        mem[_4965 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(ext_call.return_data[0])) <= 0:
            revert with 0, 'Address: call to non-contract'
        _5017 = mem[_4988]
        mem[_4965 + 164 len ceil32(mem[_4988])] = mem[_4988 + 32 len ceil32(mem[_4988])]
        if ceil32(_5017) > _5017:
            mem[_4965 + _5017 + 164] = 0
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args mem[_4965 + 168 len _5017 - 4]
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
            mem[_4965 + 232] = _526
            mem[_4965 + 264] = _4070
            mem[_4965 + 296] = 0
            mem[_4965 + 328] = 0
            mem[_4965 + 360] = this.address
            mem[_4965 + 392] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _526, _4070, 0, 0, address(this.address), block.timestamp
            mem[_4965 + 164 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_code.size(address(arg3))
            call address(arg3).deposit(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_4965 + ceil32(return_data.size) + 168] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[_4965 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[_4965 + (2 * ceil32(return_data.size)) + 200] = msg.sender
            mem[_4965 + (2 * ceil32(return_data.size)) + 232] = ext_call.return_data[0]
            mem[_4965 + (2 * ceil32(return_data.size)) + 164] = 68
            mem[_4965 + (2 * ceil32(return_data.size)) + 196 len 4] = unknown_0xa9059cbb(?????)
            mem[_4965 + (2 * ceil32(return_data.size)) + 264] = 32
            mem[_4965 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(arg3)) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[_4965 + (2 * ceil32(return_data.size)) + 328 len 96] = 0, msg.sender, ext_call.return_data[0], 0
            mem[_4965 + (2 * ceil32(return_data.size)) + 396] = 0
            call address(arg3) with:
               funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
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
                mem[_4965 + (2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_4965 + (2 * ceil32(return_data.size)) + 360] == bool(mem[_4965 + (2 * ceil32(return_data.size)) + 360])
                    if not mem[_4965 + (2 * ceil32(return_data.size)) + 360]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_4965 + 164] = return_data.size
        mem[_4965 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[_4965 + 196] == bool(mem[_4965 + 196])
            if not mem[_4965 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_4965 + ceil32(return_data.size) + 233] = _526
        mem[_4965 + ceil32(return_data.size) + 265] = _4070
        mem[_4965 + ceil32(return_data.size) + 297] = 0
        mem[_4965 + ceil32(return_data.size) + 329] = 0
        mem[_4965 + ceil32(return_data.size) + 361] = this.address
        mem[_4965 + ceil32(return_data.size) + 393] = block.timestamp
        require ext_code.size(address(arg2))
        call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _526, _4070, 0, 0, address(this.address), block.timestamp
        mem[_4965 + ceil32(return_data.size) + 165 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_code.size(address(arg3))
        call address(arg3).deposit(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_4965 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[_4965 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[_4965 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = msg.sender
        mem[_4965 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = ext_call.return_data[0]
        mem[_4965 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = 68
        mem[_4965 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = unknown_0xa9059cbb(?????)
        mem[_4965 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
        mem[_4965 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(arg3)) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[_4965 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = 0, msg.sender, ext_call.return_data[0], 0
        mem[_4965 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 0
        call address(arg3) with:
           funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
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
        mem[_4965 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = return_data.size
        mem[_4965 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_4965 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_4965 + (4 * ceil32(return_data.size)) + 334] = 32
            mem[_4965 + (4 * ceil32(return_data.size)) + 366] = 32
            mem[_4965 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
            revert with memory
              from _4965 + (4 * ceil32(return_data.size)) + 330
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if return_data.size <= 0:
        require return_data.size >= 32
        require mem[_4965 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] == bool(mem[_4965 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361])
        if mem[_4965 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361]:
        mem[_4965 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_4965 + (4 * ceil32(return_data.size)) + 334] = 32
        mem[_4965 + (4 * ceil32(return_data.size)) + 366] = 42
        mem[_4965 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
        mem[_4965 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
        revert with memory
          from _4965 + (4 * ceil32(return_data.size)) + 330
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    _4944 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_4944] == mem[_4944]
    if mem[_4944]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    _4948 = mem[64]
    mem[mem[64] + 36] = address(arg2)
    mem[mem[64] + 68] = -1
    _4952 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
    mem[64] = mem[64] + 164
    mem[_4948 + 100] = 32
    mem[_4948 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(address(ext_call.return_data[0])) <= 0:
        revert with 0, 'Address: call to non-contract'
    _4961 = mem[_4952]
    mem[_4948 + 164 len ceil32(mem[_4952])] = mem[_4952 + 32 len ceil32(mem[_4952])]
    if ceil32(_4961) > _4961:
        mem[_4948 + _4961 + 164] = 0
    call address(ext_call.return_data[0]) with:
         gas gas_remaining wei
        args mem[_4948 + 168 len _4961 - 4]
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
        mem[_4948 + 168] = this.address
        mem[_4948 + 200] = address(arg2)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(arg2)
        mem[_4948 + 164] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            mem[_4948 + ceil32(return_data.size) + 232] = _526
            mem[_4948 + ceil32(return_data.size) + 264] = _4070
            mem[_4948 + ceil32(return_data.size) + 296] = 0
            mem[_4948 + ceil32(return_data.size) + 328] = 0
            mem[_4948 + ceil32(return_data.size) + 360] = this.address
            mem[_4948 + ceil32(return_data.size) + 392] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _526, _4070, 0, 0, address(this.address), block.timestamp
            mem[_4948 + ceil32(return_data.size) + 164 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_code.size(address(arg3))
            call address(arg3).deposit(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_4948 + (2 * ceil32(return_data.size)) + 168] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[_4948 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[_4948 + (4 * ceil32(return_data.size)) + 200] = msg.sender
            mem[_4948 + (4 * ceil32(return_data.size)) + 232] = ext_call.return_data[0]
            mem[_4948 + (4 * ceil32(return_data.size)) + 164] = 68
            mem[_4948 + (4 * ceil32(return_data.size)) + 196 len 4] = unknown_0xa9059cbb(?????)
            mem[_4948 + (4 * ceil32(return_data.size)) + 264] = 32
            mem[_4948 + (4 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(arg3)) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[_4948 + (4 * ceil32(return_data.size)) + 328 len 96] = 0, msg.sender, ext_call.return_data[0], 0
            mem[_4948 + (4 * ceil32(return_data.size)) + 396] = 0
            call address(arg3) with:
               funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
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
                mem[_4948 + (4 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_4948 + (4 * ceil32(return_data.size)) + 360] == bool(mem[_4948 + (4 * ceil32(return_data.size)) + 360])
                    if not mem[_4948 + (4 * ceil32(return_data.size)) + 360]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_4948 + ceil32(return_data.size) + 168] = this.address
        mem[_4948 + ceil32(return_data.size) + 200] = address(arg2)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(arg2)
        mem[_4948 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[_4948 + (2 * ceil32(return_data.size)) + 200] = address(arg2)
        mem[_4948 + (2 * ceil32(return_data.size)) + 232] = -1
        mem[_4948 + (2 * ceil32(return_data.size)) + 164] = 68
        mem[_4948 + (2 * ceil32(return_data.size)) + 196 len 4] = approve(address rg1, uint256 rg2)
        mem[_4948 + (2 * ceil32(return_data.size)) + 264] = 32
        mem[_4948 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(ext_call.return_data[0])) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[_4948 + (2 * ceil32(return_data.size)) + 328 len 96] = 0, address(arg2), -1, 0
        mem[_4948 + (2 * ceil32(return_data.size)) + 396] = 0
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
            mem[_4948 + (2 * ceil32(return_data.size)) + 396] = _526
            mem[_4948 + (2 * ceil32(return_data.size)) + 428] = _4070
            mem[_4948 + (2 * ceil32(return_data.size)) + 460] = 0
            mem[_4948 + (2 * ceil32(return_data.size)) + 492] = 0
            mem[_4948 + (2 * ceil32(return_data.size)) + 524] = this.address
            mem[_4948 + (2 * ceil32(return_data.size)) + 556] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _526, _4070, 0, 0, address(this.address), block.timestamp
            mem[_4948 + (2 * ceil32(return_data.size)) + 328 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_code.size(address(arg3))
            call address(arg3).deposit(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[_4948 + (4 * ceil32(return_data.size)) + 364] = msg.sender
            mem[_4948 + (4 * ceil32(return_data.size)) + 396] = ext_call.return_data[0]
            mem[_4948 + (4 * ceil32(return_data.size)) + 328] = 68
            mem[_4948 + (4 * ceil32(return_data.size)) + 360 len 4] = unknown_0xa9059cbb(?????)
            mem[_4948 + (4 * ceil32(return_data.size)) + 428] = 32
            mem[_4948 + (4 * ceil32(return_data.size)) + 460] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(arg3)) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[_4948 + (4 * ceil32(return_data.size)) + 492 len 96] = 0, msg.sender, ext_call.return_data[0], 0
            mem[_4948 + (4 * ceil32(return_data.size)) + 560] = 0
            call address(arg3) with:
               funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
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
                mem[_4948 + (4 * ceil32(return_data.size)) + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_4948 + (4 * ceil32(return_data.size)) + 524] == bool(mem[_4948 + (4 * ceil32(return_data.size)) + 524])
                    if not mem[_4948 + (4 * ceil32(return_data.size)) + 524]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_4948 + (2 * ceil32(return_data.size)) + 328] = return_data.size
        mem[_4948 + (2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[_4948 + (2 * ceil32(return_data.size)) + 360] == bool(mem[_4948 + (2 * ceil32(return_data.size)) + 360])
            if not mem[_4948 + (2 * ceil32(return_data.size)) + 360]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_4948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 397] = _526
        mem[_4948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = _4070
        mem[_4948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 0
        mem[_4948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
        mem[_4948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = this.address
        mem[_4948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = block.timestamp
        require ext_code.size(address(arg2))
        call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _526, _4070, 0, 0, address(this.address), block.timestamp
        mem[_4948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_code.size(address(arg3))
        call address(arg3).deposit(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[_4948 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 365] = msg.sender
        mem[_4948 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 397] = ext_call.return_data[0]
        mem[_4948 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 68
        mem[_4948 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361 len 4] = unknown_0xa9059cbb(?????)
        mem[_4948 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 32
        mem[_4948 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(arg3)) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[_4948 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493 len 96] = 0, msg.sender, ext_call.return_data[0], 0
        mem[_4948 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 561] = 0
        call address(arg3) with:
           funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
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
        mem[_4948 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = return_data.size
        mem[_4948 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 525 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_4948 + (8 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_4948 + (8 * ceil32(return_data.size)) + 498] = 32
            mem[_4948 + (8 * ceil32(return_data.size)) + 530] = 32
            mem[_4948 + (8 * ceil32(return_data.size)) + 562] = 'SafeERC20: low-level call failed'
            revert with memory
              from _4948 + (8 * ceil32(return_data.size)) + 494
               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if return_data.size <= 0:
        require return_data.size >= 32
        require mem[_4948 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] == bool(mem[_4948 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 525])
        if mem[_4948 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 525]:
    else:
        mem[_4948 + 164] = return_data.size
        mem[_4948 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[_4948 + 196] == bool(mem[_4948 + 196])
            if not mem[_4948 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_4948 + ceil32(return_data.size) + 169] = this.address
        mem[_4948 + ceil32(return_data.size) + 201] = address(arg2)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(arg2)
        mem[_4948 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            mem[_4948 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = _526
            mem[_4948 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = _4070
            mem[_4948 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 0
            mem[_4948 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0
            mem[_4948 + ceil32(return_data.size) + ceil32(return_data.size) + 361] = this.address
            mem[_4948 + ceil32(return_data.size) + ceil32(return_data.size) + 393] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _526, _4070, 0, 0, address(this.address), block.timestamp
            mem[_4948 + ceil32(return_data.size) + ceil32(return_data.size) + 165 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_code.size(address(arg3))
            call address(arg3).deposit(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_4948 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 169] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[_4948 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 201] = msg.sender
            mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 233] = ext_call.return_data[0]
            mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = 68
            mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 197 len 4] = unknown_0xa9059cbb(?????)
            mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 265] = 32
            mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(arg3)) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 329 len 96] = 0, msg.sender, ext_call.return_data[0], 0
            mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 397] = 0
            call address(arg3) with:
               funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
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
            mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 329] = return_data.size
            mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_4948 + (8 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4948 + (8 * ceil32(return_data.size)) + 334] = 32
                mem[_4948 + (8 * ceil32(return_data.size)) + 366] = 32
                mem[_4948 + (8 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                revert with memory
                  from _4948 + (8 * ceil32(return_data.size)) + 330
                   len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if return_data.size <= 0:
            require return_data.size >= 32
            require mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 361] == bool(mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 361])
            if mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 361]:
            mem[_4948 + (8 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_4948 + (8 * ceil32(return_data.size)) + 334] = 32
            mem[_4948 + (8 * ceil32(return_data.size)) + 366] = 42
            mem[_4948 + (8 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
            mem[_4948 + (8 * ceil32(return_data.size)) + 430] = 'ot succeed'
            revert with memory
              from _4948 + (8 * ceil32(return_data.size)) + 330
               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        mem[_4948 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
        mem[_4948 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(arg2)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(arg2)
        mem[_4948 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[_4948 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = address(arg2)
        mem[_4948 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = -1
        mem[_4948 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = 68
        mem[_4948 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = approve(address rg1, uint256 rg2)
        mem[_4948 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
        mem[_4948 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(ext_call.return_data[0])) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[_4948 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = 0, address(arg2), -1, 0
        mem[_4948 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
        if return_data.size:
            mem[_4948 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = return_data.size
            mem[_4948 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_4948 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4948 + (4 * ceil32(return_data.size)) + 334] = 32
                mem[_4948 + (4 * ceil32(return_data.size)) + 366] = 32
                mem[_4948 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                revert with memory
                  from _4948 + (4 * ceil32(return_data.size)) + 330
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_4948 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] == bool(mem[_4948 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361])
                if not mem[_4948 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361]:
                    mem[_4948 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4948 + (4 * ceil32(return_data.size)) + 334] = 32
                    mem[_4948 + (4 * ceil32(return_data.size)) + 366] = 42
                    mem[_4948 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                    mem[_4948 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
                    revert with memory
                      from _4948 + (4 * ceil32(return_data.size)) + 330
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            mem[_4948 + (4 * ceil32(return_data.size)) + 334] = address(ext_call.return_data[0])
            mem[_4948 + (4 * ceil32(return_data.size)) + 366] = address(ext_call.return_data[0])
            mem[_4948 + (4 * ceil32(return_data.size)) + 398] = _526
            mem[_4948 + (4 * ceil32(return_data.size)) + 430] = _4070
            mem[_4948 + (4 * ceil32(return_data.size)) + 462] = 0
            mem[_4948 + (4 * ceil32(return_data.size)) + 494] = 0
            mem[_4948 + (4 * ceil32(return_data.size)) + 526] = this.address
            mem[_4948 + (4 * ceil32(return_data.size)) + 558] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args mem[_4948 + (4 * ceil32(return_data.size)) + 334 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
            mem[_4948 + (4 * ceil32(return_data.size)) + 330 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_code.size(address(arg3))
            call address(arg3).deposit(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[_4948 + (8 * ceil32(return_data.size)) + 366] = msg.sender
            mem[_4948 + (8 * ceil32(return_data.size)) + 398] = ext_call.return_data[0]
            mem[_4948 + (8 * ceil32(return_data.size)) + 330] = 68
            mem[_4948 + (8 * ceil32(return_data.size)) + 362 len 4] = unknown_0xa9059cbb(?????)
            mem[_4948 + (8 * ceil32(return_data.size)) + 430] = 32
            mem[_4948 + (8 * ceil32(return_data.size)) + 462] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(arg3)) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[_4948 + (8 * ceil32(return_data.size)) + 494 len 96] = 0, msg.sender, ext_call.return_data[0], 0
            mem[_4948 + (8 * ceil32(return_data.size)) + 562] = 0
            call address(arg3) with:
               funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
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
                mem[_4948 + (8 * ceil32(return_data.size)) + 526 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_4948 + (8 * ceil32(return_data.size)) + 526] == bool(mem[_4948 + (8 * ceil32(return_data.size)) + 526])
                    if not mem[_4948 + (8 * ceil32(return_data.size)) + 526]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
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
        mem[_4948 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = _526
        mem[_4948 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 429] = _4070
        mem[_4948 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 461] = 0
        mem[_4948 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 493] = 0
        mem[_4948 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 525] = this.address
        mem[_4948 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 557] = block.timestamp
        require ext_code.size(address(arg2))
        call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _526, _4070, 0, 0, address(this.address), block.timestamp
        mem[_4948 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_code.size(address(arg3))
        call address(arg3).deposit(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 365] = msg.sender
        mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 397] = ext_call.return_data[0]
        mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 329] = 68
        mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 361 len 4] = unknown_0xa9059cbb(?????)
        mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 429] = 32
        mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 461] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(arg3)) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 493 len 96] = 0, msg.sender, ext_call.return_data[0], 0
        mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 561] = 0
        call address(arg3) with:
           funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
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
        mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 493] = return_data.size
        mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 525 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_4948 + (8 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_4948 + (8 * ceil32(return_data.size)) + 498] = 32
            mem[_4948 + (8 * ceil32(return_data.size)) + 530] = 32
            mem[_4948 + (8 * ceil32(return_data.size)) + 562] = 'SafeERC20: low-level call failed'
            revert with memory
              from _4948 + (8 * ceil32(return_data.size)) + 494
               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if return_data.size <= 0:
        require return_data.size >= 32
        require mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 525] == bool(mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 525])
        if mem[_4948 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 525]:
    mem[_4948 + (8 * ceil32(return_data.size)) + 494] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_4948 + (8 * ceil32(return_data.size)) + 498] = 32
    mem[_4948 + (8 * ceil32(return_data.size)) + 530] = 42
    mem[_4948 + (8 * ceil32(return_data.size)) + 562] = 'SafeERC20: ERC20 operation did n'
    mem[_4948 + (8 * ceil32(return_data.size)) + 594] = 'ot succeed'
    revert with memory
      from _4948 + (8 * ceil32(return_data.size)) + 494
       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
