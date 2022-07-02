contract main {




// =====================  Runtime code  =====================


uint128 stor0;
uint128 stor0; offset 128
uint32 stor1;
uint32 stor1; offset 160
address stor1;
uint256 stor2;
address stor3;
address stor4;
address stor5;
uint256 sub_1051acde;
array of uint256 stor7;
array of uint256 stor8;
mapping of struct provider;
mapping of struct stor10;

function sub_1051acde(?) payable {
    return sub_1051acde
}

function getProvider(address arg1) payable {
    require calldata.size - 4 >= 32
    return provider[address(arg1)].field_0, 
           bool(provider[address(arg1)].field_48),
           provider[address(arg1)].field_0,
           provider[address(arg1)].field_256,
           provider[address(arg1)].field_384
}

function _fallback() payable {
    revert
}

function sub_0980b80f(?) payable {
    return uint128(stor0.field_0), uint128(stor0.field_0), uint32(stor1.field_0), stor2
}

function init() payable {
    stor3 = 0xe74930ff5d32db0ff6f2bd2b7d8c30e4f877d9bb
    stor4 = 0xdecf46a5c6dda9a2506a9eb1269138631c2a9efc
    stor5 = 0x61218748be0bb61e3675b73ba7b1a037a808f095
}

function getVoter(address arg1) payable {
    require calldata.size - 4 >= 32
    return provider[address(arg1)].field_0, 
           provider[address(arg1)].field_256,
           provider[address(arg1)].field_256,
           provider[address(arg1)].field_512,
           stor10[address(arg1)].field_0,
           stor10[address(arg1)].field_0
}

function genesis(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == stor3
    require uint32(stor1.field_160)
    uint128(stor0.field_0) = uint128(arg1)
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint128(stor0.field_128) = uint128(ext_call.return_data[0])
    address(stor1.field_0) = arg2
    uint32(stor1.field_160) = uint32(arg3)
    stor7.length++
    uint256(stor7[stor7.length]) = Mask(80, 0, block.number), 0, 0
    stor8.length++
    uint256(stor8[stor8.length]) = Mask(80, 0, block.number), 0, 0
}

function claimFounderStatus() payable {
    require ext_code.size(stor3)
    staticcall stor3.deposits(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require uint32(stor1.field_160)
    require not provider[address(msg.sender)].field_48
    provider[address(msg.sender)].field_48 = 1
    require uint128(stor0.field_0)
    provider[address(msg.sender)].field_256 = uint128(uint128(stor0.field_128) * ext_call.return_data[0] / uint128(stor0.field_0))
    provider[address(msg.sender)].field_56 = uint128(1000000 * 10^18 * ext_call.return_data[0] / uint128(stor0.field_0))
    provider[address(msg.sender)].field_0 = uint32(stor1.field_160)
    provider[address(msg.sender)].field_384 = Mask(128, 1, uint128(stor0.field_128) * ext_call.return_data[0] / uint128(stor0.field_0)) >> 1
    provider[address(msg.sender)].field_512 = uint128(block.number + 2 * 10^6)
}

function sub_49e84f24(?) payable {
    require calldata.size - 4 >= 32
    if stor10[address(msg.sender)].field_160 > block.number:
        if stor10[address(msg.sender)].field_0 > 0:
            if block.number / 40 * 10^6 <= 2:
                require sub_1051acde
                require ext_code.size(stor5)
                call stor5.getRewards(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (56 * 10^14 * block.number * stor10[address(msg.sender)].field_0) - (56 * 10^14 * stor10[address(msg.sender)].field_128 * stor10[address(msg.sender)].field_0) / sub_1051acde
            else:
                idx = 1
                s = 56 * 10^14
                while idx < block.number / 40 * 10^6:
                    idx = idx + 1
                    s = 3 * s / 4
                    continue 
                require sub_1051acde
                require ext_code.size(stor5)
                call stor5.getRewards(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (5599999999999746 * block.number * stor10[address(msg.sender)].field_0) + (254 * block.number / 40 * 10^6 * block.number * stor10[address(msg.sender)].field_0) - (5599999999999746 * stor10[address(msg.sender)].field_128 * stor10[address(msg.sender)].field_0) - (254 * block.number / 40 * 10^6 * stor10[address(msg.sender)].field_128 * stor10[address(msg.sender)].field_0) / sub_1051acde
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require bool(ext_call.return_data[0]) == 1
    stor10[address(msg.sender)].field_128 = uint32(block.number)
    stor10[address(msg.sender)].field_160 = uint32(block.number + 2 * 10^6)
    if arg1 > 0:
        require ext_code.size(stor4)
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= arg1
        stor10[address(msg.sender)].field_0 = uint128(stor10[address(msg.sender)].field_0 + arg1)
        require ext_code.size(stor4)
        call stor4.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_1051acde += arg1
}

function unlock(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == address(stor1.field_0):
        require provider[address(msg.sender)].field_384 >= arg2
        require block.number >= provider[address(msg.sender)].field_512
        provider[address(msg.sender)].field_384 = uint128(provider[address(msg.sender)].field_384 - arg2)
    if arg1 == stor4:
        require stor10[address(msg.sender)].field_0 >= arg2
        if stor10[address(msg.sender)].field_160 > block.number:
            if stor10[address(msg.sender)].field_0 > 0:
                if block.number / 40 * 10^6 <= 2:
                    require sub_1051acde
                    require ext_code.size(stor5)
                    call stor5.getRewards(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (56 * 10^14 * block.number * stor10[address(msg.sender)].field_0) - (56 * 10^14 * stor10[address(msg.sender)].field_128 * stor10[address(msg.sender)].field_0) / sub_1051acde
                else:
                    idx = 1
                    s = 56 * 10^14
                    while idx < block.number / 40 * 10^6:
                        idx = idx + 1
                        s = 3 * s / 4
                        continue 
                    require sub_1051acde
                    require ext_code.size(stor5)
                    call stor5.getRewards(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (5599999999999746 * block.number * stor10[address(msg.sender)].field_0) + (254 * block.number / 40 * 10^6 * block.number * stor10[address(msg.sender)].field_0) - (5599999999999746 * stor10[address(msg.sender)].field_128 * stor10[address(msg.sender)].field_0) - (254 * block.number / 40 * 10^6 * stor10[address(msg.sender)].field_128 * stor10[address(msg.sender)].field_0) / sub_1051acde
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require bool(ext_call.return_data[0]) == 1
        stor10[address(msg.sender)].field_128 = uint32(block.number)
        stor10[address(msg.sender)].field_0 = uint128(stor10[address(msg.sender)].field_0 - arg2)
        require ext_code.size(stor4)
        call stor4.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_1051acde -= arg2
}

function getRewards() payable {
    require block.number > provider[address(msg.sender)].field_0
    provider[address(msg.sender)].field_0 = uint32(block.number)
    if block.number / 40 * 10^6 <= 2:
        if not provider[address(msg.sender)].field_48:
            if stor7.length <= 0:
                if not provider[address(msg.sender)].field_48:
                    require stor7.length - 1 < stor7.length
                    require block.number
                    revert
                else:
                    require stor7.length - 1 < stor8.length
                    require block.number
                    revert
            else:
                if provider[address(msg.sender)].field_32 >= stor7.length - 1:
                    if not provider[address(msg.sender)].field_48:
                        require stor7.length - 1 < stor7.length
                        require block.number
                        revert
                    else:
                        require stor7.length - 1 < stor8.length
                        require block.number
                        revert
                else:
                    if provider[address(msg.sender)].field_32 >= stor7.length:
                        provider[address(msg.sender)].field_32 = uint16(stor7.length - 1)
                        require ext_code.size(stor5)
                        call stor5.getRewards(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require bool(ext_call.return_data[0]) == 1
                    else:
                        if not provider[address(msg.sender)].field_48:
                            require provider[address(msg.sender)].field_32 < stor7.length
                            require provider[address(msg.sender)].field_32 != stor7.length - 1
                            revert
                        else:
                            require provider[address(msg.sender)].field_32 < stor8.length
                            require provider[address(msg.sender)].field_32 != stor7.length - 1
                            revert
        else:
            if stor8.length <= 0:
                if not provider[address(msg.sender)].field_48:
                    require stor8.length - 1 < stor7.length
                    require block.number
                    revert
                else:
                    require stor8.length - 1 < stor8.length
                    require block.number
                    revert
            else:
                if provider[address(msg.sender)].field_32 >= stor8.length - 1:
                    if not provider[address(msg.sender)].field_48:
                        require stor8.length - 1 < stor7.length
                        require block.number
                        revert
                    else:
                        require stor8.length - 1 < stor8.length
                        require block.number
                        revert
                else:
                    if provider[address(msg.sender)].field_32 >= stor8.length:
                        provider[address(msg.sender)].field_32 = uint16(stor8.length - 1)
                        require ext_code.size(stor5)
                        call stor5.getRewards(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require bool(ext_call.return_data[0]) == 1
                    else:
                        if not provider[address(msg.sender)].field_48:
                            require provider[address(msg.sender)].field_32 < stor7.length
                            require provider[address(msg.sender)].field_32 != stor8.length - 1
                            revert
                        else:
                            require provider[address(msg.sender)].field_32 < stor8.length
                            require provider[address(msg.sender)].field_32 != stor8.length - 1
                            revert
    else:
        idx = 1
        s = 56 * 10^14
        while idx < block.number / 40 * 10^6:
            idx = idx + 1
            s = 3 * s / 4
            continue 
        if not provider[address(msg.sender)].field_48:
            if stor7.length <= 0:
                if not provider[address(msg.sender)].field_48:
                    require stor7.length - 1 < stor7.length
                    require block.number
                    revert
                else:
                    require stor7.length - 1 < stor8.length
                    require block.number
                    revert
            else:
                if provider[address(msg.sender)].field_32 >= stor7.length - 1:
                    if not provider[address(msg.sender)].field_48:
                        require stor7.length - 1 < stor7.length
                        require block.number
                        revert
                    else:
                        require stor7.length - 1 < stor8.length
                        require block.number
                        revert
                else:
                    if provider[address(msg.sender)].field_32 >= stor7.length:
                        provider[address(msg.sender)].field_32 = uint16(stor7.length - 1)
                        require ext_code.size(stor5)
                        call stor5.getRewards(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require bool(ext_call.return_data[0]) == 1
                    else:
                        if not provider[address(msg.sender)].field_48:
                            require provider[address(msg.sender)].field_32 < stor7.length
                            require provider[address(msg.sender)].field_32 != stor7.length - 1
                            revert
                        else:
                            require provider[address(msg.sender)].field_32 < stor8.length
                            require provider[address(msg.sender)].field_32 != stor7.length - 1
                            revert
        else:
            if stor8.length <= 0:
                if not provider[address(msg.sender)].field_48:
                    require stor8.length - 1 < stor7.length
                    require block.number
                    revert
                else:
                    require stor8.length - 1 < stor8.length
                    require block.number
                    revert
            else:
                if provider[address(msg.sender)].field_32 >= stor8.length - 1:
                    if not provider[address(msg.sender)].field_48:
                        require stor8.length - 1 < stor7.length
                        require block.number
                        revert
                    else:
                        require stor8.length - 1 < stor8.length
                        require block.number
                        revert
                else:
                    if provider[address(msg.sender)].field_32 >= stor8.length:
                        provider[address(msg.sender)].field_32 = uint16(stor8.length - 1)
                        require ext_code.size(stor5)
                        call stor5.getRewards(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require bool(ext_call.return_data[0]) == 1
                    else:
                        if not provider[address(msg.sender)].field_48:
                            require provider[address(msg.sender)].field_32 < stor7.length
                            require provider[address(msg.sender)].field_32 != stor8.length - 1
                            revert
                        else:
                            require provider[address(msg.sender)].field_32 < stor8.length
                            require provider[address(msg.sender)].field_32 != stor8.length - 1
                            revert
}

function stakeLP(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require not provider[address(msg.sender)].field_48
    require ext_code.size(address(stor1.field_0))
    staticcall address(stor1.field_0).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        require ext_call.return_data[0] >= arg1
        require ext_code.size(address(stor1.field_0))
        call address(stor1.field_0).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            if provider[address(msg.sender)].field_0:
                if provider[address(msg.sender)].field_0 == block.number:
                    require stor7.length - 1 < stor7.length
                    if block.number - (336 * 24 * 3600) <= 0:
                        require stor7.length - 1 < stor7.length
                        uint256(stor7[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) + arg1), 0
                        provider[address(msg.sender)].field_32 = uint16(stor7.length)
                        stor2 += arg1
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args address(stor1.field_0)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require stor2 + arg1
                            provider[address(msg.sender)].field_56 = uint128(provider[address(msg.sender)].field_56 + (arg1 * ext_call.return_data[0] / stor2 + arg1))
                            provider[address(msg.sender)].field_256 = uint128(provider[address(msg.sender)].field_256 + arg1)
                            provider[address(msg.sender)].field_384 = uint128(arg1)
                            provider[address(msg.sender)].field_512 = uint128(block.number + 2 * 10^6)
                    else:
                        require stor7.length - 1 < stor7.length
                        uint256(stor7[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) + arg1), Mask(80, 0, block.number - 1)
                        if block.number - 1 <= 0:
                            provider[address(msg.sender)].field_32 = uint16(stor7.length)
                            stor2 += arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(stor1.field_0)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require stor2 + arg1
                                provider[address(msg.sender)].field_56 = uint128(provider[address(msg.sender)].field_56 + (arg1 * ext_call.return_data[0] / stor2 + arg1))
                                provider[address(msg.sender)].field_256 = uint128(provider[address(msg.sender)].field_256 + arg1)
                                provider[address(msg.sender)].field_384 = uint128(arg1)
                                provider[address(msg.sender)].field_512 = uint128(block.number + 2 * 10^6)
                        else:
                            stor7.length++
                            uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) + arg1), 0
                            provider[address(msg.sender)].field_32 = uint16(stor7.length)
                            stor2 += arg1
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(stor1.field_0)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require stor2 + arg1
                                provider[address(msg.sender)].field_56 = uint128(provider[address(msg.sender)].field_56 + (arg1 * ext_call.return_data[0] / stor2 + arg1))
                                provider[address(msg.sender)].field_256 = uint128(provider[address(msg.sender)].field_256 + arg1)
                                provider[address(msg.sender)].field_384 = uint128(arg1)
                                provider[address(msg.sender)].field_512 = uint128(block.number + 2 * 10^6)
                else:
                    require block.number > provider[address(msg.sender)].field_0
                    provider[address(msg.sender)].field_0 = uint32(block.number)
                    if block.number / 40 * 10^6 <= 2:
                        if not provider[address(msg.sender)].field_48:
                            if stor7.length <= 0:
                                if not provider[address(msg.sender)].field_48:
                                    require stor7.length - 1 < stor7.length
                                    require block.number
                                    revert
                                else:
                                    require stor7.length - 1 < stor8.length
                                    require block.number
                                    revert
                            else:
                                if provider[address(msg.sender)].field_32 >= stor7.length - 1:
                                    if not provider[address(msg.sender)].field_48:
                                        require stor7.length - 1 < stor7.length
                                        require block.number
                                        revert
                                    else:
                                        require stor7.length - 1 < stor8.length
                                        require block.number
                                        revert
                                else:
                                    if provider[address(msg.sender)].field_32 >= stor7.length:
                                        provider[address(msg.sender)].field_32 = uint16(stor7.length - 1)
                                        require ext_code.size(stor5)
                                        call stor5.getRewards(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require bool(ext_call.return_data[0]) == 1
                                            require stor7.length - 1 < stor7.length
                                            if block.number - (336 * 24 * 3600) <= 0:
                                                require stor7.length - 1 < stor7.length
                                                uint256(stor7[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) + arg1), 0
                                                provider[address(msg.sender)].field_32 = uint16(stor7.length)
                                                stor2 += arg1
                                                require ext_code.size(stor4)
                                                staticcall stor4.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(stor1.field_0)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2 + arg1
                                                    provider[address(msg.sender)].field_56 = uint128(provider[address(msg.sender)].field_56 + (arg1 * ext_call.return_data[0] / stor2 + arg1))
                                                    provider[address(msg.sender)].field_256 = uint128(provider[address(msg.sender)].field_256 + arg1)
                                                    provider[address(msg.sender)].field_384 = uint128(arg1)
                                                    provider[address(msg.sender)].field_512 = uint128(block.number + 2 * 10^6)
                                            else:
                                                require stor7.length - 1 < stor7.length
                                                uint256(stor7[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) + arg1), Mask(80, 0, block.number - 1)
                                                if block.number - 1 <= 0:
                                                    provider[address(msg.sender)].field_32 = uint16(stor7.length)
                                                    stor2 += arg1
                                                    require ext_code.size(stor4)
                                                    staticcall stor4.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(stor1.field_0)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2 + arg1
                                                        provider[address(msg.sender)].field_56 = uint128(provider[address(msg.sender)].field_56 + (arg1 * ext_call.return_data[0] / stor2 + arg1))
                                                        provider[address(msg.sender)].field_256 = uint128(provider[address(msg.sender)].field_256 + arg1)
                                                        provider[address(msg.sender)].field_384 = uint128(arg1)
                                                        provider[address(msg.sender)].field_512 = uint128(block.number + 2 * 10^6)
                                                else:
                                                    stor7.length++
                                                    uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) + arg1), 0
                                                    provider[address(msg.sender)].field_32 = uint16(stor7.length)
                                                    stor2 += arg1
                                                    require ext_code.size(stor4)
                                                    staticcall stor4.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(stor1.field_0)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2 + arg1
                                                        provider[address(msg.sender)].field_56 = uint128(provider[address(msg.sender)].field_56 + (arg1 * ext_call.return_data[0] / stor2 + arg1))
                                                        provider[address(msg.sender)].field_256 = uint128(provider[address(msg.sender)].field_256 + arg1)
                                                        provider[address(msg.sender)].field_384 = uint128(arg1)
                                                        provider[address(msg.sender)].field_512 = uint128(block.number + 2 * 10^6)
                                    else:
                                        if not provider[address(msg.sender)].field_48:
                                            require provider[address(msg.sender)].field_32 < stor7.length
                                            require provider[address(msg.sender)].field_32 != stor7.length - 1
                                            revert
                                        else:
                                            require provider[address(msg.sender)].field_32 < stor8.length
                                            require provider[address(msg.sender)].field_32 != stor7.length - 1
                                            revert
                        else:
                            if stor8.length <= 0:
                                if not provider[address(msg.sender)].field_48:
                                    require stor8.length - 1 < stor7.length
                                    require block.number
                                    revert
                                else:
                                    require stor8.length - 1 < stor8.length
                                    require block.number
                                    revert
                            else:
                                if provider[address(msg.sender)].field_32 >= stor8.length - 1:
                                    if not provider[address(msg.sender)].field_48:
                                        require stor8.length - 1 < stor7.length
                                        require block.number
                                        revert
                                    else:
                                        require stor8.length - 1 < stor8.length
                                        require block.number
                                        revert
                                else:
                                    if provider[address(msg.sender)].field_32 >= stor8.length:
                                        provider[address(msg.sender)].field_32 = uint16(stor8.length - 1)
                                        require ext_code.size(stor5)
                                        call stor5.getRewards(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require bool(ext_call.return_data[0]) == 1
                                            require stor7.length - 1 < stor7.length
                                            if block.number - (336 * 24 * 3600) <= 0:
                                                require stor7.length - 1 < stor7.length
                                                uint256(stor7[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) + arg1), 0
                                                provider[address(msg.sender)].field_32 = uint16(stor7.length)
                                                stor2 += arg1
                                                require ext_code.size(stor4)
                                                staticcall stor4.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(stor1.field_0)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2 + arg1
                                                    provider[address(msg.sender)].field_56 = uint128(provider[address(msg.sender)].field_56 + (arg1 * ext_call.return_data[0] / stor2 + arg1))
                                                    provider[address(msg.sender)].field_256 = uint128(provider[address(msg.sender)].field_256 + arg1)
                                                    provider[address(msg.sender)].field_384 = uint128(arg1)
                                                    provider[address(msg.sender)].field_512 = uint128(block.number + 2 * 10^6)
                                            else:
                                                require stor7.length - 1 < stor7.length
                                                uint256(stor7[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) + arg1), Mask(80, 0, block.number - 1)
                                                if block.number - 1 <= 0:
                                                    provider[address(msg.sender)].field_32 = uint16(stor7.length)
                                                    stor2 += arg1
                                                    require ext_code.size(stor4)
                                                    staticcall stor4.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(stor1.field_0)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2 + arg1
                                                        provider[address(msg.sender)].field_56 = uint128(provider[address(msg.sender)].field_56 + (arg1 * ext_call.return_data[0] / stor2 + arg1))
                                                        provider[address(msg.sender)].field_256 = uint128(provider[address(msg.sender)].field_256 + arg1)
                                                        provider[address(msg.sender)].field_384 = uint128(arg1)
                                                        provider[address(msg.sender)].field_512 = uint128(block.number + 2 * 10^6)
                                                else:
                                                    stor7.length++
                                                    uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) + arg1), 0
                                                    provider[address(msg.sender)].field_32 = uint16(stor7.length)
                                                    stor2 += arg1
                                                    require ext_code.size(stor4)
                                                    staticcall stor4.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(stor1.field_0)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2 + arg1
                                                        provider[address(msg.sender)].field_56 = uint128(provider[address(msg.sender)].field_56 + (arg1 * ext_call.return_data[0] / stor2 + arg1))
                                                        provider[address(msg.sender)].field_256 = uint128(provider[address(msg.sender)].field_256 + arg1)
                                                        provider[address(msg.sender)].field_384 = uint128(arg1)
                                                        provider[address(msg.sender)].field_512 = uint128(block.number + 2 * 10^6)
                                    else:
                                        if not provider[address(msg.sender)].field_48:
                                            require provider[address(msg.sender)].field_32 < stor7.length
                                            require provider[address(msg.sender)].field_32 != stor8.length - 1
                                            revert
                                        else:
                                            require provider[address(msg.sender)].field_32 < stor8.length
                                            require provider[address(msg.sender)].field_32 != stor8.length - 1
                                            revert
                    else:
                        idx = 1
                        s = 56 * 10^14
                        while idx < block.number / 40 * 10^6:
                            idx = idx + 1
                            s = 3 * s / 4
                            continue 
                        if not provider[address(msg.sender)].field_48:
                            if stor7.length <= 0:
                                if not provider[address(msg.sender)].field_48:
                                    require stor7.length - 1 < stor7.length
                                    require block.number
                                    revert
                                else:
                                    require stor7.length - 1 < stor8.length
                                    require block.number
                                    revert
                            else:
                                if provider[address(msg.sender)].field_32 >= stor7.length - 1:
                                    if not provider[address(msg.sender)].field_48:
                                        require stor7.length - 1 < stor7.length
                                        require block.number
                                        revert
                                    else:
                                        require stor7.length - 1 < stor8.length
                                        require block.number
                                        revert
                                else:
                                    if provider[address(msg.sender)].field_32 >= stor7.length:
                                        provider[address(msg.sender)].field_32 = uint16(stor7.length - 1)
                                        require ext_code.size(stor5)
                                        call stor5.getRewards(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require bool(ext_call.return_data[0]) == 1
                                            require stor7.length - 1 < stor7.length
                                            if block.number - (336 * 24 * 3600) <= 0:
                                                require stor7.length - 1 < stor7.length
                                                uint256(stor7[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) + arg1), 0
                                                provider[address(msg.sender)].field_32 = uint16(stor7.length)
                                                stor2 += arg1
                                                require ext_code.size(stor4)
                                                staticcall stor4.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(stor1.field_0)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2 + arg1
                                                    provider[address(msg.sender)].field_56 = uint128(provider[address(msg.sender)].field_56 + (arg1 * ext_call.return_data[0] / stor2 + arg1))
                                                    provider[address(msg.sender)].field_256 = uint128(provider[address(msg.sender)].field_256 + arg1)
                                                    provider[address(msg.sender)].field_384 = uint128(arg1)
                                                    provider[address(msg.sender)].field_512 = uint128(block.number + 2 * 10^6)
                                            else:
                                                require stor7.length - 1 < stor7.length
                                                uint256(stor7[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) + arg1), Mask(80, 0, block.number - 1)
                                                if block.number - 1 <= 0:
                                                    provider[address(msg.sender)].field_32 = uint16(stor7.length)
                                                    stor2 += arg1
                                                    require ext_code.size(stor4)
                                                    staticcall stor4.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(stor1.field_0)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2 + arg1
                                                        provider[address(msg.sender)].field_56 = uint128(provider[address(msg.sender)].field_56 + (arg1 * ext_call.return_data[0] / stor2 + arg1))
                                                        provider[address(msg.sender)].field_256 = uint128(provider[address(msg.sender)].field_256 + arg1)
                                                        provider[address(msg.sender)].field_384 = uint128(arg1)
                                                        provider[address(msg.sender)].field_512 = uint128(block.number + 2 * 10^6)
                                                else:
                                                    stor7.length++
                                                    uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) + arg1), 0
                                                    provider[address(msg.sender)].field_32 = uint16(stor7.length)
                                                    stor2 += arg1
                                                    require ext_code.size(stor4)
                                                    staticcall stor4.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(stor1.field_0)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2 + arg1
                                                        provider[address(msg.sender)].field_56 = uint128(provider[address(msg.sender)].field_56 + (arg1 * ext_call.return_data[0] / stor2 + arg1))
                                                        provider[address(msg.sender)].field_256 = uint128(provider[address(msg.sender)].field_256 + arg1)
                                                        provider[address(msg.sender)].field_384 = uint128(arg1)
                                                        provider[address(msg.sender)].field_512 = uint128(block.number + 2 * 10^6)
                                    else:
                                        if not provider[address(msg.sender)].field_48:
                                            require provider[address(msg.sender)].field_32 < stor7.length
                                            require provider[address(msg.sender)].field_32 != stor7.length - 1
                                            revert
                                        else:
                                            require provider[address(msg.sender)].field_32 < stor8.length
                                            require provider[address(msg.sender)].field_32 != stor7.length - 1
                                            revert
                        else:
                            if stor8.length <= 0:
                                if not provider[address(msg.sender)].field_48:
                                    require stor8.length - 1 < stor7.length
                                    require block.number
                                    revert
                                else:
                                    require stor8.length - 1 < stor8.length
                                    require block.number
                                    revert
                            else:
                                if provider[address(msg.sender)].field_32 >= stor8.length - 1:
                                    if not provider[address(msg.sender)].field_48:
                                        require stor8.length - 1 < stor7.length
                                        require block.number
                                        revert
                                    else:
                                        require stor8.length - 1 < stor8.length
                                        require block.number
                                        revert
                                else:
                                    if provider[address(msg.sender)].field_32 >= stor8.length:
                                        provider[address(msg.sender)].field_32 = uint16(stor8.length - 1)
                                        require ext_code.size(stor5)
                                        call stor5.getRewards(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require bool(ext_call.return_data[0]) == 1
                                            require stor7.length - 1 < stor7.length
                                            if block.number - (336 * 24 * 3600) <= 0:
                                                require stor7.length - 1 < stor7.length
                                                uint256(stor7[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) + arg1), 0
                                                provider[address(msg.sender)].field_32 = uint16(stor7.length)
                                                stor2 += arg1
                                                require ext_code.size(stor4)
                                                staticcall stor4.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(stor1.field_0)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2 + arg1
                                                    provider[address(msg.sender)].field_56 = uint128(provider[address(msg.sender)].field_56 + (arg1 * ext_call.return_data[0] / stor2 + arg1))
                                                    provider[address(msg.sender)].field_256 = uint128(provider[address(msg.sender)].field_256 + arg1)
                                                    provider[address(msg.sender)].field_384 = uint128(arg1)
                                                    provider[address(msg.sender)].field_512 = uint128(block.number + 2 * 10^6)
                                            else:
                                                require stor7.length - 1 < stor7.length
                                                uint256(stor7[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) + arg1), Mask(80, 0, block.number - 1)
                                                if block.number - 1 <= 0:
                                                    provider[address(msg.sender)].field_32 = uint16(stor7.length)
                                                    stor2 += arg1
                                                    require ext_code.size(stor4)
                                                    staticcall stor4.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(stor1.field_0)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2 + arg1
                                                        provider[address(msg.sender)].field_56 = uint128(provider[address(msg.sender)].field_56 + (arg1 * ext_call.return_data[0] / stor2 + arg1))
                                                        provider[address(msg.sender)].field_256 = uint128(provider[address(msg.sender)].field_256 + arg1)
                                                        provider[address(msg.sender)].field_384 = uint128(arg1)
                                                        provider[address(msg.sender)].field_512 = uint128(block.number + 2 * 10^6)
                                                else:
                                                    stor7.length++
                                                    uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) + arg1), 0
                                                    provider[address(msg.sender)].field_32 = uint16(stor7.length)
                                                    stor2 += arg1
                                                    require ext_code.size(stor4)
                                                    staticcall stor4.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(stor1.field_0)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2 + arg1
                                                        provider[address(msg.sender)].field_56 = uint128(provider[address(msg.sender)].field_56 + (arg1 * ext_call.return_data[0] / stor2 + arg1))
                                                        provider[address(msg.sender)].field_256 = uint128(provider[address(msg.sender)].field_256 + arg1)
                                                        provider[address(msg.sender)].field_384 = uint128(arg1)
                                                        provider[address(msg.sender)].field_512 = uint128(block.number + 2 * 10^6)
                                    else:
                                        if not provider[address(msg.sender)].field_48:
                                            require provider[address(msg.sender)].field_32 < stor7.length
                                            require provider[address(msg.sender)].field_32 != stor8.length - 1
                                            revert
                                        else:
                                            require provider[address(msg.sender)].field_32 < stor8.length
                                            require provider[address(msg.sender)].field_32 != stor8.length - 1
                                            revert
            else:
                provider[address(msg.sender)].field_0 = uint32(block.number)
                require stor7.length - 1 < stor7.length
                if block.number - (336 * 24 * 3600) <= 0:
                    require stor7.length - 1 < stor7.length
                    uint256(stor7[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) + arg1), 0
                    provider[address(msg.sender)].field_32 = uint16(stor7.length)
                    stor2 += arg1
                    require ext_code.size(stor4)
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args address(stor1.field_0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require stor2 + arg1
                        provider[address(msg.sender)].field_56 = uint128(provider[address(msg.sender)].field_56 + (arg1 * ext_call.return_data[0] / stor2 + arg1))
                        provider[address(msg.sender)].field_256 = uint128(provider[address(msg.sender)].field_256 + arg1)
                        provider[address(msg.sender)].field_384 = uint128(arg1)
                        provider[address(msg.sender)].field_512 = uint128(block.number + 2 * 10^6)
                else:
                    require stor7.length - 1 < stor7.length
                    uint256(stor7[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) + arg1), Mask(80, 0, block.number - 1)
                    if block.number - 1 <= 0:
                        provider[address(msg.sender)].field_32 = uint16(stor7.length)
                        stor2 += arg1
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args address(stor1.field_0)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require stor2 + arg1
                            provider[address(msg.sender)].field_56 = uint128(provider[address(msg.sender)].field_56 + (arg1 * ext_call.return_data[0] / stor2 + arg1))
                            provider[address(msg.sender)].field_256 = uint128(provider[address(msg.sender)].field_256 + arg1)
                            provider[address(msg.sender)].field_384 = uint128(arg1)
                            provider[address(msg.sender)].field_512 = uint128(block.number + 2 * 10^6)
                    else:
                        stor7.length++
                        uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) + arg1), 0
                        provider[address(msg.sender)].field_32 = uint16(stor7.length)
                        stor2 += arg1
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args address(stor1.field_0)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require stor2 + arg1
                            provider[address(msg.sender)].field_56 = uint128(provider[address(msg.sender)].field_56 + (arg1 * ext_call.return_data[0] / stor2 + arg1))
                            provider[address(msg.sender)].field_256 = uint128(provider[address(msg.sender)].field_256 + arg1)
                            provider[address(msg.sender)].field_384 = uint128(arg1)
                            provider[address(msg.sender)].field_512 = uint128(block.number + 2 * 10^6)
}

function sub_80aac031(?) payable {
    require calldata.size - 4 >= 32
    require provider[address(msg.sender)].field_256 - provider[address(msg.sender)].field_384 >= arg1
    if provider[address(msg.sender)].field_0 == block.number:
        provider[address(msg.sender)].field_256 = uint128(provider[address(msg.sender)].field_256 - arg1)
        require provider[address(msg.sender)].field_256
        provider[address(msg.sender)].field_56 = uint128(provider[address(msg.sender)].field_56 - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256))
        if bool(provider[address(msg.sender)].field_48) != 1:
            require stor7.length - 1 < stor7.length
            stor2 -= arg1
            if block.number - (336 * 24 * 3600) <= 0:
                if not provider[address(msg.sender)].field_48:
                    require stor7.length - 1 < stor7.length
                    uint256(stor7[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                    require ext_code.size(address(stor1.field_0))
                    call address(stor1.field_0).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 10 * arg1 / 9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                else:
                    require stor7.length - 1 < stor8.length
                    uint256(stor8[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                    require ext_code.size(address(stor1.field_0))
                    call address(stor1.field_0).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 10 * arg1 / 9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
            else:
                if not provider[address(msg.sender)].field_48:
                    require stor7.length - 1 < stor7.length
                    uint256(stor7[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), Mask(80, 0, block.number - 1)
                    if block.number - 1 <= 0:
                        require ext_code.size(address(stor1.field_0))
                        call address(stor1.field_0).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 10 * arg1 / 9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                    else:
                        if bool(provider[address(msg.sender)].field_48) != 1:
                            stor7.length++
                            uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                            require ext_code.size(address(stor1.field_0))
                            call address(stor1.field_0).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 10 * arg1 / 9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                        else:
                            stor8.length++
                            uint256(stor8[stor8.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                            require ext_code.size(address(stor1.field_0))
                            call address(stor1.field_0).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 10 * arg1 / 9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                else:
                    require stor7.length - 1 < stor8.length
                    uint256(stor8[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), Mask(80, 0, block.number - 1)
                    if block.number - 1 <= 0:
                        require ext_code.size(address(stor1.field_0))
                        call address(stor1.field_0).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 10 * arg1 / 9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                    else:
                        if bool(provider[address(msg.sender)].field_48) != 1:
                            stor7.length++
                            uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                            require ext_code.size(address(stor1.field_0))
                            call address(stor1.field_0).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 10 * arg1 / 9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                        else:
                            stor8.length++
                            uint256(stor8[stor8.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                            require ext_code.size(address(stor1.field_0))
                            call address(stor1.field_0).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 10 * arg1 / 9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
        else:
            require stor8.length - 1 < stor8.length
            if block.number - (336 * 24 * 3600) <= 0:
                if not provider[address(msg.sender)].field_48:
                    require stor8.length - 1 < stor7.length
                    uint256(stor7[stor8.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                    require ext_code.size(address(stor1.field_0))
                    call address(stor1.field_0).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 10 * arg1 / 9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                else:
                    require stor8.length - 1 < stor8.length
                    uint256(stor8[stor8.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                    require ext_code.size(address(stor1.field_0))
                    call address(stor1.field_0).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 10 * arg1 / 9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
            else:
                if not provider[address(msg.sender)].field_48:
                    require stor8.length - 1 < stor7.length
                    uint256(stor7[stor8.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), Mask(80, 0, block.number - 1)
                    if block.number - 1 <= 0:
                        require ext_code.size(address(stor1.field_0))
                        call address(stor1.field_0).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 10 * arg1 / 9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                    else:
                        if bool(provider[address(msg.sender)].field_48) != 1:
                            stor7.length++
                            uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                            require ext_code.size(address(stor1.field_0))
                            call address(stor1.field_0).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 10 * arg1 / 9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                        else:
                            stor8.length++
                            uint256(stor8[stor8.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                            require ext_code.size(address(stor1.field_0))
                            call address(stor1.field_0).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 10 * arg1 / 9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                else:
                    require stor8.length - 1 < stor8.length
                    uint256(stor8[stor8.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), Mask(80, 0, block.number - 1)
                    if block.number - 1 <= 0:
                        require ext_code.size(address(stor1.field_0))
                        call address(stor1.field_0).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 10 * arg1 / 9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                    else:
                        if bool(provider[address(msg.sender)].field_48) != 1:
                            stor7.length++
                            uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                            require ext_code.size(address(stor1.field_0))
                            call address(stor1.field_0).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 10 * arg1 / 9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                        else:
                            stor8.length++
                            uint256(stor8[stor8.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                            require ext_code.size(address(stor1.field_0))
                            call address(stor1.field_0).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 10 * arg1 / 9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
    else:
        require block.number > provider[address(msg.sender)].field_0
        provider[address(msg.sender)].field_0 = uint32(block.number)
        if block.number / 40 * 10^6 <= 2:
            if not provider[address(msg.sender)].field_48:
                if stor7.length <= 0:
                    if not provider[address(msg.sender)].field_48:
                        require stor7.length - 1 < stor7.length
                        require block.number
                        revert
                    else:
                        require stor7.length - 1 < stor8.length
                        require block.number
                        revert
                else:
                    if provider[address(msg.sender)].field_32 >= stor7.length - 1:
                        if not provider[address(msg.sender)].field_48:
                            require stor7.length - 1 < stor7.length
                            require block.number
                            revert
                        else:
                            require stor7.length - 1 < stor8.length
                            require block.number
                            revert
                    else:
                        if provider[address(msg.sender)].field_32 >= stor7.length:
                            provider[address(msg.sender)].field_32 = uint16(stor7.length - 1)
                            require ext_code.size(stor5)
                            call stor5.getRewards(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require bool(ext_call.return_data[0]) == 1
                                provider[address(msg.sender)].field_256 = uint128(provider[address(msg.sender)].field_256 - arg1)
                                require provider[address(msg.sender)].field_256
                                provider[address(msg.sender)].field_56 = uint128(provider[address(msg.sender)].field_56 - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256))
                                if bool(provider[address(msg.sender)].field_48) != 1:
                                    require stor7.length - 1 < stor7.length
                                    stor2 -= arg1
                                    if block.number - (336 * 24 * 3600) <= 0:
                                        if not provider[address(msg.sender)].field_48:
                                            require stor7.length - 1 < stor7.length
                                            uint256(stor7[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                            require ext_code.size(address(stor1.field_0))
                                            call address(stor1.field_0).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 10 * arg1 / 9
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                        else:
                                            require stor7.length - 1 < stor8.length
                                            uint256(stor8[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                            require ext_code.size(address(stor1.field_0))
                                            call address(stor1.field_0).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 10 * arg1 / 9
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                    else:
                                        if not provider[address(msg.sender)].field_48:
                                            require stor7.length - 1 < stor7.length
                                            uint256(stor7[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), Mask(80, 0, block.number - 1)
                                            if block.number - 1 <= 0:
                                                require ext_code.size(address(stor1.field_0))
                                                call address(stor1.field_0).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10 * arg1 / 9
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                            else:
                                                if bool(provider[address(msg.sender)].field_48) != 1:
                                                    stor7.length++
                                                    uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                else:
                                                    stor8.length++
                                                    uint256(stor8[stor8.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                        else:
                                            require stor7.length - 1 < stor8.length
                                            uint256(stor8[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), Mask(80, 0, block.number - 1)
                                            if block.number - 1 <= 0:
                                                require ext_code.size(address(stor1.field_0))
                                                call address(stor1.field_0).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10 * arg1 / 9
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                            else:
                                                if bool(provider[address(msg.sender)].field_48) != 1:
                                                    stor7.length++
                                                    uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                else:
                                                    stor8.length++
                                                    uint256(stor8[stor8.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                else:
                                    require stor8.length - 1 < stor8.length
                                    if block.number - (336 * 24 * 3600) <= 0:
                                        if not provider[address(msg.sender)].field_48:
                                            require stor8.length - 1 < stor7.length
                                            uint256(stor7[stor8.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                            require ext_code.size(address(stor1.field_0))
                                            call address(stor1.field_0).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 10 * arg1 / 9
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                        else:
                                            require stor8.length - 1 < stor8.length
                                            uint256(stor8[stor8.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                            require ext_code.size(address(stor1.field_0))
                                            call address(stor1.field_0).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 10 * arg1 / 9
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                    else:
                                        if not provider[address(msg.sender)].field_48:
                                            require stor8.length - 1 < stor7.length
                                            uint256(stor7[stor8.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), Mask(80, 0, block.number - 1)
                                            if block.number - 1 <= 0:
                                                require ext_code.size(address(stor1.field_0))
                                                call address(stor1.field_0).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10 * arg1 / 9
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                            else:
                                                if bool(provider[address(msg.sender)].field_48) != 1:
                                                    stor7.length++
                                                    uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                else:
                                                    stor8.length++
                                                    uint256(stor8[stor8.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                        else:
                                            require stor8.length - 1 < stor8.length
                                            uint256(stor8[stor8.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), Mask(80, 0, block.number - 1)
                                            if block.number - 1 <= 0:
                                                require ext_code.size(address(stor1.field_0))
                                                call address(stor1.field_0).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10 * arg1 / 9
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                            else:
                                                if bool(provider[address(msg.sender)].field_48) != 1:
                                                    stor7.length++
                                                    uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                else:
                                                    stor8.length++
                                                    uint256(stor8[stor8.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                        else:
                            if not provider[address(msg.sender)].field_48:
                                require provider[address(msg.sender)].field_32 < stor7.length
                                require provider[address(msg.sender)].field_32 != stor7.length - 1
                                revert
                            else:
                                require provider[address(msg.sender)].field_32 < stor8.length
                                require provider[address(msg.sender)].field_32 != stor7.length - 1
                                revert
            else:
                if stor8.length <= 0:
                    if not provider[address(msg.sender)].field_48:
                        require stor8.length - 1 < stor7.length
                        require block.number
                        revert
                    else:
                        require stor8.length - 1 < stor8.length
                        require block.number
                        revert
                else:
                    if provider[address(msg.sender)].field_32 >= stor8.length - 1:
                        if not provider[address(msg.sender)].field_48:
                            require stor8.length - 1 < stor7.length
                            require block.number
                            revert
                        else:
                            require stor8.length - 1 < stor8.length
                            require block.number
                            revert
                    else:
                        if provider[address(msg.sender)].field_32 >= stor8.length:
                            provider[address(msg.sender)].field_32 = uint16(stor8.length - 1)
                            require ext_code.size(stor5)
                            call stor5.getRewards(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require bool(ext_call.return_data[0]) == 1
                                provider[address(msg.sender)].field_256 = uint128(provider[address(msg.sender)].field_256 - arg1)
                                require provider[address(msg.sender)].field_256
                                provider[address(msg.sender)].field_56 = uint128(provider[address(msg.sender)].field_56 - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256))
                                if bool(provider[address(msg.sender)].field_48) != 1:
                                    require stor7.length - 1 < stor7.length
                                    stor2 -= arg1
                                    if block.number - (336 * 24 * 3600) <= 0:
                                        if not provider[address(msg.sender)].field_48:
                                            require stor7.length - 1 < stor7.length
                                            uint256(stor7[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                            require ext_code.size(address(stor1.field_0))
                                            call address(stor1.field_0).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 10 * arg1 / 9
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                        else:
                                            require stor7.length - 1 < stor8.length
                                            uint256(stor8[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                            require ext_code.size(address(stor1.field_0))
                                            call address(stor1.field_0).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 10 * arg1 / 9
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                    else:
                                        if not provider[address(msg.sender)].field_48:
                                            require stor7.length - 1 < stor7.length
                                            uint256(stor7[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), Mask(80, 0, block.number - 1)
                                            if block.number - 1 <= 0:
                                                require ext_code.size(address(stor1.field_0))
                                                call address(stor1.field_0).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10 * arg1 / 9
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                            else:
                                                if bool(provider[address(msg.sender)].field_48) != 1:
                                                    stor7.length++
                                                    uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                else:
                                                    stor8.length++
                                                    uint256(stor8[stor8.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                        else:
                                            require stor7.length - 1 < stor8.length
                                            uint256(stor8[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), Mask(80, 0, block.number - 1)
                                            if block.number - 1 <= 0:
                                                require ext_code.size(address(stor1.field_0))
                                                call address(stor1.field_0).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10 * arg1 / 9
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                            else:
                                                if bool(provider[address(msg.sender)].field_48) != 1:
                                                    stor7.length++
                                                    uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                else:
                                                    stor8.length++
                                                    uint256(stor8[stor8.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                else:
                                    require stor8.length - 1 < stor8.length
                                    if block.number - (336 * 24 * 3600) <= 0:
                                        if not provider[address(msg.sender)].field_48:
                                            require stor8.length - 1 < stor7.length
                                            uint256(stor7[stor8.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                            require ext_code.size(address(stor1.field_0))
                                            call address(stor1.field_0).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 10 * arg1 / 9
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                        else:
                                            require stor8.length - 1 < stor8.length
                                            uint256(stor8[stor8.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                            require ext_code.size(address(stor1.field_0))
                                            call address(stor1.field_0).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 10 * arg1 / 9
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                    else:
                                        if not provider[address(msg.sender)].field_48:
                                            require stor8.length - 1 < stor7.length
                                            uint256(stor7[stor8.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), Mask(80, 0, block.number - 1)
                                            if block.number - 1 <= 0:
                                                require ext_code.size(address(stor1.field_0))
                                                call address(stor1.field_0).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10 * arg1 / 9
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                            else:
                                                if bool(provider[address(msg.sender)].field_48) != 1:
                                                    stor7.length++
                                                    uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                else:
                                                    stor8.length++
                                                    uint256(stor8[stor8.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                        else:
                                            require stor8.length - 1 < stor8.length
                                            uint256(stor8[stor8.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), Mask(80, 0, block.number - 1)
                                            if block.number - 1 <= 0:
                                                require ext_code.size(address(stor1.field_0))
                                                call address(stor1.field_0).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10 * arg1 / 9
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                            else:
                                                if bool(provider[address(msg.sender)].field_48) != 1:
                                                    stor7.length++
                                                    uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                else:
                                                    stor8.length++
                                                    uint256(stor8[stor8.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                        else:
                            if not provider[address(msg.sender)].field_48:
                                require provider[address(msg.sender)].field_32 < stor7.length
                                require provider[address(msg.sender)].field_32 != stor8.length - 1
                                revert
                            else:
                                require provider[address(msg.sender)].field_32 < stor8.length
                                require provider[address(msg.sender)].field_32 != stor8.length - 1
                                revert
        else:
            idx = 1
            s = 56 * 10^14
            while idx < block.number / 40 * 10^6:
                idx = idx + 1
                s = 3 * s / 4
                continue 
            if not provider[address(msg.sender)].field_48:
                if stor7.length <= 0:
                    if not provider[address(msg.sender)].field_48:
                        require stor7.length - 1 < stor7.length
                        require block.number
                        revert
                    else:
                        require stor7.length - 1 < stor8.length
                        require block.number
                        revert
                else:
                    if provider[address(msg.sender)].field_32 >= stor7.length - 1:
                        if not provider[address(msg.sender)].field_48:
                            require stor7.length - 1 < stor7.length
                            require block.number
                            revert
                        else:
                            require stor7.length - 1 < stor8.length
                            require block.number
                            revert
                    else:
                        if provider[address(msg.sender)].field_32 >= stor7.length:
                            provider[address(msg.sender)].field_32 = uint16(stor7.length - 1)
                            require ext_code.size(stor5)
                            call stor5.getRewards(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require bool(ext_call.return_data[0]) == 1
                                provider[address(msg.sender)].field_256 = uint128(provider[address(msg.sender)].field_256 - arg1)
                                require provider[address(msg.sender)].field_256
                                provider[address(msg.sender)].field_56 = uint128(provider[address(msg.sender)].field_56 - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256))
                                if bool(provider[address(msg.sender)].field_48) != 1:
                                    require stor7.length - 1 < stor7.length
                                    stor2 -= arg1
                                    if block.number - (336 * 24 * 3600) <= 0:
                                        if not provider[address(msg.sender)].field_48:
                                            require stor7.length - 1 < stor7.length
                                            uint256(stor7[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                            require ext_code.size(address(stor1.field_0))
                                            call address(stor1.field_0).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 10 * arg1 / 9
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                        else:
                                            require stor7.length - 1 < stor8.length
                                            uint256(stor8[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                            require ext_code.size(address(stor1.field_0))
                                            call address(stor1.field_0).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 10 * arg1 / 9
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                    else:
                                        if not provider[address(msg.sender)].field_48:
                                            require stor7.length - 1 < stor7.length
                                            uint256(stor7[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), Mask(80, 0, block.number - 1)
                                            if block.number - 1 <= 0:
                                                require ext_code.size(address(stor1.field_0))
                                                call address(stor1.field_0).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10 * arg1 / 9
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                            else:
                                                if bool(provider[address(msg.sender)].field_48) != 1:
                                                    stor7.length++
                                                    uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                else:
                                                    stor8.length++
                                                    uint256(stor8[stor8.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                        else:
                                            require stor7.length - 1 < stor8.length
                                            uint256(stor8[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), Mask(80, 0, block.number - 1)
                                            if block.number - 1 <= 0:
                                                require ext_code.size(address(stor1.field_0))
                                                call address(stor1.field_0).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10 * arg1 / 9
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                            else:
                                                if bool(provider[address(msg.sender)].field_48) != 1:
                                                    stor7.length++
                                                    uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                else:
                                                    stor8.length++
                                                    uint256(stor8[stor8.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                else:
                                    require stor8.length - 1 < stor8.length
                                    if block.number - (336 * 24 * 3600) <= 0:
                                        if not provider[address(msg.sender)].field_48:
                                            require stor8.length - 1 < stor7.length
                                            uint256(stor7[stor8.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                            require ext_code.size(address(stor1.field_0))
                                            call address(stor1.field_0).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 10 * arg1 / 9
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                        else:
                                            require stor8.length - 1 < stor8.length
                                            uint256(stor8[stor8.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                            require ext_code.size(address(stor1.field_0))
                                            call address(stor1.field_0).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 10 * arg1 / 9
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                    else:
                                        if not provider[address(msg.sender)].field_48:
                                            require stor8.length - 1 < stor7.length
                                            uint256(stor7[stor8.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), Mask(80, 0, block.number - 1)
                                            if block.number - 1 <= 0:
                                                require ext_code.size(address(stor1.field_0))
                                                call address(stor1.field_0).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10 * arg1 / 9
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                            else:
                                                if bool(provider[address(msg.sender)].field_48) != 1:
                                                    stor7.length++
                                                    uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                else:
                                                    stor8.length++
                                                    uint256(stor8[stor8.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                        else:
                                            require stor8.length - 1 < stor8.length
                                            uint256(stor8[stor8.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), Mask(80, 0, block.number - 1)
                                            if block.number - 1 <= 0:
                                                require ext_code.size(address(stor1.field_0))
                                                call address(stor1.field_0).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10 * arg1 / 9
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                            else:
                                                if bool(provider[address(msg.sender)].field_48) != 1:
                                                    stor7.length++
                                                    uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                else:
                                                    stor8.length++
                                                    uint256(stor8[stor8.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                        else:
                            if not provider[address(msg.sender)].field_48:
                                require provider[address(msg.sender)].field_32 < stor7.length
                                require provider[address(msg.sender)].field_32 != stor7.length - 1
                                revert
                            else:
                                require provider[address(msg.sender)].field_32 < stor8.length
                                require provider[address(msg.sender)].field_32 != stor7.length - 1
                                revert
            else:
                if stor8.length <= 0:
                    if not provider[address(msg.sender)].field_48:
                        require stor8.length - 1 < stor7.length
                        require block.number
                        revert
                    else:
                        require stor8.length - 1 < stor8.length
                        require block.number
                        revert
                else:
                    if provider[address(msg.sender)].field_32 >= stor8.length - 1:
                        if not provider[address(msg.sender)].field_48:
                            require stor8.length - 1 < stor7.length
                            require block.number
                            revert
                        else:
                            require stor8.length - 1 < stor8.length
                            require block.number
                            revert
                    else:
                        if provider[address(msg.sender)].field_32 >= stor8.length:
                            provider[address(msg.sender)].field_32 = uint16(stor8.length - 1)
                            require ext_code.size(stor5)
                            call stor5.getRewards(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require bool(ext_call.return_data[0]) == 1
                                provider[address(msg.sender)].field_256 = uint128(provider[address(msg.sender)].field_256 - arg1)
                                require provider[address(msg.sender)].field_256
                                provider[address(msg.sender)].field_56 = uint128(provider[address(msg.sender)].field_56 - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256))
                                if bool(provider[address(msg.sender)].field_48) != 1:
                                    require stor7.length - 1 < stor7.length
                                    stor2 -= arg1
                                    if block.number - (336 * 24 * 3600) <= 0:
                                        if not provider[address(msg.sender)].field_48:
                                            require stor7.length - 1 < stor7.length
                                            uint256(stor7[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                            require ext_code.size(address(stor1.field_0))
                                            call address(stor1.field_0).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 10 * arg1 / 9
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                        else:
                                            require stor7.length - 1 < stor8.length
                                            uint256(stor8[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                            require ext_code.size(address(stor1.field_0))
                                            call address(stor1.field_0).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 10 * arg1 / 9
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                    else:
                                        if not provider[address(msg.sender)].field_48:
                                            require stor7.length - 1 < stor7.length
                                            uint256(stor7[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), Mask(80, 0, block.number - 1)
                                            if block.number - 1 <= 0:
                                                require ext_code.size(address(stor1.field_0))
                                                call address(stor1.field_0).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10 * arg1 / 9
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                            else:
                                                if bool(provider[address(msg.sender)].field_48) != 1:
                                                    stor7.length++
                                                    uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                else:
                                                    stor8.length++
                                                    uint256(stor8[stor8.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                        else:
                                            require stor7.length - 1 < stor8.length
                                            uint256(stor8[stor7.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), Mask(80, 0, block.number - 1)
                                            if block.number - 1 <= 0:
                                                require ext_code.size(address(stor1.field_0))
                                                call address(stor1.field_0).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10 * arg1 / 9
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                            else:
                                                if bool(provider[address(msg.sender)].field_48) != 1:
                                                    stor7.length++
                                                    uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                else:
                                                    stor8.length++
                                                    uint256(stor8[stor8.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor7[stor7.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                else:
                                    require stor8.length - 1 < stor8.length
                                    if block.number - (336 * 24 * 3600) <= 0:
                                        if not provider[address(msg.sender)].field_48:
                                            require stor8.length - 1 < stor7.length
                                            uint256(stor7[stor8.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                            require ext_code.size(address(stor1.field_0))
                                            call address(stor1.field_0).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 10 * arg1 / 9
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                        else:
                                            require stor8.length - 1 < stor8.length
                                            uint256(stor8[stor8.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                            require ext_code.size(address(stor1.field_0))
                                            call address(stor1.field_0).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 10 * arg1 / 9
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                    else:
                                        if not provider[address(msg.sender)].field_48:
                                            require stor8.length - 1 < stor7.length
                                            uint256(stor7[stor8.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), Mask(80, 0, block.number - 1)
                                            if block.number - 1 <= 0:
                                                require ext_code.size(address(stor1.field_0))
                                                call address(stor1.field_0).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10 * arg1 / 9
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                            else:
                                                if bool(provider[address(msg.sender)].field_48) != 1:
                                                    stor7.length++
                                                    uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                else:
                                                    stor8.length++
                                                    uint256(stor8[stor8.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                        else:
                                            require stor8.length - 1 < stor8.length
                                            uint256(stor8[stor8.length]) = 0, Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), Mask(80, 0, block.number - 1)
                                            if block.number - 1 <= 0:
                                                require ext_code.size(address(stor1.field_0))
                                                call address(stor1.field_0).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10 * arg1 / 9
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                            else:
                                                if bool(provider[address(msg.sender)].field_48) != 1:
                                                    stor7.length++
                                                    uint256(stor7[stor7.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                else:
                                                    stor8.length++
                                                    uint256(stor8[stor8.length]) = Mask(80, 0, block.number), Mask(96, 0, (Mask(96, 0, Mask(176, 0, stor8[stor8.length])) >> 160) - (provider[address(msg.sender)].field_56 * arg1 / provider[address(msg.sender)].field_256)), 0
                                                    require ext_code.size(address(stor1.field_0))
                                                    call address(stor1.field_0).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10 * arg1 / 9
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                        else:
                            if not provider[address(msg.sender)].field_48:
                                require provider[address(msg.sender)].field_32 < stor7.length
                                require provider[address(msg.sender)].field_32 != stor8.length - 1
                                revert
                            else:
                                require provider[address(msg.sender)].field_32 < stor8.length
                                require provider[address(msg.sender)].field_32 != stor8.length - 1
                                revert
}



}
