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
uint256 swapRatio;

function sub_040c30da(?) {
    return sub_040c30daAddress
}

function swapRatio() {
    return swapRatio
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

function getSwapRatio() {
    return swapRatio
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

function setSwapRatio(uint256 arg1) {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Only Governer'
    swapRatio = arg1
    emit RatioChanged(arg1);
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

function swapMax() {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[100] = msg.sender
    require ext_code.size(sub_56603732Address)
    staticcall sub_56603732Address.0x70a08231 with:
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
    if not ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96] = 26
        mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
        if not swapRatio:
            revert with 0, 'SafeMath: division by zero', 0
        mem[ceil32(return_data.size) + 196] = msg.sender
        mem[ceil32(return_data.size) + 228] = 57005
        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 160] = 100
        mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 192 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(return_data.size) + 292] = 32
        mem[ceil32(return_data.size) + 324] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_56603732Address):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(sub_56603732Address):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 356 len 128] = unknown_0x23b872dd(?????), msg.sender, 57005, ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 456] = 0
        call sub_56603732Address with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, 57005, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, 57005, ext_call.return_data[0], 0) << 544)
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
        call sub_040c30daAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 0 / swapRatio
    else:
        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[ceil32(return_data.size) + 96] = 26
        mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
        if not swapRatio:
            revert with 0, 'SafeMath: division by zero', 0
        mem[ceil32(return_data.size) + 196] = msg.sender
        mem[ceil32(return_data.size) + 228] = 57005
        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 160] = 100
        mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 192 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(return_data.size) + 292] = 32
        mem[ceil32(return_data.size) + 324] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_56603732Address):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(sub_56603732Address):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 356 len 128] = unknown_0x23b872dd(?????), msg.sender, 57005, ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 456] = 0
        call sub_56603732Address with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, 57005, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, 57005, ext_call.return_data[0], 0) << 544)
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
        call sub_040c30daAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 100 * ext_call.return_data[0] / swapRatio
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Swapped(msg.sender, ext_call.return_data[0]);
    stor1 = 1
}



}
