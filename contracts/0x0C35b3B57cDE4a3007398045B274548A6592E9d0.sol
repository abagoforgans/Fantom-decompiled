contract main {




// =====================  Runtime code  =====================


#
#  - swap(uint256 arg1)
#
address owner;
uint256 stor1;
address sub_56603732Address;
address sub_040c30daAddress;
address govAddress;
uint256 startTime;
uint8 swapEnabled;

function sub_040c30da(?) {
    return sub_040c30daAddress
}

function gov() {
    return govAddress
}

function sub_56603732(?) {
    return sub_56603732Address
}

function swapEnabled() {
    return bool(swapEnabled)
}

function startTime() {
    return startTime
}

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

function setGov(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if govAddress != msg.sender:
        revert with 0, 'Only Governer'
    govAddress = arg1
    emit SetGov(arg1);
}

function sub_d40ebd47(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if govAddress != msg.sender:
        revert with 0, 'Only Governer'
    swapEnabled = uint8(bool(arg1))
    emit 0xc9d490f9: bool(arg1)
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

function getSwapRatio() {
    if block.timestamp <= startTime + (120 * 24 * 3600):
        return 100
    if not (block.timestamp + -startTime - (120 * 24 * 3600) / 720 * 24 * 3600) + 1:
        return 100
    if (30 * block.timestamp + -startTime - (120 * 24 * 3600) / 720 * 24 * 3600) + 30 / (block.timestamp + -startTime - (120 * 24 * 3600) / 720 * 24 * 3600) + 1 != 30:
        revert with 0, 'SafeMath: multiplication overflow'
    return ((30 * block.timestamp + -startTime - (120 * 24 * 3600) / 720 * 24 * 3600) + 130)
}

function swapMax() {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[100] = msg.sender
    require ext_code.size(sub_56603732Address)
    staticcall sub_56603732Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not swapEnabled:
        revert with 0, 'Swap is disabled'
    if startTime > block.timestamp:
        revert with 0, 'Swap has not been started yet'
    if block.timestamp <= startTime + (120 * 24 * 3600):
        if not ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 96] = 26
            mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 196] = msg.sender
            mem[ceil32(return_data.size) + 228] = 57005
            mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 160] = 100
            mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 192 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
            mem[ceil32(return_data.size) + 292] = 32
            mem[ceil32(return_data.size) + 324] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_56603732Address):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(sub_56603732Address):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 356 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, 57005, ext_call.return_data[0], 0
            mem[ceil32(return_data.size) + 456] = 0
            call sub_56603732Address with:
               funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, 57005, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, 57005, ext_call.return_data[0], 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                    if not uint32(msg.sender), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 388] == bool(mem[ceil32(return_data.size) + 388])
                    if not mem[ceil32(return_data.size) + 388]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(sub_040c30daAddress)
            call sub_040c30daAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[ceil32(return_data.size) + 96] = 26
            mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 196] = msg.sender
            mem[ceil32(return_data.size) + 228] = 57005
            mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 160] = 100
            mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 192 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
            mem[ceil32(return_data.size) + 292] = 32
            mem[ceil32(return_data.size) + 324] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_56603732Address):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(sub_56603732Address):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 356 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, 57005, ext_call.return_data[0], 0
            mem[ceil32(return_data.size) + 456] = 0
            call sub_56603732Address with:
               funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, 57005, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, 57005, ext_call.return_data[0], 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                    if not uint32(msg.sender), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 388] == bool(mem[ceil32(return_data.size) + 388])
                    if not mem[ceil32(return_data.size) + 388]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(sub_040c30daAddress)
            call sub_040c30daAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 100 * ext_call.return_data[0] / 100
    else:
        mem[ceil32(return_data.size) + 96] = 26
        mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
        if not (block.timestamp + -startTime - (120 * 24 * 3600) / 720 * 24 * 3600) + 1:
            if not ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 160] = 26
                mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 260] = msg.sender
                mem[ceil32(return_data.size) + 292] = 57005
                mem[ceil32(return_data.size) + 324] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 224] = 100
                mem[ceil32(return_data.size) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 256 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
                mem[ceil32(return_data.size) + 356] = 32
                mem[ceil32(return_data.size) + 388] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_56603732Address):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(sub_56603732Address):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 420 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, 57005, ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 520] = 0
                call sub_56603732Address with:
                   funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, 57005, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, 57005, ext_call.return_data[0], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                        if not uint32(msg.sender), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 452] == bool(mem[ceil32(return_data.size) + 452])
                        if not mem[ceil32(return_data.size) + 452]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(sub_040c30daAddress)
                call sub_040c30daAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(return_data.size) + 160] = 26
                mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 260] = msg.sender
                mem[ceil32(return_data.size) + 292] = 57005
                mem[ceil32(return_data.size) + 324] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 224] = 100
                mem[ceil32(return_data.size) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 256 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
                mem[ceil32(return_data.size) + 356] = 32
                mem[ceil32(return_data.size) + 388] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_56603732Address):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(sub_56603732Address):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 420 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, 57005, ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 520] = 0
                call sub_56603732Address with:
                   funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, 57005, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, 57005, ext_call.return_data[0], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                        if not uint32(msg.sender), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 452] == bool(mem[ceil32(return_data.size) + 452])
                        if not mem[ceil32(return_data.size) + 452]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(sub_040c30daAddress)
                call sub_040c30daAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 100 * ext_call.return_data[0] / 100
        else:
            if (30 * block.timestamp + -startTime - (120 * 24 * 3600) / 720 * 24 * 3600) + 30 / (block.timestamp + -startTime - (120 * 24 * 3600) / 720 * 24 * 3600) + 1 != 30:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 160] = 26
                mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                if not (30 * block.timestamp + -startTime - (120 * 24 * 3600) / 720 * 24 * 3600) + 130:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[ceil32(return_data.size) + 260] = msg.sender
                mem[ceil32(return_data.size) + 292] = 57005
                mem[ceil32(return_data.size) + 324] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 224] = 100
                mem[ceil32(return_data.size) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 256 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
                mem[ceil32(return_data.size) + 356] = 32
                mem[ceil32(return_data.size) + 388] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_56603732Address):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(sub_56603732Address):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 420 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, 57005, ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 520] = 0
                call sub_56603732Address with:
                   funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, 57005, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, 57005, ext_call.return_data[0], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                        if not uint32(msg.sender), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 452] == bool(mem[ceil32(return_data.size) + 452])
                        if not mem[ceil32(return_data.size) + 452]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(sub_040c30daAddress)
                call sub_040c30daAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0 / (30 * block.timestamp + -startTime - (120 * 24 * 3600) / 720 * 24 * 3600) + 130
            else:
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(return_data.size) + 160] = 26
                mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                if not (30 * block.timestamp + -startTime - (120 * 24 * 3600) / 720 * 24 * 3600) + 130:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[ceil32(return_data.size) + 260] = msg.sender
                mem[ceil32(return_data.size) + 292] = 57005
                mem[ceil32(return_data.size) + 324] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 224] = 100
                mem[ceil32(return_data.size) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 256 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
                mem[ceil32(return_data.size) + 356] = 32
                mem[ceil32(return_data.size) + 388] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_56603732Address):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(sub_56603732Address):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 420 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, 57005, ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 520] = 0
                call sub_56603732Address with:
                   funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, 57005, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, 57005, ext_call.return_data[0], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                        if not uint32(msg.sender), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 452] == bool(mem[ceil32(return_data.size) + 452])
                        if not mem[ceil32(return_data.size) + 452]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(sub_040c30daAddress)
                call sub_040c30daAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 100 * ext_call.return_data[0] / (30 * block.timestamp + -startTime - (120 * 24 * 3600) / 720 * 24 * 3600) + 130
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Swapped(msg.sender, ext_call.return_data[0]);
    stor1 = 1
}



}
