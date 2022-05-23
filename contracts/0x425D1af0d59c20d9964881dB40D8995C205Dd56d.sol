contract main {




// =====================  Runtime code  =====================


#
#  - sub_0c37e3ba(?)
#  - sub_1042923b(?)
#  - sub_1b71afbd(?)
#  - sub_5cc7647c(?)
#  - sub_6ceaad4d(?)
#  - sub_88f61f9f(?)
#  - sub_cee6202c(?)
#  - _fallback()
#
address owner;
address stor1;
mapping of uint8 stor2;

function owner() {
    return owner
}

function sub_9416cbc6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_88fbe419(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = 1
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
        staticcall arg1.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_c3553167(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    mem[100] = this.address
    mem[132] = address(arg3)
    require ext_code.size(address(arg1))
    staticcall address(arg1).allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, address(arg3)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = stor1
        mem[ceil32(return_data.size) + 160] = address(arg1)
        mem[ceil32(return_data.size) + 196] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = 0
        mem[(2 * ceil32(return_data.size)) + 228] = 128
        mem[(2 * ceil32(return_data.size)) + 324] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = (2 * ceil32(return_data.size)) + 356
        while idx < mem[ceil32(return_data.size) + 96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 260] = this.address
        mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
        require ext_code.size(address(arg2))
        call address(arg2).mem[mem[64] len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _893 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _906 = mem[_893]
        _915 = mem[64]
        mem[64] = mem[64] + 64
        mem[_915] = 30
        mem[_915 + 32] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > _906:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if _906 < ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(address(arg3))
        call address(arg3).deposit(uint256 arg1) with:
             gas gas_remaining wei
            args (_906 - ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1013 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1022 = mem[_1013]
        _1031 = mem[64]
        mem[mem[64] + 36] = address(arg4)
        mem[mem[64] + 68] = _1022
        _1036 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = transfer(address arg1, uint256 arg2)
        mem[64] = mem[64] + 164
        mem[_1031 + 100] = 32
        mem[_1031 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg3)):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(arg3)):
            revert with 0, 'Address: call to non-contract'
        _1083 = mem[_1036]
        mem[_1031 + 164 len ceil32(mem[_1036])] = mem[_1036 + 32 len ceil32(mem[_1036])]
        if ceil32(_1083) > _1083:
            mem[_1083 + _1031 + 164] = 0
        call address(arg3) with:
             gas gas_remaining wei
            args mem[_1031 + 168 len _1083 - 4]
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
            mem[_1031 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_1031 + 196] == bool(mem[_1031 + 196])
                if not mem[_1031 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 100] = this.address
        mem[ceil32(return_data.size) + 132] = address(arg3)
        require ext_code.size(address(arg1))
        staticcall address(arg1).allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args this.address, address(arg3)
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 132] = address(arg3)
        mem[(2 * ceil32(return_data.size)) + 164] = -1
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg3) << 64
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg1)):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(arg1)):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, -1, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call address(arg1) with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), address(arg3) << 64 == bool(uint32(this.address), address(arg3) << 64)
                if not uint32(this.address), address(arg3) << 64:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(2 * ceil32(return_data.size)) + 260] = 2
            mem[(2 * ceil32(return_data.size)) + 292] = stor1
            mem[(2 * ceil32(return_data.size)) + 324] = address(arg1)
            mem[(2 * ceil32(return_data.size)) + 360] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 356] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 360] = 0
            mem[(4 * ceil32(return_data.size)) + 392] = 128
            mem[(4 * ceil32(return_data.size)) + 488] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 292
            t = (4 * ceil32(return_data.size)) + 520
            while idx < mem[(2 * ceil32(return_data.size)) + 260]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 424] = this.address
            mem[(4 * ceil32(return_data.size)) + 456] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 488 len (32 * mem[(2 * ceil32(return_data.size)) + 260]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(arg1))
            staticcall address(arg1).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 356] = 30
            mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] > ext_call.return_data[0]:
                mem[(4 * ceil32(return_data.size)) + 420] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 424] = 32
                mem[(4 * ceil32(return_data.size)) + 456] = 30
                mem[(4 * ceil32(return_data.size)) + 488] = 'SafeMath: subtraction overflow'
                mem[(4 * ceil32(return_data.size)) + 518] = 0
                revert with memory
                  from (4 * ceil32(return_data.size)) + 420
                   len (7 * ceil32(return_data.size)) + 100
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(address(arg3))
            call address(arg3).deposit(uint256 arg1) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 424] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(8 * ceil32(return_data.size)) + 456] = address(arg4)
            mem[(8 * ceil32(return_data.size)) + 488] = ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 420] = 68
            mem[(8 * ceil32(return_data.size)) + 452 len 4] = transfer(address arg1, uint256 arg2)
            mem[(8 * ceil32(return_data.size)) + 520] = 32
            mem[(8 * ceil32(return_data.size)) + 552] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg3)):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(arg3)):
                revert with 0, 'Address: call to non-contract'
            mem[(8 * ceil32(return_data.size)) + 584 len 96] = 0, address(arg4), ext_call.return_data[0], 0
            mem[(8 * ceil32(return_data.size)) + 652] = 0
            call address(arg3) with:
               funct Mask(32, 224, 0, address(arg4), ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(arg4), ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), address(arg3) << 64 == bool(uint32(this.address), address(arg3) << 64)
                    if not uint32(this.address), address(arg3) << 64:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(8 * ceil32(return_data.size)) + 616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(8 * ceil32(return_data.size)) + 616] == bool(mem[(8 * ceil32(return_data.size)) + 616])
                    if not mem[(8 * ceil32(return_data.size)) + 616]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 2
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = stor1
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 128
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                while idx < mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = this.address
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = block.timestamp
                require ext_code.size(address(arg2))
                call address(arg2).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 30
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(address(arg3))
                call address(arg3).deposit(uint256 arg1) with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg4)
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 68
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4] = transfer(address arg1, uint256 arg2)
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 32
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 96] = 0, address(arg4), ext_call.return_data[0], 0
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0
                call address(arg3) with:
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(arg4), ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(this.address), address(arg3) << 64 == bool(uint32(this.address), address(arg3) << 64)
                        if not uint32(this.address), address(arg3) << 64:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 617])
                        if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 617]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 2
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = stor1
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 128
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                while idx < mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = this.address
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = block.timestamp
                require ext_code.size(address(arg2))
                call address(arg2).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(arg1))
                staticcall address(arg1).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 30
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 30
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 'SafeMath: subtraction overflow'
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 519] = 0
                    revert with memory
                      from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
                       len (7 * ceil32(return_data.size)) + 100
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(address(arg3))
                call address(arg3).deposit(uint256 arg1) with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = address(arg4)
                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 68
                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4] = transfer(address arg1, uint256 arg2)
                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 32
                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 96] = 0, address(arg4), ext_call.return_data[0], 0
                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 0
                call address(arg3) with:
                   funct Mask(32, 224, 0, address(arg4), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(arg4), ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(this.address), address(arg3) << 64 == bool(uint32(this.address), address(arg3) << 64)
                        if not uint32(this.address), address(arg3) << 64:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(12 * ceil32(return_data.size)) + 686 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617])
                        if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 617]:
                            revert with 0, 
                                        'SafeERC20: ERC20 operation did not succeed',
                                        mem[(12 * ceil32(return_data.size)) + 718 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function sub_35e8b7d5(?) payable {
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
    mem[(2 * ceil32(return_data.size)) + 96] = 26
    mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
    mem[(2 * ceil32(return_data.size)) + 160] = 2
    mem[(2 * ceil32(return_data.size)) + 192] = stor1
    mem[(2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 260] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 260] = 0
    mem[(4 * ceil32(return_data.size)) + 292] = 128
    mem[(4 * ceil32(return_data.size)) + 388] = 2
    if stor1 == address(ext_call.return_data[0]):
        idx = 0
        s = (2 * ceil32(return_data.size)) + 192
        t = (4 * ceil32(return_data.size)) + 420
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 324] = this.address
        mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp
        require ext_code.size(address(arg2))
        call address(arg2).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value / 2 wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 260] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(6 * ceil32(return_data.size)) + 256] = 30
        mem[(6 * ceil32(return_data.size)) + 288] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        mem[(6 * ceil32(return_data.size)) + 324] = this.address
        mem[(6 * ceil32(return_data.size)) + 356] = address(arg2)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args this.address, address(arg2)
        mem[(6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            mem[(7 * ceil32(return_data.size)) + 324] = this.address
            mem[(7 * ceil32(return_data.size)) + 356] = address(arg2)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args this.address, address(arg2)
            mem[(7 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[(8 * ceil32(return_data.size)) + 356] = address(arg2)
            mem[(8 * ceil32(return_data.size)) + 388] = -1
            mem[(8 * ceil32(return_data.size)) + 320] = 68
            mem[(8 * ceil32(return_data.size)) + 352 len 4] = approve(address arg1, uint256 arg2)
            mem[(8 * ceil32(return_data.size)) + 420] = 32
            mem[(8 * ceil32(return_data.size)) + 452] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[(8 * ceil32(return_data.size)) + 484 len 96] = 0, address(arg2), -1, 0
            mem[(8 * ceil32(return_data.size)) + 552] = 0
            call address(ext_call.return_data[0]) with:
               funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
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
                mem[(8 * ceil32(return_data.size)) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(8 * ceil32(return_data.size)) + 516] == bool(mem[(8 * ceil32(return_data.size)) + 516])
                    if not mem[(8 * ceil32(return_data.size)) + 516]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if msg.value / 2 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if msg.value < msg.value / 2:
            revert with 0, 17
        require ext_code.size(address(arg2))
        if not stor2[address(arg2)]:
            call address(arg2).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value msg.value - (msg.value / 2) wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), 0, 0, 0, address(arg3), block.timestamp
        else:
            call address(arg2).addLiquidityFTM(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value msg.value - (msg.value / 2) wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), 0, 0, 0, address(arg3), block.timestamp
    else:
        if stor1 == ext_call.return_data[12 len 20]:
            idx = 0
            s = (2 * ceil32(return_data.size)) + 192
            t = (4 * ceil32(return_data.size)) + 420
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 324] = this.address
            mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value / 2 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 260] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 256] = 30
            mem[(6 * ceil32(return_data.size)) + 288] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            mem[(6 * ceil32(return_data.size)) + 324] = this.address
            mem[(6 * ceil32(return_data.size)) + 356] = address(arg2)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args this.address, address(arg2)
            mem[(6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                mem[(7 * ceil32(return_data.size)) + 324] = this.address
                mem[(7 * ceil32(return_data.size)) + 356] = address(arg2)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args this.address, address(arg2)
                mem[(7 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[(8 * ceil32(return_data.size)) + 356] = address(arg2)
                mem[(8 * ceil32(return_data.size)) + 388] = -1
                mem[(8 * ceil32(return_data.size)) + 320] = 68
                mem[(8 * ceil32(return_data.size)) + 352 len 4] = approve(address arg1, uint256 arg2)
                mem[(8 * ceil32(return_data.size)) + 420] = 32
                mem[(8 * ceil32(return_data.size)) + 452] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[(8 * ceil32(return_data.size)) + 484 len 96] = 0, address(arg2), -1, 0
                mem[(8 * ceil32(return_data.size)) + 552] = 0
                call address(ext_call.return_data[0]) with:
                   funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
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
                    mem[(8 * ceil32(return_data.size)) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(8 * ceil32(return_data.size)) + 516] == bool(mem[(8 * ceil32(return_data.size)) + 516])
                        if not mem[(8 * ceil32(return_data.size)) + 516]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if msg.value / 2 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if msg.value < msg.value / 2:
                revert with 0, 17
            require ext_code.size(address(arg2))
            if not stor2[address(arg2)]:
                call address(arg2).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value msg.value - (msg.value / 2) wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), 0, 0, 0, address(arg3), block.timestamp
            else:
                call address(arg2).addLiquidityFTM(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value msg.value - (msg.value / 2) wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), 0, 0, 0, address(arg3), block.timestamp
        else:
            idx = 0
            s = (2 * ceil32(return_data.size)) + 192
            t = (4 * ceil32(return_data.size)) + 420
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 324] = this.address
            mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value / 2 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 260] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 256] = 30
            mem[(6 * ceil32(return_data.size)) + 288] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            mem[(6 * ceil32(return_data.size)) + 320] = 30
            mem[(6 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
            if msg.value / 2 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if msg.value < msg.value / 2:
                revert with 0, 17
            mem[(6 * ceil32(return_data.size)) + 384] = 2
            mem[(6 * ceil32(return_data.size)) + 416] = stor1
            mem[(6 * ceil32(return_data.size)) + 448] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 484] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(7 * ceil32(return_data.size)) + 480] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 484] = 0
            mem[(7 * ceil32(return_data.size)) + 516] = 128
            mem[(7 * ceil32(return_data.size)) + 612] = 2
            idx = 0
            s = (6 * ceil32(return_data.size)) + 416
            t = (7 * ceil32(return_data.size)) + 644
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 548] = this.address
            mem[(7 * ceil32(return_data.size)) + 580] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (msg.value / 2) wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 644 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 484] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(7 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(8 * ceil32(return_data.size)) + 480] = 30
            mem[(8 * ceil32(return_data.size)) + 512] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            mem[(8 * ceil32(return_data.size)) + 548] = this.address
            mem[(8 * ceil32(return_data.size)) + 580] = address(arg2)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args this.address, address(arg2)
            mem[(8 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(10 * ceil32(return_data.size)) + 548] = this.address
            mem[(10 * ceil32(return_data.size)) + 580] = address(arg2)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args this.address, address(arg2)
            mem[(10 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    mem[(11 * ceil32(return_data.size)) + 548] = this.address
                    mem[(11 * ceil32(return_data.size)) + 580] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[(11 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[(12 * ceil32(return_data.size)) + 580] = address(arg2)
                    mem[(12 * ceil32(return_data.size)) + 612] = -1
                    mem[(12 * ceil32(return_data.size)) + 544] = 68
                    mem[(12 * ceil32(return_data.size)) + 576 len 4] = approve(address arg1, uint256 arg2)
                    mem[(12 * ceil32(return_data.size)) + 644] = 32
                    mem[(12 * ceil32(return_data.size)) + 676] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(12 * ceil32(return_data.size)) + 708 len 96] = 0, address(arg2), -1, 0
                    mem[(12 * ceil32(return_data.size)) + 776] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
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
                        mem[(12 * ceil32(return_data.size)) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(12 * ceil32(return_data.size)) + 740] == bool(mem[(12 * ceil32(return_data.size)) + 740])
                            if not mem[(12 * ceil32(return_data.size)) + 740]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(arg2))
                call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), 0, 0, 0, 0, address(arg3), block.timestamp
            else:
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[(11 * ceil32(return_data.size)) + 580] = address(arg2)
                mem[(11 * ceil32(return_data.size)) + 612] = -1
                mem[(11 * ceil32(return_data.size)) + 544] = 68
                mem[(11 * ceil32(return_data.size)) + 576 len 4] = approve(address arg1, uint256 arg2)
                mem[(11 * ceil32(return_data.size)) + 644] = 32
                mem[(11 * ceil32(return_data.size)) + 676] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[(11 * ceil32(return_data.size)) + 708 len 96] = 0, address(arg2), -1, 0
                mem[(11 * ceil32(return_data.size)) + 776] = 0
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
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
                    mem[(11 * ceil32(return_data.size)) + 712] = this.address
                    mem[(11 * ceil32(return_data.size)) + 744] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[(11 * ceil32(return_data.size)) + 708] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        mem[(12 * ceil32(return_data.size)) + 712] = this.address
                        mem[(12 * ceil32(return_data.size)) + 744] = address(arg2)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(arg2)
                        mem[(12 * ceil32(return_data.size)) + 708] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(14 * ceil32(return_data.size)) + 744] = address(arg2)
                        mem[(14 * ceil32(return_data.size)) + 776] = -1
                        mem[(14 * ceil32(return_data.size)) + 708] = 68
                        mem[(14 * ceil32(return_data.size)) + 740 len 4] = approve(address arg1, uint256 arg2)
                        mem[(14 * ceil32(return_data.size)) + 808] = 32
                        mem[(14 * ceil32(return_data.size)) + 840] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[(14 * ceil32(return_data.size)) + 872 len 96] = 0, address(arg2), -1, 0
                        mem[(14 * ceil32(return_data.size)) + 940] = 0
                        call address(ext_call.return_data[0]) with:
                           funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
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
                            mem[(14 * ceil32(return_data.size)) + 904 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(14 * ceil32(return_data.size)) + 904] == bool(mem[(14 * ceil32(return_data.size)) + 904])
                                if not mem[(14 * ceil32(return_data.size)) + 904]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg2))
                    call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), 0, 0, 0, 0, address(arg3), block.timestamp
                else:
                    mem[(11 * ceil32(return_data.size)) + 708] = return_data.size
                    mem[(11 * ceil32(return_data.size)) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(11 * ceil32(return_data.size)) + 740] == bool(mem[(11 * ceil32(return_data.size)) + 740])
                        if not mem[(11 * ceil32(return_data.size)) + 740]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 713] = this.address
                    mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 745] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 709] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(address(arg2))
                        call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), 0, 0, 0, 0, address(arg3), block.timestamp
                    else:
                        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 713] = this.address
                        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 745] = address(arg2)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(arg2)
                        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 709] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(14 * ceil32(return_data.size)) + ceil32(return_data.size) + 745] = address(arg2)
                        mem[(14 * ceil32(return_data.size)) + ceil32(return_data.size) + 777] = -1
                        mem[(14 * ceil32(return_data.size)) + ceil32(return_data.size) + 709] = 68
                        mem[(14 * ceil32(return_data.size)) + ceil32(return_data.size) + 741 len 4] = approve(address arg1, uint256 arg2)
                        mem[(14 * ceil32(return_data.size)) + ceil32(return_data.size) + 809] = 32
                        mem[(14 * ceil32(return_data.size)) + ceil32(return_data.size) + 841] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[(14 * ceil32(return_data.size)) + ceil32(return_data.size) + 873 len 96] = 0, address(arg2), -1, 0
                        mem[(14 * ceil32(return_data.size)) + ceil32(return_data.size) + 941] = 0
                        call address(ext_call.return_data[0]) with:
                           funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
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
                            require ext_code.size(address(arg2))
                            call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), 0, 0, 0, 0, address(arg3), block.timestamp
                        else:
                            mem[(14 * ceil32(return_data.size)) + ceil32(return_data.size) + 873] = return_data.size
                            mem[(14 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(16 * ceil32(return_data.size)) + 874] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(16 * ceil32(return_data.size)) + 878] = 32
                                mem[(16 * ceil32(return_data.size)) + 910] = 32
                                mem[(16 * ceil32(return_data.size)) + 942] = 'SafeERC20: low-level call failed'
                                revert with memory
                                  from (16 * ceil32(return_data.size)) + 874
                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(14 * ceil32(return_data.size)) + ceil32(return_data.size) + 905] == bool(mem[(14 * ceil32(return_data.size)) + ceil32(return_data.size) + 905])
                                if not mem[(14 * ceil32(return_data.size)) + ceil32(return_data.size) + 905]:
                                    mem[(16 * ceil32(return_data.size)) + 874] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(16 * ceil32(return_data.size)) + 878] = 32
                                    mem[(16 * ceil32(return_data.size)) + 910] = 42
                                    mem[(16 * ceil32(return_data.size)) + 942] = 'SafeERC20: ERC20 operation did n'
                                    mem[(16 * ceil32(return_data.size)) + 974] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                    revert with memory
                                      from (16 * ceil32(return_data.size)) + 874
                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            mem[(16 * ceil32(return_data.size)) + 878] = address(ext_call.return_data[0])
                            mem[(16 * ceil32(return_data.size)) + 910] = address(ext_call.return_data[0])
                            mem[(16 * ceil32(return_data.size)) + 942] = 0
                            mem[(16 * ceil32(return_data.size)) + 974] = 0
                            mem[(16 * ceil32(return_data.size)) + 1006] = 0
                            mem[(16 * ceil32(return_data.size)) + 1038] = 0
                            mem[(16 * ceil32(return_data.size)) + 1070] = address(arg3)
                            mem[(16 * ceil32(return_data.size)) + 1102] = block.timestamp
                            require ext_code.size(address(arg2))
                            call address(arg2).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args mem[(16 * ceil32(return_data.size)) + 878 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}



}
