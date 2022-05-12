contract main {




// =====================  Runtime code  =====================


#
#  - sub_0dbf321d(?)
#  - sub_1b71afbd(?)
#  - sub_43530f0e(?)
#  - sub_5cc7647c(?)
#  - sub_89176c8f(?)
#  - _fallback()
#
address owner;
address stor1;
address sub_02a9f8faAddress;
mapping of uint8 stor4;

function sub_02a9f8fa(?) {
    return sub_02a9f8faAddress
}

function owner() {
    return owner
}

function sub_9416cbc6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[arg1])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setZapper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalid zapper address'
    sub_02a9f8faAddress = arg1
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

function sub_faa1740d(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg2))
    staticcall address(arg2).token() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = address(arg2)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, address(arg2)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 164] = this.address
        require ext_code.size(sub_02a9f8faAddress)
        call sub_02a9f8faAddress.0x35e8b7d5 with:
           value msg.value wei
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(arg1), this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg2))
        call address(arg2).deposit(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(6 * ceil32(return_data.size)) + 132] = address(arg3)
        mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 96] = 68
        mem[(6 * ceil32(return_data.size)) + 132 len 28] = address(arg3) << 64
        mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
        mem[(6 * ceil32(return_data.size)) + 196] = 32
        mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(arg2)):
            revert with 0, 'Address: call to non-contract'
        mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, ext_call.return_data[0], 0
        mem[(6 * ceil32(return_data.size)) + 328] = 0
        call address(arg2) with:
           funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, ext_call.return_data[0], 0) << 288)
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
            mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                if not mem[(6 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        mem[(2 * ceil32(return_data.size)) + 132] = address(arg2)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args this.address, address(arg2)
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(4 * ceil32(return_data.size)) + 132] = address(arg2)
        mem[(4 * ceil32(return_data.size)) + 164] = -1
        mem[(4 * ceil32(return_data.size)) + 96] = 68
        mem[(4 * ceil32(return_data.size)) + 132 len 28] = address(arg2) << 64
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[(4 * ceil32(return_data.size)) + 196] = 32
        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, -1, 0
        mem[(4 * ceil32(return_data.size)) + 328] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, -1, 0) << 288)
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
            mem[(4 * ceil32(return_data.size)) + 264] = address(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 296] = address(arg1)
            mem[(4 * ceil32(return_data.size)) + 328] = this.address
            require ext_code.size(sub_02a9f8faAddress)
            call sub_02a9f8faAddress.0x35e8b7d5 with:
               value msg.value wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(arg1), this.address
            mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg2))
            call address(arg2).deposit(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 264] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(7 * ceil32(return_data.size)) + 296] = address(arg3)
            mem[(7 * ceil32(return_data.size)) + 328] = ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 260] = 68
            mem[(7 * ceil32(return_data.size)) + 292 len 4] = transfer(address arg1, uint256 arg2)
            mem[(7 * ceil32(return_data.size)) + 360] = 32
            mem[(7 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg2)):
                revert with 0, 'Address: call to non-contract'
            mem[(7 * ceil32(return_data.size)) + 424 len 96] = 0, address(arg3), ext_call.return_data[0], 0
            mem[(7 * ceil32(return_data.size)) + 492] = 0
            call address(arg2) with:
               funct Mask(32, 224, 0, address(arg3), ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(arg3), ext_call.return_data[0], 0) << 288)
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
                mem[(7 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + 456] == bool(mem[(7 * ceil32(return_data.size)) + 456])
                    if not mem[(7 * ceil32(return_data.size)) + 456]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(4 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                if not mem[(4 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = address(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg1)
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
            require ext_code.size(sub_02a9f8faAddress)
            call sub_02a9f8faAddress.0x35e8b7d5 with:
               value msg.value wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(arg1), this.address
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg2))
            call address(arg2).deposit(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg3)
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = transfer(address arg1, uint256 arg2)
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg2)):
                revert with 0, 'Address: call to non-contract'
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(arg3), ext_call.return_data[0], 0
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
            call address(arg2) with:
               funct Mask(32, 224, 0, address(arg3), ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(arg3), ext_call.return_data[0], 0) << 288)
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
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(10 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                    if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function sub_b0395d26(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg2))
    staticcall address(arg2).token() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = address(arg2)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, address(arg2)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(stor1)
        call stor1.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 100] = stor1
        mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 164] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 196] = address(arg1)
        mem[(4 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(sub_02a9f8faAddress)
        call sub_02a9f8faAddress.0xba2ebf96 with:
             gas gas_remaining wei
            args stor1, ext_call.return_data[0], address(ext_call.return_data[0]), address(arg1), this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg2))
        call address(arg2).deposit(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(7 * ceil32(return_data.size)) + 132] = address(arg3)
        mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 96] = 68
        mem[(7 * ceil32(return_data.size)) + 132 len 28] = address(arg3) << 64
        mem[(7 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
        mem[(7 * ceil32(return_data.size)) + 196] = 32
        mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(arg2)):
            revert with 0, 'Address: call to non-contract'
        mem[(7 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, ext_call.return_data[0], 0
        mem[(7 * ceil32(return_data.size)) + 328] = 0
        call address(arg2) with:
           funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, ext_call.return_data[0], 0) << 288)
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
            mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                if not mem[(7 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        mem[(2 * ceil32(return_data.size)) + 132] = address(arg2)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args this.address, address(arg2)
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(4 * ceil32(return_data.size)) + 132] = address(arg2)
        mem[(4 * ceil32(return_data.size)) + 164] = -1
        mem[(4 * ceil32(return_data.size)) + 96] = 68
        mem[(4 * ceil32(return_data.size)) + 132 len 28] = address(arg2) << 64
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[(4 * ceil32(return_data.size)) + 196] = 32
        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, -1, 0
        mem[(4 * ceil32(return_data.size)) + 328] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, -1, 0) << 288)
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
            require ext_code.size(stor1)
            call stor1.deposit() with:
               value msg.value wei
                 gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 264] = stor1
            mem[(6 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 328] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 360] = address(arg1)
            mem[(6 * ceil32(return_data.size)) + 392] = this.address
            require ext_code.size(sub_02a9f8faAddress)
            call sub_02a9f8faAddress.0xba2ebf96 with:
                 gas gas_remaining wei
                args stor1, ext_call.return_data[0], address(ext_call.return_data[0]), address(arg1), this.address
            mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg2))
            call address(arg2).deposit(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 264] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(7 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(8 * ceil32(return_data.size)) + 296] = address(arg3)
            mem[(8 * ceil32(return_data.size)) + 328] = ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 260] = 68
            mem[(8 * ceil32(return_data.size)) + 292 len 4] = transfer(address arg1, uint256 arg2)
            mem[(8 * ceil32(return_data.size)) + 360] = 32
            mem[(8 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg2)):
                revert with 0, 'Address: call to non-contract'
            mem[(8 * ceil32(return_data.size)) + 424 len 96] = 0, address(arg3), ext_call.return_data[0], 0
            mem[(8 * ceil32(return_data.size)) + 492] = 0
            call address(arg2) with:
               funct Mask(32, 224, 0, address(arg3), ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(arg3), ext_call.return_data[0], 0) << 288)
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
                mem[(8 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(8 * ceil32(return_data.size)) + 456] == bool(mem[(8 * ceil32(return_data.size)) + 456])
                    if not mem[(8 * ceil32(return_data.size)) + 456]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(4 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                if not mem[(4 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(stor1)
            call stor1.deposit() with:
               value msg.value wei
                 gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = stor1
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = address(arg1)
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
            require ext_code.size(sub_02a9f8faAddress)
            call sub_02a9f8faAddress.0xba2ebf96 with:
                 gas gas_remaining wei
                args stor1, ext_call.return_data[0], address(ext_call.return_data[0]), address(arg1), this.address
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg2))
            call address(arg2).deposit(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg3)
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = transfer(address arg1, uint256 arg2)
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg2)):
                revert with 0, 'Address: call to non-contract'
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(arg3), ext_call.return_data[0], 0
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
            call address(arg2) with:
               funct Mask(32, 224, 0, address(arg3), ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(arg3), ext_call.return_data[0], 0) << 288)
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
                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(12 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                    if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
