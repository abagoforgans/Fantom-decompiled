contract main {




// =====================  Runtime code  =====================


#
#  - swapToNative(address arg1, uint256 arg2, address arg3)
#  - zapAcross(address arg1, uint256 arg2, address arg3)
#  - swapToken(address arg1, uint256 arg2, address arg3, address arg4)
#  - zapInToken(address arg1, uint256 arg2, address arg3, address arg4)
#  - zapOut(address arg1, uint256 arg2, address arg3)
#  - estimateZapInToken(address arg1, address arg2, uint256 arg3)
#  - zapOutToken(address arg1, uint256 arg2, address arg3, address arg4)
#  - _fallback()
#
address owner;
address stor1;
mapping of address stor2;
mapping of uint8 stor3;
address stor4;

function owner() {
    return owner
}

function sub_caaae7f5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = arg1
}

function setIsFeeOnTransfer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 1
}

function setTokenBridgeForRouter(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)][stor4] = arg2
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
    if stor1 == address(ext_call.return_data[0]):
        mem[0] = stor4
        mem[32] = sha3(ext_call.return_data[12 len 20], 2)
        if not stor2[ext_call.return_data[12 len 20]][stor4]:
            mem[(2 * ceil32(return_data.size)) + 96] = 2
            mem[(2 * ceil32(return_data.size)) + 128] = stor1
            mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 192] = 0x1550f83600000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = 0
            mem[(2 * ceil32(return_data.size)) + 228] = 128
            mem[(2 * ceil32(return_data.size)) + 324] = 2
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
            require ext_code.size(stor4)
            call stor4.0x1550f836 with:
               value msg.value / 2 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _5869 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
            _5877 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            require return_data.size >= _5869 + (32 * _5877) + 32
            mem[(4 * ceil32(return_data.size)) + 224 len 32 * _5877] = mem[(2 * ceil32(return_data.size)) + _5869 + 224 len 32 * _5877]
            if _5877 < 1:
                revert with 0, 17
            if _5877 - 1 >= _5877:
                revert with 0, 50
            _11645 = mem[(32 * _5877 - 1) + (4 * ceil32(return_data.size)) + 224]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = stor4
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, stor4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11665 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_11665]:
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor4
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, stor4
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11713 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_11713]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                _11753 = mem[64]
                mem[mem[64] + 36] = stor4
                mem[mem[64] + 68] = -1
                _11770 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_11753 + 100] = 32
                mem[_11753 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                _11845 = mem[_11770]
                mem[_11753 + 164 len ceil32(mem[_11770])] = mem[_11770 + 32 len ceil32(mem[_11770])]
                if ceil32(_11845) > _11845:
                    mem[_11845 + _11753 + 164] = 0
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args mem[_11753 + 168 len _11845 - 4]
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
                    mem[_11753 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_11753 + 196] == bool(mem[_11753 + 196])
                        if not mem[_11753 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if msg.value < msg.value / 2:
                revert with 0, 17
            require ext_code.size(stor4)
            call stor4.addLiquidityFTM(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value msg.value - (msg.value / 2) wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _11645, 0, 0, address(arg2), block.timestamp
        else:
            mem[(2 * ceil32(return_data.size)) + 96] = 3
            mem[(2 * ceil32(return_data.size)) + 128] = stor1
            mem[0] = stor4
            mem[32] = sha3(address(ext_call.return_data[0]), 2)
            mem[(2 * ceil32(return_data.size)) + 160] = stor2[address(ext_call.return_data[0])][stor4]
            mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 224] = 0x1550f83600000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 228] = 0
            mem[(2 * ceil32(return_data.size)) + 260] = 128
            mem[(2 * ceil32(return_data.size)) + 356] = 3
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 388
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
            require ext_code.size(stor4)
            call stor4.0x1550f836 with:
               value msg.value / 2 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 388 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _5870 = mem[(2 * ceil32(return_data.size)) + 224 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
            _5878 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 1 < 0:
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225
            mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
            require return_data.size >= _5870 + (32 * _5878) + 32
            mem[(4 * ceil32(return_data.size)) + 256 len 32 * _5878] = mem[(2 * ceil32(return_data.size)) + _5870 + 256 len 32 * _5878]
            if _5878 < 1:
                revert with 0, 17
            if _5878 - 1 >= _5878:
                revert with 0, 50
            _11646 = mem[(32 * _5878 - 1) + (4 * ceil32(return_data.size)) + 256]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = stor4
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, stor4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11666 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_11666]:
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor4
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, stor4
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11714 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_11714]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                _11755 = mem[64]
                mem[mem[64] + 36] = stor4
                mem[mem[64] + 68] = -1
                _11776 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_11755 + 100] = 32
                mem[_11755 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                _11847 = mem[_11776]
                mem[_11755 + 164 len ceil32(mem[_11776])] = mem[_11776 + 32 len ceil32(mem[_11776])]
                if ceil32(_11847) > _11847:
                    mem[_11847 + _11755 + 164] = 0
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args mem[_11755 + 168 len _11847 - 4]
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
                    mem[_11755 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_11755 + 196] == bool(mem[_11755 + 196])
                        if not mem[_11755 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if msg.value < msg.value / 2:
                revert with 0, 17
            require ext_code.size(stor4)
            call stor4.addLiquidityFTM(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value msg.value - (msg.value / 2) wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _11646, 0, 0, address(arg2), block.timestamp
    else:
        if stor1 == ext_call.return_data[12 len 20]:
            mem[0] = stor4
            if stor1 == address(ext_call.return_data[0]):
                mem[32] = sha3(ext_call.return_data[12 len 20], 2)
                if not stor2[ext_call.return_data[12 len 20]][stor4]:
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x1550f83600000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = 0
                    mem[(2 * ceil32(return_data.size)) + 228] = 128
                    mem[(2 * ceil32(return_data.size)) + 324] = 2
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
                    require ext_code.size(stor4)
                    call stor4.0x1550f836 with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _5873 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                    _5881 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    require return_data.size >= _5873 + (32 * _5881) + 32
                    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _5881] = mem[(2 * ceil32(return_data.size)) + _5873 + 224 len 32 * _5881]
                    if _5881 < 1:
                        revert with 0, 17
                    if _5881 - 1 >= _5881:
                        revert with 0, 50
                    _11649 = mem[(32 * _5881 - 1) + (4 * ceil32(return_data.size)) + 224]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = stor4
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, stor4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11667 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_11667]:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor4
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, stor4
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11717 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_11717]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _11759 = mem[64]
                        mem[mem[64] + 36] = stor4
                        mem[mem[64] + 68] = -1
                        _11784 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_11759 + 100] = 32
                        mem[_11759 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        _11853 = mem[_11784]
                        mem[_11759 + 164 len ceil32(mem[_11784])] = mem[_11784 + 32 len ceil32(mem[_11784])]
                        if ceil32(_11853) > _11853:
                            mem[_11853 + _11759 + 164] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[_11759 + 168 len _11853 - 4]
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
                            mem[_11759 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_11759 + 196] == bool(mem[_11759 + 196])
                                if not mem[_11759 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if msg.value < msg.value / 2:
                        revert with 0, 17
                    require ext_code.size(stor4)
                    call stor4.addLiquidityFTM(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), _11649, 0, 0, address(arg2), block.timestamp
                else:
                    mem[(2 * ceil32(return_data.size)) + 96] = 3
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[0] = stor4
                    mem[32] = sha3(address(ext_call.return_data[0]), 2)
                    mem[(2 * ceil32(return_data.size)) + 160] = stor2[address(ext_call.return_data[0])][stor4]
                    mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 224] = 0x1550f83600000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                    mem[(2 * ceil32(return_data.size)) + 260] = 128
                    mem[(2 * ceil32(return_data.size)) + 356] = 3
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (2 * ceil32(return_data.size)) + 388
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(stor4)
                    call stor4.0x1550f836 with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 388 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _5874 = mem[(2 * ceil32(return_data.size)) + 224 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                    _5882 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225
                    mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                    require return_data.size >= _5874 + (32 * _5882) + 32
                    mem[(4 * ceil32(return_data.size)) + 256 len 32 * _5882] = mem[(2 * ceil32(return_data.size)) + _5874 + 256 len 32 * _5882]
                    if _5882 < 1:
                        revert with 0, 17
                    if _5882 - 1 >= _5882:
                        revert with 0, 50
                    _11650 = mem[(32 * _5882 - 1) + (4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = stor4
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, stor4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11668 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_11668]:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor4
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, stor4
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11718 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_11718]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _11761 = mem[64]
                        mem[mem[64] + 36] = stor4
                        mem[mem[64] + 68] = -1
                        _11790 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_11761 + 100] = 32
                        mem[_11761 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        _11855 = mem[_11790]
                        mem[_11761 + 164 len ceil32(mem[_11790])] = mem[_11790 + 32 len ceil32(mem[_11790])]
                        if ceil32(_11855) > _11855:
                            mem[_11855 + _11761 + 164] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[_11761 + 168 len _11855 - 4]
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
                            mem[_11761 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_11761 + 196] == bool(mem[_11761 + 196])
                                if not mem[_11761 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if msg.value < msg.value / 2:
                        revert with 0, 17
                    require ext_code.size(stor4)
                    call stor4.addLiquidityFTM(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), _11650, 0, 0, address(arg2), block.timestamp
            else:
                mem[32] = sha3(address(ext_call.return_data[0]), 2)
                if not stor2[address(ext_call.return_data[0])][stor4]:
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x1550f83600000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = 0
                    mem[(2 * ceil32(return_data.size)) + 228] = 128
                    mem[(2 * ceil32(return_data.size)) + 324] = 2
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
                    require ext_code.size(stor4)
                    call stor4.0x1550f836 with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _5875 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                    _5883 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    require return_data.size >= _5875 + (32 * _5883) + 32
                    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _5883] = mem[(2 * ceil32(return_data.size)) + _5875 + 224 len 32 * _5883]
                    if _5883 < 1:
                        revert with 0, 17
                    if _5883 - 1 >= _5883:
                        revert with 0, 50
                    _11651 = mem[(32 * _5883 - 1) + (4 * ceil32(return_data.size)) + 224]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = stor4
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, stor4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11669 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_11669]:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor4
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, stor4
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11719 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_11719]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _11763 = mem[64]
                        mem[mem[64] + 36] = stor4
                        mem[mem[64] + 68] = -1
                        _11796 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_11763 + 100] = 32
                        mem[_11763 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        _11857 = mem[_11796]
                        mem[_11763 + 164 len ceil32(mem[_11796])] = mem[_11796 + 32 len ceil32(mem[_11796])]
                        if ceil32(_11857) > _11857:
                            mem[_11857 + _11763 + 164] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[_11763 + 168 len _11857 - 4]
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
                            mem[_11763 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_11763 + 196] == bool(mem[_11763 + 196])
                                if not mem[_11763 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if msg.value < msg.value / 2:
                        revert with 0, 17
                    require ext_code.size(stor4)
                    call stor4.addLiquidityFTM(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), _11651, 0, 0, address(arg2), block.timestamp
                else:
                    mem[(2 * ceil32(return_data.size)) + 96] = 3
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[0] = stor4
                    mem[32] = sha3(address(ext_call.return_data[0]), 2)
                    mem[(2 * ceil32(return_data.size)) + 160] = stor2[address(ext_call.return_data[0])][stor4]
                    mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 224] = 0x1550f83600000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                    mem[(2 * ceil32(return_data.size)) + 260] = 128
                    mem[(2 * ceil32(return_data.size)) + 356] = 3
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (2 * ceil32(return_data.size)) + 388
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(stor4)
                    call stor4.0x1550f836 with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 388 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _5876 = mem[(2 * ceil32(return_data.size)) + 224 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                    _5884 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225
                    mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                    require return_data.size >= _5876 + (32 * _5884) + 32
                    mem[(4 * ceil32(return_data.size)) + 256 len 32 * _5884] = mem[(2 * ceil32(return_data.size)) + _5876 + 256 len 32 * _5884]
                    if _5884 < 1:
                        revert with 0, 17
                    if _5884 - 1 >= _5884:
                        revert with 0, 50
                    _11652 = mem[(32 * _5884 - 1) + (4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = stor4
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, stor4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11670 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_11670]:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor4
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, stor4
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11720 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_11720]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _11765 = mem[64]
                        mem[mem[64] + 36] = stor4
                        mem[mem[64] + 68] = -1
                        _11802 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_11765 + 100] = 32
                        mem[_11765 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        _11859 = mem[_11802]
                        mem[_11765 + 164 len ceil32(mem[_11802])] = mem[_11802 + 32 len ceil32(mem[_11802])]
                        if ceil32(_11859) > _11859:
                            mem[_11859 + _11765 + 164] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[_11765 + 168 len _11859 - 4]
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
                            mem[_11765 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_11765 + 196] == bool(mem[_11765 + 196])
                                if not mem[_11765 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if msg.value < msg.value / 2:
                        revert with 0, 17
                    require ext_code.size(stor4)
                    call stor4.addLiquidityFTM(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), _11652, 0, 0, address(arg2), block.timestamp
        else:
            if not stor2[address(ext_call.return_data[0])][stor4]:
                mem[(2 * ceil32(return_data.size)) + 96] = 2
                mem[(2 * ceil32(return_data.size)) + 128] = stor1
                mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 192] = 0x1550f83600000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 0
                mem[(2 * ceil32(return_data.size)) + 228] = 128
                mem[(2 * ceil32(return_data.size)) + 324] = 2
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
                require ext_code.size(stor4)
                call stor4.0x1550f836 with:
                   value msg.value / 2 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _5871 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                _5879 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                require return_data.size >= _5871 + (32 * _5879) + 32
                mem[(4 * ceil32(return_data.size)) + 224 len 32 * _5879] = mem[(2 * ceil32(return_data.size)) + _5871 + 224 len 32 * _5879]
                if _5879 < 1:
                    revert with 0, 17
                if _5879 - 1 >= _5879:
                    revert with 0, 50
                _11647 = mem[(32 * _5879 - 1) + (4 * ceil32(return_data.size)) + 224]
                if msg.value < msg.value / 2:
                    revert with 0, 17
                mem[0] = stor4
                mem[32] = sha3(address(ext_call.return_data[0]), 2)
                if not stor2[address(ext_call.return_data[0])][stor4]:
                    _11681 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if not mem[_11681]:
                        revert with 0, 50
                    mem[_11681 + 32] = stor1
                    if 1 >= mem[_11681]:
                        revert with 0, 50
                    mem[_11681 + 64] = address(ext_call.return_data[0])
                    mem[_11681 + 96] = 0x1550f83600000000000000000000000000000000000000000000000000000000
                    mem[_11681 + 100] = 0
                    mem[_11681 + 132] = 128
                    mem[_11681 + 228] = mem[_11681]
                    idx = 0
                    s = _11681 + 32
                    t = _11681 + 260
                    while idx < mem[_11681]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_11681 + 164] = this.address
                    mem[_11681 + 196] = block.timestamp
                    require ext_code.size(stor4)
                    call stor4.mem[mem[64] len 4] with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _11681 + (32 * mem[_11681]) + -mem[64] + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17379 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _17399 = mem[_17379]
                    require mem[_17379] <= test266151307()
                    require _17379 + mem[_17379] + 31 < _17379 + return_data.size
                    _17475 = mem[_17379 + mem[_17379]]
                    if mem[_17379 + mem[_17379]] > test266151307():
                        revert with 0, 65
                    if _17379 + ceil32(return_data.size) + ceil32(32 * mem[_17379 + mem[_17379]]) + 1 > test266151307() or ceil32(32 * mem[_17379 + mem[_17379]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _17379 + ceil32(return_data.size) + ceil32(32 * mem[_17379 + mem[_17379]]) + 1
                    mem[_17379 + ceil32(return_data.size)] = _17475
                    require return_data.size >= _17399 + (32 * _17475) + 32
                    mem[_17379 + ceil32(return_data.size) + 32 len 32 * _17475] = mem[_17379 + _17399 + 32 len 32 * _17475]
                    if _17475 < 1:
                        revert with 0, 17
                    if _17475 - 1 >= _17475:
                        revert with 0, 50
                    _22943 = mem[(32 * _17475 - 1) + _17379 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = stor4
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, stor4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _22955 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = stor4
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, stor4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[_22955]:
                        _22979 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_22979]:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor4
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, stor4
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23039 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_23039]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            _23083 = mem[64]
                            mem[mem[64] + 36] = stor4
                            mem[mem[64] + 68] = -1
                            _23091 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                            mem[64] = mem[64] + 164
                            mem[_23083 + 100] = 32
                            mem[_23083 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            _23143 = mem[_23091]
                            mem[_23083 + 164 len ceil32(mem[_23091])] = mem[_23091 + 32 len ceil32(mem[_23091])]
                            if ceil32(_23143) > _23143:
                                mem[_23143 + _23083 + 164] = 0
                            call address(ext_call.return_data[0]) with:
                                 gas gas_remaining wei
                                args mem[_23083 + 168 len _23143 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[_23083 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_23083 + 196] == bool(mem[_23083 + 196])
                                    if not mem[_23083 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(stor4)
                        call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _11647, _22943, 0, 0, address(arg2), block.timestamp
                    else:
                        _22980 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_22980]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _22997 = mem[64]
                        mem[mem[64] + 36] = stor4
                        mem[mem[64] + 68] = -1
                        _23013 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_22997 + 100] = 32
                        mem[_22997 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        _23075 = mem[_23013]
                        mem[_22997 + 164 len ceil32(mem[_23013])] = mem[_23013 + 32 len ceil32(mem[_23013])]
                        if ceil32(_23075) > _23075:
                            mem[_23075 + _22997 + 164] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[_22997 + 168 len _23075 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_22997 + 168] = this.address
                            mem[_22997 + 200] = stor4
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, stor4
                            mem[_22997 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[_22997 + ceil32(return_data.size) + 168] = this.address
                                mem[_22997 + ceil32(return_data.size) + 200] = stor4
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, stor4
                                mem[_22997 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_22997 + (2 * ceil32(return_data.size)) + 200] = stor4
                                mem[_22997 + (2 * ceil32(return_data.size)) + 232] = -1
                                mem[_22997 + (2 * ceil32(return_data.size)) + 164] = 68
                                mem[_22997 + (2 * ceil32(return_data.size)) + 196 len 4] = approve(address arg1, uint256 arg2)
                                mem[_22997 + (2 * ceil32(return_data.size)) + 264] = 32
                                mem[_22997 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                mem[_22997 + (2 * ceil32(return_data.size)) + 328 len 96] = 0, stor4, -1, 0
                                mem[_22997 + (2 * ceil32(return_data.size)) + 396] = 0
                                call address(ext_call.return_data[0]) with:
                                   funct Mask(32, 224, 0, stor4, -1, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, stor4, -1, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_22997 + (2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_22997 + (2 * ceil32(return_data.size)) + 360] == bool(mem[_22997 + (2 * ceil32(return_data.size)) + 360])
                                        if not mem[_22997 + (2 * ceil32(return_data.size)) + 360]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(stor4)
                            call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _11647, _22943, 0, 0, address(arg2), block.timestamp
                        else:
                            mem[_22997 + 164] = return_data.size
                            mem[_22997 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_22997 + 196] == bool(mem[_22997 + 196])
                                if not mem[_22997 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_22997 + ceil32(return_data.size) + 169] = this.address
                            mem[_22997 + ceil32(return_data.size) + 201] = stor4
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, stor4
                            mem[_22997 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(stor4)
                                call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _11647, _22943, 0, 0, address(arg2), block.timestamp
                            else:
                                mem[_22997 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                mem[_22997 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = stor4
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, stor4
                                mem[_22997 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_22997 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = stor4
                                mem[_22997 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = -1
                                mem[_22997 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = 68
                                mem[_22997 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = approve(address arg1, uint256 arg2)
                                mem[_22997 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
                                mem[_22997 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                mem[_22997 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = 0, stor4, -1, 0
                                mem[_22997 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 0
                                call address(ext_call.return_data[0]) with:
                                   funct Mask(32, 224, 0, stor4, -1, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, stor4, -1, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(stor4)
                                    call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _11647, _22943, 0, 0, address(arg2), block.timestamp
                                else:
                                    mem[_22997 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = return_data.size
                                    mem[_22997 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_22997 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_22997 + (4 * ceil32(return_data.size)) + 334] = 32
                                        mem[_22997 + (4 * ceil32(return_data.size)) + 366] = 32
                                        mem[_22997 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                                        revert with memory
                                          from _22997 + (4 * ceil32(return_data.size)) + 330
                                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_22997 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] == bool(mem[_22997 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361])
                                        if not mem[_22997 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361]:
                                            mem[_22997 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_22997 + (4 * ceil32(return_data.size)) + 334] = 32
                                            mem[_22997 + (4 * ceil32(return_data.size)) + 366] = 42
                                            mem[_22997 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                                            mem[_22997 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
                                            revert with memory
                                              from _22997 + (4 * ceil32(return_data.size)) + 330
                                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                    mem[_22997 + (4 * ceil32(return_data.size)) + 334] = address(ext_call.return_data[0])
                                    mem[_22997 + (4 * ceil32(return_data.size)) + 366] = address(ext_call.return_data[0])
                                    mem[_22997 + (4 * ceil32(return_data.size)) + 398] = _11647
                                    mem[_22997 + (4 * ceil32(return_data.size)) + 430] = _22943
                                    mem[_22997 + (4 * ceil32(return_data.size)) + 462] = 0
                                    mem[_22997 + (4 * ceil32(return_data.size)) + 494] = 0
                                    mem[_22997 + (4 * ceil32(return_data.size)) + 526] = arg2
                                    mem[_22997 + (4 * ceil32(return_data.size)) + 558] = block.timestamp
                                    require ext_code.size(stor4)
                                    call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args mem[_22997 + (4 * ceil32(return_data.size)) + 334 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
                else:
                    _11683 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if not mem[_11683]:
                        revert with 0, 50
                    mem[_11683 + 32] = stor1
                    mem[0] = stor4
                    mem[32] = sha3(address(ext_call.return_data[0]), 2)
                    if 1 >= mem[_11683]:
                        revert with 0, 50
                    mem[_11683 + 64] = stor2[address(ext_call.return_data[0])][stor4]
                    if 2 >= mem[_11683]:
                        revert with 0, 50
                    mem[_11683 + 96] = address(ext_call.return_data[0])
                    mem[_11683 + 128] = 0x1550f83600000000000000000000000000000000000000000000000000000000
                    mem[_11683 + 132] = 0
                    mem[_11683 + 164] = 128
                    mem[_11683 + 260] = mem[_11683]
                    idx = 0
                    s = _11683 + 32
                    t = _11683 + 292
                    while idx < mem[_11683]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_11683 + 196] = this.address
                    mem[_11683 + 228] = block.timestamp
                    require ext_code.size(stor4)
                    call stor4.mem[mem[64] len 4] with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _11683 + (32 * mem[_11683]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17380 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _17400 = mem[_17380]
                    require mem[_17380] <= test266151307()
                    require _17380 + mem[_17380] + 31 < _17380 + return_data.size
                    _17476 = mem[_17380 + mem[_17380]]
                    if mem[_17380 + mem[_17380]] > test266151307():
                        revert with 0, 65
                    if _17380 + ceil32(return_data.size) + ceil32(32 * mem[_17380 + mem[_17380]]) + 1 > test266151307() or ceil32(32 * mem[_17380 + mem[_17380]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _17380 + ceil32(return_data.size) + ceil32(32 * mem[_17380 + mem[_17380]]) + 1
                    mem[_17380 + ceil32(return_data.size)] = _17476
                    require return_data.size >= _17400 + (32 * _17476) + 32
                    mem[_17380 + ceil32(return_data.size) + 32 len 32 * _17476] = mem[_17380 + _17400 + 32 len 32 * _17476]
                    if _17476 < 1:
                        revert with 0, 17
                    if _17476 - 1 >= _17476:
                        revert with 0, 50
                    _22944 = mem[(32 * _17476 - 1) + _17380 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = stor4
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, stor4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _22956 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = stor4
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, stor4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[_22956]:
                        _22981 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_22981]:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor4
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, stor4
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23040 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_23040]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            _23085 = mem[64]
                            mem[mem[64] + 36] = stor4
                            mem[mem[64] + 68] = -1
                            _23094 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                            mem[64] = mem[64] + 164
                            mem[_23085 + 100] = 32
                            mem[_23085 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            _23145 = mem[_23094]
                            mem[_23085 + 164 len ceil32(mem[_23094])] = mem[_23094 + 32 len ceil32(mem[_23094])]
                            if ceil32(_23145) > _23145:
                                mem[_23145 + _23085 + 164] = 0
                            call address(ext_call.return_data[0]) with:
                                 gas gas_remaining wei
                                args mem[_23085 + 168 len _23145 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[_23085 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_23085 + 196] == bool(mem[_23085 + 196])
                                    if not mem[_23085 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(stor4)
                        call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _11647, _22944, 0, 0, address(arg2), block.timestamp
                    else:
                        _22982 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_22982]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _23001 = mem[64]
                        mem[mem[64] + 36] = stor4
                        mem[mem[64] + 68] = -1
                        _23018 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_23001 + 100] = 32
                        mem[_23001 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        _23077 = mem[_23018]
                        mem[_23001 + 164 len ceil32(mem[_23018])] = mem[_23018 + 32 len ceil32(mem[_23018])]
                        if ceil32(_23077) > _23077:
                            mem[_23077 + _23001 + 164] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[_23001 + 168 len _23077 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_23001 + 168] = this.address
                            mem[_23001 + 200] = stor4
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, stor4
                            mem[_23001 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[_23001 + ceil32(return_data.size) + 168] = this.address
                                mem[_23001 + ceil32(return_data.size) + 200] = stor4
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, stor4
                                mem[_23001 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_23001 + (2 * ceil32(return_data.size)) + 200] = stor4
                                mem[_23001 + (2 * ceil32(return_data.size)) + 232] = -1
                                mem[_23001 + (2 * ceil32(return_data.size)) + 164] = 68
                                mem[_23001 + (2 * ceil32(return_data.size)) + 196 len 4] = approve(address arg1, uint256 arg2)
                                mem[_23001 + (2 * ceil32(return_data.size)) + 264] = 32
                                mem[_23001 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                mem[_23001 + (2 * ceil32(return_data.size)) + 328 len 96] = 0, stor4, -1, 0
                                mem[_23001 + (2 * ceil32(return_data.size)) + 396] = 0
                                call address(ext_call.return_data[0]) with:
                                   funct Mask(32, 224, 0, stor4, -1, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, stor4, -1, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_23001 + (2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_23001 + (2 * ceil32(return_data.size)) + 360] == bool(mem[_23001 + (2 * ceil32(return_data.size)) + 360])
                                        if not mem[_23001 + (2 * ceil32(return_data.size)) + 360]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(stor4)
                            call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _11647, _22944, 0, 0, address(arg2), block.timestamp
                        else:
                            mem[_23001 + 164] = return_data.size
                            mem[_23001 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_23001 + 196] == bool(mem[_23001 + 196])
                                if not mem[_23001 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_23001 + ceil32(return_data.size) + 169] = this.address
                            mem[_23001 + ceil32(return_data.size) + 201] = stor4
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, stor4
                            mem[_23001 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(stor4)
                                call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _11647, _22944, 0, 0, address(arg2), block.timestamp
                            else:
                                mem[_23001 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                mem[_23001 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = stor4
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, stor4
                                mem[_23001 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_23001 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = stor4
                                mem[_23001 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = -1
                                mem[_23001 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = 68
                                mem[_23001 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = approve(address arg1, uint256 arg2)
                                mem[_23001 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
                                mem[_23001 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                mem[_23001 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = 0, stor4, -1, 0
                                mem[_23001 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 0
                                call address(ext_call.return_data[0]) with:
                                   funct Mask(32, 224, 0, stor4, -1, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, stor4, -1, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(stor4)
                                    call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _11647, _22944, 0, 0, address(arg2), block.timestamp
                                else:
                                    mem[_23001 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = return_data.size
                                    mem[_23001 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_23001 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_23001 + (4 * ceil32(return_data.size)) + 334] = 32
                                        mem[_23001 + (4 * ceil32(return_data.size)) + 366] = 32
                                        mem[_23001 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                                        revert with memory
                                          from _23001 + (4 * ceil32(return_data.size)) + 330
                                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_23001 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] == bool(mem[_23001 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361])
                                        if not mem[_23001 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361]:
                                            mem[_23001 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_23001 + (4 * ceil32(return_data.size)) + 334] = 32
                                            mem[_23001 + (4 * ceil32(return_data.size)) + 366] = 42
                                            mem[_23001 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                                            mem[_23001 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
                                            revert with memory
                                              from _23001 + (4 * ceil32(return_data.size)) + 330
                                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                    mem[_23001 + (4 * ceil32(return_data.size)) + 334] = address(ext_call.return_data[0])
                                    mem[_23001 + (4 * ceil32(return_data.size)) + 366] = address(ext_call.return_data[0])
                                    mem[_23001 + (4 * ceil32(return_data.size)) + 398] = _11647
                                    mem[_23001 + (4 * ceil32(return_data.size)) + 430] = _22944
                                    mem[_23001 + (4 * ceil32(return_data.size)) + 462] = 0
                                    mem[_23001 + (4 * ceil32(return_data.size)) + 494] = 0
                                    mem[_23001 + (4 * ceil32(return_data.size)) + 526] = arg2
                                    mem[_23001 + (4 * ceil32(return_data.size)) + 558] = block.timestamp
                                    require ext_code.size(stor4)
                                    call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args mem[_23001 + (4 * ceil32(return_data.size)) + 334 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
            else:
                mem[(2 * ceil32(return_data.size)) + 96] = 3
                mem[(2 * ceil32(return_data.size)) + 128] = stor1
                mem[(2 * ceil32(return_data.size)) + 160] = stor2[address(ext_call.return_data[0])][stor4]
                mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 224] = 0x1550f83600000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 228] = 0
                mem[(2 * ceil32(return_data.size)) + 260] = 128
                mem[(2 * ceil32(return_data.size)) + 356] = 3
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + 388
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 292] = this.address
                mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(stor4)
                call stor4.0x1550f836 with:
                   value msg.value / 2 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 388 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _5872 = mem[(2 * ceil32(return_data.size)) + 224 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                _5880 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225
                mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                require return_data.size >= _5872 + (32 * _5880) + 32
                mem[(4 * ceil32(return_data.size)) + 256 len 32 * _5880] = mem[(2 * ceil32(return_data.size)) + _5872 + 256 len 32 * _5880]
                if _5880 < 1:
                    revert with 0, 17
                if _5880 - 1 >= _5880:
                    revert with 0, 50
                _11648 = mem[(32 * _5880 - 1) + (4 * ceil32(return_data.size)) + 256]
                if msg.value < msg.value / 2:
                    revert with 0, 17
                mem[0] = stor4
                mem[32] = sha3(address(ext_call.return_data[0]), 2)
                if not stor2[address(ext_call.return_data[0])][stor4]:
                    _11685 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if not mem[_11685]:
                        revert with 0, 50
                    mem[_11685 + 32] = stor1
                    if 1 >= mem[_11685]:
                        revert with 0, 50
                    mem[_11685 + 64] = address(ext_call.return_data[0])
                    mem[_11685 + 96] = 0x1550f83600000000000000000000000000000000000000000000000000000000
                    mem[_11685 + 100] = 0
                    mem[_11685 + 132] = 128
                    mem[_11685 + 228] = mem[_11685]
                    idx = 0
                    s = _11685 + 32
                    t = _11685 + 260
                    while idx < mem[_11685]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_11685 + 164] = this.address
                    mem[_11685 + 196] = block.timestamp
                    require ext_code.size(stor4)
                    call stor4.mem[mem[64] len 4] with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _11685 + (32 * mem[_11685]) + -mem[64] + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17381 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _17401 = mem[_17381]
                    require mem[_17381] <= test266151307()
                    require _17381 + mem[_17381] + 31 < _17381 + return_data.size
                    _17477 = mem[_17381 + mem[_17381]]
                    if mem[_17381 + mem[_17381]] > test266151307():
                        revert with 0, 65
                    if _17381 + ceil32(return_data.size) + ceil32(32 * mem[_17381 + mem[_17381]]) + 1 > test266151307() or ceil32(32 * mem[_17381 + mem[_17381]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _17381 + ceil32(return_data.size) + ceil32(32 * mem[_17381 + mem[_17381]]) + 1
                    mem[_17381 + ceil32(return_data.size)] = _17477
                    require return_data.size >= _17401 + (32 * _17477) + 32
                    mem[_17381 + ceil32(return_data.size) + 32 len 32 * _17477] = mem[_17381 + _17401 + 32 len 32 * _17477]
                    if _17477 < 1:
                        revert with 0, 17
                    if _17477 - 1 >= _17477:
                        revert with 0, 50
                    _22945 = mem[(32 * _17477 - 1) + _17381 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = stor4
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, stor4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _22957 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = stor4
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, stor4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[_22957]:
                        _22983 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_22983]:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor4
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, stor4
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23041 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_23041]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            _23087 = mem[64]
                            mem[mem[64] + 36] = stor4
                            mem[mem[64] + 68] = -1
                            _23097 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                            mem[64] = mem[64] + 164
                            mem[_23087 + 100] = 32
                            mem[_23087 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            _23147 = mem[_23097]
                            mem[_23087 + 164 len ceil32(mem[_23097])] = mem[_23097 + 32 len ceil32(mem[_23097])]
                            if ceil32(_23147) > _23147:
                                mem[_23147 + _23087 + 164] = 0
                            call address(ext_call.return_data[0]) with:
                                 gas gas_remaining wei
                                args mem[_23087 + 168 len _23147 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[_23087 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_23087 + 196] == bool(mem[_23087 + 196])
                                    if not mem[_23087 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(stor4)
                        call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _11648, _22945, 0, 0, address(arg2), block.timestamp
                    else:
                        _22984 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_22984]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _23005 = mem[64]
                        mem[mem[64] + 36] = stor4
                        mem[mem[64] + 68] = -1
                        _23023 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_23005 + 100] = 32
                        mem[_23005 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        _23079 = mem[_23023]
                        mem[_23005 + 164 len ceil32(mem[_23023])] = mem[_23023 + 32 len ceil32(mem[_23023])]
                        if ceil32(_23079) > _23079:
                            mem[_23079 + _23005 + 164] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[_23005 + 168 len _23079 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_23005 + 168] = this.address
                            mem[_23005 + 200] = stor4
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, stor4
                            mem[_23005 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[_23005 + ceil32(return_data.size) + 168] = this.address
                                mem[_23005 + ceil32(return_data.size) + 200] = stor4
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, stor4
                                mem[_23005 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_23005 + (2 * ceil32(return_data.size)) + 200] = stor4
                                mem[_23005 + (2 * ceil32(return_data.size)) + 232] = -1
                                mem[_23005 + (2 * ceil32(return_data.size)) + 164] = 68
                                mem[_23005 + (2 * ceil32(return_data.size)) + 196 len 4] = approve(address arg1, uint256 arg2)
                                mem[_23005 + (2 * ceil32(return_data.size)) + 264] = 32
                                mem[_23005 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                mem[_23005 + (2 * ceil32(return_data.size)) + 328 len 96] = 0, stor4, -1, 0
                                mem[_23005 + (2 * ceil32(return_data.size)) + 396] = 0
                                call address(ext_call.return_data[0]) with:
                                   funct Mask(32, 224, 0, stor4, -1, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, stor4, -1, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_23005 + (2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_23005 + (2 * ceil32(return_data.size)) + 360] == bool(mem[_23005 + (2 * ceil32(return_data.size)) + 360])
                                        if not mem[_23005 + (2 * ceil32(return_data.size)) + 360]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(stor4)
                            call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _11648, _22945, 0, 0, address(arg2), block.timestamp
                        else:
                            mem[_23005 + 164] = return_data.size
                            mem[_23005 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_23005 + 196] == bool(mem[_23005 + 196])
                                if not mem[_23005 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_23005 + ceil32(return_data.size) + 169] = this.address
                            mem[_23005 + ceil32(return_data.size) + 201] = stor4
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, stor4
                            mem[_23005 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(stor4)
                                call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _11648, _22945, 0, 0, address(arg2), block.timestamp
                            else:
                                mem[_23005 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                mem[_23005 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = stor4
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, stor4
                                mem[_23005 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_23005 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = stor4
                                mem[_23005 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = -1
                                mem[_23005 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = 68
                                mem[_23005 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = approve(address arg1, uint256 arg2)
                                mem[_23005 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
                                mem[_23005 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                mem[_23005 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = 0, stor4, -1, 0
                                mem[_23005 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 0
                                call address(ext_call.return_data[0]) with:
                                   funct Mask(32, 224, 0, stor4, -1, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, stor4, -1, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(stor4)
                                    call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _11648, _22945, 0, 0, address(arg2), block.timestamp
                                else:
                                    mem[_23005 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = return_data.size
                                    mem[_23005 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_23005 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_23005 + (4 * ceil32(return_data.size)) + 334] = 32
                                        mem[_23005 + (4 * ceil32(return_data.size)) + 366] = 32
                                        mem[_23005 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                                        revert with memory
                                          from _23005 + (4 * ceil32(return_data.size)) + 330
                                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_23005 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] == bool(mem[_23005 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361])
                                        if not mem[_23005 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361]:
                                            mem[_23005 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_23005 + (4 * ceil32(return_data.size)) + 334] = 32
                                            mem[_23005 + (4 * ceil32(return_data.size)) + 366] = 42
                                            mem[_23005 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                                            mem[_23005 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
                                            revert with memory
                                              from _23005 + (4 * ceil32(return_data.size)) + 330
                                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                    mem[_23005 + (4 * ceil32(return_data.size)) + 334] = address(ext_call.return_data[0])
                                    mem[_23005 + (4 * ceil32(return_data.size)) + 366] = address(ext_call.return_data[0])
                                    mem[_23005 + (4 * ceil32(return_data.size)) + 398] = _11648
                                    mem[_23005 + (4 * ceil32(return_data.size)) + 430] = _22945
                                    mem[_23005 + (4 * ceil32(return_data.size)) + 462] = 0
                                    mem[_23005 + (4 * ceil32(return_data.size)) + 494] = 0
                                    mem[_23005 + (4 * ceil32(return_data.size)) + 526] = arg2
                                    mem[_23005 + (4 * ceil32(return_data.size)) + 558] = block.timestamp
                                    require ext_code.size(stor4)
                                    call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args mem[_23005 + (4 * ceil32(return_data.size)) + 334 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
                else:
                    _11687 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if not mem[_11687]:
                        revert with 0, 50
                    mem[_11687 + 32] = stor1
                    mem[0] = stor4
                    mem[32] = sha3(address(ext_call.return_data[0]), 2)
                    if 1 >= mem[_11687]:
                        revert with 0, 50
                    mem[_11687 + 64] = stor2[address(ext_call.return_data[0])][stor4]
                    if 2 >= mem[_11687]:
                        revert with 0, 50
                    mem[_11687 + 96] = address(ext_call.return_data[0])
                    mem[_11687 + 128] = 0x1550f83600000000000000000000000000000000000000000000000000000000
                    mem[_11687 + 132] = 0
                    mem[_11687 + 164] = 128
                    mem[_11687 + 260] = mem[_11687]
                    idx = 0
                    s = _11687 + 32
                    t = _11687 + 292
                    while idx < mem[_11687]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_11687 + 196] = this.address
                    mem[_11687 + 228] = block.timestamp
                    require ext_code.size(stor4)
                    call stor4.mem[mem[64] len 4] with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _11687 + (32 * mem[_11687]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17382 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _17402 = mem[_17382]
                    require mem[_17382] <= test266151307()
                    require _17382 + mem[_17382] + 31 < _17382 + return_data.size
                    _17478 = mem[_17382 + mem[_17382]]
                    if mem[_17382 + mem[_17382]] > test266151307():
                        revert with 0, 65
                    if _17382 + ceil32(return_data.size) + ceil32(32 * mem[_17382 + mem[_17382]]) + 1 > test266151307() or ceil32(32 * mem[_17382 + mem[_17382]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _17382 + ceil32(return_data.size) + ceil32(32 * mem[_17382 + mem[_17382]]) + 1
                    mem[_17382 + ceil32(return_data.size)] = _17478
                    require return_data.size >= _17402 + (32 * _17478) + 32
                    mem[_17382 + ceil32(return_data.size) + 32 len 32 * _17478] = mem[_17382 + _17402 + 32 len 32 * _17478]
                    if _17478 < 1:
                        revert with 0, 17
                    if _17478 - 1 >= _17478:
                        revert with 0, 50
                    _22946 = mem[(32 * _17478 - 1) + _17382 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = stor4
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, stor4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _22958 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = stor4
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, stor4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[_22958]:
                        _22985 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_22985]:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = stor4
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, stor4
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _23042 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_23042]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            _23089 = mem[64]
                            mem[mem[64] + 36] = stor4
                            mem[mem[64] + 68] = -1
                            _23100 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                            mem[64] = mem[64] + 164
                            mem[_23089 + 100] = 32
                            mem[_23089 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            _23149 = mem[_23100]
                            mem[_23089 + 164 len ceil32(mem[_23100])] = mem[_23100 + 32 len ceil32(mem[_23100])]
                            if ceil32(_23149) > _23149:
                                mem[_23149 + _23089 + 164] = 0
                            call address(ext_call.return_data[0]) with:
                                 gas gas_remaining wei
                                args mem[_23089 + 168 len _23149 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[_23089 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_23089 + 196] == bool(mem[_23089 + 196])
                                    if not mem[_23089 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(stor4)
                        call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _11648, _22946, 0, 0, address(arg2), block.timestamp
                    else:
                        _22986 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_22986]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _23009 = mem[64]
                        mem[mem[64] + 36] = stor4
                        mem[mem[64] + 68] = -1
                        _23028 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_23009 + 100] = 32
                        mem[_23009 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        _23081 = mem[_23028]
                        mem[_23009 + 164 len ceil32(mem[_23028])] = mem[_23028 + 32 len ceil32(mem[_23028])]
                        if ceil32(_23081) > _23081:
                            mem[_23081 + _23009 + 164] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[_23009 + 168 len _23081 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_23009 + 168] = this.address
                            mem[_23009 + 200] = stor4
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, stor4
                            mem[_23009 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[_23009 + ceil32(return_data.size) + 168] = this.address
                                mem[_23009 + ceil32(return_data.size) + 200] = stor4
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, stor4
                                mem[_23009 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_23009 + (2 * ceil32(return_data.size)) + 200] = stor4
                                mem[_23009 + (2 * ceil32(return_data.size)) + 232] = -1
                                mem[_23009 + (2 * ceil32(return_data.size)) + 164] = 68
                                mem[_23009 + (2 * ceil32(return_data.size)) + 196 len 4] = approve(address arg1, uint256 arg2)
                                mem[_23009 + (2 * ceil32(return_data.size)) + 264] = 32
                                mem[_23009 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                mem[_23009 + (2 * ceil32(return_data.size)) + 328 len 96] = 0, stor4, -1, 0
                                mem[_23009 + (2 * ceil32(return_data.size)) + 396] = 0
                                call address(ext_call.return_data[0]) with:
                                   funct Mask(32, 224, 0, stor4, -1, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, stor4, -1, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_23009 + (2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_23009 + (2 * ceil32(return_data.size)) + 360] == bool(mem[_23009 + (2 * ceil32(return_data.size)) + 360])
                                        if not mem[_23009 + (2 * ceil32(return_data.size)) + 360]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(stor4)
                            call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _11648, _22946, 0, 0, address(arg2), block.timestamp
                        else:
                            mem[_23009 + 164] = return_data.size
                            mem[_23009 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_23009 + 196] == bool(mem[_23009 + 196])
                                if not mem[_23009 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_23009 + ceil32(return_data.size) + 169] = this.address
                            mem[_23009 + ceil32(return_data.size) + 201] = stor4
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, stor4
                            mem[_23009 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(stor4)
                                call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _11648, _22946, 0, 0, address(arg2), block.timestamp
                            else:
                                mem[_23009 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                mem[_23009 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = stor4
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, stor4
                                mem[_23009 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_23009 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = stor4
                                mem[_23009 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = -1
                                mem[_23009 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = 68
                                mem[_23009 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = approve(address arg1, uint256 arg2)
                                mem[_23009 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
                                mem[_23009 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                mem[_23009 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = 0, stor4, -1, 0
                                mem[_23009 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 0
                                call address(ext_call.return_data[0]) with:
                                   funct Mask(32, 224, 0, stor4, -1, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, stor4, -1, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    require ext_code.size(stor4)
                                    call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _11648, _22946, 0, 0, address(arg2), block.timestamp
                                else:
                                    mem[_23009 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = return_data.size
                                    mem[_23009 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_23009 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_23009 + (4 * ceil32(return_data.size)) + 334] = 32
                                        mem[_23009 + (4 * ceil32(return_data.size)) + 366] = 32
                                        mem[_23009 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                                        revert with memory
                                          from _23009 + (4 * ceil32(return_data.size)) + 330
                                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_23009 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] == bool(mem[_23009 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361])
                                        if not mem[_23009 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361]:
                                            mem[_23009 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_23009 + (4 * ceil32(return_data.size)) + 334] = 32
                                            mem[_23009 + (4 * ceil32(return_data.size)) + 366] = 42
                                            mem[_23009 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                                            mem[_23009 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
                                            revert with memory
                                              from _23009 + (4 * ceil32(return_data.size)) + 330
                                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                    mem[_23009 + (4 * ceil32(return_data.size)) + 334] = address(ext_call.return_data[0])
                                    mem[_23009 + (4 * ceil32(return_data.size)) + 366] = address(ext_call.return_data[0])
                                    mem[_23009 + (4 * ceil32(return_data.size)) + 398] = _11648
                                    mem[_23009 + (4 * ceil32(return_data.size)) + 430] = _22946
                                    mem[_23009 + (4 * ceil32(return_data.size)) + 462] = 0
                                    mem[_23009 + (4 * ceil32(return_data.size)) + 494] = 0
                                    mem[_23009 + (4 * ceil32(return_data.size)) + 526] = arg2
                                    mem[_23009 + (4 * ceil32(return_data.size)) + 558] = block.timestamp
                                    require ext_code.size(stor4)
                                    call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                         gas gas_remaining wei
                                        args mem[_23009 + (4 * ceil32(return_data.size)) + 334 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}



}
