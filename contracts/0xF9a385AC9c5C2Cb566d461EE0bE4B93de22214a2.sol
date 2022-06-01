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
uint32 stor0;
address owner;
uint256 stor0;
address stor1;
mapping of address stor2;
mapping of uint8 stor3;
uint32 stor4;
address stor4;
uint256 stor4;

function owner() {
    return address(owner)
}

function sub_caaae7f5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function renounceOwnership() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(owner) = 0
    emit OwnershipTransferred(address(owner), 0);
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor4) = arg1
}

function setIsFeeOnTransfer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 1
}

function setTokenBridgeForRouter(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)][address(stor4)] = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(owner) = arg1
    emit OwnershipTransferred(address(owner), arg1);
}

function approvePair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approve(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = this.address
    mem[132] = address(stor4)
    require ext_code.size(arg1)
    staticcall arg1.allowance(address arg1, address arg2) with:
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
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
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
    else:
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
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        call address(owner) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 132] = address(owner)
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
        mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
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
        mem[0] = address(stor4)
        mem[32] = sha3(ext_call.return_data[12 len 20], 2)
        if not stor2[ext_call.return_data[12 len 20]][address(stor4)]:
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
            require ext_code.size(address(stor4))
            call address(stor4).0x1550f836 with:
               value msg.value / 2 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _4965 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
            _4973 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            require return_data.size >= _4965 + (32 * _4973) + 32
            mem[(4 * ceil32(return_data.size)) + 224 len 32 * _4973] = mem[(2 * ceil32(return_data.size)) + _4965 + 224 len 32 * _4973]
            if _4973 < 1:
                revert with 0, 17
            if _4973 - 1 >= _4973:
                revert with 0, 50
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(stor4)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args this.address, address(stor4)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9857 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_9857]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            _9891 = mem[64]
            mem[mem[64] + 36] = address(stor4)
            mem[mem[64] + 68] = -1
            _9905 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
            mem[64] = mem[64] + 164
            mem[_9891 + 100] = 32
            mem[_9891 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            _9965 = mem[_9905]
            mem[_9891 + 164 len ceil32(mem[_9905])] = mem[_9905 + 32 len ceil32(mem[_9905])]
            if ceil32(_9965) > _9965:
                mem[_9965 + _9891 + 164] = 0
            call address(ext_call.return_data[0]) with:
                 gas gas_remaining wei
                args mem[_9891 + 168 len _9965 - 4]
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
                mem[_9891 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_9891 + 196] == bool(mem[_9891 + 196])
                    if not mem[_9891 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if msg.value < msg.value / 2:
                revert with 0, 17
            require ext_code.size(address(stor4))
            call address(stor4).addLiquidityFTM(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value msg.value - (msg.value / 2) wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), mem[(32 * _4973 - 1) + (4 * ceil32(return_data.size)) + 224], 0, 0, address(arg2), block.timestamp
        else:
            mem[(2 * ceil32(return_data.size)) + 96] = 3
            mem[(2 * ceil32(return_data.size)) + 128] = stor1
            mem[0] = address(stor4)
            mem[32] = sha3(address(ext_call.return_data[0]), 2)
            mem[(2 * ceil32(return_data.size)) + 160] = stor2[address(ext_call.return_data[0])][address(stor4)]
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
            require ext_code.size(address(stor4))
            call address(stor4).0x1550f836 with:
               value msg.value / 2 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 388 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _4966 = mem[(2 * ceil32(return_data.size)) + 224 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
            _4974 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 1 < 0:
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225
            mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
            require return_data.size >= _4966 + (32 * _4974) + 32
            mem[(4 * ceil32(return_data.size)) + 256 len 32 * _4974] = mem[(2 * ceil32(return_data.size)) + _4966 + 256 len 32 * _4974]
            if _4974 < 1:
                revert with 0, 17
            if _4974 - 1 >= _4974:
                revert with 0, 50
            _9838 = mem[(32 * _4974 - 1) + (4 * ceil32(return_data.size)) + 256]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(stor4)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args this.address, address(stor4)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9858 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_9858]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            _9893 = mem[64]
            mem[mem[64] + 36] = address(stor4)
            mem[mem[64] + 68] = -1
            _9908 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
            mem[64] = mem[64] + 164
            mem[_9893 + 100] = 32
            mem[_9893 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            _9967 = mem[_9908]
            mem[_9893 + 164 len ceil32(mem[_9908])] = mem[_9908 + 32 len ceil32(mem[_9908])]
            if ceil32(_9967) > _9967:
                mem[_9967 + _9893 + 164] = 0
            call address(ext_call.return_data[0]) with:
                 gas gas_remaining wei
                args mem[_9893 + 168 len _9967 - 4]
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
                mem[_9893 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_9893 + 196] == bool(mem[_9893 + 196])
                    if not mem[_9893 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if msg.value < msg.value / 2:
                revert with 0, 17
            require ext_code.size(address(stor4))
            call address(stor4).addLiquidityFTM(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value msg.value - (msg.value / 2) wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _9838, 0, 0, address(arg2), block.timestamp
    else:
        if stor1 == ext_call.return_data[12 len 20]:
            mem[0] = address(stor4)
            if stor1 != address(ext_call.return_data[0]):
                mem[32] = sha3(address(ext_call.return_data[0]), 2)
                if not stor2[address(ext_call.return_data[0])][address(stor4)]:
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
                    require ext_code.size(address(stor4))
                    call address(stor4).0x1550f836 with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _4971 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                    _4979 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    require return_data.size >= _4971 + (32 * _4979) + 32
                    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _4979] = mem[(2 * ceil32(return_data.size)) + _4971 + 224 len 32 * _4979]
                    if _4979 < 1:
                        revert with 0, 17
                    if _4979 - 1 >= _4979:
                        revert with 0, 50
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(stor4)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(stor4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9861 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_9861]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    _9901 = mem[64]
                    mem[mem[64] + 36] = address(stor4)
                    mem[mem[64] + 68] = -1
                    _9919 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_9901 + 100] = 32
                    mem[_9901 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    _9975 = mem[_9919]
                    mem[_9901 + 164 len ceil32(mem[_9919])] = mem[_9919 + 32 len ceil32(mem[_9919])]
                    if ceil32(_9975) > _9975:
                        mem[_9975 + _9901 + 164] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[_9901 + 168 len _9975 - 4]
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
                        mem[_9901 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_9901 + 196] == bool(mem[_9901 + 196])
                            if not mem[_9901 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if msg.value < msg.value / 2:
                        revert with 0, 17
                    require ext_code.size(address(stor4))
                    call address(stor4).addLiquidityFTM(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), mem[(32 * _4979 - 1) + (4 * ceil32(return_data.size)) + 224], 0, 0, address(arg2), block.timestamp
                else:
                    mem[(2 * ceil32(return_data.size)) + 96] = 3
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[0] = address(stor4)
                    mem[32] = sha3(address(ext_call.return_data[0]), 2)
                    mem[(2 * ceil32(return_data.size)) + 160] = stor2[address(ext_call.return_data[0])][address(stor4)]
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
                    require ext_code.size(address(stor4))
                    call address(stor4).0x1550f836 with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 388 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _4972 = mem[(2 * ceil32(return_data.size)) + 224 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                    _4980 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225
                    mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                    require return_data.size >= _4972 + (32 * _4980) + 32
                    mem[(4 * ceil32(return_data.size)) + 256 len 32 * _4980] = mem[(2 * ceil32(return_data.size)) + _4972 + 256 len 32 * _4980]
                    if _4980 < 1:
                        revert with 0, 17
                    if _4980 - 1 >= _4980:
                        revert with 0, 50
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(stor4)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(stor4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9862 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_9862]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    _9903 = mem[64]
                    mem[mem[64] + 36] = address(stor4)
                    mem[mem[64] + 68] = -1
                    _9922 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_9903 + 100] = 32
                    mem[_9903 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    _9977 = mem[_9922]
                    mem[_9903 + 164 len ceil32(mem[_9922])] = mem[_9922 + 32 len ceil32(mem[_9922])]
                    if ceil32(_9977) > _9977:
                        mem[_9977 + _9903 + 164] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[_9903 + 168 len _9977 - 4]
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
                        mem[_9903 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_9903 + 196] == bool(mem[_9903 + 196])
                            if not mem[_9903 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if msg.value < msg.value / 2:
                        revert with 0, 17
                    require ext_code.size(address(stor4))
                    call address(stor4).addLiquidityFTM(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), mem[(32 * _4980 - 1) + (4 * ceil32(return_data.size)) + 256], 0, 0, address(arg2), block.timestamp
            else:
                mem[32] = sha3(ext_call.return_data[12 len 20], 2)
                if not stor2[ext_call.return_data[12 len 20]][address(stor4)]:
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
                    require ext_code.size(address(stor4))
                    call address(stor4).0x1550f836 with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _4969 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                    _4977 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                    require return_data.size >= _4969 + (32 * _4977) + 32
                    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _4977] = mem[(2 * ceil32(return_data.size)) + _4969 + 224 len 32 * _4977]
                    if _4977 < 1:
                        revert with 0, 17
                    if _4977 - 1 >= _4977:
                        revert with 0, 50
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(stor4)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(stor4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9859 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_9859]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    _9897 = mem[64]
                    mem[mem[64] + 36] = address(stor4)
                    mem[mem[64] + 68] = -1
                    _9913 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_9897 + 100] = 32
                    mem[_9897 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    _9971 = mem[_9913]
                    mem[_9897 + 164 len ceil32(mem[_9913])] = mem[_9913 + 32 len ceil32(mem[_9913])]
                    if ceil32(_9971) > _9971:
                        mem[_9971 + _9897 + 164] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[_9897 + 168 len _9971 - 4]
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
                        mem[_9897 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_9897 + 196] == bool(mem[_9897 + 196])
                            if not mem[_9897 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if msg.value < msg.value / 2:
                        revert with 0, 17
                    require ext_code.size(address(stor4))
                    call address(stor4).addLiquidityFTM(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), mem[(32 * _4977 - 1) + (4 * ceil32(return_data.size)) + 224], 0, 0, address(arg2), block.timestamp
                else:
                    mem[(2 * ceil32(return_data.size)) + 96] = 3
                    mem[(2 * ceil32(return_data.size)) + 128] = stor1
                    mem[0] = address(stor4)
                    mem[32] = sha3(address(ext_call.return_data[0]), 2)
                    mem[(2 * ceil32(return_data.size)) + 160] = stor2[address(ext_call.return_data[0])][address(stor4)]
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
                    require ext_code.size(address(stor4))
                    call address(stor4).0x1550f836 with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 388 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _4970 = mem[(2 * ceil32(return_data.size)) + 224 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                    _4978 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224] > test266151307():
                        revert with 0, 65
                    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225
                    mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                    require return_data.size >= _4970 + (32 * _4978) + 32
                    mem[(4 * ceil32(return_data.size)) + 256 len 32 * _4978] = mem[(2 * ceil32(return_data.size)) + _4970 + 256 len 32 * _4978]
                    if _4978 < 1:
                        revert with 0, 17
                    if _4978 - 1 >= _4978:
                        revert with 0, 50
                    _9842 = mem[(32 * _4978 - 1) + (4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(stor4)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(stor4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9860 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_9860]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    _9899 = mem[64]
                    mem[mem[64] + 36] = address(stor4)
                    mem[mem[64] + 68] = -1
                    _9916 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_9899 + 100] = 32
                    mem[_9899 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    _9973 = mem[_9916]
                    mem[_9899 + 164 len ceil32(mem[_9916])] = mem[_9916 + 32 len ceil32(mem[_9916])]
                    if ceil32(_9973) > _9973:
                        mem[_9973 + _9899 + 164] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[_9899 + 168 len _9973 - 4]
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
                        mem[_9899 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_9899 + 196] == bool(mem[_9899 + 196])
                            if not mem[_9899 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if msg.value < msg.value / 2:
                        revert with 0, 17
                    require ext_code.size(address(stor4))
                    call address(stor4).addLiquidityFTM(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), _9842, 0, 0, address(arg2), block.timestamp
        else:
            if not stor2[address(ext_call.return_data[0])][address(stor4)]:
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
                require ext_code.size(address(stor4))
                call address(stor4).0x1550f836 with:
                   value msg.value / 2 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _4967 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                _4975 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                require return_data.size >= _4967 + (32 * _4975) + 32
                mem[(4 * ceil32(return_data.size)) + 224 len 32 * _4975] = mem[(2 * ceil32(return_data.size)) + _4967 + 224 len 32 * _4975]
                if _4975 < 1:
                    revert with 0, 17
                if _4975 - 1 >= _4975:
                    revert with 0, 50
                _9839 = mem[(32 * _4975 - 1) + (4 * ceil32(return_data.size)) + 224]
                if msg.value < msg.value / 2:
                    revert with 0, 17
                mem[0] = address(stor4)
                mem[32] = sha3(address(ext_call.return_data[0]), 2)
                if not stor2[address(ext_call.return_data[0])][address(stor4)]:
                    _9869 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if not mem[_9869]:
                        revert with 0, 50
                    mem[_9869 + 32] = stor1
                    if 1 >= mem[_9869]:
                        revert with 0, 50
                    mem[_9869 + 64] = address(ext_call.return_data[0])
                    mem[_9869 + 96] = 0x1550f83600000000000000000000000000000000000000000000000000000000
                    mem[_9869 + 100] = 0
                    mem[_9869 + 132] = 128
                    mem[_9869 + 228] = mem[_9869]
                    idx = 0
                    s = _9869 + 32
                    t = _9869 + 260
                    while idx < mem[_9869]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_9869 + 164] = this.address
                    mem[_9869 + 196] = block.timestamp
                    require ext_code.size(address(stor4))
                    call address(stor4).mem[mem[64] len 4] with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _9869 + (32 * mem[_9869]) + -mem[64] + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14667 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14687 = mem[_14667]
                    require mem[_14667] <= test266151307()
                    require _14667 + mem[_14667] + 31 < _14667 + return_data.size
                    _14763 = mem[_14667 + mem[_14667]]
                    if mem[_14667 + mem[_14667]] > test266151307():
                        revert with 0, 65
                    if _14667 + ceil32(return_data.size) + ceil32(32 * mem[_14667 + mem[_14667]]) + 1 > test266151307() or ceil32(32 * mem[_14667 + mem[_14667]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _14667 + ceil32(return_data.size) + ceil32(32 * mem[_14667 + mem[_14667]]) + 1
                    mem[_14667 + ceil32(return_data.size)] = _14763
                    require return_data.size >= _14687 + (32 * _14763) + 32
                    mem[_14667 + ceil32(return_data.size) + 32 len 32 * _14763] = mem[_14667 + _14687 + 32 len 32 * _14763]
                    if _14763 < 1:
                        revert with 0, 17
                    if _14763 - 1 >= _14763:
                        revert with 0, 50
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(stor4)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(stor4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19399 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_19399]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    _19407 = mem[64]
                    mem[mem[64] + 36] = address(stor4)
                    mem[mem[64] + 68] = -1
                    _19415 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_19407 + 100] = 32
                    mem[_19407 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    _19447 = mem[_19415]
                    mem[_19407 + 164 len ceil32(mem[_19415])] = mem[_19415 + 32 len ceil32(mem[_19415])]
                    if ceil32(_19447) > _19447:
                        mem[_19447 + _19407 + 164] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[_19407 + 168 len _19447 - 4]
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
                        mem[_19407 + 168] = this.address
                        mem[_19407 + 200] = address(stor4)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(stor4)
                        mem[_19407 + 164] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_19407 + ceil32(return_data.size) + 200] = address(stor4)
                        mem[_19407 + ceil32(return_data.size) + 232] = -1
                        mem[_19407 + ceil32(return_data.size) + 164] = 68
                        mem[_19407 + ceil32(return_data.size) + 196 len 4] = approve(address arg1, uint256 arg2)
                        mem[_19407 + ceil32(return_data.size) + 264] = 32
                        mem[_19407 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[_19407 + ceil32(return_data.size) + 328 len 96] = 0, address(stor4), -1, 0
                        mem[_19407 + ceil32(return_data.size) + 396] = 0
                        call address(ext_call.return_data[0]) with:
                           funct Mask(32, 224, 0, address(stor4), -1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, address(stor4), -1, 0) << 288)
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
                            mem[_19407 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_19407 + ceil32(return_data.size) + 360] == bool(mem[_19407 + ceil32(return_data.size) + 360])
                                if not mem[_19407 + ceil32(return_data.size) + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(stor4))
                        call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _9839, mem[(32 * _14763 - 1) + _14667 + ceil32(return_data.size) + 32], 0, 0, address(arg2), block.timestamp
                    else:
                        mem[_19407 + 164] = return_data.size
                        mem[_19407 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_19407 + 196] == bool(mem[_19407 + 196])
                            if not mem[_19407 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_19407 + ceil32(return_data.size) + 169] = this.address
                        mem[_19407 + ceil32(return_data.size) + 201] = address(stor4)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(stor4)
                        mem[_19407 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_19407 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(stor4)
                        mem[_19407 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = -1
                        mem[_19407 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                        mem[_19407 + ceil32(return_data.size) + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
                        mem[_19407 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                        mem[_19407 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[_19407 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 96] = 0, address(stor4), -1, 0
                        mem[_19407 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
                        call address(ext_call.return_data[0]) with:
                           funct Mask(32, 224, 0, address(stor4), -1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, address(stor4), -1, 0) << 288)
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
                            require ext_code.size(address(stor4))
                            call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _9839, mem[(32 * _14763 - 1) + _14667 + ceil32(return_data.size) + 32], 0, 0, address(arg2), block.timestamp
                        else:
                            mem[_19407 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
                            mem[_19407 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_19407 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_19407 + (4 * ceil32(return_data.size)) + 334] = 32
                                mem[_19407 + (4 * ceil32(return_data.size)) + 366] = 32
                                mem[_19407 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                                revert with memory
                                  from _19407 + (4 * ceil32(return_data.size)) + 330
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_19407 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_19407 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
                                if not mem[_19407 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                                    mem[_19407 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_19407 + (4 * ceil32(return_data.size)) + 334] = 32
                                    mem[_19407 + (4 * ceil32(return_data.size)) + 366] = 42
                                    mem[_19407 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                                    mem[_19407 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
                                    revert with memory
                                      from _19407 + (4 * ceil32(return_data.size)) + 330
                                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            mem[_19407 + (4 * ceil32(return_data.size)) + 334] = address(ext_call.return_data[0])
                            mem[_19407 + (4 * ceil32(return_data.size)) + 366] = address(ext_call.return_data[0])
                            mem[_19407 + (4 * ceil32(return_data.size)) + 398] = _9839
                            mem[_19407 + (4 * ceil32(return_data.size)) + 430] = mem[(32 * _14763 - 1) + _14667 + ceil32(return_data.size) + 32]
                            mem[_19407 + (4 * ceil32(return_data.size)) + 462] = 0
                            mem[_19407 + (4 * ceil32(return_data.size)) + 494] = 0
                            mem[_19407 + (4 * ceil32(return_data.size)) + 526] = arg2
                            mem[_19407 + (4 * ceil32(return_data.size)) + 558] = block.timestamp
                            require ext_code.size(address(stor4))
                            call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args mem[_19407 + (4 * ceil32(return_data.size)) + 334 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
                else:
                    _9871 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if not mem[_9871]:
                        revert with 0, 50
                    mem[_9871 + 32] = stor1
                    mem[0] = address(stor4)
                    mem[32] = sha3(address(ext_call.return_data[0]), 2)
                    if 1 >= mem[_9871]:
                        revert with 0, 50
                    mem[_9871 + 64] = stor2[address(ext_call.return_data[0])][address(stor4)]
                    if 2 >= mem[_9871]:
                        revert with 0, 50
                    mem[_9871 + 96] = address(ext_call.return_data[0])
                    mem[_9871 + 128] = 0x1550f83600000000000000000000000000000000000000000000000000000000
                    mem[_9871 + 132] = 0
                    mem[_9871 + 164] = 128
                    mem[_9871 + 260] = mem[_9871]
                    idx = 0
                    s = _9871 + 32
                    t = _9871 + 292
                    while idx < mem[_9871]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_9871 + 196] = this.address
                    mem[_9871 + 228] = block.timestamp
                    require ext_code.size(address(stor4))
                    call address(stor4).mem[mem[64] len 4] with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _9871 + (32 * mem[_9871]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14668 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14688 = mem[_14668]
                    require mem[_14668] <= test266151307()
                    require _14668 + mem[_14668] + 31 < _14668 + return_data.size
                    _14764 = mem[_14668 + mem[_14668]]
                    if mem[_14668 + mem[_14668]] > test266151307():
                        revert with 0, 65
                    if _14668 + ceil32(return_data.size) + ceil32(32 * mem[_14668 + mem[_14668]]) + 1 > test266151307() or ceil32(32 * mem[_14668 + mem[_14668]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _14668 + ceil32(return_data.size) + ceil32(32 * mem[_14668 + mem[_14668]]) + 1
                    mem[_14668 + ceil32(return_data.size)] = _14764
                    require return_data.size >= _14688 + (32 * _14764) + 32
                    mem[_14668 + ceil32(return_data.size) + 32 len 32 * _14764] = mem[_14668 + _14688 + 32 len 32 * _14764]
                    if _14764 < 1:
                        revert with 0, 17
                    if _14764 - 1 >= _14764:
                        revert with 0, 50
                    _19388 = mem[(32 * _14764 - 1) + _14668 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(stor4)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(stor4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19400 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_19400]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    _19409 = mem[64]
                    mem[mem[64] + 36] = address(stor4)
                    mem[mem[64] + 68] = -1
                    _19418 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_19409 + 100] = 32
                    mem[_19409 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    _19449 = mem[_19418]
                    mem[_19409 + 164 len ceil32(mem[_19418])] = mem[_19418 + 32 len ceil32(mem[_19418])]
                    if ceil32(_19449) > _19449:
                        mem[_19449 + _19409 + 164] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[_19409 + 168 len _19449 - 4]
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
                        mem[_19409 + 168] = this.address
                        mem[_19409 + 200] = address(stor4)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(stor4)
                        mem[_19409 + 164] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_19409 + ceil32(return_data.size) + 200] = address(stor4)
                        mem[_19409 + ceil32(return_data.size) + 232] = -1
                        mem[_19409 + ceil32(return_data.size) + 164] = 68
                        mem[_19409 + ceil32(return_data.size) + 196 len 4] = approve(address arg1, uint256 arg2)
                        mem[_19409 + ceil32(return_data.size) + 264] = 32
                        mem[_19409 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[_19409 + ceil32(return_data.size) + 328 len 96] = 0, address(stor4), -1, 0
                        mem[_19409 + ceil32(return_data.size) + 396] = 0
                        call address(ext_call.return_data[0]) with:
                           funct Mask(32, 224, 0, address(stor4), -1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, address(stor4), -1, 0) << 288)
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
                            mem[_19409 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_19409 + ceil32(return_data.size) + 360] == bool(mem[_19409 + ceil32(return_data.size) + 360])
                                if not mem[_19409 + ceil32(return_data.size) + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(stor4))
                        call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _9839, _19388, 0, 0, address(arg2), block.timestamp
                    else:
                        mem[_19409 + 164] = return_data.size
                        mem[_19409 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_19409 + 196] == bool(mem[_19409 + 196])
                            if not mem[_19409 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_19409 + ceil32(return_data.size) + 169] = this.address
                        mem[_19409 + ceil32(return_data.size) + 201] = address(stor4)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(stor4)
                        mem[_19409 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_19409 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(stor4)
                        mem[_19409 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = -1
                        mem[_19409 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                        mem[_19409 + ceil32(return_data.size) + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
                        mem[_19409 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                        mem[_19409 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[_19409 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 96] = 0, address(stor4), -1, 0
                        mem[_19409 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
                        call address(ext_call.return_data[0]) with:
                           funct Mask(32, 224, 0, address(stor4), -1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, address(stor4), -1, 0) << 288)
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
                            require ext_code.size(address(stor4))
                            call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _9839, _19388, 0, 0, address(arg2), block.timestamp
                        else:
                            mem[_19409 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
                            mem[_19409 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_19409 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_19409 + (4 * ceil32(return_data.size)) + 334] = 32
                                mem[_19409 + (4 * ceil32(return_data.size)) + 366] = 32
                                mem[_19409 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                                revert with memory
                                  from _19409 + (4 * ceil32(return_data.size)) + 330
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_19409 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_19409 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
                                if not mem[_19409 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                                    mem[_19409 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_19409 + (4 * ceil32(return_data.size)) + 334] = 32
                                    mem[_19409 + (4 * ceil32(return_data.size)) + 366] = 42
                                    mem[_19409 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                                    mem[_19409 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
                                    revert with memory
                                      from _19409 + (4 * ceil32(return_data.size)) + 330
                                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            mem[_19409 + (4 * ceil32(return_data.size)) + 334] = address(ext_call.return_data[0])
                            mem[_19409 + (4 * ceil32(return_data.size)) + 366] = address(ext_call.return_data[0])
                            mem[_19409 + (4 * ceil32(return_data.size)) + 398] = _9839
                            mem[_19409 + (4 * ceil32(return_data.size)) + 430] = _19388
                            mem[_19409 + (4 * ceil32(return_data.size)) + 462] = 0
                            mem[_19409 + (4 * ceil32(return_data.size)) + 494] = 0
                            mem[_19409 + (4 * ceil32(return_data.size)) + 526] = arg2
                            mem[_19409 + (4 * ceil32(return_data.size)) + 558] = block.timestamp
                            require ext_code.size(address(stor4))
                            call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args mem[_19409 + (4 * ceil32(return_data.size)) + 334 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
            else:
                mem[(2 * ceil32(return_data.size)) + 96] = 3
                mem[(2 * ceil32(return_data.size)) + 128] = stor1
                mem[(2 * ceil32(return_data.size)) + 160] = stor2[address(ext_call.return_data[0])][address(stor4)]
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
                require ext_code.size(address(stor4))
                call address(stor4).0x1550f836 with:
                   value msg.value / 2 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 388 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _4968 = mem[(2 * ceil32(return_data.size)) + 224 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                _4976 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225
                mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                require return_data.size >= _4968 + (32 * _4976) + 32
                mem[(4 * ceil32(return_data.size)) + 256 len 32 * _4976] = mem[(2 * ceil32(return_data.size)) + _4968 + 256 len 32 * _4976]
                if _4976 < 1:
                    revert with 0, 17
                if _4976 - 1 >= _4976:
                    revert with 0, 50
                _9840 = mem[(32 * _4976 - 1) + (4 * ceil32(return_data.size)) + 256]
                if msg.value < msg.value / 2:
                    revert with 0, 17
                mem[0] = address(stor4)
                mem[32] = sha3(address(ext_call.return_data[0]), 2)
                if not stor2[address(ext_call.return_data[0])][address(stor4)]:
                    _9873 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if not mem[_9873]:
                        revert with 0, 50
                    mem[_9873 + 32] = stor1
                    if 1 >= mem[_9873]:
                        revert with 0, 50
                    mem[_9873 + 64] = address(ext_call.return_data[0])
                    mem[_9873 + 96] = 0x1550f83600000000000000000000000000000000000000000000000000000000
                    mem[_9873 + 100] = 0
                    mem[_9873 + 132] = 128
                    mem[_9873 + 228] = mem[_9873]
                    idx = 0
                    s = _9873 + 32
                    t = _9873 + 260
                    while idx < mem[_9873]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_9873 + 164] = this.address
                    mem[_9873 + 196] = block.timestamp
                    require ext_code.size(address(stor4))
                    call address(stor4).mem[mem[64] len 4] with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _9873 + (32 * mem[_9873]) + -mem[64] + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14669 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14689 = mem[_14669]
                    require mem[_14669] <= test266151307()
                    require _14669 + mem[_14669] + 31 < _14669 + return_data.size
                    _14765 = mem[_14669 + mem[_14669]]
                    if mem[_14669 + mem[_14669]] > test266151307():
                        revert with 0, 65
                    if _14669 + ceil32(return_data.size) + ceil32(32 * mem[_14669 + mem[_14669]]) + 1 > test266151307() or ceil32(32 * mem[_14669 + mem[_14669]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _14669 + ceil32(return_data.size) + ceil32(32 * mem[_14669 + mem[_14669]]) + 1
                    mem[_14669 + ceil32(return_data.size)] = _14765
                    require return_data.size >= _14689 + (32 * _14765) + 32
                    mem[_14669 + ceil32(return_data.size) + 32 len 32 * _14765] = mem[_14669 + _14689 + 32 len 32 * _14765]
                    if _14765 < 1:
                        revert with 0, 17
                    if _14765 - 1 >= _14765:
                        revert with 0, 50
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(stor4)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(stor4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19401 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_19401]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    _19411 = mem[64]
                    mem[mem[64] + 36] = address(stor4)
                    mem[mem[64] + 68] = -1
                    _19421 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_19411 + 100] = 32
                    mem[_19411 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    _19451 = mem[_19421]
                    mem[_19411 + 164 len ceil32(mem[_19421])] = mem[_19421 + 32 len ceil32(mem[_19421])]
                    if ceil32(_19451) > _19451:
                        mem[_19451 + _19411 + 164] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[_19411 + 168 len _19451 - 4]
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
                        mem[_19411 + 168] = this.address
                        mem[_19411 + 200] = address(stor4)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(stor4)
                        mem[_19411 + 164] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_19411 + ceil32(return_data.size) + 200] = address(stor4)
                        mem[_19411 + ceil32(return_data.size) + 232] = -1
                        mem[_19411 + ceil32(return_data.size) + 164] = 68
                        mem[_19411 + ceil32(return_data.size) + 196 len 4] = approve(address arg1, uint256 arg2)
                        mem[_19411 + ceil32(return_data.size) + 264] = 32
                        mem[_19411 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[_19411 + ceil32(return_data.size) + 328 len 96] = 0, address(stor4), -1, 0
                        mem[_19411 + ceil32(return_data.size) + 396] = 0
                        call address(ext_call.return_data[0]) with:
                           funct Mask(32, 224, 0, address(stor4), -1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, address(stor4), -1, 0) << 288)
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
                            mem[_19411 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_19411 + ceil32(return_data.size) + 360] == bool(mem[_19411 + ceil32(return_data.size) + 360])
                                if not mem[_19411 + ceil32(return_data.size) + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(stor4))
                        call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _9840, mem[(32 * _14765 - 1) + _14669 + ceil32(return_data.size) + 32], 0, 0, address(arg2), block.timestamp
                    else:
                        mem[_19411 + 164] = return_data.size
                        mem[_19411 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_19411 + 196] == bool(mem[_19411 + 196])
                            if not mem[_19411 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_19411 + ceil32(return_data.size) + 169] = this.address
                        mem[_19411 + ceil32(return_data.size) + 201] = address(stor4)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(stor4)
                        mem[_19411 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_19411 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(stor4)
                        mem[_19411 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = -1
                        mem[_19411 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                        mem[_19411 + ceil32(return_data.size) + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
                        mem[_19411 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                        mem[_19411 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[_19411 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 96] = 0, address(stor4), -1, 0
                        mem[_19411 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
                        call address(ext_call.return_data[0]) with:
                           funct Mask(32, 224, 0, address(stor4), -1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, address(stor4), -1, 0) << 288)
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
                            require ext_code.size(address(stor4))
                            call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _9840, mem[(32 * _14765 - 1) + _14669 + ceil32(return_data.size) + 32], 0, 0, address(arg2), block.timestamp
                        else:
                            mem[_19411 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
                            mem[_19411 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_19411 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_19411 + (4 * ceil32(return_data.size)) + 334] = 32
                                mem[_19411 + (4 * ceil32(return_data.size)) + 366] = 32
                                mem[_19411 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                                revert with memory
                                  from _19411 + (4 * ceil32(return_data.size)) + 330
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_19411 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_19411 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
                                if not mem[_19411 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                                    mem[_19411 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_19411 + (4 * ceil32(return_data.size)) + 334] = 32
                                    mem[_19411 + (4 * ceil32(return_data.size)) + 366] = 42
                                    mem[_19411 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                                    mem[_19411 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
                                    revert with memory
                                      from _19411 + (4 * ceil32(return_data.size)) + 330
                                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            mem[_19411 + (4 * ceil32(return_data.size)) + 334] = address(ext_call.return_data[0])
                            mem[_19411 + (4 * ceil32(return_data.size)) + 366] = address(ext_call.return_data[0])
                            mem[_19411 + (4 * ceil32(return_data.size)) + 398] = _9840
                            mem[_19411 + (4 * ceil32(return_data.size)) + 430] = mem[(32 * _14765 - 1) + _14669 + ceil32(return_data.size) + 32]
                            mem[_19411 + (4 * ceil32(return_data.size)) + 462] = 0
                            mem[_19411 + (4 * ceil32(return_data.size)) + 494] = 0
                            mem[_19411 + (4 * ceil32(return_data.size)) + 526] = arg2
                            mem[_19411 + (4 * ceil32(return_data.size)) + 558] = block.timestamp
                            require ext_code.size(address(stor4))
                            call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args mem[_19411 + (4 * ceil32(return_data.size)) + 334 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
                else:
                    _9875 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if not mem[_9875]:
                        revert with 0, 50
                    mem[_9875 + 32] = stor1
                    mem[0] = address(stor4)
                    mem[32] = sha3(address(ext_call.return_data[0]), 2)
                    if 1 >= mem[_9875]:
                        revert with 0, 50
                    mem[_9875 + 64] = stor2[address(ext_call.return_data[0])][address(stor4)]
                    if 2 >= mem[_9875]:
                        revert with 0, 50
                    mem[_9875 + 96] = address(ext_call.return_data[0])
                    mem[_9875 + 128] = 0x1550f83600000000000000000000000000000000000000000000000000000000
                    mem[_9875 + 132] = 0
                    mem[_9875 + 164] = 128
                    mem[_9875 + 260] = mem[_9875]
                    idx = 0
                    s = _9875 + 32
                    t = _9875 + 292
                    while idx < mem[_9875]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_9875 + 196] = this.address
                    mem[_9875 + 228] = block.timestamp
                    require ext_code.size(address(stor4))
                    call address(stor4).mem[mem[64] len 4] with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _9875 + (32 * mem[_9875]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14670 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14690 = mem[_14670]
                    require mem[_14670] <= test266151307()
                    require _14670 + mem[_14670] + 31 < _14670 + return_data.size
                    _14766 = mem[_14670 + mem[_14670]]
                    if mem[_14670 + mem[_14670]] > test266151307():
                        revert with 0, 65
                    if _14670 + ceil32(return_data.size) + ceil32(32 * mem[_14670 + mem[_14670]]) + 1 > test266151307() or ceil32(32 * mem[_14670 + mem[_14670]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _14670 + ceil32(return_data.size) + ceil32(32 * mem[_14670 + mem[_14670]]) + 1
                    mem[_14670 + ceil32(return_data.size)] = _14766
                    require return_data.size >= _14690 + (32 * _14766) + 32
                    mem[_14670 + ceil32(return_data.size) + 32 len 32 * _14766] = mem[_14670 + _14690 + 32 len 32 * _14766]
                    if _14766 < 1:
                        revert with 0, 17
                    if _14766 - 1 >= _14766:
                        revert with 0, 50
                    _19390 = mem[(32 * _14766 - 1) + _14670 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(stor4)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(stor4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19402 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_19402]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    _19413 = mem[64]
                    mem[mem[64] + 36] = address(stor4)
                    mem[mem[64] + 68] = -1
                    _19424 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_19413 + 100] = 32
                    mem[_19413 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    _19453 = mem[_19424]
                    mem[_19413 + 164 len ceil32(mem[_19424])] = mem[_19424 + 32 len ceil32(mem[_19424])]
                    if ceil32(_19453) > _19453:
                        mem[_19453 + _19413 + 164] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args mem[_19413 + 168 len _19453 - 4]
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
                        mem[_19413 + 168] = this.address
                        mem[_19413 + 200] = address(stor4)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(stor4)
                        mem[_19413 + 164] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_19413 + ceil32(return_data.size) + 200] = address(stor4)
                        mem[_19413 + ceil32(return_data.size) + 232] = -1
                        mem[_19413 + ceil32(return_data.size) + 164] = 68
                        mem[_19413 + ceil32(return_data.size) + 196 len 4] = approve(address arg1, uint256 arg2)
                        mem[_19413 + ceil32(return_data.size) + 264] = 32
                        mem[_19413 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[_19413 + ceil32(return_data.size) + 328 len 96] = 0, address(stor4), -1, 0
                        mem[_19413 + ceil32(return_data.size) + 396] = 0
                        call address(ext_call.return_data[0]) with:
                           funct Mask(32, 224, 0, address(stor4), -1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, address(stor4), -1, 0) << 288)
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
                            mem[_19413 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_19413 + ceil32(return_data.size) + 360] == bool(mem[_19413 + ceil32(return_data.size) + 360])
                                if not mem[_19413 + ceil32(return_data.size) + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(stor4))
                        call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _9840, _19390, 0, 0, address(arg2), block.timestamp
                    else:
                        mem[_19413 + 164] = return_data.size
                        mem[_19413 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_19413 + 196] == bool(mem[_19413 + 196])
                            if not mem[_19413 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_19413 + ceil32(return_data.size) + 169] = this.address
                        mem[_19413 + ceil32(return_data.size) + 201] = address(stor4)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(stor4)
                        mem[_19413 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_19413 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(stor4)
                        mem[_19413 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = -1
                        mem[_19413 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                        mem[_19413 + ceil32(return_data.size) + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
                        mem[_19413 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                        mem[_19413 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[_19413 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 96] = 0, address(stor4), -1, 0
                        mem[_19413 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
                        call address(ext_call.return_data[0]) with:
                           funct Mask(32, 224, 0, address(stor4), -1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, address(stor4), -1, 0) << 288)
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
                            require ext_code.size(address(stor4))
                            call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _9840, _19390, 0, 0, address(arg2), block.timestamp
                        else:
                            mem[_19413 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
                            mem[_19413 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_19413 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_19413 + (4 * ceil32(return_data.size)) + 334] = 32
                                mem[_19413 + (4 * ceil32(return_data.size)) + 366] = 32
                                mem[_19413 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                                revert with memory
                                  from _19413 + (4 * ceil32(return_data.size)) + 330
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_19413 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_19413 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
                                if not mem[_19413 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                                    mem[_19413 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_19413 + (4 * ceil32(return_data.size)) + 334] = 32
                                    mem[_19413 + (4 * ceil32(return_data.size)) + 366] = 42
                                    mem[_19413 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                                    mem[_19413 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
                                    revert with memory
                                      from _19413 + (4 * ceil32(return_data.size)) + 330
                                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            mem[_19413 + (4 * ceil32(return_data.size)) + 334] = address(ext_call.return_data[0])
                            mem[_19413 + (4 * ceil32(return_data.size)) + 366] = address(ext_call.return_data[0])
                            mem[_19413 + (4 * ceil32(return_data.size)) + 398] = _9840
                            mem[_19413 + (4 * ceil32(return_data.size)) + 430] = _19390
                            mem[_19413 + (4 * ceil32(return_data.size)) + 462] = 0
                            mem[_19413 + (4 * ceil32(return_data.size)) + 494] = 0
                            mem[_19413 + (4 * ceil32(return_data.size)) + 526] = arg2
                            mem[_19413 + (4 * ceil32(return_data.size)) + 558] = block.timestamp
                            require ext_code.size(address(stor4))
                            call address(stor4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                                 gas gas_remaining wei
                                args mem[_19413 + (4 * ceil32(return_data.size)) + 334 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}



}
