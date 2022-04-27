contract main {




// =====================  Runtime code  =====================


#
#  - sub_1042923b(?)
#  - sub_1b71afbd(?)
#  - sub_57e134d9(?)
#  - sub_5cc7647c(?)
#  - sub_6ceaad4d(?)
#  - sub_88f61f9f(?)
#  - sub_89fecbd5(?)
#  - sub_ba2ebf96(?)
#  - sub_cee6202c(?)
#  - _fallback()
#
address owner;
address stor1;
mapping of address stor2;
mapping of uint8 stor3;

function owner() {
    return owner
}

function sub_9416cbc6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_88fbe419(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 1
}

function sub_5424888b(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)][address(arg2)] = address(arg3)
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
        staticcall arg1.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_03f59ea4(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    mem[100] = this.address
    mem[132] = address(arg3)
    require ext_code.size(address(arg1))
    staticcall address(arg1).allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args this.address, address(arg3)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[0] = address(arg2)
        mem[32] = sha3(address(arg1), 2)
        if not stor2[address(arg1)][address(arg2)]:
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = stor1
            mem[ceil32(return_data.size) + 160] = address(arg1)
            mem[ceil32(return_data.size) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = 0
            mem[ceil32(return_data.size) + 228] = 128
            mem[ceil32(return_data.size) + 324] = 2
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 260] = this.address
            mem[ceil32(return_data.size) + 292] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _1642 = mem[ceil32(return_data.size) + 192 len 4], 0
            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
            _1648 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                revert with 0, 65
            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
            require return_data.size >= _1642 + (32 * _1648) + 32
            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1648] = mem[ceil32(return_data.size) + _1642 + 224 len 32 * _1648]
            if _1648 < 1:
                revert with 0, 17
            if _1648 - 1 >= _1648:
                revert with 0, 50
            require ext_code.size(address(arg3))
            call address(arg3).deposit(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[(32 * _1648 - 1) + (2 * ceil32(return_data.size)) + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3350 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3352 = mem[_3350]
            _3386 = mem[64]
            mem[mem[64] + 36] = address(arg4)
            mem[mem[64] + 68] = _3352
            _3388 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
            mem[64] = mem[64] + 164
            mem[_3386 + 100] = 32
            mem[_3386 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg3)):
                revert with 0, 'Address: call to non-contract'
            _3482 = mem[_3388]
            mem[_3386 + 164 len ceil32(mem[_3388])] = mem[_3388 + 32 len ceil32(mem[_3388])]
            if ceil32(_3482) > _3482:
                mem[_3482 + _3386 + 164] = 0
            call address(arg3) with:
                 gas gas_remaining wei
                args mem[_3386 + 168 len _3482 - 4]
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
                mem[_3386 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_3386 + 196] == bool(mem[_3386 + 196])
                    if not mem[_3386 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 96] = 3
            mem[ceil32(return_data.size) + 128] = stor1
            mem[0] = address(arg2)
            mem[32] = sha3(address(arg1), 2)
            mem[ceil32(return_data.size) + 160] = stor2[address(arg1)][address(arg2)]
            mem[ceil32(return_data.size) + 192] = address(arg1)
            mem[ceil32(return_data.size) + 224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 228] = 0
            mem[ceil32(return_data.size) + 260] = 128
            mem[ceil32(return_data.size) + 356] = 3
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 388
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 292] = this.address
            mem[ceil32(return_data.size) + 324] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 3, mem[ceil32(return_data.size) + 388 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _1643 = mem[ceil32(return_data.size) + 224 len 4], 0
            require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
            _1649 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                revert with 0, 65
            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
            mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
            require return_data.size >= _1643 + (32 * _1649) + 32
            mem[(2 * ceil32(return_data.size)) + 256 len 32 * _1649] = mem[ceil32(return_data.size) + _1643 + 256 len 32 * _1649]
            if _1649 < 1:
                revert with 0, 17
            if _1649 - 1 >= _1649:
                revert with 0, 50
            require ext_code.size(address(arg3))
            call address(arg3).deposit(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[(32 * _1649 - 1) + (2 * ceil32(return_data.size)) + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3351 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3353 = mem[_3351]
            _3387 = mem[64]
            mem[mem[64] + 36] = address(arg4)
            mem[mem[64] + 68] = _3353
            _3390 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
            mem[64] = mem[64] + 164
            mem[_3387 + 100] = 32
            mem[_3387 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg3)):
                revert with 0, 'Address: call to non-contract'
            _3484 = mem[_3390]
            mem[_3387 + 164 len ceil32(mem[_3390])] = mem[_3390 + 32 len ceil32(mem[_3390])]
            if ceil32(_3484) > _3484:
                mem[_3484 + _3387 + 164] = 0
            call address(arg3) with:
                 gas gas_remaining wei
                args mem[_3387 + 168 len _3484 - 4]
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
                mem[_3387 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_3387 + 196] == bool(mem[_3387 + 196])
                    if not mem[_3387 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 100] = this.address
        mem[ceil32(return_data.size) + 132] = address(arg3)
        require ext_code.size(address(arg1))
        staticcall address(arg1).allowance(address rg1, address rg2) with:
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
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address rg1, uint256 rg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(arg1)):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address rg1, uint256 rg2), address(arg3) << 64, 0, -1, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call address(arg1) with:
           funct Mask(32, 224, approve(address rg1, uint256 rg2), address(arg3) << 64, 0, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address rg1, uint256 rg2), address(arg3) << 64, 0, -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if not ext_call.return_data[0]:
                mem[0] = address(arg2)
                mem[32] = sha3(address(arg1), 2)
                if not stor2[address(arg1)][address(arg2)]:
                    mem[(2 * ceil32(return_data.size)) + 260] = 2
                    mem[(2 * ceil32(return_data.size)) + 292] = stor1
                    mem[(2 * ceil32(return_data.size)) + 324] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 356] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 360] = 0
                    mem[(2 * ceil32(return_data.size)) + 392] = 128
                    mem[(2 * ceil32(return_data.size)) + 488] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 292
                    t = (2 * ceil32(return_data.size)) + 520
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 424] = this.address
                    mem[(2 * ceil32(return_data.size)) + 456] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 520 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 356
                    require return_data.size >= 32
                    _3306 = mem[(2 * ceil32(return_data.size)) + 356 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 387 < (2 * ceil32(return_data.size)) + return_data.size + 356
                    _3324 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]) + 357 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]) + 357
                    mem[(4 * ceil32(return_data.size)) + 356] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]
                    require return_data.size >= _3306 + (32 * _3324) + 32
                    mem[(4 * ceil32(return_data.size)) + 388 len 32 * _3324] = mem[(2 * ceil32(return_data.size)) + _3306 + 388 len 32 * _3324]
                    if _3324 < 1:
                        revert with 0, 17
                    if _3324 - 1 >= _3324:
                        revert with 0, 50
                    require ext_code.size(address(arg3))
                    call address(arg3).deposit(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _3324 - 1) + (4 * ceil32(return_data.size)) + 388]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4834 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4866 = mem[_4834]
                    _4906 = mem[64]
                    mem[mem[64] + 36] = address(arg4)
                    mem[mem[64] + 68] = _4866
                    _4930 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                    mem[64] = mem[64] + 164
                    mem[_4906 + 100] = 32
                    mem[_4906 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg3)):
                        revert with 0, 'Address: call to non-contract'
                    _5058 = mem[_4930]
                    mem[_4906 + 164 len ceil32(mem[_4930])] = mem[_4930 + 32 len ceil32(mem[_4930])]
                    if ceil32(_5058) > _5058:
                        mem[_5058 + _4906 + 164] = 0
                    call address(arg3) with:
                         gas gas_remaining wei
                        args mem[_4906 + 168 len _5058 - 4]
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
                        mem[_4906 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4906 + 196] == bool(mem[_4906 + 196])
                            if not mem[_4906 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 260] = 3
                    mem[(2 * ceil32(return_data.size)) + 292] = stor1
                    mem[0] = address(arg2)
                    mem[32] = sha3(address(arg1), 2)
                    mem[(2 * ceil32(return_data.size)) + 324] = stor2[address(arg1)][address(arg2)]
                    mem[(2 * ceil32(return_data.size)) + 356] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 388] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 392] = 0
                    mem[(2 * ceil32(return_data.size)) + 424] = 128
                    mem[(2 * ceil32(return_data.size)) + 520] = 3
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 292
                    t = (2 * ceil32(return_data.size)) + 552
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 456] = this.address
                    mem[(2 * ceil32(return_data.size)) + 488] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 552 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 388
                    require return_data.size >= 32
                    _3307 = mem[(2 * ceil32(return_data.size)) + 388 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
                    _3325 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 388]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 388] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 388]) + 389 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 388]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 388]) + 389
                    mem[(4 * ceil32(return_data.size)) + 388] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 388]
                    require return_data.size >= _3307 + (32 * _3325) + 32
                    mem[(4 * ceil32(return_data.size)) + 420 len 32 * _3325] = mem[(2 * ceil32(return_data.size)) + _3307 + 420 len 32 * _3325]
                    if _3325 < 1:
                        revert with 0, 17
                    if _3325 - 1 >= _3325:
                        revert with 0, 50
                    require ext_code.size(address(arg3))
                    call address(arg3).deposit(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _3325 - 1) + (4 * ceil32(return_data.size)) + 420]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4835 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4867 = mem[_4835]
                    _4907 = mem[64]
                    mem[mem[64] + 36] = address(arg4)
                    mem[mem[64] + 68] = _4867
                    _4932 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                    mem[64] = mem[64] + 164
                    mem[_4907 + 100] = 32
                    mem[_4907 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg3)):
                        revert with 0, 'Address: call to non-contract'
                    _5060 = mem[_4932]
                    mem[_4907 + 164 len ceil32(mem[_4932])] = mem[_4932 + 32 len ceil32(mem[_4932])]
                    if ceil32(_5060) > _5060:
                        mem[_5060 + _4907 + 164] = 0
                    call address(arg3) with:
                         gas gas_remaining wei
                        args mem[_4907 + 168 len _5060 - 4]
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
                        mem[_4907 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4907 + 196] == bool(mem[_4907 + 196])
                            if not mem[_4907 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), address(arg3) << 64 == bool(uint32(this.address), address(arg3) << 64)
                if not uint32(this.address), address(arg3) << 64:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[0] = address(arg2)
                mem[32] = sha3(address(arg1), 2)
                if not stor2[address(arg1)][address(arg2)]:
                    mem[(2 * ceil32(return_data.size)) + 260] = 2
                    mem[(2 * ceil32(return_data.size)) + 292] = stor1
                    mem[(2 * ceil32(return_data.size)) + 324] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 356] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 360] = 0
                    mem[(2 * ceil32(return_data.size)) + 392] = 128
                    mem[(2 * ceil32(return_data.size)) + 488] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 292
                    t = (2 * ceil32(return_data.size)) + 520
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 424] = this.address
                    mem[(2 * ceil32(return_data.size)) + 456] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 520 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 356
                    require return_data.size >= 32
                    _3308 = mem[(2 * ceil32(return_data.size)) + 356 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 387 < (2 * ceil32(return_data.size)) + return_data.size + 356
                    _3326 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]) + 357 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]) + 357
                    mem[(4 * ceil32(return_data.size)) + 356] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], 0 + 356]
                    require return_data.size >= _3308 + (32 * _3326) + 32
                    mem[(4 * ceil32(return_data.size)) + 388 len 32 * _3326] = mem[(2 * ceil32(return_data.size)) + _3308 + 388 len 32 * _3326]
                    if _3326 < 1:
                        revert with 0, 17
                    if _3326 - 1 >= _3326:
                        revert with 0, 50
                    require ext_code.size(address(arg3))
                    call address(arg3).deposit(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _3326 - 1) + (4 * ceil32(return_data.size)) + 388]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4836 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4868 = mem[_4836]
                    _4908 = mem[64]
                    mem[mem[64] + 36] = address(arg4)
                    mem[mem[64] + 68] = _4868
                    _4934 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                    mem[64] = mem[64] + 164
                    mem[_4908 + 100] = 32
                    mem[_4908 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg3)):
                        revert with 0, 'Address: call to non-contract'
                    _5062 = mem[_4934]
                    mem[_4908 + 164 len ceil32(mem[_4934])] = mem[_4934 + 32 len ceil32(mem[_4934])]
                    if ceil32(_5062) > _5062:
                        mem[_5062 + _4908 + 164] = 0
                    call address(arg3) with:
                         gas gas_remaining wei
                        args mem[_4908 + 168 len _5062 - 4]
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
                        mem[_4908 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4908 + 196] == bool(mem[_4908 + 196])
                            if not mem[_4908 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 260] = 3
                    mem[(2 * ceil32(return_data.size)) + 292] = stor1
                    mem[0] = address(arg2)
                    mem[32] = sha3(address(arg1), 2)
                    mem[(2 * ceil32(return_data.size)) + 324] = stor2[address(arg1)][address(arg2)]
                    mem[(2 * ceil32(return_data.size)) + 356] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 388] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 392] = 0
                    mem[(2 * ceil32(return_data.size)) + 424] = 128
                    mem[(2 * ceil32(return_data.size)) + 520] = 3
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 292
                    t = (2 * ceil32(return_data.size)) + 552
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 456] = this.address
                    mem[(2 * ceil32(return_data.size)) + 488] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 552 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 388
                    require return_data.size >= 32
                    _3309 = mem[(2 * ceil32(return_data.size)) + 388 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
                    _3327 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 388]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 388] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 388]) + 389 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 388]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 388]) + 389
                    mem[(4 * ceil32(return_data.size)) + 388] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], 0 + 388]
                    require return_data.size >= _3309 + (32 * _3327) + 32
                    mem[(4 * ceil32(return_data.size)) + 420 len 32 * _3327] = mem[(2 * ceil32(return_data.size)) + _3309 + 420 len 32 * _3327]
                    if _3327 < 1:
                        revert with 0, 17
                    if _3327 - 1 >= _3327:
                        revert with 0, 50
                    require ext_code.size(address(arg3))
                    call address(arg3).deposit(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _3327 - 1) + (4 * ceil32(return_data.size)) + 420]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4837 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4869 = mem[_4837]
                    _4909 = mem[64]
                    mem[mem[64] + 36] = address(arg4)
                    mem[mem[64] + 68] = _4869
                    _4936 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                    mem[64] = mem[64] + 164
                    mem[_4909 + 100] = 32
                    mem[_4909 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg3)):
                        revert with 0, 'Address: call to non-contract'
                    _5064 = mem[_4936]
                    mem[_4909 + 164 len ceil32(mem[_4936])] = mem[_4936 + 32 len ceil32(mem[_4936])]
                    if ceil32(_5064) > _5064:
                        mem[_5064 + _4909 + 164] = 0
                    call address(arg3) with:
                         gas gas_remaining wei
                        args mem[_4909 + 168 len _5064 - 4]
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
                        mem[_4909 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4909 + 196] == bool(mem[_4909 + 196])
                            if not mem[_4909 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                mem[0] = address(arg2)
                mem[32] = sha3(address(arg1), 2)
                if not stor2[address(arg1)][address(arg2)]:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 2
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = stor1
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 128
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = this.address
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                    require return_data.size >= 32
                    _3310 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 388 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 357
                    _3328 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]
                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 358 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 358
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]
                    require return_data.size >= _3310 + (32 * _3328) + 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 32 * _3328] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _3310 + 389 len 32 * _3328]
                    if _3328 < 1:
                        revert with 0, 17
                    if _3328 - 1 >= _3328:
                        revert with 0, 50
                    require ext_code.size(address(arg3))
                    call address(arg3).deposit(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _3328 - 1) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4838 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4870 = mem[_4838]
                    _4910 = mem[64]
                    mem[mem[64] + 36] = address(arg4)
                    mem[mem[64] + 68] = _4870
                    _4938 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                    mem[64] = mem[64] + 164
                    mem[_4910 + 100] = 32
                    mem[_4910 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg3)):
                        revert with 0, 'Address: call to non-contract'
                    _5066 = mem[_4938]
                    mem[_4910 + 164 len ceil32(mem[_4938])] = mem[_4938 + 32 len ceil32(mem[_4938])]
                    if ceil32(_5066) > _5066:
                        mem[_5066 + _4910 + 164] = 0
                    call address(arg3) with:
                         gas gas_remaining wei
                        args mem[_4910 + 168 len _5066 - 4]
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
                        mem[_4910 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4910 + 196] == bool(mem[_4910 + 196])
                            if not mem[_4910 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 3
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = stor1
                    mem[0] = address(arg2)
                    mem[32] = sha3(address(arg1), 2)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = stor2[address(arg1)][address(arg2)]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 128
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 3
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = this.address
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
                    require return_data.size >= 32
                    _3311 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
                    _3329 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 389]
                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 389] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 389]) + 390 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 389]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 389]) + 390
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 389]
                    require return_data.size >= _3311 + (32 * _3329) + 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 32 * _3329] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _3311 + 421 len 32 * _3329]
                    if _3329 < 1:
                        revert with 0, 17
                    if _3329 - 1 >= _3329:
                        revert with 0, 50
                    require ext_code.size(address(arg3))
                    call address(arg3).deposit(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _3329 - 1) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4839 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4871 = mem[_4839]
                    _4911 = mem[64]
                    mem[mem[64] + 36] = address(arg4)
                    mem[mem[64] + 68] = _4871
                    _4940 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                    mem[64] = mem[64] + 164
                    mem[_4911 + 100] = 32
                    mem[_4911 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg3)):
                        revert with 0, 'Address: call to non-contract'
                    _5068 = mem[_4940]
                    mem[_4911 + 164 len ceil32(mem[_4940])] = mem[_4940 + 32 len ceil32(mem[_4940])]
                    if ceil32(_5068) > _5068:
                        mem[_5068 + _4911 + 164] = 0
                    call address(arg3) with:
                         gas gas_remaining wei
                        args mem[_4911 + 168 len _5068 - 4]
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
                        mem[_4911 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4911 + 196] == bool(mem[_4911 + 196])
                            if not mem[_4911 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[0] = address(arg2)
                mem[32] = sha3(address(arg1), 2)
                if not stor2[address(arg1)][address(arg2)]:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 2
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = stor1
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 128
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = this.address
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                    require return_data.size >= 32
                    _3312 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 388 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 357
                    _3330 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]
                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 358 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]) + 358
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], 0 + 357]
                    require return_data.size >= _3312 + (32 * _3330) + 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 32 * _3330] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _3312 + 389 len 32 * _3330]
                    if _3330 < 1:
                        revert with 0, 17
                    if _3330 - 1 >= _3330:
                        revert with 0, 50
                    require ext_code.size(address(arg3))
                    call address(arg3).deposit(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _3330 - 1) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4840 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4872 = mem[_4840]
                    _4912 = mem[64]
                    mem[mem[64] + 36] = address(arg4)
                    mem[mem[64] + 68] = _4872
                    _4942 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                    mem[64] = mem[64] + 164
                    mem[_4912 + 100] = 32
                    mem[_4912 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg3)):
                        revert with 0, 'Address: call to non-contract'
                    _5070 = mem[_4942]
                    mem[_4912 + 164 len ceil32(mem[_4942])] = mem[_4942 + 32 len ceil32(mem[_4942])]
                    if ceil32(_5070) > _5070:
                        mem[_5070 + _4912 + 164] = 0
                    call address(arg3) with:
                         gas gas_remaining wei
                        args mem[_4912 + 168 len _5070 - 4]
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
                        mem[_4912 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4912 + 196] == bool(mem[_4912 + 196])
                            if not mem[_4912 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 3
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = stor1
                    mem[0] = address(arg2)
                    mem[32] = sha3(address(arg1), 2)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = stor2[address(arg1)][address(arg2)]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 128
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 3
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = this.address
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
                    require return_data.size >= 32
                    _3313 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
                    _3331 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 389]
                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 389] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 389]) + 390 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 389]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 389]) + 390
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], 0 + 389]
                    require return_data.size >= _3313 + (32 * _3331) + 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 32 * _3331] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _3313 + 421 len 32 * _3331]
                    if _3331 < 1:
                        revert with 0, 17
                    if _3331 - 1 >= _3331:
                        revert with 0, 50
                    require ext_code.size(address(arg3))
                    call address(arg3).deposit(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _3331 - 1) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg3))
                    staticcall address(arg3).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4841 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4873 = mem[_4841]
                    _4913 = mem[64]
                    mem[mem[64] + 36] = address(arg4)
                    mem[mem[64] + 68] = _4873
                    _4944 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                    mem[64] = mem[64] + 164
                    mem[_4913 + 100] = 32
                    mem[_4913 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg3)):
                        revert with 0, 'Address: call to non-contract'
                    _5072 = mem[_4944]
                    mem[_4913 + 164 len ceil32(mem[_4944])] = mem[_4944 + 32 len ceil32(mem[_4944])]
                    if ceil32(_5072) > _5072:
                        mem[_5072 + _4913 + 164] = 0
                    call address(arg3) with:
                         gas gas_remaining wei
                        args mem[_4913 + 168 len _5072 - 4]
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
                        mem[_4913 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_4913 + 196] == bool(mem[_4913 + 196])
                            if not mem[_4913 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
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
    if stor1 == address(ext_call.return_data[0]):
        mem[0] = address(arg2)
        mem[32] = sha3(ext_call.return_data[12 len 20], 2)
        if not stor2[ext_call.return_data[12 len 20]][address(arg2)]:
            mem[(2 * ceil32(return_data.size)) + 96] = 2
            mem[(2 * ceil32(return_data.size)) + 128] = stor1
            mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
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
            _6199 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
            _6207 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            require return_data.size >= _6199 + (32 * _6207) + 32
            mem[(4 * ceil32(return_data.size)) + 224 len 32 * _6207] = mem[(2 * ceil32(return_data.size)) + _6199 + 224 len 32 * _6207]
            if _6207 < 1:
                revert with 0, 17
            if _6207 - 1 >= _6207:
                revert with 0, 50
            _12353 = mem[(32 * _6207 - 1) + (4 * ceil32(return_data.size)) + 224]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(arg2)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args this.address, address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12373 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_12373]:
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(arg2)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args this.address, address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12427 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_12427]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                _12463 = mem[64]
                mem[mem[64] + 36] = address(arg2)
                mem[mem[64] + 68] = -1
                _12487 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
                mem[64] = mem[64] + 164
                mem[_12463 + 100] = 32
                mem[_12463 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                _12595 = mem[_12487]
                mem[_12463 + 164 len ceil32(mem[_12487])] = mem[_12487 + 32 len ceil32(mem[_12487])]
                if ceil32(_12595) > _12595:
                    mem[_12595 + _12463 + 164] = 0
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args mem[_12463 + 168 len _12595 - 4]
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
                    mem[_12463 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_12463 + 196] == bool(mem[_12463 + 196])
                        if not mem[_12463 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if msg.value < msg.value / 2:
                revert with 0, 17
            require ext_code.size(address(arg2))
            if not stor3[address(arg2)]:
                call address(arg2).addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value msg.value - (msg.value / 2) wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), _12353, 0, 0, address(arg3), block.timestamp
            else:
                call address(arg2).addLiquidityFTM(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value msg.value - (msg.value / 2) wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), _12353, 0, 0, address(arg3), block.timestamp
        else:
            mem[(2 * ceil32(return_data.size)) + 96] = 3
            mem[(2 * ceil32(return_data.size)) + 128] = stor1
            mem[0] = address(arg2)
            mem[32] = sha3(address(ext_call.return_data[0]), 2)
            mem[(2 * ceil32(return_data.size)) + 160] = stor2[address(ext_call.return_data[0])][address(arg2)]
            mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
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
            require ext_code.size(address(arg2))
            call address(arg2).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value msg.value / 2 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 388 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _6200 = mem[(2 * ceil32(return_data.size)) + 224 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
            _6208 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 1 < 0:
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225
            mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
            require return_data.size >= _6200 + (32 * _6208) + 32
            mem[(4 * ceil32(return_data.size)) + 256 len 32 * _6208] = mem[(2 * ceil32(return_data.size)) + _6200 + 256 len 32 * _6208]
            if _6208 < 1:
                revert with 0, 17
            if _6208 - 1 >= _6208:
                revert with 0, 50
            _12354 = mem[(32 * _6208 - 1) + (4 * ceil32(return_data.size)) + 256]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(arg2)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args this.address, address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12374 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_12374]:
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(arg2)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args this.address, address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12428 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_12428]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                _12467 = mem[64]
                mem[mem[64] + 36] = address(arg2)
                mem[mem[64] + 68] = -1
                _12490 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
                mem[64] = mem[64] + 164
                mem[_12467 + 100] = 32
                mem[_12467 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                _12597 = mem[_12490]
                mem[_12467 + 164 len ceil32(mem[_12490])] = mem[_12490 + 32 len ceil32(mem[_12490])]
                if ceil32(_12597) > _12597:
                    mem[_12597 + _12467 + 164] = 0
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args mem[_12467 + 168 len _12597 - 4]
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
                    mem[_12467 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_12467 + 196] == bool(mem[_12467 + 196])
                        if not mem[_12467 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if msg.value < msg.value / 2:
                revert with 0, 17
            require ext_code.size(address(arg2))
            if not stor3[address(arg2)]:
                call address(arg2).addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value msg.value - (msg.value / 2) wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), _12354, 0, 0, address(arg3), block.timestamp
            else:
                call address(arg2).addLiquidityFTM(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value msg.value - (msg.value / 2) wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), _12354, 0, 0, address(arg3), block.timestamp
    else:
        if stor1 == ext_call.return_data[12 len 20]:
            mem[0] = address(arg2)
            if stor1 == address(ext_call.return_data[0]):
                mem[32] = sha3(ext_call.return_data[12 len 20], 2)
                if not stor2[ext_call.return_data[12 len 20]][address(arg2)]:
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
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
                    _6203 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                    _6211 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    require return_data.size >= _6203 + (32 * _6211) + 32
                    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _6211] = mem[(2 * ceil32(return_data.size)) + _6203 + 224 len 32 * _6211]
                    if _6211 < 1:
                        revert with 0, 17
                    if _6211 - 1 >= _6211:
                        revert with 0, 50
                    _12357 = mem[(32 * _6211 - 1) + (4 * ceil32(return_data.size)) + 224]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12375 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_12375]:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(arg2)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args this.address, address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12431 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_12431]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _12473 = mem[64]
                        mem[mem[64] + 36] = address(arg2)
                        mem[mem[64] + 68] = -1
                        _12495 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
                        mem[64] = mem[64] + 164
                        mem[_12473 + 100] = 32
                        mem[_12473 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        _12603 = mem[_12495]
                        mem[_12473 + 164 len ceil32(mem[_12495])] = mem[_12495 + 32 len ceil32(mem[_12495])]
                        if ceil32(_12603) > _12603:
                            mem[_12603 + _12473 + 164] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[_12473 + 168 len _12603 - 4]
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
                            mem[_12473 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_12473 + 196] == bool(mem[_12473 + 196])
                                if not mem[_12473 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if msg.value < msg.value / 2:
                        revert with 0, 17
                    require ext_code.size(address(arg2))
                    if not stor3[address(arg2)]:
                        call address(arg2).addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _12357, 0, 0, address(arg3), block.timestamp
                    else:
                        call address(arg2).addLiquidityFTM(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _12357, 0, 0, address(arg3), block.timestamp
                else:
                    mem[(2 * ceil32(return_data.size)) + 96] = 3
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[0] = address(arg2)
                    mem[32] = sha3(address(ext_call.return_data[0]), 2)
                    mem[(2 * ceil32(return_data.size)) + 160] = stor2[address(ext_call.return_data[0])][address(arg2)]
                    mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
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
                    require ext_code.size(address(arg2))
                    call address(arg2).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 388 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _6204 = mem[(2 * ceil32(return_data.size)) + 224 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                    _6212 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225
                    mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                    require return_data.size >= _6204 + (32 * _6212) + 32
                    mem[(4 * ceil32(return_data.size)) + 256 len 32 * _6212] = mem[(2 * ceil32(return_data.size)) + _6204 + 256 len 32 * _6212]
                    if _6212 < 1:
                        revert with 0, 17
                    if _6212 - 1 >= _6212:
                        revert with 0, 50
                    _12358 = mem[(32 * _6212 - 1) + (4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12376 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_12376]:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(arg2)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args this.address, address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12432 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_12432]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _12477 = mem[64]
                        mem[mem[64] + 36] = address(arg2)
                        mem[mem[64] + 68] = -1
                        _12498 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
                        mem[64] = mem[64] + 164
                        mem[_12477 + 100] = 32
                        mem[_12477 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        _12605 = mem[_12498]
                        mem[_12477 + 164 len ceil32(mem[_12498])] = mem[_12498 + 32 len ceil32(mem[_12498])]
                        if ceil32(_12605) > _12605:
                            mem[_12605 + _12477 + 164] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[_12477 + 168 len _12605 - 4]
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
                            mem[_12477 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_12477 + 196] == bool(mem[_12477 + 196])
                                if not mem[_12477 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if msg.value < msg.value / 2:
                        revert with 0, 17
                    require ext_code.size(address(arg2))
                    if not stor3[address(arg2)]:
                        call address(arg2).addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _12358, 0, 0, address(arg3), block.timestamp
                    else:
                        call address(arg2).addLiquidityFTM(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _12358, 0, 0, address(arg3), block.timestamp
            else:
                mem[32] = sha3(address(ext_call.return_data[0]), 2)
                if not stor2[address(ext_call.return_data[0])][address(arg2)]:
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
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
                    _6205 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                    _6213 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    require return_data.size >= _6205 + (32 * _6213) + 32
                    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _6213] = mem[(2 * ceil32(return_data.size)) + _6205 + 224 len 32 * _6213]
                    if _6213 < 1:
                        revert with 0, 17
                    if _6213 - 1 >= _6213:
                        revert with 0, 50
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12377 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_12377]:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(arg2)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args this.address, address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12433 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_12433]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _12481 = mem[64]
                        mem[mem[64] + 36] = address(arg2)
                        mem[mem[64] + 68] = -1
                        _12501 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
                        mem[64] = mem[64] + 164
                        mem[_12481 + 100] = 32
                        mem[_12481 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        _12607 = mem[_12501]
                        mem[_12481 + 164 len ceil32(mem[_12501])] = mem[_12501 + 32 len ceil32(mem[_12501])]
                        if ceil32(_12607) > _12607:
                            mem[_12607 + _12481 + 164] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[_12481 + 168 len _12607 - 4]
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
                            mem[_12481 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_12481 + 196] == bool(mem[_12481 + 196])
                                if not mem[_12481 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if msg.value < msg.value / 2:
                        revert with 0, 17
                    require ext_code.size(address(arg2))
                    if not stor3[address(arg2)]:
                        call address(arg2).addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), mem[(32 * _6213 - 1) + (4 * ceil32(return_data.size)) + 224], 0, 0, address(arg3), block.timestamp
                    else:
                        call address(arg2).addLiquidityFTM(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), mem[(32 * _6213 - 1) + (4 * ceil32(return_data.size)) + 224], 0, 0, address(arg3), block.timestamp
                else:
                    mem[(2 * ceil32(return_data.size)) + 96] = 3
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[0] = address(arg2)
                    mem[32] = sha3(address(ext_call.return_data[0]), 2)
                    mem[(2 * ceil32(return_data.size)) + 160] = stor2[address(ext_call.return_data[0])][address(arg2)]
                    mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
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
                    require ext_code.size(address(arg2))
                    call address(arg2).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 388 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _6206 = mem[(2 * ceil32(return_data.size)) + 224 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                    _6214 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225
                    mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                    require return_data.size >= _6206 + (32 * _6214) + 32
                    mem[(4 * ceil32(return_data.size)) + 256 len 32 * _6214] = mem[(2 * ceil32(return_data.size)) + _6206 + 256 len 32 * _6214]
                    if _6214 < 1:
                        revert with 0, 17
                    if _6214 - 1 >= _6214:
                        revert with 0, 50
                    _12360 = mem[(32 * _6214 - 1) + (4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12378 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_12378]:
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(arg2)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args this.address, address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12434 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_12434]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _12485 = mem[64]
                        mem[mem[64] + 36] = address(arg2)
                        mem[mem[64] + 68] = -1
                        _12504 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
                        mem[64] = mem[64] + 164
                        mem[_12485 + 100] = 32
                        mem[_12485 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        _12609 = mem[_12504]
                        mem[_12485 + 164 len ceil32(mem[_12504])] = mem[_12504 + 32 len ceil32(mem[_12504])]
                        if ceil32(_12609) > _12609:
                            mem[_12609 + _12485 + 164] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[_12485 + 168 len _12609 - 4]
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
                            mem[_12485 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_12485 + 196] == bool(mem[_12485 + 196])
                                if not mem[_12485 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if msg.value < msg.value / 2:
                        revert with 0, 17
                    require ext_code.size(address(arg2))
                    if not stor3[address(arg2)]:
                        call address(arg2).addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _12360, 0, 0, address(arg3), block.timestamp
                    else:
                        call address(arg2).addLiquidityFTM(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _12360, 0, 0, address(arg3), block.timestamp
        else:
            if not stor2[address(ext_call.return_data[0])][address(arg2)]:
                mem[(2 * ceil32(return_data.size)) + 96] = 2
                mem[(2 * ceil32(return_data.size)) + 128] = stor1
                mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
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
                _6201 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                _6209 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                require return_data.size >= _6201 + (32 * _6209) + 32
                mem[(4 * ceil32(return_data.size)) + 224 len 32 * _6209] = mem[(2 * ceil32(return_data.size)) + _6201 + 224 len 32 * _6209]
                if _6209 < 1:
                    revert with 0, 17
                if _6209 - 1 >= _6209:
                    revert with 0, 50
                _12355 = mem[(32 * _6209 - 1) + (4 * ceil32(return_data.size)) + 224]
                if msg.value < msg.value / 2:
                    revert with 0, 17
                mem[0] = address(arg2)
                mem[32] = sha3(address(ext_call.return_data[0]), 2)
                if not stor2[address(ext_call.return_data[0])][address(arg2)]:
                    _12389 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if not mem[_12389]:
                        revert with 0, 50
                    mem[_12389 + 32] = stor1
                    if 1 >= mem[_12389]:
                        revert with 0, 50
                    mem[_12389 + 64] = address(ext_call.return_data[0])
                    mem[_12389 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[_12389 + 100] = 0
                    mem[_12389 + 132] = 128
                    mem[_12389 + 228] = mem[_12389]
                    idx = 0
                    s = _12389 + 32
                    t = _12389 + 260
                    while idx < mem[_12389]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_12389 + 164] = this.address
                    mem[_12389 + 196] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).mem[mem[64] len 4] with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _12389 + (32 * mem[_12389]) + -mem[64] + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18465 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18477 = mem[_18465]
                    require mem[_18465] <= test266151307()
                    require _18465 + mem[_18465] + 31 < _18465 + return_data.size
                    _18521 = mem[_18465 + mem[_18465]]
                    if mem[_18465 + mem[_18465]] > test266151307():
                        revert with 0, 65
                    if _18465 + ceil32(return_data.size) + ceil32(32 * mem[_18465 + mem[_18465]]) + 1 > test266151307() or ceil32(32 * mem[_18465 + mem[_18465]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _18465 + ceil32(return_data.size) + ceil32(32 * mem[_18465 + mem[_18465]]) + 1
                    mem[_18465 + ceil32(return_data.size)] = _18521
                    require return_data.size >= _18477 + (32 * _18521) + 32
                    mem[_18465 + ceil32(return_data.size) + 32 len 32 * _18521] = mem[_18465 + _18477 + 32 len 32 * _18521]
                    if _18521 < 1:
                        revert with 0, 17
                    if _18521 - 1 >= _18521:
                        revert with 0, 50
                    _24365 = mem[(32 * _18521 - 1) + _18465 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _24377 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[_24377]:
                        _24401 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_24401]:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(arg2)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _24457 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_24457]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            _24505 = mem[64]
                            mem[mem[64] + 36] = address(arg2)
                            mem[mem[64] + 68] = -1
                            _24513 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
                            mem[64] = mem[64] + 164
                            mem[_24505 + 100] = 32
                            mem[_24505 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            _24565 = mem[_24513]
                            mem[_24505 + 164 len ceil32(mem[_24513])] = mem[_24513 + 32 len ceil32(mem[_24513])]
                            if ceil32(_24565) > _24565:
                                mem[_24565 + _24505 + 164] = 0
                            call address(ext_call.return_data[0]) with:
                                 gas gas_remaining wei
                                args mem[_24505 + 168 len _24565 - 4]
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
                                mem[_24505 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_24505 + 196] == bool(mem[_24505 + 196])
                                    if not mem[_24505 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg2))
                        call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12355, _24365, 0, 0, address(arg3), block.timestamp
                    else:
                        _24402 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_24402]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _24418 = mem[64]
                        mem[mem[64] + 36] = address(arg2)
                        mem[mem[64] + 68] = -1
                        _24431 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
                        mem[64] = mem[64] + 164
                        mem[_24418 + 100] = 32
                        mem[_24418 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        _24497 = mem[_24431]
                        mem[_24418 + 164 len ceil32(mem[_24431])] = mem[_24431 + 32 len ceil32(mem[_24431])]
                        if ceil32(_24497) > _24497:
                            mem[_24497 + _24418 + 164] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[_24418 + 168 len _24497 - 4]
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
                            mem[_24418 + 168] = this.address
                            mem[_24418 + 200] = address(arg2)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(arg2)
                            mem[_24418 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[_24418 + ceil32(return_data.size) + 168] = this.address
                                mem[_24418 + ceil32(return_data.size) + 200] = address(arg2)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args this.address, address(arg2)
                                mem[_24418 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_24418 + (2 * ceil32(return_data.size)) + 200] = address(arg2)
                                mem[_24418 + (2 * ceil32(return_data.size)) + 232] = -1
                                mem[_24418 + (2 * ceil32(return_data.size)) + 164] = 68
                                mem[_24418 + (2 * ceil32(return_data.size)) + 196 len 4] = approve(address rg1, uint256 rg2)
                                mem[_24418 + (2 * ceil32(return_data.size)) + 264] = 32
                                mem[_24418 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                mem[_24418 + (2 * ceil32(return_data.size)) + 328 len 96] = 0, address(arg2), -1, 0
                                mem[_24418 + (2 * ceil32(return_data.size)) + 396] = 0
                                call address(ext_call.return_data[0]) with:
                                   funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
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
                                    mem[_24418 + (2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_24418 + (2 * ceil32(return_data.size)) + 360] == bool(mem[_24418 + (2 * ceil32(return_data.size)) + 360])
                                        if not mem[_24418 + (2 * ceil32(return_data.size)) + 360]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg2))
                            call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12355, _24365, 0, 0, address(arg3), block.timestamp
                        else:
                            mem[_24418 + 164] = return_data.size
                            mem[_24418 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_24418 + 196] == bool(mem[_24418 + 196])
                                if not mem[_24418 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_24418 + ceil32(return_data.size) + 169] = this.address
                            mem[_24418 + ceil32(return_data.size) + 201] = address(arg2)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(arg2)
                            mem[_24418 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(address(arg2))
                                call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12355, _24365, 0, 0, address(arg3), block.timestamp
                            else:
                                mem[_24418 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                mem[_24418 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(arg2)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args this.address, address(arg2)
                                mem[_24418 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = address(arg2)
                                mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = -1
                                mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = 68
                                mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = approve(address rg1, uint256 rg2)
                                mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
                                mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = 0, address(arg2), -1, 0
                                mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 0
                                call address(ext_call.return_data[0]) with:
                                   funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
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
                                    require ext_code.size(address(arg2))
                                    call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12355, _24365, 0, 0, address(arg3), block.timestamp
                                else:
                                    mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = return_data.size
                                    mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_24418 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_24418 + (4 * ceil32(return_data.size)) + 334] = 32
                                        mem[_24418 + (4 * ceil32(return_data.size)) + 366] = 32
                                        mem[_24418 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                                        revert with memory
                                          from _24418 + (4 * ceil32(return_data.size)) + 330
                                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] == bool(mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361])
                                        if not mem[_24418 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361]:
                                            mem[_24418 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_24418 + (4 * ceil32(return_data.size)) + 334] = 32
                                            mem[_24418 + (4 * ceil32(return_data.size)) + 366] = 42
                                            mem[_24418 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                                            mem[_24418 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                            revert with memory
                                              from _24418 + (4 * ceil32(return_data.size)) + 330
                                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                    mem[_24418 + (4 * ceil32(return_data.size)) + 334] = address(ext_call.return_data[0])
                                    mem[_24418 + (4 * ceil32(return_data.size)) + 366] = address(ext_call.return_data[0])
                                    mem[_24418 + (4 * ceil32(return_data.size)) + 398] = _12355
                                    mem[_24418 + (4 * ceil32(return_data.size)) + 430] = _24365
                                    mem[_24418 + (4 * ceil32(return_data.size)) + 462] = 0
                                    mem[_24418 + (4 * ceil32(return_data.size)) + 494] = 0
                                    mem[_24418 + (4 * ceil32(return_data.size)) + 526] = address(arg3)
                                    mem[_24418 + (4 * ceil32(return_data.size)) + 558] = block.timestamp
                                    require ext_code.size(address(arg2))
                                    call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args mem[_24418 + (4 * ceil32(return_data.size)) + 334 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
                else:
                    _12391 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if not mem[_12391]:
                        revert with 0, 50
                    mem[_12391 + 32] = stor1
                    mem[0] = address(arg2)
                    mem[32] = sha3(address(ext_call.return_data[0]), 2)
                    if 1 >= mem[_12391]:
                        revert with 0, 50
                    mem[_12391 + 64] = stor2[address(ext_call.return_data[0])][address(arg2)]
                    if 2 >= mem[_12391]:
                        revert with 0, 50
                    mem[_12391 + 96] = address(ext_call.return_data[0])
                    mem[_12391 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[_12391 + 132] = 0
                    mem[_12391 + 164] = 128
                    mem[_12391 + 260] = mem[_12391]
                    idx = 0
                    s = _12391 + 32
                    t = _12391 + 292
                    while idx < mem[_12391]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_12391 + 196] = this.address
                    mem[_12391 + 228] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).mem[mem[64] len 4] with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _12391 + (32 * mem[_12391]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18466 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18478 = mem[_18466]
                    require mem[_18466] <= test266151307()
                    require _18466 + mem[_18466] + 31 < _18466 + return_data.size
                    _18522 = mem[_18466 + mem[_18466]]
                    if mem[_18466 + mem[_18466]] > test266151307():
                        revert with 0, 65
                    if _18466 + ceil32(return_data.size) + ceil32(32 * mem[_18466 + mem[_18466]]) + 1 > test266151307() or ceil32(32 * mem[_18466 + mem[_18466]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _18466 + ceil32(return_data.size) + ceil32(32 * mem[_18466 + mem[_18466]]) + 1
                    mem[_18466 + ceil32(return_data.size)] = _18522
                    require return_data.size >= _18478 + (32 * _18522) + 32
                    mem[_18466 + ceil32(return_data.size) + 32 len 32 * _18522] = mem[_18466 + _18478 + 32 len 32 * _18522]
                    if _18522 < 1:
                        revert with 0, 17
                    if _18522 - 1 >= _18522:
                        revert with 0, 50
                    _24366 = mem[(32 * _18522 - 1) + _18466 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _24378 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[_24378]:
                        _24403 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_24403]:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(arg2)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _24458 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_24458]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            _24507 = mem[64]
                            mem[mem[64] + 36] = address(arg2)
                            mem[mem[64] + 68] = -1
                            _24516 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
                            mem[64] = mem[64] + 164
                            mem[_24507 + 100] = 32
                            mem[_24507 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            _24567 = mem[_24516]
                            mem[_24507 + 164 len ceil32(mem[_24516])] = mem[_24516 + 32 len ceil32(mem[_24516])]
                            if ceil32(_24567) > _24567:
                                mem[_24567 + _24507 + 164] = 0
                            call address(ext_call.return_data[0]) with:
                                 gas gas_remaining wei
                                args mem[_24507 + 168 len _24567 - 4]
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
                                mem[_24507 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_24507 + 196] == bool(mem[_24507 + 196])
                                    if not mem[_24507 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg2))
                        call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12355, _24366, 0, 0, address(arg3), block.timestamp
                    else:
                        _24404 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_24404]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _24421 = mem[64]
                        mem[mem[64] + 36] = address(arg2)
                        mem[mem[64] + 68] = -1
                        _24436 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
                        mem[64] = mem[64] + 164
                        mem[_24421 + 100] = 32
                        mem[_24421 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        _24499 = mem[_24436]
                        mem[_24421 + 164 len ceil32(mem[_24436])] = mem[_24436 + 32 len ceil32(mem[_24436])]
                        if ceil32(_24499) > _24499:
                            mem[_24499 + _24421 + 164] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[_24421 + 168 len _24499 - 4]
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
                            mem[_24421 + 168] = this.address
                            mem[_24421 + 200] = address(arg2)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(arg2)
                            mem[_24421 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[_24421 + ceil32(return_data.size) + 168] = this.address
                                mem[_24421 + ceil32(return_data.size) + 200] = address(arg2)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args this.address, address(arg2)
                                mem[_24421 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_24421 + (2 * ceil32(return_data.size)) + 200] = address(arg2)
                                mem[_24421 + (2 * ceil32(return_data.size)) + 232] = -1
                                mem[_24421 + (2 * ceil32(return_data.size)) + 164] = 68
                                mem[_24421 + (2 * ceil32(return_data.size)) + 196 len 4] = approve(address rg1, uint256 rg2)
                                mem[_24421 + (2 * ceil32(return_data.size)) + 264] = 32
                                mem[_24421 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                mem[_24421 + (2 * ceil32(return_data.size)) + 328 len 96] = 0, address(arg2), -1, 0
                                mem[_24421 + (2 * ceil32(return_data.size)) + 396] = 0
                                call address(ext_call.return_data[0]) with:
                                   funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
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
                                    mem[_24421 + (2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_24421 + (2 * ceil32(return_data.size)) + 360] == bool(mem[_24421 + (2 * ceil32(return_data.size)) + 360])
                                        if not mem[_24421 + (2 * ceil32(return_data.size)) + 360]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg2))
                            call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12355, _24366, 0, 0, address(arg3), block.timestamp
                        else:
                            mem[_24421 + 164] = return_data.size
                            mem[_24421 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_24421 + 196] == bool(mem[_24421 + 196])
                                if not mem[_24421 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_24421 + ceil32(return_data.size) + 169] = this.address
                            mem[_24421 + ceil32(return_data.size) + 201] = address(arg2)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(arg2)
                            mem[_24421 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(address(arg2))
                                call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12355, _24366, 0, 0, address(arg3), block.timestamp
                            else:
                                mem[_24421 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                mem[_24421 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(arg2)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args this.address, address(arg2)
                                mem[_24421 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = address(arg2)
                                mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = -1
                                mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = 68
                                mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = approve(address rg1, uint256 rg2)
                                mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
                                mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = 0, address(arg2), -1, 0
                                mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 0
                                call address(ext_call.return_data[0]) with:
                                   funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
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
                                    require ext_code.size(address(arg2))
                                    call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12355, _24366, 0, 0, address(arg3), block.timestamp
                                else:
                                    mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = return_data.size
                                    mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_24421 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_24421 + (4 * ceil32(return_data.size)) + 334] = 32
                                        mem[_24421 + (4 * ceil32(return_data.size)) + 366] = 32
                                        mem[_24421 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                                        revert with memory
                                          from _24421 + (4 * ceil32(return_data.size)) + 330
                                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] == bool(mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361])
                                        if not mem[_24421 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361]:
                                            mem[_24421 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_24421 + (4 * ceil32(return_data.size)) + 334] = 32
                                            mem[_24421 + (4 * ceil32(return_data.size)) + 366] = 42
                                            mem[_24421 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                                            mem[_24421 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                            revert with memory
                                              from _24421 + (4 * ceil32(return_data.size)) + 330
                                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                    mem[_24421 + (4 * ceil32(return_data.size)) + 334] = address(ext_call.return_data[0])
                                    mem[_24421 + (4 * ceil32(return_data.size)) + 366] = address(ext_call.return_data[0])
                                    mem[_24421 + (4 * ceil32(return_data.size)) + 398] = _12355
                                    mem[_24421 + (4 * ceil32(return_data.size)) + 430] = _24366
                                    mem[_24421 + (4 * ceil32(return_data.size)) + 462] = 0
                                    mem[_24421 + (4 * ceil32(return_data.size)) + 494] = 0
                                    mem[_24421 + (4 * ceil32(return_data.size)) + 526] = address(arg3)
                                    mem[_24421 + (4 * ceil32(return_data.size)) + 558] = block.timestamp
                                    require ext_code.size(address(arg2))
                                    call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args mem[_24421 + (4 * ceil32(return_data.size)) + 334 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
            else:
                mem[(2 * ceil32(return_data.size)) + 96] = 3
                mem[(2 * ceil32(return_data.size)) + 128] = stor1
                mem[(2 * ceil32(return_data.size)) + 160] = stor2[address(ext_call.return_data[0])][address(arg2)]
                mem[(2 * ceil32(return_data.size)) + 192] = address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
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
                require ext_code.size(address(arg2))
                call address(arg2).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value msg.value / 2 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 388 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _6202 = mem[(2 * ceil32(return_data.size)) + 224 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                _6210 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225
                mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                require return_data.size >= _6202 + (32 * _6210) + 32
                mem[(4 * ceil32(return_data.size)) + 256 len 32 * _6210] = mem[(2 * ceil32(return_data.size)) + _6202 + 256 len 32 * _6210]
                if _6210 < 1:
                    revert with 0, 17
                if _6210 - 1 >= _6210:
                    revert with 0, 50
                _12356 = mem[(32 * _6210 - 1) + (4 * ceil32(return_data.size)) + 256]
                if msg.value < msg.value / 2:
                    revert with 0, 17
                mem[0] = address(arg2)
                mem[32] = sha3(address(ext_call.return_data[0]), 2)
                if not stor2[address(ext_call.return_data[0])][address(arg2)]:
                    _12393 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if not mem[_12393]:
                        revert with 0, 50
                    mem[_12393 + 32] = stor1
                    if 1 >= mem[_12393]:
                        revert with 0, 50
                    mem[_12393 + 64] = address(ext_call.return_data[0])
                    mem[_12393 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[_12393 + 100] = 0
                    mem[_12393 + 132] = 128
                    mem[_12393 + 228] = mem[_12393]
                    idx = 0
                    s = _12393 + 32
                    t = _12393 + 260
                    while idx < mem[_12393]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_12393 + 164] = this.address
                    mem[_12393 + 196] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).mem[mem[64] len 4] with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _12393 + (32 * mem[_12393]) + -mem[64] + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18467 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18479 = mem[_18467]
                    require mem[_18467] <= test266151307()
                    require _18467 + mem[_18467] + 31 < _18467 + return_data.size
                    _18523 = mem[_18467 + mem[_18467]]
                    if mem[_18467 + mem[_18467]] > test266151307():
                        revert with 0, 65
                    if _18467 + ceil32(return_data.size) + ceil32(32 * mem[_18467 + mem[_18467]]) + 1 > test266151307() or ceil32(32 * mem[_18467 + mem[_18467]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _18467 + ceil32(return_data.size) + ceil32(32 * mem[_18467 + mem[_18467]]) + 1
                    mem[_18467 + ceil32(return_data.size)] = _18523
                    require return_data.size >= _18479 + (32 * _18523) + 32
                    mem[_18467 + ceil32(return_data.size) + 32 len 32 * _18523] = mem[_18467 + _18479 + 32 len 32 * _18523]
                    if _18523 < 1:
                        revert with 0, 17
                    if _18523 - 1 >= _18523:
                        revert with 0, 50
                    _24367 = mem[(32 * _18523 - 1) + _18467 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _24379 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[_24379]:
                        _24405 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_24405]:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(arg2)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _24459 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_24459]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            _24509 = mem[64]
                            mem[mem[64] + 36] = address(arg2)
                            mem[mem[64] + 68] = -1
                            _24519 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
                            mem[64] = mem[64] + 164
                            mem[_24509 + 100] = 32
                            mem[_24509 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            _24569 = mem[_24519]
                            mem[_24509 + 164 len ceil32(mem[_24519])] = mem[_24519 + 32 len ceil32(mem[_24519])]
                            if ceil32(_24569) > _24569:
                                mem[_24569 + _24509 + 164] = 0
                            call address(ext_call.return_data[0]) with:
                                 gas gas_remaining wei
                                args mem[_24509 + 168 len _24569 - 4]
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
                                mem[_24509 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_24509 + 196] == bool(mem[_24509 + 196])
                                    if not mem[_24509 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg2))
                        call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12356, _24367, 0, 0, address(arg3), block.timestamp
                    else:
                        _24406 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_24406]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _24424 = mem[64]
                        mem[mem[64] + 36] = address(arg2)
                        mem[mem[64] + 68] = -1
                        _24441 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
                        mem[64] = mem[64] + 164
                        mem[_24424 + 100] = 32
                        mem[_24424 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        _24501 = mem[_24441]
                        mem[_24424 + 164 len ceil32(mem[_24441])] = mem[_24441 + 32 len ceil32(mem[_24441])]
                        if ceil32(_24501) > _24501:
                            mem[_24501 + _24424 + 164] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[_24424 + 168 len _24501 - 4]
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
                            mem[_24424 + 168] = this.address
                            mem[_24424 + 200] = address(arg2)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(arg2)
                            mem[_24424 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[_24424 + ceil32(return_data.size) + 168] = this.address
                                mem[_24424 + ceil32(return_data.size) + 200] = address(arg2)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args this.address, address(arg2)
                                mem[_24424 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_24424 + (2 * ceil32(return_data.size)) + 200] = address(arg2)
                                mem[_24424 + (2 * ceil32(return_data.size)) + 232] = -1
                                mem[_24424 + (2 * ceil32(return_data.size)) + 164] = 68
                                mem[_24424 + (2 * ceil32(return_data.size)) + 196 len 4] = approve(address rg1, uint256 rg2)
                                mem[_24424 + (2 * ceil32(return_data.size)) + 264] = 32
                                mem[_24424 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                mem[_24424 + (2 * ceil32(return_data.size)) + 328 len 96] = 0, address(arg2), -1, 0
                                mem[_24424 + (2 * ceil32(return_data.size)) + 396] = 0
                                call address(ext_call.return_data[0]) with:
                                   funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
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
                                    mem[_24424 + (2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_24424 + (2 * ceil32(return_data.size)) + 360] == bool(mem[_24424 + (2 * ceil32(return_data.size)) + 360])
                                        if not mem[_24424 + (2 * ceil32(return_data.size)) + 360]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg2))
                            call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12356, _24367, 0, 0, address(arg3), block.timestamp
                        else:
                            mem[_24424 + 164] = return_data.size
                            mem[_24424 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_24424 + 196] == bool(mem[_24424 + 196])
                                if not mem[_24424 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_24424 + ceil32(return_data.size) + 169] = this.address
                            mem[_24424 + ceil32(return_data.size) + 201] = address(arg2)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(arg2)
                            mem[_24424 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(address(arg2))
                                call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12356, _24367, 0, 0, address(arg3), block.timestamp
                            else:
                                mem[_24424 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                mem[_24424 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(arg2)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args this.address, address(arg2)
                                mem[_24424 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = address(arg2)
                                mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = -1
                                mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = 68
                                mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = approve(address rg1, uint256 rg2)
                                mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
                                mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = 0, address(arg2), -1, 0
                                mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 0
                                call address(ext_call.return_data[0]) with:
                                   funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
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
                                    require ext_code.size(address(arg2))
                                    call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12356, _24367, 0, 0, address(arg3), block.timestamp
                                else:
                                    mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = return_data.size
                                    mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_24424 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_24424 + (4 * ceil32(return_data.size)) + 334] = 32
                                        mem[_24424 + (4 * ceil32(return_data.size)) + 366] = 32
                                        mem[_24424 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                                        revert with memory
                                          from _24424 + (4 * ceil32(return_data.size)) + 330
                                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] == bool(mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361])
                                        if not mem[_24424 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361]:
                                            mem[_24424 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_24424 + (4 * ceil32(return_data.size)) + 334] = 32
                                            mem[_24424 + (4 * ceil32(return_data.size)) + 366] = 42
                                            mem[_24424 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                                            mem[_24424 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                            revert with memory
                                              from _24424 + (4 * ceil32(return_data.size)) + 330
                                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                    mem[_24424 + (4 * ceil32(return_data.size)) + 334] = address(ext_call.return_data[0])
                                    mem[_24424 + (4 * ceil32(return_data.size)) + 366] = address(ext_call.return_data[0])
                                    mem[_24424 + (4 * ceil32(return_data.size)) + 398] = _12356
                                    mem[_24424 + (4 * ceil32(return_data.size)) + 430] = _24367
                                    mem[_24424 + (4 * ceil32(return_data.size)) + 462] = 0
                                    mem[_24424 + (4 * ceil32(return_data.size)) + 494] = 0
                                    mem[_24424 + (4 * ceil32(return_data.size)) + 526] = address(arg3)
                                    mem[_24424 + (4 * ceil32(return_data.size)) + 558] = block.timestamp
                                    require ext_code.size(address(arg2))
                                    call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args mem[_24424 + (4 * ceil32(return_data.size)) + 334 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
                else:
                    _12395 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if not mem[_12395]:
                        revert with 0, 50
                    mem[_12395 + 32] = stor1
                    mem[0] = address(arg2)
                    mem[32] = sha3(address(ext_call.return_data[0]), 2)
                    if 1 >= mem[_12395]:
                        revert with 0, 50
                    mem[_12395 + 64] = stor2[address(ext_call.return_data[0])][address(arg2)]
                    if 2 >= mem[_12395]:
                        revert with 0, 50
                    mem[_12395 + 96] = address(ext_call.return_data[0])
                    mem[_12395 + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[_12395 + 132] = 0
                    mem[_12395 + 164] = 128
                    mem[_12395 + 260] = mem[_12395]
                    idx = 0
                    s = _12395 + 32
                    t = _12395 + 292
                    while idx < mem[_12395]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_12395 + 196] = this.address
                    mem[_12395 + 228] = block.timestamp
                    require ext_code.size(address(arg2))
                    call address(arg2).mem[mem[64] len 4] with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _12395 + (32 * mem[_12395]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18468 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18480 = mem[_18468]
                    require mem[_18468] <= test266151307()
                    require _18468 + mem[_18468] + 31 < _18468 + return_data.size
                    _18524 = mem[_18468 + mem[_18468]]
                    if mem[_18468 + mem[_18468]] > test266151307():
                        revert with 0, 65
                    if _18468 + ceil32(return_data.size) + ceil32(32 * mem[_18468 + mem[_18468]]) + 1 > test266151307() or ceil32(32 * mem[_18468 + mem[_18468]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _18468 + ceil32(return_data.size) + ceil32(32 * mem[_18468 + mem[_18468]]) + 1
                    mem[_18468 + ceil32(return_data.size)] = _18524
                    require return_data.size >= _18480 + (32 * _18524) + 32
                    mem[_18468 + ceil32(return_data.size) + 32 len 32 * _18524] = mem[_18468 + _18480 + 32 len 32 * _18524]
                    if _18524 < 1:
                        revert with 0, 17
                    if _18524 - 1 >= _18524:
                        revert with 0, 50
                    _24368 = mem[(32 * _18524 - 1) + _18468 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _24380 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[_24380]:
                        _24407 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_24407]:
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(arg2)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(arg2)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _24460 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_24460]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            _24511 = mem[64]
                            mem[mem[64] + 36] = address(arg2)
                            mem[mem[64] + 68] = -1
                            _24522 = mem[64]
                            mem[mem[64]] = 68
                            mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
                            mem[64] = mem[64] + 164
                            mem[_24511 + 100] = 32
                            mem[_24511 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            _24571 = mem[_24522]
                            mem[_24511 + 164 len ceil32(mem[_24522])] = mem[_24522 + 32 len ceil32(mem[_24522])]
                            if ceil32(_24571) > _24571:
                                mem[_24571 + _24511 + 164] = 0
                            call address(ext_call.return_data[0]) with:
                                 gas gas_remaining wei
                                args mem[_24511 + 168 len _24571 - 4]
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
                                mem[_24511 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_24511 + 196] == bool(mem[_24511 + 196])
                                    if not mem[_24511 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg2))
                        call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12356, _24368, 0, 0, address(arg3), block.timestamp
                    else:
                        _24408 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_24408]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _24427 = mem[64]
                        mem[mem[64] + 36] = address(arg2)
                        mem[mem[64] + 68] = -1
                        _24446 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address rg1, uint256 rg2)
                        mem[64] = mem[64] + 164
                        mem[_24427 + 100] = 32
                        mem[_24427 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        _24503 = mem[_24446]
                        mem[_24427 + 164 len ceil32(mem[_24446])] = mem[_24446 + 32 len ceil32(mem[_24446])]
                        if ceil32(_24503) > _24503:
                            mem[_24503 + _24427 + 164] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args mem[_24427 + 168 len _24503 - 4]
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
                            mem[_24427 + 168] = this.address
                            mem[_24427 + 200] = address(arg2)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(arg2)
                            mem[_24427 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[_24427 + ceil32(return_data.size) + 168] = this.address
                                mem[_24427 + ceil32(return_data.size) + 200] = address(arg2)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args this.address, address(arg2)
                                mem[_24427 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_24427 + (2 * ceil32(return_data.size)) + 200] = address(arg2)
                                mem[_24427 + (2 * ceil32(return_data.size)) + 232] = -1
                                mem[_24427 + (2 * ceil32(return_data.size)) + 164] = 68
                                mem[_24427 + (2 * ceil32(return_data.size)) + 196 len 4] = approve(address rg1, uint256 rg2)
                                mem[_24427 + (2 * ceil32(return_data.size)) + 264] = 32
                                mem[_24427 + (2 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                mem[_24427 + (2 * ceil32(return_data.size)) + 328 len 96] = 0, address(arg2), -1, 0
                                mem[_24427 + (2 * ceil32(return_data.size)) + 396] = 0
                                call address(ext_call.return_data[0]) with:
                                   funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
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
                                    mem[_24427 + (2 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_24427 + (2 * ceil32(return_data.size)) + 360] == bool(mem[_24427 + (2 * ceil32(return_data.size)) + 360])
                                        if not mem[_24427 + (2 * ceil32(return_data.size)) + 360]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg2))
                            call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12356, _24368, 0, 0, address(arg3), block.timestamp
                        else:
                            mem[_24427 + 164] = return_data.size
                            mem[_24427 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_24427 + 196] == bool(mem[_24427 + 196])
                                if not mem[_24427 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_24427 + ceil32(return_data.size) + 169] = this.address
                            mem[_24427 + ceil32(return_data.size) + 201] = address(arg2)
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(arg2)
                            mem[_24427 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(address(arg2))
                                call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12356, _24368, 0, 0, address(arg3), block.timestamp
                            else:
                                mem[_24427 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                mem[_24427 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(arg2)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args this.address, address(arg2)
                                mem[_24427 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = address(arg2)
                                mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 233] = -1
                                mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = 68
                                mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 197 len 4] = approve(address rg1, uint256 rg2)
                                mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 265] = 32
                                mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(ext_call.return_data[0])):
                                    revert with 0, 'Address: call to non-contract'
                                mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 96] = 0, address(arg2), -1, 0
                                mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 0
                                call address(ext_call.return_data[0]) with:
                                   funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
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
                                    require ext_code.size(address(arg2))
                                    call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _12356, _24368, 0, 0, address(arg3), block.timestamp
                                else:
                                    mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = return_data.size
                                    mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_24427 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_24427 + (4 * ceil32(return_data.size)) + 334] = 32
                                        mem[_24427 + (4 * ceil32(return_data.size)) + 366] = 32
                                        mem[_24427 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                                        revert with memory
                                          from _24427 + (4 * ceil32(return_data.size)) + 330
                                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361] == bool(mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361])
                                        if not mem[_24427 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 361]:
                                            mem[_24427 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_24427 + (4 * ceil32(return_data.size)) + 334] = 32
                                            mem[_24427 + (4 * ceil32(return_data.size)) + 366] = 42
                                            mem[_24427 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                                            mem[_24427 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                            revert with memory
                                              from _24427 + (4 * ceil32(return_data.size)) + 330
                                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                    mem[_24427 + (4 * ceil32(return_data.size)) + 334] = address(ext_call.return_data[0])
                                    mem[_24427 + (4 * ceil32(return_data.size)) + 366] = address(ext_call.return_data[0])
                                    mem[_24427 + (4 * ceil32(return_data.size)) + 398] = _12356
                                    mem[_24427 + (4 * ceil32(return_data.size)) + 430] = _24368
                                    mem[_24427 + (4 * ceil32(return_data.size)) + 462] = 0
                                    mem[_24427 + (4 * ceil32(return_data.size)) + 494] = 0
                                    mem[_24427 + (4 * ceil32(return_data.size)) + 526] = address(arg3)
                                    mem[_24427 + (4 * ceil32(return_data.size)) + 558] = block.timestamp
                                    require ext_code.size(address(arg2))
                                    call address(arg2).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args mem[_24427 + (4 * ceil32(return_data.size)) + 334 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}



}
