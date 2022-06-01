contract main {




// =====================  Runtime code  =====================


#
#  - zapIn(address arg1, address arg2)
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
uint32 stor4;
address stor4;
uint256 stor4;

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
    address(stor4) = arg1
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
    stor2[address(arg1)][address(stor4)] = arg2
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

function swapToNative(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    mem[100] = this.address
    mem[132] = address(stor4)
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(stor4)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[ceil32(return_data.size) + 132] = address(stor4)
    mem[ceil32(return_data.size) + 164] = -1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
    mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), -1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), Mask(224, 0, stor4) == bool(uint32(this.address), Mask(224, 0, stor4))
            if not uint32(this.address), Mask(224, 0, stor4):
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + 264] = msg.sender
        mem[ceil32(return_data.size) + 296] = this.address
        mem[ceil32(return_data.size) + 328] = arg2
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 292] = arg1
        if not stor2[address(arg1)][address(stor4)]:
            mem[(2 * ceil32(return_data.size)) + 324] = stor1
            mem[0] = arg1
            mem[32] = 3
            if stor3[address(arg1)]:
                mem[(2 * ceil32(return_data.size)) + 356] = 0x2c0c059800000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 360] = arg2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 292
                t = (2 * ceil32(return_data.size)) + 552
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(stor4))
                call address(stor4).0x2c0c0598 with:
                     gas gas_remaining wei
                    args arg2, 0, 160, address(arg3), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 552 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            else:
                mem[(2 * ceil32(return_data.size)) + 356] = 0xe932f3ac00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 360] = arg2
                mem[(2 * ceil32(return_data.size)) + 392] = 0
                mem[(2 * ceil32(return_data.size)) + 424] = 160
                mem[(2 * ceil32(return_data.size)) + 520] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 292
                t = (2 * ceil32(return_data.size)) + 552
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 456] = arg3
                mem[(2 * ceil32(return_data.size)) + 488] = block.timestamp
                require ext_code.size(address(stor4))
                call address(stor4).0xe932f3ac with:
                     gas gas_remaining wei
                    args arg2, 0, 160, address(arg3), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 552 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 356
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 387 < (2 * ceil32(return_data.size)) + return_data.size + 356
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 357 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 1 < 0:
                    revert with 0, 65
                require return_data.size >= mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 32
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] < 1:
                    revert with 0, 17
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] - 1 >= mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]:
                    revert with 0, 50
        else:
            mem[(2 * ceil32(return_data.size)) + 324] = stor2[address(arg1)][address(stor4)]
            mem[(2 * ceil32(return_data.size)) + 356] = stor1
            mem[0] = arg1
            mem[32] = 3
            if stor3[address(arg1)]:
                mem[(2 * ceil32(return_data.size)) + 388] = 0x2c0c059800000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 392] = arg2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 292
                t = (2 * ceil32(return_data.size)) + 584
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(stor4))
                call address(stor4).0x2c0c0598 with:
                     gas gas_remaining wei
                    args arg2, 0, 160, address(arg3), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 584 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            else:
                mem[(2 * ceil32(return_data.size)) + 388] = 0xe932f3ac00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 392] = arg2
                mem[(2 * ceil32(return_data.size)) + 424] = 0
                mem[(2 * ceil32(return_data.size)) + 456] = 160
                mem[(2 * ceil32(return_data.size)) + 552] = 3
                idx = 0
                s = (2 * ceil32(return_data.size)) + 292
                t = (2 * ceil32(return_data.size)) + 584
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 488] = arg3
                mem[(2 * ceil32(return_data.size)) + 520] = block.timestamp
                require ext_code.size(address(stor4))
                call address(stor4).0xe932f3ac with:
                     gas gas_remaining wei
                    args arg2, 0, 160, address(arg3), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 584 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 388
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]) + 389 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]) + 1 < 0:
                    revert with 0, 65
                require return_data.size >= mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]) + 32
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388] < 1:
                    revert with 0, 17
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388] - 1 >= mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]:
                    revert with 0, 50
    else:
        mem[ceil32(return_data.size) + 260] = return_data.size
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = msg.sender
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = arg2
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = arg1
        if not stor2[address(arg1)][address(stor4)]:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = stor1
            mem[0] = arg1
            mem[32] = 3
            if stor3[address(arg1)]:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x2c0c059800000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg2
                idx = 0
                s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(stor4))
                call address(stor4).0x2c0c0598 with:
                     gas gas_remaining wei
                    args arg2, 0, 160, address(arg3), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0xe932f3ac00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg2
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 160
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg3
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = block.timestamp
                require ext_code.size(address(stor4))
                call address(stor4).0xe932f3ac with:
                     gas gas_remaining wei
                    args arg2, 0, 160, address(arg3), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 388 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 357
                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 358 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 1 < 0:
                    revert with 0, 65
                require return_data.size >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 32
                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] < 1:
                    revert with 0, 17
                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] - 1 >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]:
                    revert with 0, 50
        else:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = stor2[address(arg1)][address(stor4)]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = stor1
            mem[0] = arg1
            mem[32] = 3
            if stor3[address(arg1)]:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x2c0c059800000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg2
                idx = 0
                s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(stor4))
                call address(stor4).0x2c0c0598 with:
                     gas gas_remaining wei
                    args arg2, 0, 160, address(arg3), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0xe932f3ac00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg2
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 160
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 3
                idx = 0
                s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = arg3
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = block.timestamp
                require ext_code.size(address(stor4))
                call address(stor4).0xe932f3ac with:
                     gas gas_remaining wei
                    args arg2, 0, 160, address(arg3), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]) + 390 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]) + 1 < 0:
                    revert with 0, 65
                require return_data.size >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]) + 32
                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389] < 1:
                    revert with 0, 17
                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389] - 1 >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]:
                    revert with 0, 50
}

function zapAcross(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    mem[100] = this.address
    mem[132] = -1
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, -1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = address(stor4)
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(stor4)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[(2 * ceil32(return_data.size)) + 132] = address(stor4)
    mem[(2 * ceil32(return_data.size)) + 164] = -1
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), -1, 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff == bool(uint32(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
            if not uint32(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[(2 * ceil32(return_data.size)) + 264] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 296] = this.address
        mem[(2 * ceil32(return_data.size)) + 328] = arg2
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(arg1)
        staticcall arg1.token0() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + 264] = this.address
        mem[(6 * ceil32(return_data.size)) + 296] = address(stor4)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(stor4)
        mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(7 * ceil32(return_data.size)) + 296] = address(stor4)
        mem[(7 * ceil32(return_data.size)) + 328] = -1
        mem[(7 * ceil32(return_data.size)) + 260] = 68
        mem[(7 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
        mem[(7 * ceil32(return_data.size)) + 360] = 32
        mem[(7 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(7 * ceil32(return_data.size)) + 424 len 96] = 0, address(stor4), -1, 0
        mem[(7 * ceil32(return_data.size)) + 492] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, 0, address(stor4), -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(stor4), -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff == bool(uint32(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                if not uint32(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(arg1)
            staticcall arg1.token1() with:
                    gas gas_remaining wei
            mem[(7 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(8 * ceil32(return_data.size)) + 428] = this.address
            mem[(8 * ceil32(return_data.size)) + 460] = address(stor4)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args mem[(8 * ceil32(return_data.size)) + 428 len ceil32(return_data.size) + 64]
            mem[(8 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            'SafeERC20: approve from non-zero to non-zero allowance',
                            mem[(10 * ceil32(return_data.size)) + 556 len 5 * ceil32(return_data.size)]
            mem[(10 * ceil32(return_data.size)) + 460] = address(stor4)
            mem[(10 * ceil32(return_data.size)) + 492] = -1
            mem[(10 * ceil32(return_data.size)) + 424] = 68
            mem[(10 * ceil32(return_data.size)) + 456 len 4] = approve(address arg1, uint256 arg2)
            mem[(10 * ceil32(return_data.size)) + 524] = 32
            mem[(10 * ceil32(return_data.size)) + 556] = 'SafeERC20: low-level call failed'
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[(10 * ceil32(return_data.size)) + 588 len 96] = 0, address(stor4), -1, 0
            mem[(10 * ceil32(return_data.size)) + 656] = 0
            call address(ext_call.return_data[0]) with:
               funct Mask(32, 224, 0, address(stor4), -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(stor4), -1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff == bool(uint32(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                    if not uint32(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(10 * ceil32(return_data.size)) + 592] = arg1
                mem[(10 * ceil32(return_data.size)) + 624] = arg2
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(arg1)
                call arg1.burn(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                mem[(11 * ceil32(return_data.size)) + 588 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(arg1)
                staticcall arg1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(arg1)
                staticcall arg1.token1() with:
                        gas gas_remaining wei
                mem[(15 * ceil32(return_data.size)) + 588] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(16 * ceil32(return_data.size)) + 592] = address(ext_call.return_data[0])
                mem[(16 * ceil32(return_data.size)) + 624] = address(ext_call.return_data[0])
                mem[(16 * ceil32(return_data.size)) + 656] = ext_call.return_data[0]
                mem[(16 * ceil32(return_data.size)) + 688] = ext_call.return_data[32]
                mem[(16 * ceil32(return_data.size)) + 720] = 0
                mem[(16 * ceil32(return_data.size)) + 752] = 0
                mem[(16 * ceil32(return_data.size)) + 784] = arg3
                mem[(16 * ceil32(return_data.size)) + 816] = block.timestamp
                require ext_code.size(address(stor4))
                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args mem[(16 * ceil32(return_data.size)) + 592 len ceil32(return_data.size) + 256]
            else:
                mem[(10 * ceil32(return_data.size)) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(10 * ceil32(return_data.size)) + 620] == bool(mem[(10 * ceil32(return_data.size)) + 620])
                    if not mem[(10 * ceil32(return_data.size)) + 620]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 593] = arg1
                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 625] = arg2
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(arg1)
                call arg1.burn(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 589 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(arg1)
                staticcall arg1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(arg1)
                staticcall arg1.token1() with:
                        gas gas_remaining wei
                mem[(15 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 593] = address(ext_call.return_data[0])
                mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 625] = address(ext_call.return_data[0])
                mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 657] = ext_call.return_data[0]
                mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 689] = ext_call.return_data[32]
                mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 721] = 0
                mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 753] = 0
                mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 785] = arg3
                mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 817] = block.timestamp
                require ext_code.size(address(stor4))
                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 593 len ceil32(return_data.size) + 256]
        else:
            mem[(7 * ceil32(return_data.size)) + 424] = return_data.size
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
            require ext_code.size(arg1)
            staticcall arg1.token1() with:
                    gas gas_remaining wei
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = this.address
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(stor4)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len ceil32(return_data.size) + 64]
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            'SafeERC20: approve from non-zero to non-zero allowance',
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 557 len 5 * ceil32(return_data.size)]
            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(stor4)
            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = -1
            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 68
            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 4] = approve(address arg1, uint256 arg2)
            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 32
            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'SafeERC20: low-level call failed'
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589 len 96] = 0, address(stor4), -1, 0
            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 657] = 0
            call address(ext_call.return_data[0]) with:
               funct Mask(32, 224, 0, address(stor4), -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(stor4), -1, 0) << 288)
            if return_data.size:
                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(13 * ceil32(return_data.size)) + 690 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] == bool(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621])
                    if not mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[(13 * ceil32(return_data.size)) + 722 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), arg2, mem[(13 * ceil32(return_data.size)) + 658 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(arg1)
                call arg1.burn(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(arg1)
                staticcall arg1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(arg1)
                staticcall arg1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(stor4))
                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], ext_call.return_data[32], 0, 0, address(arg3), block.timestamp, mem[(20 * ceil32(return_data.size)) + 850 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff == bool(uint32(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                    if not uint32(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 593] = arg1
                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 625] = arg2
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(arg1)
                call arg1.burn(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 589 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(arg1)
                staticcall arg1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(arg1)
                staticcall arg1.token1() with:
                        gas gas_remaining wei
                mem[(15 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 593] = address(ext_call.return_data[0])
                mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 625] = address(ext_call.return_data[0])
                mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 657] = ext_call.return_data[0]
                mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 689] = ext_call.return_data[32]
                mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 721] = 0
                mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 753] = 0
                mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 785] = arg3
                mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 817] = block.timestamp
                require ext_code.size(address(stor4))
                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 593 len ceil32(return_data.size) + 256]
    else:
        mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
            if not mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = msg.sender
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg2
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(arg1)
        staticcall arg1.token0() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(stor4)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(stor4)
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(stor4)
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = -1
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(stor4), -1, 0
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, 0, address(stor4), -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(stor4), -1, 0) << 288)
        if return_data.size:
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
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
            require ext_code.size(arg1)
            staticcall arg1.token1() with:
                    gas gas_remaining wei
            mem[(10 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(12 * ceil32(return_data.size)) + 430] = this.address
            mem[(12 * ceil32(return_data.size)) + 462] = address(stor4)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(stor4), mem[(12 * ceil32(return_data.size)) + 494 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            mem[(12 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            'SafeERC20: approve from non-zero to non-zero allowance',
                            mem[(13 * ceil32(return_data.size)) + 558 len (7 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            mem[(13 * ceil32(return_data.size)) + 462] = address(stor4)
            mem[(13 * ceil32(return_data.size)) + 494] = -1
            mem[(13 * ceil32(return_data.size)) + 426] = 68
            mem[(13 * ceil32(return_data.size)) + 458 len 4] = approve(address arg1, uint256 arg2)
            mem[(13 * ceil32(return_data.size)) + 526] = 32
            mem[(13 * ceil32(return_data.size)) + 558] = 'SafeERC20: low-level call failed'
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[(13 * ceil32(return_data.size)) + 590 len 96] = 0, address(stor4), -1, 0
            mem[(13 * ceil32(return_data.size)) + 658] = 0
            call address(ext_call.return_data[0]) with:
               funct Mask(32, 224, 0, address(stor4), -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(stor4), -1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff == bool(uint32(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                    if not uint32(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(13 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(13 * ceil32(return_data.size)) + 622] == bool(mem[(13 * ceil32(return_data.size)) + 622])
                    if not mem[(13 * ceil32(return_data.size)) + 622]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(arg1)
            call arg1.burn(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(arg1)
            staticcall arg1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(arg1)
            staticcall arg1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(stor4))
            call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], ext_call.return_data[32], 0, 0, address(arg3), block.timestamp
        else:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff == bool(uint32(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                if not uint32(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(arg1)
            staticcall arg1.token1() with:
                    gas gas_remaining wei
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = this.address
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(stor4)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len ceil32(return_data.size) + 64]
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            'SafeERC20: approve from non-zero to non-zero allowance',
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 557 len 5 * ceil32(return_data.size)]
            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = address(stor4)
            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = -1
            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 68
            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 4] = approve(address arg1, uint256 arg2)
            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 32
            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 'SafeERC20: low-level call failed'
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589 len 96] = 0, address(stor4), -1, 0
            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 657] = 0
            call address(ext_call.return_data[0]) with:
               funct Mask(32, 224, 0, address(stor4), -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(stor4), -1, 0) << 288)
            if return_data.size:
                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(13 * ceil32(return_data.size)) + 690 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] == bool(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621])
                    if not mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 621]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[(13 * ceil32(return_data.size)) + 722 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), arg2, mem[(13 * ceil32(return_data.size)) + 658 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(arg1)
                call arg1.burn(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(arg1)
                staticcall arg1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(arg1)
                staticcall arg1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(stor4))
                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], ext_call.return_data[32], 0, 0, address(arg3), block.timestamp, mem[(20 * ceil32(return_data.size)) + 850 len (5 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff == bool(uint32(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                    if not uint32(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 593] = arg1
                mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 625] = arg2
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(arg1)
                call arg1.burn(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 589 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(arg1)
                staticcall arg1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(arg1)
                staticcall arg1.token1() with:
                        gas gas_remaining wei
                mem[(15 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 593] = address(ext_call.return_data[0])
                mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 625] = address(ext_call.return_data[0])
                mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 657] = ext_call.return_data[0]
                mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 689] = ext_call.return_data[32]
                mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 721] = 0
                mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 753] = 0
                mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 785] = arg3
                mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 817] = block.timestamp
                require ext_code.size(address(stor4))
                call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args mem[(16 * ceil32(return_data.size)) + ceil32(return_data.size) + 593 len ceil32(return_data.size) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}

function swapToken(address arg1, uint256 arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg3 == arg3
    require arg4 == arg4
    mem[100] = this.address
    mem[132] = address(stor4)
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(stor4)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[ceil32(return_data.size) + 132] = address(stor4)
    mem[ceil32(return_data.size) + 164] = -1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
    mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), -1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), Mask(224, 0, stor4) == bool(uint32(this.address), Mask(224, 0, stor4))
            if not uint32(this.address), Mask(224, 0, stor4):
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + 264] = msg.sender
        mem[ceil32(return_data.size) + 296] = this.address
        mem[ceil32(return_data.size) + 328] = arg2
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not stor2[address(arg1)][address(stor4)]:
            if not stor2[address(arg3)][address(stor4)]:
                mem[(2 * ceil32(return_data.size)) + 292] = arg1
                if stor1 == arg1:
                    mem[(2 * ceil32(return_data.size)) + 324] = arg3
                    mem[0] = arg1
                    mem[32] = 3
                    if stor3[address(arg1)]:
                        mem[(2 * ceil32(return_data.size)) + 356] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 360] = arg2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 292
                        t = (2 * ceil32(return_data.size)) + 552
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(stor4))
                        call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 552 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        mem[(2 * ceil32(return_data.size)) + 356] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 360] = arg2
                        mem[(2 * ceil32(return_data.size)) + 392] = 0
                        mem[(2 * ceil32(return_data.size)) + 424] = 160
                        mem[(2 * ceil32(return_data.size)) + 520] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 292
                        t = (2 * ceil32(return_data.size)) + 552
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 456] = arg4
                        mem[(2 * ceil32(return_data.size)) + 488] = block.timestamp
                        require ext_code.size(address(stor4))
                        call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 552 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 356
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 387 < (2 * ceil32(return_data.size)) + return_data.size + 356
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 357 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 1 < 0:
                            revert with 0, 65
                        require return_data.size >= mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 32
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] < 1:
                            revert with 0, 17
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] - 1 >= mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]:
                            revert with 0, 50
                else:
                    if stor1 == arg3:
                        mem[(2 * ceil32(return_data.size)) + 324] = arg3
                        mem[0] = arg1
                        mem[32] = 3
                        if stor3[address(arg1)]:
                            mem[(2 * ceil32(return_data.size)) + 356] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 360] = arg2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 292
                            t = (2 * ceil32(return_data.size)) + 552
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(stor4))
                            call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 552 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg3)
                            staticcall arg3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            mem[(2 * ceil32(return_data.size)) + 356] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 360] = arg2
                            mem[(2 * ceil32(return_data.size)) + 392] = 0
                            mem[(2 * ceil32(return_data.size)) + 424] = 160
                            mem[(2 * ceil32(return_data.size)) + 520] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 292
                            t = (2 * ceil32(return_data.size)) + 552
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 456] = arg4
                            mem[(2 * ceil32(return_data.size)) + 488] = block.timestamp
                            require ext_code.size(address(stor4))
                            call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 552 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 356
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 387 < (2 * ceil32(return_data.size)) + return_data.size + 356
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] > test266151307():
                                revert with 0, 65
                            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 357 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 32
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] < 1:
                                revert with 0, 17
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] - 1 >= mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]:
                                revert with 0, 50
                    else:
                        mem[(2 * ceil32(return_data.size)) + 324] = stor1
                        mem[(2 * ceil32(return_data.size)) + 356] = arg3
                        mem[0] = arg1
                        mem[32] = 3
                        if stor3[address(arg1)]:
                            mem[(2 * ceil32(return_data.size)) + 388] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 392] = arg2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 292
                            t = (2 * ceil32(return_data.size)) + 584
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(stor4))
                            call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, 0, 160, address(arg4), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 584 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg3)
                            staticcall arg3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            mem[(2 * ceil32(return_data.size)) + 388] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 392] = arg2
                            mem[(2 * ceil32(return_data.size)) + 424] = 0
                            mem[(2 * ceil32(return_data.size)) + 456] = 160
                            mem[(2 * ceil32(return_data.size)) + 552] = 3
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 292
                            t = (2 * ceil32(return_data.size)) + 584
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 488] = arg4
                            mem[(2 * ceil32(return_data.size)) + 520] = block.timestamp
                            require ext_code.size(address(stor4))
                            call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, 0, 160, address(arg4), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 584 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 388
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388] > test266151307():
                                revert with 0, 65
                            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]) + 389 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]) + 32
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388] < 1:
                                revert with 0, 17
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388] - 1 >= mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]:
                                revert with 0, 50
            else:
                if arg1 == stor2[address(arg3)][address(stor4)]:
                    mem[(2 * ceil32(return_data.size)) + 292] = arg1
                    mem[(2 * ceil32(return_data.size)) + 324] = arg3
                    mem[0] = arg1
                    mem[32] = 3
                    if stor3[address(arg1)]:
                        mem[(2 * ceil32(return_data.size)) + 356] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 360] = arg2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 292
                        t = (2 * ceil32(return_data.size)) + 552
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(stor4))
                        call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 552 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        mem[(2 * ceil32(return_data.size)) + 356] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 360] = arg2
                        mem[(2 * ceil32(return_data.size)) + 392] = 0
                        mem[(2 * ceil32(return_data.size)) + 424] = 160
                        mem[(2 * ceil32(return_data.size)) + 520] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 292
                        t = (2 * ceil32(return_data.size)) + 552
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 456] = arg4
                        mem[(2 * ceil32(return_data.size)) + 488] = block.timestamp
                        require ext_code.size(address(stor4))
                        call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 552 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 356
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 387 < (2 * ceil32(return_data.size)) + return_data.size + 356
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 357 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 1 < 0:
                            revert with 0, 65
                        require return_data.size >= mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 32
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] < 1:
                            revert with 0, 17
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] - 1 >= mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]:
                            revert with 0, 50
                else:
                    if stor1 != arg1:
                        mem[(2 * ceil32(return_data.size)) + 292] = arg1
                        mem[(2 * ceil32(return_data.size)) + 324] = stor1
                        mem[(2 * ceil32(return_data.size)) + 356] = stor2[address(arg3)][address(stor4)]
                        mem[(2 * ceil32(return_data.size)) + 388] = arg3
                        if stor3[address(arg1)]:
                            mem[(2 * ceil32(return_data.size)) + 420] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 424] = arg2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 292
                            t = (2 * ceil32(return_data.size)) + 616
                            while idx < 4:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(stor4))
                            call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, 0, 160, address(arg4), block.timestamp, 4, mem[(2 * ceil32(return_data.size)) + 616 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg3)
                            staticcall arg3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            mem[(2 * ceil32(return_data.size)) + 420] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 424] = arg2
                            mem[(2 * ceil32(return_data.size)) + 456] = 0
                            mem[(2 * ceil32(return_data.size)) + 488] = 160
                            mem[(2 * ceil32(return_data.size)) + 584] = 4
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 292
                            t = (2 * ceil32(return_data.size)) + 616
                            while idx < 4:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 520] = arg4
                            mem[(2 * ceil32(return_data.size)) + 552] = block.timestamp
                            require ext_code.size(address(stor4))
                            call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, 0, 160, address(arg4), block.timestamp, 4, mem[(2 * ceil32(return_data.size)) + 616 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 420
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + 451 < (2 * ceil32(return_data.size)) + return_data.size + 420
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + 420] > test266151307():
                                revert with 0, 65
                            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + 420]) + 421 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + 420]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + 420]) + 32
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + 420] < 1:
                                revert with 0, 17
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + 420] - 1 >= mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + 420]:
                                revert with 0, 50
                    else:
                        mem[(2 * ceil32(return_data.size)) + 292] = stor1
                        mem[(2 * ceil32(return_data.size)) + 324] = stor2[address(arg3)][address(stor4)]
                        mem[(2 * ceil32(return_data.size)) + 356] = arg3
                        mem[0] = arg1
                        mem[32] = 3
                        if stor3[address(arg1)]:
                            mem[(2 * ceil32(return_data.size)) + 388] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 392] = arg2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 292
                            t = (2 * ceil32(return_data.size)) + 584
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(stor4))
                            call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, 0, 160, address(arg4), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 584 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg3)
                            staticcall arg3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            mem[(2 * ceil32(return_data.size)) + 388] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 392] = arg2
                            mem[(2 * ceil32(return_data.size)) + 424] = 0
                            mem[(2 * ceil32(return_data.size)) + 456] = 160
                            mem[(2 * ceil32(return_data.size)) + 552] = 3
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 292
                            t = (2 * ceil32(return_data.size)) + 584
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 488] = arg4
                            mem[(2 * ceil32(return_data.size)) + 520] = block.timestamp
                            require ext_code.size(address(stor4))
                            call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, 0, 160, address(arg4), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 584 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 388
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388] > test266151307():
                                revert with 0, 65
                            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]) + 389 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]) + 32
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388] < 1:
                                revert with 0, 17
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388] - 1 >= mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]:
                                revert with 0, 50
        else:
            if stor2[address(arg3)][address(stor4)]:
                mem[(2 * ceil32(return_data.size)) + 292] = arg1
                mem[(2 * ceil32(return_data.size)) + 324] = stor2[address(arg1)][address(stor4)]
                if stor2[address(arg1)][address(stor4)] == stor2[address(arg3)][address(stor4)]:
                    mem[(2 * ceil32(return_data.size)) + 356] = arg3
                    mem[0] = arg1
                    mem[32] = 3
                    if stor3[address(arg1)]:
                        mem[(2 * ceil32(return_data.size)) + 388] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 392] = arg2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 292
                        t = (2 * ceil32(return_data.size)) + 584
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(stor4))
                        call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, 0, 160, address(arg4), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 584 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        mem[(2 * ceil32(return_data.size)) + 388] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 392] = arg2
                        mem[(2 * ceil32(return_data.size)) + 424] = 0
                        mem[(2 * ceil32(return_data.size)) + 456] = 160
                        mem[(2 * ceil32(return_data.size)) + 552] = 3
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 292
                        t = (2 * ceil32(return_data.size)) + 584
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 488] = arg4
                        mem[(2 * ceil32(return_data.size)) + 520] = block.timestamp
                        require ext_code.size(address(stor4))
                        call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, 0, 160, address(arg4), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 584 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 388
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]) + 389 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]) + 1 < 0:
                            revert with 0, 65
                        require return_data.size >= mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]) + 32
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388] < 1:
                            revert with 0, 17
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388] - 1 >= mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]:
                            revert with 0, 50
                else:
                    mem[(2 * ceil32(return_data.size)) + 356] = stor1
                    mem[(2 * ceil32(return_data.size)) + 388] = stor2[address(arg3)][address(stor4)]
                    mem[(2 * ceil32(return_data.size)) + 420] = arg3
                    mem[0] = arg1
                    mem[32] = 3
                    if stor3[address(arg1)]:
                        mem[(2 * ceil32(return_data.size)) + 452] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 456] = arg2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 292
                        t = (2 * ceil32(return_data.size)) + 648
                        while idx < 5:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(stor4))
                        call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, 0, 160, address(arg4), block.timestamp, 5, mem[(2 * ceil32(return_data.size)) + 648 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        mem[(2 * ceil32(return_data.size)) + 452] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 456] = arg2
                        mem[(2 * ceil32(return_data.size)) + 488] = 0
                        mem[(2 * ceil32(return_data.size)) + 520] = 160
                        mem[(2 * ceil32(return_data.size)) + 616] = 5
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 292
                        t = (2 * ceil32(return_data.size)) + 648
                        while idx < 5:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 552] = arg4
                        mem[(2 * ceil32(return_data.size)) + 584] = block.timestamp
                        require ext_code.size(address(stor4))
                        call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, 0, 160, address(arg4), block.timestamp, 5, mem[(2 * ceil32(return_data.size)) + 648 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 452
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg2) >> 32 + 483 < (2 * ceil32(return_data.size)) + return_data.size + 452
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg2) >> 32 + 452] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg2) >> 32 + 452]) + 453 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg2) >> 32 + 452]) + 1 < 0:
                            revert with 0, 65
                        require return_data.size >= mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg2) >> 32 + 452]) + 32
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg2) >> 32 + 452] < 1:
                            revert with 0, 17
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg2) >> 32 + 452] - 1 >= mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg2) >> 32 + 452]:
                            revert with 0, 50
            else:
                if stor2[address(arg1)][address(stor4)]:
                    mem[(2 * ceil32(return_data.size)) + 292] = arg1
                    if stor2[address(arg1)][address(stor4)] == arg3:
                        mem[(2 * ceil32(return_data.size)) + 324] = arg3
                        mem[0] = arg1
                        mem[32] = 3
                        if stor3[address(arg1)]:
                            mem[(2 * ceil32(return_data.size)) + 356] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 360] = arg2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 292
                            t = (2 * ceil32(return_data.size)) + 552
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(stor4))
                            call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 552 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg3)
                            staticcall arg3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            mem[(2 * ceil32(return_data.size)) + 356] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 360] = arg2
                            mem[(2 * ceil32(return_data.size)) + 392] = 0
                            mem[(2 * ceil32(return_data.size)) + 424] = 160
                            mem[(2 * ceil32(return_data.size)) + 520] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 292
                            t = (2 * ceil32(return_data.size)) + 552
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 456] = arg4
                            mem[(2 * ceil32(return_data.size)) + 488] = block.timestamp
                            require ext_code.size(address(stor4))
                            call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 552 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 356
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 387 < (2 * ceil32(return_data.size)) + return_data.size + 356
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] > test266151307():
                                revert with 0, 65
                            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 357 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 32
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] < 1:
                                revert with 0, 17
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] - 1 >= mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]:
                                revert with 0, 50
                    else:
                        mem[(2 * ceil32(return_data.size)) + 324] = stor2[address(arg1)][address(stor4)]
                        mem[(2 * ceil32(return_data.size)) + 356] = stor1
                        if stor1 != arg3:
                            mem[(2 * ceil32(return_data.size)) + 388] = arg3
                            if stor3[address(arg1)]:
                                mem[(2 * ceil32(return_data.size)) + 420] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 424] = arg2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 292
                                t = (2 * ceil32(return_data.size)) + 616
                                while idx < 4:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(stor4))
                                call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 0, 160, address(arg4), block.timestamp, 4, mem[(2 * ceil32(return_data.size)) + 616 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            else:
                                mem[(2 * ceil32(return_data.size)) + 420] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 424] = arg2
                                mem[(2 * ceil32(return_data.size)) + 456] = 0
                                mem[(2 * ceil32(return_data.size)) + 488] = 160
                                mem[(2 * ceil32(return_data.size)) + 584] = 4
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 292
                                t = (2 * ceil32(return_data.size)) + 616
                                while idx < 4:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 520] = arg4
                                mem[(2 * ceil32(return_data.size)) + 552] = block.timestamp
                                require ext_code.size(address(stor4))
                                call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 0, 160, address(arg4), block.timestamp, 4, mem[(2 * ceil32(return_data.size)) + 616 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 420
                                require return_data.size >= 32
                                require mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + 451 < (2 * ceil32(return_data.size)) + return_data.size + 420
                                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + 420] > test266151307():
                                    revert with 0, 65
                                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + 420]) + 421 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + 420]) + 1 < 0:
                                    revert with 0, 65
                                require return_data.size >= mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + 420]) + 32
                                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + 420] < 1:
                                    revert with 0, 17
                                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + 420] - 1 >= mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + 420]:
                                    revert with 0, 50
                        else:
                            mem[0] = arg1
                            mem[32] = 3
                            if stor3[address(arg1)]:
                                mem[(2 * ceil32(return_data.size)) + 388] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 392] = arg2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 292
                                t = (2 * ceil32(return_data.size)) + 584
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(stor4))
                                call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 0, 160, address(arg4), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 584 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            else:
                                mem[(2 * ceil32(return_data.size)) + 388] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 392] = arg2
                                mem[(2 * ceil32(return_data.size)) + 424] = 0
                                mem[(2 * ceil32(return_data.size)) + 456] = 160
                                mem[(2 * ceil32(return_data.size)) + 552] = 3
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 292
                                t = (2 * ceil32(return_data.size)) + 584
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 488] = arg4
                                mem[(2 * ceil32(return_data.size)) + 520] = block.timestamp
                                require ext_code.size(address(stor4))
                                call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 0, 160, address(arg4), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 584 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 388
                                require return_data.size >= 32
                                require mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
                                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388] > test266151307():
                                    revert with 0, 65
                                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]) + 389 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]) + 1 < 0:
                                    revert with 0, 65
                                require return_data.size >= mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]) + 32
                                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388] < 1:
                                    revert with 0, 17
                                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388] - 1 >= mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]:
                                    revert with 0, 50
                else:
                    if not stor2[address(arg3)][address(stor4)]:
                        mem[(2 * ceil32(return_data.size)) + 292] = arg1
                        if stor1 == arg1:
                            mem[(2 * ceil32(return_data.size)) + 324] = arg3
                            mem[0] = arg1
                            mem[32] = 3
                            if stor3[address(arg1)]:
                                mem[(2 * ceil32(return_data.size)) + 356] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 360] = arg2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 292
                                t = (2 * ceil32(return_data.size)) + 552
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(stor4))
                                call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 552 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            else:
                                mem[(2 * ceil32(return_data.size)) + 356] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 360] = arg2
                                mem[(2 * ceil32(return_data.size)) + 392] = 0
                                mem[(2 * ceil32(return_data.size)) + 424] = 160
                                mem[(2 * ceil32(return_data.size)) + 520] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 292
                                t = (2 * ceil32(return_data.size)) + 552
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 456] = arg4
                                mem[(2 * ceil32(return_data.size)) + 488] = block.timestamp
                                require ext_code.size(address(stor4))
                                call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 552 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 356
                                require return_data.size >= 32
                                require mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 387 < (2 * ceil32(return_data.size)) + return_data.size + 356
                                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] > test266151307():
                                    revert with 0, 65
                                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 357 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 1 < 0:
                                    revert with 0, 65
                                require return_data.size >= mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 32
                                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] < 1:
                                    revert with 0, 17
                                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] - 1 >= mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]:
                                    revert with 0, 50
                        else:
                            if stor1 == arg3:
                                mem[(2 * ceil32(return_data.size)) + 324] = arg3
                                mem[0] = arg1
                                mem[32] = 3
                                if stor3[address(arg1)]:
                                    mem[(2 * ceil32(return_data.size)) + 356] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 360] = arg2
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + 292
                                    t = (2 * ceil32(return_data.size)) + 552
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(stor4))
                                    call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 552 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg3)
                                    staticcall arg3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 356] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 360] = arg2
                                    mem[(2 * ceil32(return_data.size)) + 392] = 0
                                    mem[(2 * ceil32(return_data.size)) + 424] = 160
                                    mem[(2 * ceil32(return_data.size)) + 520] = 2
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + 292
                                    t = (2 * ceil32(return_data.size)) + 552
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 456] = arg4
                                    mem[(2 * ceil32(return_data.size)) + 488] = block.timestamp
                                    require ext_code.size(address(stor4))
                                    call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 552 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + 356
                                    require return_data.size >= 32
                                    require mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 387 < (2 * ceil32(return_data.size)) + return_data.size + 356
                                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] > test266151307():
                                        revert with 0, 65
                                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 357 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 1 < 0:
                                        revert with 0, 65
                                    require return_data.size >= mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 32
                                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] < 1:
                                        revert with 0, 17
                                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] - 1 >= mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]:
                                        revert with 0, 50
                            else:
                                mem[(2 * ceil32(return_data.size)) + 324] = stor1
                                mem[(2 * ceil32(return_data.size)) + 356] = arg3
                                mem[0] = arg1
                                mem[32] = 3
                                if stor3[address(arg1)]:
                                    mem[(2 * ceil32(return_data.size)) + 388] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 392] = arg2
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + 292
                                    t = (2 * ceil32(return_data.size)) + 584
                                    while idx < 3:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(stor4))
                                    call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(arg4), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 584 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg3)
                                    staticcall arg3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 388] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 392] = arg2
                                    mem[(2 * ceil32(return_data.size)) + 424] = 0
                                    mem[(2 * ceil32(return_data.size)) + 456] = 160
                                    mem[(2 * ceil32(return_data.size)) + 552] = 3
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + 292
                                    t = (2 * ceil32(return_data.size)) + 584
                                    while idx < 3:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 488] = arg4
                                    mem[(2 * ceil32(return_data.size)) + 520] = block.timestamp
                                    require ext_code.size(address(stor4))
                                    call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(arg4), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 584 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + 388
                                    require return_data.size >= 32
                                    require mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
                                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388] > test266151307():
                                        revert with 0, 65
                                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]) + 389 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]) + 1 < 0:
                                        revert with 0, 65
                                    require return_data.size >= mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]) + 32
                                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388] < 1:
                                        revert with 0, 17
                                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388] - 1 >= mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]:
                                        revert with 0, 50
                    else:
                        if arg1 == stor2[address(arg3)][address(stor4)]:
                            mem[(2 * ceil32(return_data.size)) + 292] = arg1
                            mem[(2 * ceil32(return_data.size)) + 324] = arg3
                            mem[0] = arg1
                            mem[32] = 3
                            if stor3[address(arg1)]:
                                mem[(2 * ceil32(return_data.size)) + 356] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 360] = arg2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 292
                                t = (2 * ceil32(return_data.size)) + 552
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(stor4))
                                call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 552 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            else:
                                mem[(2 * ceil32(return_data.size)) + 356] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 360] = arg2
                                mem[(2 * ceil32(return_data.size)) + 392] = 0
                                mem[(2 * ceil32(return_data.size)) + 424] = 160
                                mem[(2 * ceil32(return_data.size)) + 520] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 292
                                t = (2 * ceil32(return_data.size)) + 552
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 456] = arg4
                                mem[(2 * ceil32(return_data.size)) + 488] = block.timestamp
                                require ext_code.size(address(stor4))
                                call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 552 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 356
                                require return_data.size >= 32
                                require mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 387 < (2 * ceil32(return_data.size)) + return_data.size + 356
                                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] > test266151307():
                                    revert with 0, 65
                                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 357 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 1 < 0:
                                    revert with 0, 65
                                require return_data.size >= mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]) + 32
                                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] < 1:
                                    revert with 0, 17
                                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356] - 1 >= mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg2) >> 32 + 356]:
                                    revert with 0, 50
                        else:
                            if stor1 != arg1:
                                mem[(2 * ceil32(return_data.size)) + 292] = arg1
                                mem[(2 * ceil32(return_data.size)) + 324] = stor1
                                mem[(2 * ceil32(return_data.size)) + 356] = stor2[address(arg3)][address(stor4)]
                                mem[(2 * ceil32(return_data.size)) + 388] = arg3
                                if stor3[address(arg1)]:
                                    mem[(2 * ceil32(return_data.size)) + 420] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 424] = arg2
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + 292
                                    t = (2 * ceil32(return_data.size)) + 616
                                    while idx < 4:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(stor4))
                                    call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(arg4), block.timestamp, 4, mem[(2 * ceil32(return_data.size)) + 616 len 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg3)
                                    staticcall arg3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 420] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 424] = arg2
                                    mem[(2 * ceil32(return_data.size)) + 456] = 0
                                    mem[(2 * ceil32(return_data.size)) + 488] = 160
                                    mem[(2 * ceil32(return_data.size)) + 584] = 4
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + 292
                                    t = (2 * ceil32(return_data.size)) + 616
                                    while idx < 4:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 520] = arg4
                                    mem[(2 * ceil32(return_data.size)) + 552] = block.timestamp
                                    require ext_code.size(address(stor4))
                                    call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(arg4), block.timestamp, 4, mem[(2 * ceil32(return_data.size)) + 616 len 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + 420
                                    require return_data.size >= 32
                                    require mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + 451 < (2 * ceil32(return_data.size)) + return_data.size + 420
                                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + 420] > test266151307():
                                        revert with 0, 65
                                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + 420]) + 421 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + 420]) + 1 < 0:
                                        revert with 0, 65
                                    require return_data.size >= mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + 420]) + 32
                                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + 420] < 1:
                                        revert with 0, 17
                                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + 420] - 1 >= mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 420 len 4], Mask(224, 32, arg2) >> 32 + 420]:
                                        revert with 0, 50
                            else:
                                mem[(2 * ceil32(return_data.size)) + 292] = stor1
                                mem[(2 * ceil32(return_data.size)) + 324] = stor2[address(arg3)][address(stor4)]
                                mem[(2 * ceil32(return_data.size)) + 356] = arg3
                                mem[0] = arg1
                                mem[32] = 3
                                if stor3[address(arg1)]:
                                    mem[(2 * ceil32(return_data.size)) + 388] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 392] = arg2
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + 292
                                    t = (2 * ceil32(return_data.size)) + 584
                                    while idx < 3:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(stor4))
                                    call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(arg4), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 584 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg3)
                                    staticcall arg3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 388] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 392] = arg2
                                    mem[(2 * ceil32(return_data.size)) + 424] = 0
                                    mem[(2 * ceil32(return_data.size)) + 456] = 160
                                    mem[(2 * ceil32(return_data.size)) + 552] = 3
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + 292
                                    t = (2 * ceil32(return_data.size)) + 584
                                    while idx < 3:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 488] = arg4
                                    mem[(2 * ceil32(return_data.size)) + 520] = block.timestamp
                                    require ext_code.size(address(stor4))
                                    call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(arg4), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 584 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + 388
                                    require return_data.size >= 32
                                    require mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 419 < (2 * ceil32(return_data.size)) + return_data.size + 388
                                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388] > test266151307():
                                        revert with 0, 65
                                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]) + 389 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]) + 1 < 0:
                                        revert with 0, 65
                                    require return_data.size >= mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]) + 32
                                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388] < 1:
                                        revert with 0, 17
                                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388] - 1 >= mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 388 len 4], Mask(224, 32, arg2) >> 32 + 388]:
                                        revert with 0, 50
    else:
        mem[ceil32(return_data.size) + 260] = return_data.size
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = msg.sender
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = arg2
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not stor2[address(arg1)][address(stor4)]:
            if not stor2[address(arg3)][address(stor4)]:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = arg1
                if stor1 == arg1:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = arg3
                    mem[0] = arg1
                    mem[32] = 3
                    if stor3[address(arg1)]:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                        t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(stor4))
                        call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg2
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                        t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg4
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = block.timestamp
                        require ext_code.size(address(stor4))
                        call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 388 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 357
                        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 358 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 1 < 0:
                            revert with 0, 65
                        require return_data.size >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 32
                        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] < 1:
                            revert with 0, 17
                        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] - 1 >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]:
                            revert with 0, 50
                else:
                    if stor1 == arg3:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = arg3
                        mem[0] = arg1
                        mem[32] = 3
                        if stor3[address(arg1)]:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                            t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(stor4))
                            call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg3)
                            staticcall arg3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg2
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 160
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                            t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg4
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = block.timestamp
                            require ext_code.size(address(stor4))
                            call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 388 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 357
                            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] > test266151307():
                                revert with 0, 65
                            if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 358 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 32
                            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] < 1:
                                revert with 0, 17
                            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] - 1 >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]:
                                revert with 0, 50
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = stor1
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = arg3
                        mem[0] = arg1
                        mem[32] = 3
                        if stor3[address(arg1)]:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                            t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(stor4))
                            call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, 0, 160, address(arg4), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg3)
                            staticcall arg3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg2
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 160
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 3
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                            t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = arg4
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = block.timestamp
                            require ext_code.size(address(stor4))
                            call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, 0, 160, address(arg4), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
                            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389] > test266151307():
                                revert with 0, 65
                            if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]) + 390 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]) + 32
                            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389] < 1:
                                revert with 0, 17
                            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389] - 1 >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]:
                                revert with 0, 50
            else:
                if arg1 == stor2[address(arg3)][address(stor4)]:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = arg1
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = arg3
                    mem[0] = arg1
                    mem[32] = 3
                    if stor3[address(arg1)]:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                        t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(stor4))
                        call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg2
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                        t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg4
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = block.timestamp
                        require ext_code.size(address(stor4))
                        call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 388 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 357
                        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 358 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 1 < 0:
                            revert with 0, 65
                        require return_data.size >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 32
                        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] < 1:
                            revert with 0, 17
                        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] - 1 >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]:
                            revert with 0, 50
                else:
                    if stor1 == arg1:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = stor1
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = stor2[address(arg3)][address(stor4)]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = arg3
                        mem[0] = arg1
                        mem[32] = 3
                        if stor3[address(arg1)]:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                            t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(stor4))
                            call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, 0, 160, address(arg4), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg3)
                            staticcall arg3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg2
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 160
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 3
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                            t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = arg4
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = block.timestamp
                            require ext_code.size(address(stor4))
                            call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, 0, 160, address(arg4), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
                            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389] > test266151307():
                                revert with 0, 65
                            if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]) + 390 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]) + 32
                            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389] < 1:
                                revert with 0, 17
                            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389] - 1 >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]:
                                revert with 0, 50
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = arg1
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = stor1
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = stor2[address(arg3)][address(stor4)]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = arg3
                        mem[0] = arg1
                        mem[32] = 3
                        if stor3[address(arg1)]:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = arg2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                            t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                            while idx < 4:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(stor4))
                            call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, 0, 160, address(arg4), block.timestamp, 4, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg3)
                            staticcall arg3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = arg2
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 0
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 160
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 4
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                            t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                            while idx < 4:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = arg4
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = block.timestamp
                            require ext_code.size(address(stor4))
                            call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, 0, 160, address(arg4), block.timestamp, 4, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + 452 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 421
                            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + 421] > test266151307():
                                revert with 0, 65
                            if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + 421]) + 422 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + 421]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + 421]) + 32
                            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + 421] < 1:
                                revert with 0, 17
                            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + 421] - 1 >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + 421]:
                                revert with 0, 50
        else:
            if stor2[address(arg3)][address(stor4)]:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = arg1
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = stor2[address(arg1)][address(stor4)]
                if stor2[address(arg1)][address(stor4)] == stor2[address(arg3)][address(stor4)]:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = arg3
                    mem[0] = arg1
                    mem[32] = 3
                    if stor3[address(arg1)]:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                        t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(stor4))
                        call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, 0, 160, address(arg4), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg2
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 3
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                        t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = arg4
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = block.timestamp
                        require ext_code.size(address(stor4))
                        call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, 0, 160, address(arg4), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
                        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]) + 390 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]) + 1 < 0:
                            revert with 0, 65
                        require return_data.size >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]) + 32
                        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389] < 1:
                            revert with 0, 17
                        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389] - 1 >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]:
                            revert with 0, 50
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = stor1
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = stor2[address(arg3)][address(stor4)]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = arg3
                    mem[0] = arg1
                    mem[32] = 3
                    if stor3[address(arg1)]:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                        t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
                        while idx < 5:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(stor4))
                        call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, 0, 160, address(arg4), block.timestamp, 5, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg3)
                        staticcall arg3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg2
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = 5
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                        t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
                        while idx < 5:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = arg4
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = block.timestamp
                        require ext_code.size(address(stor4))
                        call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, 0, 160, address(arg4), block.timestamp, 5, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 453
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, arg2) >> 32 + 484 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 453
                        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, arg2) >> 32 + 453] > test266151307():
                            revert with 0, 65
                        if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, arg2) >> 32 + 453]) + 454 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, arg2) >> 32 + 453]) + 1 < 0:
                            revert with 0, 65
                        require return_data.size >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, arg2) >> 32 + 453]) + 32
                        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, arg2) >> 32 + 453] < 1:
                            revert with 0, 17
                        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, arg2) >> 32 + 453] - 1 >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, arg2) >> 32 + 453]:
                            revert with 0, 50
            else:
                if stor2[address(arg1)][address(stor4)]:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = arg1
                    if stor2[address(arg1)][address(stor4)] == arg3:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = arg3
                        mem[0] = arg1
                        mem[32] = 3
                        if stor3[address(arg1)]:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                            t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(stor4))
                            call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg3)
                            staticcall arg3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg2
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 160
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                            t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg4
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = block.timestamp
                            require ext_code.size(address(stor4))
                            call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 388 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 357
                            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] > test266151307():
                                revert with 0, 65
                            if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 358 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 32
                            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] < 1:
                                revert with 0, 17
                            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] - 1 >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]:
                                revert with 0, 50
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = stor2[address(arg1)][address(stor4)]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = stor1
                        if stor1 == arg3:
                            mem[0] = arg1
                            mem[32] = 3
                            if stor3[address(arg1)]:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(stor4))
                                call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 0, 160, address(arg4), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            else:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg2
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 160
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 3
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = arg4
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = block.timestamp
                                require ext_code.size(address(stor4))
                                call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 0, 160, address(arg4), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
                                require return_data.size >= 32
                                require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
                                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389] > test266151307():
                                    revert with 0, 65
                                if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]) + 390 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]) + 1 < 0:
                                    revert with 0, 65
                                require return_data.size >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]) + 32
                                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389] < 1:
                                    revert with 0, 17
                                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389] - 1 >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]:
                                    revert with 0, 50
                        else:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = arg3
                            mem[0] = arg1
                            mem[32] = 3
                            if stor3[address(arg1)]:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = arg2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < 4:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(stor4))
                                call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 0, 160, address(arg4), block.timestamp, 4, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            else:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = arg2
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 0
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 160
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 4
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                while idx < 4:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = arg4
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = block.timestamp
                                require ext_code.size(address(stor4))
                                call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 0, 160, address(arg4), block.timestamp, 4, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
                                require return_data.size >= 32
                                require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + 452 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 421
                                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + 421] > test266151307():
                                    revert with 0, 65
                                if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + 421]) + 422 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + 421]) + 1 < 0:
                                    revert with 0, 65
                                require return_data.size >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + 421]) + 32
                                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + 421] < 1:
                                    revert with 0, 17
                                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + 421] - 1 >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + 421]:
                                    revert with 0, 50
                else:
                    if not stor2[address(arg3)][address(stor4)]:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = arg1
                        if stor1 == arg1:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = arg3
                            mem[0] = arg1
                            mem[32] = 3
                            if stor3[address(arg1)]:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(stor4))
                                call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            else:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg2
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 160
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg4
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = block.timestamp
                                require ext_code.size(address(stor4))
                                call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                require return_data.size >= 32
                                require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 388 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 357
                                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] > test266151307():
                                    revert with 0, 65
                                if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 358 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 1 < 0:
                                    revert with 0, 65
                                require return_data.size >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 32
                                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] < 1:
                                    revert with 0, 17
                                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] - 1 >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]:
                                    revert with 0, 50
                        else:
                            if stor1 == arg3:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = arg3
                                mem[0] = arg1
                                mem[32] = 3
                                if stor3[address(arg1)]:
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg2
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(stor4))
                                    call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg3)
                                    staticcall arg3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                else:
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg2
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 160
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 2
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg4
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = block.timestamp
                                    require ext_code.size(address(stor4))
                                    call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                    require return_data.size >= 32
                                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 388 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 357
                                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] > test266151307():
                                        revert with 0, 65
                                    if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 358 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 1 < 0:
                                        revert with 0, 65
                                    require return_data.size >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 32
                                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] < 1:
                                        revert with 0, 17
                                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] - 1 >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]:
                                        revert with 0, 50
                            else:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = stor1
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = arg3
                                mem[0] = arg1
                                mem[32] = 3
                                if stor3[address(arg1)]:
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg2
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                    while idx < 3:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(stor4))
                                    call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(arg4), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg3)
                                    staticcall arg3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                else:
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg2
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 160
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 3
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                    while idx < 3:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = arg4
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = block.timestamp
                                    require ext_code.size(address(stor4))
                                    call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(arg4), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
                                    require return_data.size >= 32
                                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
                                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389] > test266151307():
                                        revert with 0, 65
                                    if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]) + 390 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]) + 1 < 0:
                                        revert with 0, 65
                                    require return_data.size >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]) + 32
                                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389] < 1:
                                        revert with 0, 17
                                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389] - 1 >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]:
                                        revert with 0, 50
                    else:
                        if arg1 == stor2[address(arg3)][address(stor4)]:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = arg1
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = arg3
                            mem[0] = arg1
                            mem[32] = 3
                            if stor3[address(arg1)]:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(stor4))
                                call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg3)
                                staticcall arg3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            else:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg2
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 160
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg4
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = block.timestamp
                                require ext_code.size(address(stor4))
                                call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                                require return_data.size >= 32
                                require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 388 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 357
                                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] > test266151307():
                                    revert with 0, 65
                                if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 358 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 1 < 0:
                                    revert with 0, 65
                                require return_data.size >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]) + 32
                                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] < 1:
                                    revert with 0, 17
                                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357] - 1 >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg2) >> 32 + 357]:
                                    revert with 0, 50
                        else:
                            if stor1 == arg1:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = stor1
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = stor2[address(arg3)][address(stor4)]
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = arg3
                                mem[0] = arg1
                                mem[32] = 3
                                if stor3[address(arg1)]:
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg2
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                    while idx < 3:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(stor4))
                                    call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(arg4), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg3)
                                    staticcall arg3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                else:
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg2
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 160
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 3
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                                    while idx < 3:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = arg4
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = block.timestamp
                                    require ext_code.size(address(stor4))
                                    call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(arg4), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
                                    require return_data.size >= 32
                                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 420 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 389
                                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389] > test266151307():
                                        revert with 0, 65
                                    if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]) + 390 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]) + 1 < 0:
                                        revert with 0, 65
                                    require return_data.size >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]) + 32
                                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389] < 1:
                                        revert with 0, 17
                                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389] - 1 >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 389]:
                                        revert with 0, 50
                            else:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = arg1
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = stor1
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = stor2[address(arg3)][address(stor4)]
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = arg3
                                mem[0] = arg1
                                mem[32] = 3
                                if stor3[address(arg1)]:
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = arg2
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                    while idx < 4:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(stor4))
                                    call address(stor4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(arg4), block.timestamp, 4, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg3)
                                    staticcall arg3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                else:
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = arg2
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 0
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 160
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 4
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617
                                    while idx < 4:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = arg4
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = block.timestamp
                                    require ext_code.size(address(stor4))
                                    call address(stor4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, 0, 160, address(arg4), block.timestamp, 4, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
                                    require return_data.size >= 32
                                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + 452 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 421
                                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + 421] > test266151307():
                                        revert with 0, 65
                                    if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + 421]) + 422 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + 421]) + 1 < 0:
                                        revert with 0, 65
                                    require return_data.size >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + 421]) + 32
                                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + 421] < 1:
                                        revert with 0, 17
                                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + 421] - 1 >= mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + 421]:
                                        revert with 0, 50
}



}
