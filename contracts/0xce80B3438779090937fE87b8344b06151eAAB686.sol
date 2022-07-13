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
    stor3 = 0x8bd7abf86696f1922beec10cccda9a79822f03fd
    stor4 = 0xabfad5e1a12c8bfcadff3bb47a526510817eeed1
    stor5 = 0x75b13c7cdb6c957526c0741708f04b35dfc812a1
}

function sub_570b107d(?) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        if arg1 < stor7.length:
            return 0
    else:
        if arg1 < stor8.length:
            return 0
    revert
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
    if stor3 != msg.sender:
        require msg.sender == 0x5c8403a2617aca5c86946e32e14148776e37f72a
    require not uint32(stor1.field_160)
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
    staticcall stor3.0xfc7e286d with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require uint32(stor1.field_160)
    require not provider[address(msg.sender)].field_48
    require not provider[address(msg.sender)].field_256
    provider[address(msg.sender)].field_48 = 1
    require uint128(stor0.field_0)
    provider[address(msg.sender)].field_256 = uint128(10^18 * uint128(stor0.field_128) * ext_call.return_data[0] / uint128(stor0.field_0))
    provider[address(msg.sender)].field_56 = uint128(100000 * 10^18 * ext_call.return_data[0] / uint128(stor0.field_0))
    provider[address(msg.sender)].field_0 = uint32(stor1.field_160)
    provider[address(msg.sender)].field_384 = uint128(10^18 * uint128(stor0.field_128) * ext_call.return_data[0] / uint128(stor0.field_0))
    provider[address(msg.sender)].field_512 = 0
    provider[address(msg.sender)].field_520 = 93750
    provider[address(msg.sender)].field_544 = 0
}

function sub_ce189c9c(?) payable {
    if stor10[address(msg.sender)].field_160 <= block.number:
        stor10[address(msg.sender)].field_128 = uint32(block.number)
        return 0
    if stor10[address(msg.sender)].field_0 <= 0:
        stor10[address(msg.sender)].field_128 = uint32(block.number)
        return 0
    if block.number / 28 * 10^6 <= 0:
        require sub_1051acde
        require ext_code.size(0x75b13c7cdb6c957526c0741708f04b35dfc812a1)
        call 0x75b13c7cdb6c957526c0741708f04b35dfc812a1.0x7387f44d with:
             gas gas_remaining wei
            args msg.sender, (62 * 10^14 * block.number * stor10[address(msg.sender)].field_0) - (62 * 10^14 * stor10[address(msg.sender)].field_128 * stor10[address(msg.sender)].field_0) / sub_1051acde
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor10[address(msg.sender)].field_128 = uint32(block.number)
        return ((62 * 10^14 * block.number * stor10[address(msg.sender)].field_0) - (62 * 10^14 * stor10[address(msg.sender)].field_128 * stor10[address(msg.sender)].field_0) / sub_1051acde)
    idx = 0
    s = 62 * 10^14
    while idx < block.number / 28 * 10^6:
        idx = idx + 1
        s = 4 * s / 5
        continue 
    require sub_1051acde
    require ext_code.size(0x75b13c7cdb6c957526c0741708f04b35dfc812a1)
    call 0x75b13c7cdb6c957526c0741708f04b35dfc812a1.0x7387f44d with:
         gas gas_remaining wei
        args msg.sender, (block.number * stor10[address(msg.sender)].field_0 * s) - (stor10[address(msg.sender)].field_128 * stor10[address(msg.sender)].field_0 * s) / sub_1051acde
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor10[address(msg.sender)].field_128 = uint32(block.number)
    return ((block.number * stor10[address(msg.sender)].field_0 * s) - (stor10[address(msg.sender)].field_128 * stor10[address(msg.sender)].field_0 * s) / sub_1051acde)
}

function sub_49e84f24(?) payable {
    require calldata.size - 4 >= 32
    if stor10[address(msg.sender)].field_160 > block.number:
        if stor10[address(msg.sender)].field_0 > 0:
            if block.number / 28 * 10^6 <= 0:
                require sub_1051acde
                require ext_code.size(0x75b13c7cdb6c957526c0741708f04b35dfc812a1)
                call 0x75b13c7cdb6c957526c0741708f04b35dfc812a1.0x7387f44d with:
                     gas gas_remaining wei
                    args msg.sender, (62 * 10^14 * block.number * stor10[address(msg.sender)].field_0) - (62 * 10^14 * stor10[address(msg.sender)].field_128 * stor10[address(msg.sender)].field_0) / sub_1051acde
            else:
                idx = 0
                s = 62 * 10^14
                while idx < block.number / 28 * 10^6:
                    idx = idx + 1
                    s = 4 * s / 5
                    continue 
                require sub_1051acde
                require ext_code.size(0x75b13c7cdb6c957526c0741708f04b35dfc812a1)
                call 0x75b13c7cdb6c957526c0741708f04b35dfc812a1.0x7387f44d with:
                     gas gas_remaining wei
                    args msg.sender, (block.number * stor10[address(msg.sender)].field_0 * s) - (stor10[address(msg.sender)].field_128 * stor10[address(msg.sender)].field_0 * s) / sub_1051acde
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
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
                if block.number / 28 * 10^6 <= 0:
                    require sub_1051acde
                    require ext_code.size(0x75b13c7cdb6c957526c0741708f04b35dfc812a1)
                    call 0x75b13c7cdb6c957526c0741708f04b35dfc812a1.0x7387f44d with:
                         gas gas_remaining wei
                        args msg.sender, (62 * 10^14 * block.number * stor10[address(msg.sender)].field_0) - (62 * 10^14 * stor10[address(msg.sender)].field_128 * stor10[address(msg.sender)].field_0) / sub_1051acde
                else:
                    idx = 0
                    s = 62 * 10^14
                    while idx < block.number / 28 * 10^6:
                        idx = idx + 1
                        s = 4 * s / 5
                        continue 
                    require sub_1051acde
                    require ext_code.size(0x75b13c7cdb6c957526c0741708f04b35dfc812a1)
                    call 0x75b13c7cdb6c957526c0741708f04b35dfc812a1.0x7387f44d with:
                         gas gas_remaining wei
                        args msg.sender, (block.number * stor10[address(msg.sender)].field_0 * s) - (stor10[address(msg.sender)].field_128 * stor10[address(msg.sender)].field_0 * s) / sub_1051acde
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
    if block.number <= provider[address(msg.sender)].field_0:
        revert with 0, 'block.number'
    else:
        provider[address(msg.sender)].field_0 = uint32(block.number)
        if block.number / 28 * 10^6 <= 0:
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
                            require ext_code.size(0x75b13c7cdb6c957526c0741708f04b35dfc812a1)
                            call 0x75b13c7cdb6c957526c0741708f04b35dfc812a1.0x7387f44d with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
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
                            require ext_code.size(0x75b13c7cdb6c957526c0741708f04b35dfc812a1)
                            call 0x75b13c7cdb6c957526c0741708f04b35dfc812a1.0x7387f44d with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
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
            idx = 0
            s = 62 * 10^14
            while idx < block.number / 28 * 10^6:
                idx = idx + 1
                s = 4 * s / 5
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
                            require ext_code.size(0x75b13c7cdb6c957526c0741708f04b35dfc812a1)
                            call 0x75b13c7cdb6c957526c0741708f04b35dfc812a1.0x7387f44d with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
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
                            require ext_code.size(0x75b13c7cdb6c957526c0741708f04b35dfc812a1)
                            call 0x75b13c7cdb6c957526c0741708f04b35dfc812a1.0x7387f44d with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
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
                            provider[address(msg.sender)].field_384 = uint128(provider[address(msg.sender)].field_384 + arg1)
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
                                provider[address(msg.sender)].field_384 = uint128(provider[address(msg.sender)].field_384 + arg1)
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
                                provider[address(msg.sender)].field_384 = uint128(provider[address(msg.sender)].field_384 + arg1)
                                provider[address(msg.sender)].field_512 = uint128(block.number + 2 * 10^6)
                else:
                    if block.number <= provider[address(msg.sender)].field_0:
                        revert with 0, 'block.number'
                    else:
                        provider[address(msg.sender)].field_0 = uint32(block.number)
                        if block.number / 28 * 10^6 <= 0:
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
                                            require ext_code.size(0x75b13c7cdb6c957526c0741708f04b35dfc812a1)
                                            call 0x75b13c7cdb6c957526c0741708f04b35dfc812a1.0x7387f44d with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
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
                                                        provider[address(msg.sender)].field_384 = uint128(provider[address(msg.sender)].field_384 + arg1)
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
                                                            provider[address(msg.sender)].field_384 = uint128(provider[address(msg.sender)].field_384 + arg1)
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
                                                            provider[address(msg.sender)].field_384 = uint128(provider[address(msg.sender)].field_384 + arg1)
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
                                            require ext_code.size(0x75b13c7cdb6c957526c0741708f04b35dfc812a1)
                                            call 0x75b13c7cdb6c957526c0741708f04b35dfc812a1.0x7387f44d with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
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
                                                        provider[address(msg.sender)].field_384 = uint128(provider[address(msg.sender)].field_384 + arg1)
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
                                                            provider[address(msg.sender)].field_384 = uint128(provider[address(msg.sender)].field_384 + arg1)
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
                                                            provider[address(msg.sender)].field_384 = uint128(provider[address(msg.sender)].field_384 + arg1)
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
                            idx = 0
                            s = 62 * 10^14
                            while idx < block.number / 28 * 10^6:
                                idx = idx + 1
                                s = 4 * s / 5
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
                                            require ext_code.size(0x75b13c7cdb6c957526c0741708f04b35dfc812a1)
                                            call 0x75b13c7cdb6c957526c0741708f04b35dfc812a1.0x7387f44d with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
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
                                                        provider[address(msg.sender)].field_384 = uint128(provider[address(msg.sender)].field_384 + arg1)
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
                                                            provider[address(msg.sender)].field_384 = uint128(provider[address(msg.sender)].field_384 + arg1)
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
                                                            provider[address(msg.sender)].field_384 = uint128(provider[address(msg.sender)].field_384 + arg1)
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
                                            require ext_code.size(0x75b13c7cdb6c957526c0741708f04b35dfc812a1)
                                            call 0x75b13c7cdb6c957526c0741708f04b35dfc812a1.0x7387f44d with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
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
                                                        provider[address(msg.sender)].field_384 = uint128(provider[address(msg.sender)].field_384 + arg1)
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
                                                            provider[address(msg.sender)].field_384 = uint128(provider[address(msg.sender)].field_384 + arg1)
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
                                                            provider[address(msg.sender)].field_384 = uint128(provider[address(msg.sender)].field_384 + arg1)
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
                        provider[address(msg.sender)].field_384 = uint128(provider[address(msg.sender)].field_384 + arg1)
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
                            provider[address(msg.sender)].field_384 = uint128(provider[address(msg.sender)].field_384 + arg1)
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
                            provider[address(msg.sender)].field_384 = uint128(provider[address(msg.sender)].field_384 + arg1)
                            provider[address(msg.sender)].field_512 = uint128(block.number + 2 * 10^6)
}

function sub_80aac031(?) payable {
    require calldata.size - 4 >= 32
    if provider[address(msg.sender)].field_256 - provider[address(msg.sender)].field_384 < arg1:
        revert with 0, 'too much'
    else:
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
                            args msg.sender, 9 * arg1 / 10
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
                            args msg.sender, 9 * arg1 / 10
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
                                args msg.sender, 9 * arg1 / 10
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
                                    args msg.sender, 9 * arg1 / 10
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
                                    args msg.sender, 9 * arg1 / 10
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
                                args msg.sender, 9 * arg1 / 10
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
                                    args msg.sender, 9 * arg1 / 10
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
                                    args msg.sender, 9 * arg1 / 10
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
                            args msg.sender, 9 * arg1 / 10
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
                            args msg.sender, 9 * arg1 / 10
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
                                args msg.sender, 9 * arg1 / 10
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
                                    args msg.sender, 9 * arg1 / 10
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
                                    args msg.sender, 9 * arg1 / 10
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
                                args msg.sender, 9 * arg1 / 10
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
                                    args msg.sender, 9 * arg1 / 10
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
                                    args msg.sender, 9 * arg1 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
        else:
            if block.number <= provider[address(msg.sender)].field_0:
                revert with 0, 'block.number'
            else:
                provider[address(msg.sender)].field_0 = uint32(block.number)
                if block.number / 28 * 10^6 <= 0:
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
                                    require ext_code.size(0x75b13c7cdb6c957526c0741708f04b35dfc812a1)
                                    call 0x75b13c7cdb6c957526c0741708f04b35dfc812a1.0x7387f44d with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
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
                                                        args msg.sender, 9 * arg1 / 10
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
                                                        args msg.sender, 9 * arg1 / 10
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
                                                            args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                            args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                        args msg.sender, 9 * arg1 / 10
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
                                                        args msg.sender, 9 * arg1 / 10
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
                                                            args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                            args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                    require ext_code.size(0x75b13c7cdb6c957526c0741708f04b35dfc812a1)
                                    call 0x75b13c7cdb6c957526c0741708f04b35dfc812a1.0x7387f44d with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
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
                                                        args msg.sender, 9 * arg1 / 10
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
                                                        args msg.sender, 9 * arg1 / 10
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
                                                            args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                            args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                        args msg.sender, 9 * arg1 / 10
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
                                                        args msg.sender, 9 * arg1 / 10
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
                                                            args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                            args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                    idx = 0
                    s = 62 * 10^14
                    while idx < block.number / 28 * 10^6:
                        idx = idx + 1
                        s = 4 * s / 5
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
                                    require ext_code.size(0x75b13c7cdb6c957526c0741708f04b35dfc812a1)
                                    call 0x75b13c7cdb6c957526c0741708f04b35dfc812a1.0x7387f44d with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
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
                                                        args msg.sender, 9 * arg1 / 10
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
                                                        args msg.sender, 9 * arg1 / 10
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
                                                            args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                            args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                        args msg.sender, 9 * arg1 / 10
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
                                                        args msg.sender, 9 * arg1 / 10
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
                                                            args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                            args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                    require ext_code.size(0x75b13c7cdb6c957526c0741708f04b35dfc812a1)
                                    call 0x75b13c7cdb6c957526c0741708f04b35dfc812a1.0x7387f44d with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
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
                                                        args msg.sender, 9 * arg1 / 10
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
                                                        args msg.sender, 9 * arg1 / 10
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
                                                            args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                            args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                        args msg.sender, 9 * arg1 / 10
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
                                                        args msg.sender, 9 * arg1 / 10
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
                                                            args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                            args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
                                                                args msg.sender, 9 * arg1 / 10
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
