contract main {




// =====================  Runtime code  =====================


address RNDAddress;
address sub_fac5b190Address;
address sub_abfaf568Address;
array of uint256 stor3;
uint256 stor4;
array of uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
mapping of uint256 lastClaim;

function lastClaim(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastClaim[arg1]
}

function RND() payable {
    return RNDAddress
}

function sub_abfaf568(?) payable {
    return sub_abfaf568Address
}

function sub_fac5b190(?) payable {
    return sub_fac5b190Address
}

function _fallback() payable {
    revert
}

function claim(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    mem[100] = arg2
    require ext_code.size(arg1)
    staticcall arg1.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == msg.sender:
        mem[ceil32(return_data.size) + 132] = arg2
        mem[ceil32(return_data.size) + 164] = arg3
        require ext_code.size(sub_fac5b190Address)
        staticcall sub_fac5b190Address.0x7009f834 with:
                gas gas_remaining wei
               args address(arg1), arg2, arg3
        mem[ceil32(return_data.size) + 96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        if not ext_call.return_data[32]:
            revert with 0, 'FeatureClaim: beyond available features'
        if ext_call.return_data[0] != 8:
            revert with 0, 'FeatureClaim: incorrect feature type for cliam'
        mem[(2 * ceil32(return_data.size)) + 128] = arg1
        mem[(2 * ceil32(return_data.size)) + 160] = arg2
        mem[(2 * ceil32(return_data.size)) + 192] = arg3
        mem[(2 * ceil32(return_data.size)) + 96] = 96
        if block.timestamp < lastClaim[address(arg1)][arg2][arg3]:
            revert with 'NH{q', 17
        if block.timestamp - lastClaim[address(arg1)][arg2][arg3] < stor11:
            revert with 0, 'FeatureClaim: wait one day to claim'
        mem[32] = 12
        lastClaim[address(arg1)][arg2][arg3] = block.timestamp
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor3.length):
                mem[(2 * ceil32(return_data.size)) + 388] = Mask(248, 8, stor3.length)
                require ext_code.size(sub_abfaf568Address)
                call sub_abfaf568Address.0x5e554b5e with:
                     gas gas_remaining wei
                    args Array(len=2 * Mask(256, -1, stor3.length.field_1), data=Mask(248, 8, stor3.length)), address(arg1), arg2, stor4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor7:
                    if stor6 > -1:
                        revert with 'NH{q', 17
                    if stor6 and stor10 > -1 / stor6:
                        revert with 'NH{q', 17
                    if bool(stor5.length):
                        if bool(stor5.length) == stor5.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor5.length):
                            require ext_code.size(sub_abfaf568Address)
                            call sub_abfaf568Address.0xd79fdf0a with:
                                 gas gas_remaining wei
                                args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=Mask(248, 8, stor5.length)), address(arg1), arg2, stor6 * stor10
                        else:
                            if bool(stor5.length) != 1:
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(return_data.size)) + 228 len -(2 * ceil32(return_data.size)) - 228]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor5.length.field_1:
                                    mem[(2 * ceil32(return_data.size)) + idx + 388] = stor5[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[(2 * ceil32(return_data.size)) + 388 len ceil32(stor5.length.field_1)]), address(arg1), arg2, stor6 * stor10
                    else:
                        if bool(stor5.length) == stor5.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor5.length):
                            require ext_code.size(sub_abfaf568Address)
                            call sub_abfaf568Address.0xd79fdf0a with:
                                 gas gas_remaining wei
                                args Array(len=stor5.length % 128, data=Mask(248, 8, stor5.length)), address(arg1), arg2, stor6 * stor10
                        else:
                            if bool(stor5.length) != 1:
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(return_data.size)) + 228 len -(2 * ceil32(return_data.size)) - 228]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor5.length.field_1:
                                    mem[(2 * ceil32(return_data.size)) + idx + 388] = stor5[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=stor5.length % 128, data=mem[(2 * ceil32(return_data.size)) + 388 len ceil32(stor5.length.field_1)]), address(arg1), arg2, stor6 * stor10
                else:
                    if block.number < 1:
                        revert with 'NH{q', 17
                    mem[(2 * ceil32(return_data.size)) + 256] = block.hash(block.number - 1)
                    mem[(2 * ceil32(return_data.size)) + 288] = block.timestamp
                    mem[(2 * ceil32(return_data.size)) + 320] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 224] = 96
                    mem[(2 * ceil32(return_data.size)) + 352] = 0x717e1d3700000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 356] = sha3(block.hash(block.number - 1), block.timestamp, msg.sender)
                    mem[(2 * ceil32(return_data.size)) + 388] = stor8
                    mem[(2 * ceil32(return_data.size)) + 420] = stor9
                    require ext_code.size(RNDAddress)
                    staticcall RNDAddress.0x717e1d37 with:
                            gas gas_remaining wei
                           args sha3(block.hash(block.number - 1), block.timestamp, msg.sender), stor8, stor9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 352
                    require return_data.size >= 64
                    _130 = mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 383 < (2 * ceil32(return_data.size)) + return_data.size + 352
                    _161 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352] > test266151307():
                        revert with 'NH{q', 65
                    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 353 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 353
                    mem[(4 * ceil32(return_data.size)) + 352] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]
                    require _130 + (32 * _161) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _130 + 384
                    t = (4 * ceil32(return_data.size)) + 384
                    while idx < _161:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _492 = mem[(2 * ceil32(return_data.size)) + 384]
                    require mem[(2 * ceil32(return_data.size)) + 384] == mem[(2 * ceil32(return_data.size)) + 384]
                    if stor6 > -mem[(2 * ceil32(return_data.size)) + 384] - 1:
                        revert with 'NH{q', 17
                    if stor6 + mem[(2 * ceil32(return_data.size)) + 384] and stor10 > -1 / stor6 + mem[(2 * ceil32(return_data.size)) + 384]:
                        revert with 'NH{q', 17
                    _516 = mem[64]
                    mem[mem[64]] = 0xd79fdf0a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 128
                    if bool(stor5.length):
                        if bool(stor5.length) == stor5.length.field_1 < 32:
                            revert with 'NH{q', 34
                        mem[mem[64] + 132] = stor5.length.field_1
                        if not bool(stor5.length):
                            require ext_code.size(sub_abfaf568Address)
                            call sub_abfaf568Address.0xd79fdf0a with:
                                 gas gas_remaining wei
                                args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=Mask(248, 8, stor5.length)), address(arg1), arg2, (stor6 * stor10) + (_492 * stor10)
                        else:
                            if bool(stor5.length) != 1:
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len -mem[64] - 4]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor5.length.field_1:
                                    mem[mem[64] + idx + 164] = stor5[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[_516 + 36] = arg1
                                mem[_516 + 68] = arg2
                                mem[_516 + 100] = (stor6 * stor10) + (_492 * stor10)
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _516 + ceil32(stor5.length.field_1) + -mem[64] + 160]
                    else:
                        if bool(stor5.length) == stor5.length.field_1 < 32:
                            revert with 'NH{q', 34
                        mem[mem[64] + 132] = stor5.length.field_1
                        if not bool(stor5.length):
                            require ext_code.size(sub_abfaf568Address)
                            call sub_abfaf568Address.0xd79fdf0a with:
                                 gas gas_remaining wei
                                args Array(len=stor5.length % 128, data=Mask(248, 8, stor5.length)), address(arg1), arg2, (stor6 * stor10) + (_492 * stor10)
                        else:
                            if bool(stor5.length) != 1:
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len -mem[64] - 4]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor5.length.field_1:
                                    mem[mem[64] + idx + 164] = stor5[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[_516 + 36] = arg1
                                mem[_516 + 68] = arg2
                                mem[_516 + 100] = (stor6 * stor10) + (_492 * stor10)
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _516 + ceil32(stor5.length.field_1) + -mem[64] + 160]
            else:
                if bool(stor3.length) != 1:
                    require ext_code.size(sub_abfaf568Address)
                    call sub_abfaf568Address.0x5e554b5e with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + 228 len -(2 * ceil32(return_data.size)) - 228]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor7:
                        if stor6 > -1:
                            revert with 'NH{q', 17
                        if stor6 and stor10 > -1 / stor6:
                            revert with 'NH{q', 17
                        if bool(stor5.length):
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=Mask(248, 8, stor5.length)), address(arg1), arg2, stor6 * stor10
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 228 len -(2 * ceil32(return_data.size)) - 228]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[(2 * ceil32(return_data.size)) + idx + 388] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[(2 * ceil32(return_data.size)) + 388 len ceil32(stor5.length.field_1)]), address(arg1), arg2, stor6 * stor10
                        else:
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=stor5.length % 128, data=Mask(248, 8, stor5.length)), address(arg1), arg2, stor6 * stor10
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 228 len -(2 * ceil32(return_data.size)) - 228]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[(2 * ceil32(return_data.size)) + idx + 388] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args Array(len=stor5.length % 128, data=mem[(2 * ceil32(return_data.size)) + 388 len ceil32(stor5.length.field_1)]), address(arg1), arg2, stor6 * stor10
                    else:
                        if block.number < 1:
                            revert with 'NH{q', 17
                        mem[(2 * ceil32(return_data.size)) + 256] = block.hash(block.number - 1)
                        mem[(2 * ceil32(return_data.size)) + 288] = block.timestamp
                        mem[(2 * ceil32(return_data.size)) + 320] = msg.sender
                        mem[(2 * ceil32(return_data.size)) + 224] = 96
                        mem[(2 * ceil32(return_data.size)) + 352] = 0x717e1d3700000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 356] = sha3(block.hash(block.number - 1), block.timestamp, msg.sender)
                        mem[(2 * ceil32(return_data.size)) + 388] = stor8
                        mem[(2 * ceil32(return_data.size)) + 420] = stor9
                        require ext_code.size(RNDAddress)
                        staticcall RNDAddress.0x717e1d37 with:
                                gas gas_remaining wei
                               args sha3(block.hash(block.number - 1), block.timestamp, msg.sender), stor8, stor9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 352
                        require return_data.size >= 64
                        _139 = mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 383 < (2 * ceil32(return_data.size)) + return_data.size + 352
                        _170 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352] > test266151307():
                            revert with 'NH{q', 65
                        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 353 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 353
                        mem[(4 * ceil32(return_data.size)) + 352] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]
                        require _139 + (32 * _170) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _139 + 384
                        t = (4 * ceil32(return_data.size)) + 384
                        while idx < _170:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _494 = mem[(2 * ceil32(return_data.size)) + 384]
                        require mem[(2 * ceil32(return_data.size)) + 384] == mem[(2 * ceil32(return_data.size)) + 384]
                        if stor6 > -mem[(2 * ceil32(return_data.size)) + 384] - 1:
                            revert with 'NH{q', 17
                        if stor6 + mem[(2 * ceil32(return_data.size)) + 384] and stor10 > -1 / stor6 + mem[(2 * ceil32(return_data.size)) + 384]:
                            revert with 'NH{q', 17
                        _518 = mem[64]
                        mem[mem[64]] = 0xd79fdf0a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 128
                        if bool(stor5.length):
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            mem[mem[64] + 132] = stor5.length.field_1
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=Mask(248, 8, stor5.length)), address(arg1), arg2, (stor6 * stor10) + (_494 * stor10)
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[mem[64] + idx + 164] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[_518 + 36] = arg1
                                    mem[_518 + 68] = arg2
                                    mem[_518 + 100] = (stor6 * stor10) + (_494 * stor10)
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _518 + ceil32(stor5.length.field_1) + -mem[64] + 160]
                        else:
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            mem[mem[64] + 132] = stor5.length.field_1
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=stor5.length % 128, data=Mask(248, 8, stor5.length)), address(arg1), arg2, (stor6 * stor10) + (_494 * stor10)
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[mem[64] + idx + 164] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[_518 + 36] = arg1
                                    mem[_518 + 68] = arg2
                                    mem[_518 + 100] = (stor6 * stor10) + (_494 * stor10)
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _518 + ceil32(stor5.length.field_1) + -mem[64] + 160]
                else:
                    idx = 0
                    s = 0
                    while idx < stor3.length.field_1:
                        mem[(2 * ceil32(return_data.size)) + idx + 388] = stor3[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_abfaf568Address)
                    call sub_abfaf568Address.0x5e554b5e with:
                         gas gas_remaining wei
                        args Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[(2 * ceil32(return_data.size)) + 388 len ceil32(stor3.length.field_1)]), address(arg1), arg2, stor4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor7:
                        if stor6 > -1:
                            revert with 'NH{q', 17
                        if stor6 and stor10 > -1 / stor6:
                            revert with 'NH{q', 17
                        if bool(stor5.length):
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=Mask(248, 8, stor5.length)), address(arg1), arg2, stor6 * stor10
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 228 len -(2 * ceil32(return_data.size)) - 228]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[(2 * ceil32(return_data.size)) + idx + 388] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[(2 * ceil32(return_data.size)) + 388 len ceil32(stor5.length.field_1)]), address(arg1), arg2, stor6 * stor10
                        else:
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=stor5.length % 128, data=Mask(248, 8, stor5.length)), address(arg1), arg2, stor6 * stor10
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 228 len -(2 * ceil32(return_data.size)) - 228]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[(2 * ceil32(return_data.size)) + idx + 388] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args Array(len=stor5.length % 128, data=mem[(2 * ceil32(return_data.size)) + 388 len ceil32(stor5.length.field_1)]), address(arg1), arg2, stor6 * stor10
                    else:
                        if block.number < 1:
                            revert with 'NH{q', 17
                        mem[(2 * ceil32(return_data.size)) + 256] = block.hash(block.number - 1)
                        mem[(2 * ceil32(return_data.size)) + 288] = block.timestamp
                        mem[(2 * ceil32(return_data.size)) + 320] = msg.sender
                        mem[(2 * ceil32(return_data.size)) + 224] = 96
                        mem[(2 * ceil32(return_data.size)) + 352] = 0x717e1d3700000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 356] = sha3(block.hash(block.number - 1), block.timestamp, msg.sender)
                        mem[(2 * ceil32(return_data.size)) + 388] = stor8
                        mem[(2 * ceil32(return_data.size)) + 420] = stor9
                        require ext_code.size(RNDAddress)
                        staticcall RNDAddress.0x717e1d37 with:
                                gas gas_remaining wei
                               args sha3(block.hash(block.number - 1), block.timestamp, msg.sender), stor8, stor9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 352
                        require return_data.size >= 64
                        _366 = mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 383 < (2 * ceil32(return_data.size)) + return_data.size + 352
                        _395 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352] > test266151307():
                            revert with 'NH{q', 65
                        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 353 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 353
                        mem[(4 * ceil32(return_data.size)) + 352] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]
                        require _366 + (32 * _395) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _366 + 384
                        t = (4 * ceil32(return_data.size)) + 384
                        while idx < _395:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _493 = mem[(2 * ceil32(return_data.size)) + 384]
                        require mem[(2 * ceil32(return_data.size)) + 384] == mem[(2 * ceil32(return_data.size)) + 384]
                        if stor6 > -mem[(2 * ceil32(return_data.size)) + 384] - 1:
                            revert with 'NH{q', 17
                        if stor6 + mem[(2 * ceil32(return_data.size)) + 384] and stor10 > -1 / stor6 + mem[(2 * ceil32(return_data.size)) + 384]:
                            revert with 'NH{q', 17
                        _517 = mem[64]
                        mem[mem[64]] = 0xd79fdf0a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 128
                        if bool(stor5.length):
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            mem[mem[64] + 132] = stor5.length.field_1
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=Mask(248, 8, stor5.length)), address(arg1), arg2, (stor6 * stor10) + (_493 * stor10)
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[mem[64] + idx + 164] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[_517 + 36] = arg1
                                    mem[_517 + 68] = arg2
                                    mem[_517 + 100] = (stor6 * stor10) + (_493 * stor10)
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _517 + ceil32(stor5.length.field_1) + -mem[64] + 160]
                        else:
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            mem[mem[64] + 132] = stor5.length.field_1
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=stor5.length % 128, data=Mask(248, 8, stor5.length)), address(arg1), arg2, (stor6 * stor10) + (_493 * stor10)
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[mem[64] + idx + 164] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[_517 + 36] = arg1
                                    mem[_517 + 68] = arg2
                                    mem[_517 + 100] = (stor6 * stor10) + (_493 * stor10)
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _517 + ceil32(stor5.length.field_1) + -mem[64] + 160]
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor3.length):
                mem[(2 * ceil32(return_data.size)) + 388] = Mask(248, 8, stor3.length)
                require ext_code.size(sub_abfaf568Address)
                call sub_abfaf568Address.0x5e554b5e with:
                     gas gas_remaining wei
                    args Array(len=stor3.length % 128, data=Mask(248, 8, stor3.length)), address(arg1), arg2, stor4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor7:
                    if stor6 > -1:
                        revert with 'NH{q', 17
                    if stor6 and stor10 > -1 / stor6:
                        revert with 'NH{q', 17
                    if bool(stor5.length):
                        if bool(stor5.length) == stor5.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor5.length):
                            require ext_code.size(sub_abfaf568Address)
                            call sub_abfaf568Address.0xd79fdf0a with:
                                 gas gas_remaining wei
                                args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=Mask(248, 8, stor5.length)), address(arg1), arg2, stor6 * stor10
                        else:
                            if bool(stor5.length) != 1:
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(return_data.size)) + 228 len -(2 * ceil32(return_data.size)) - 228]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor5.length.field_1:
                                    mem[(2 * ceil32(return_data.size)) + idx + 388] = stor5[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[(2 * ceil32(return_data.size)) + 388 len ceil32(stor5.length.field_1)]), address(arg1), arg2, stor6 * stor10
                    else:
                        if bool(stor5.length) == stor5.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor5.length):
                            require ext_code.size(sub_abfaf568Address)
                            call sub_abfaf568Address.0xd79fdf0a with:
                                 gas gas_remaining wei
                                args Array(len=stor5.length % 128, data=Mask(248, 8, stor5.length)), address(arg1), arg2, stor6 * stor10
                        else:
                            if bool(stor5.length) != 1:
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(return_data.size)) + 228 len -(2 * ceil32(return_data.size)) - 228]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor5.length.field_1:
                                    mem[(2 * ceil32(return_data.size)) + idx + 388] = stor5[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=stor5.length % 128, data=mem[(2 * ceil32(return_data.size)) + 388 len ceil32(stor5.length.field_1)]), address(arg1), arg2, stor6 * stor10
                else:
                    if block.number < 1:
                        revert with 'NH{q', 17
                    mem[(2 * ceil32(return_data.size)) + 256] = block.hash(block.number - 1)
                    mem[(2 * ceil32(return_data.size)) + 288] = block.timestamp
                    mem[(2 * ceil32(return_data.size)) + 320] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 224] = 96
                    mem[(2 * ceil32(return_data.size)) + 352] = 0x717e1d3700000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 356] = sha3(block.hash(block.number - 1), block.timestamp, msg.sender)
                    mem[(2 * ceil32(return_data.size)) + 388] = stor8
                    mem[(2 * ceil32(return_data.size)) + 420] = stor9
                    require ext_code.size(RNDAddress)
                    staticcall RNDAddress.0x717e1d37 with:
                            gas gas_remaining wei
                           args sha3(block.hash(block.number - 1), block.timestamp, msg.sender), stor8, stor9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 352
                    require return_data.size >= 64
                    _142 = mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 383 < (2 * ceil32(return_data.size)) + return_data.size + 352
                    _171 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352] > test266151307():
                        revert with 'NH{q', 65
                    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 353 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 353
                    mem[(4 * ceil32(return_data.size)) + 352] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]
                    require _142 + (32 * _171) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _142 + 384
                    t = (4 * ceil32(return_data.size)) + 384
                    while idx < _171:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _495 = mem[(2 * ceil32(return_data.size)) + 384]
                    require mem[(2 * ceil32(return_data.size)) + 384] == mem[(2 * ceil32(return_data.size)) + 384]
                    if stor6 > -mem[(2 * ceil32(return_data.size)) + 384] - 1:
                        revert with 'NH{q', 17
                    if stor6 + mem[(2 * ceil32(return_data.size)) + 384] and stor10 > -1 / stor6 + mem[(2 * ceil32(return_data.size)) + 384]:
                        revert with 'NH{q', 17
                    _519 = mem[64]
                    mem[mem[64]] = 0xd79fdf0a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 128
                    if bool(stor5.length):
                        if bool(stor5.length) == stor5.length.field_1 < 32:
                            revert with 'NH{q', 34
                        mem[mem[64] + 132] = stor5.length.field_1
                        if not bool(stor5.length):
                            require ext_code.size(sub_abfaf568Address)
                            call sub_abfaf568Address.0xd79fdf0a with:
                                 gas gas_remaining wei
                                args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=Mask(248, 8, stor5.length)), address(arg1), arg2, (stor6 * stor10) + (_495 * stor10)
                        else:
                            if bool(stor5.length) != 1:
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len -mem[64] - 4]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor5.length.field_1:
                                    mem[mem[64] + idx + 164] = stor5[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[_519 + 36] = arg1
                                mem[_519 + 68] = arg2
                                mem[_519 + 100] = (stor6 * stor10) + (_495 * stor10)
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _519 + ceil32(stor5.length.field_1) + -mem[64] + 160]
                    else:
                        if bool(stor5.length) == stor5.length.field_1 < 32:
                            revert with 'NH{q', 34
                        mem[mem[64] + 132] = stor5.length.field_1
                        if not bool(stor5.length):
                            require ext_code.size(sub_abfaf568Address)
                            call sub_abfaf568Address.0xd79fdf0a with:
                                 gas gas_remaining wei
                                args Array(len=stor5.length % 128, data=Mask(248, 8, stor5.length)), address(arg1), arg2, (stor6 * stor10) + (_495 * stor10)
                        else:
                            if bool(stor5.length) != 1:
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len -mem[64] - 4]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor5.length.field_1:
                                    mem[mem[64] + idx + 164] = stor5[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[_519 + 36] = arg1
                                mem[_519 + 68] = arg2
                                mem[_519 + 100] = (stor6 * stor10) + (_495 * stor10)
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _519 + ceil32(stor5.length.field_1) + -mem[64] + 160]
            else:
                if bool(stor3.length) != 1:
                    require ext_code.size(sub_abfaf568Address)
                    call sub_abfaf568Address.0x5e554b5e with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + 228 len -(2 * ceil32(return_data.size)) - 228]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor7:
                        if stor6 > -1:
                            revert with 'NH{q', 17
                        if stor6 and stor10 > -1 / stor6:
                            revert with 'NH{q', 17
                        if bool(stor5.length):
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=Mask(248, 8, stor5.length)), address(arg1), arg2, stor6 * stor10
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 228 len -(2 * ceil32(return_data.size)) - 228]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[(2 * ceil32(return_data.size)) + idx + 388] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[(2 * ceil32(return_data.size)) + 388 len ceil32(stor5.length.field_1)]), address(arg1), arg2, stor6 * stor10
                        else:
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=stor5.length % 128, data=Mask(248, 8, stor5.length)), address(arg1), arg2, stor6 * stor10
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 228 len -(2 * ceil32(return_data.size)) - 228]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[(2 * ceil32(return_data.size)) + idx + 388] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args Array(len=stor5.length % 128, data=mem[(2 * ceil32(return_data.size)) + 388 len ceil32(stor5.length.field_1)]), address(arg1), arg2, stor6 * stor10
                    else:
                        if block.number < 1:
                            revert with 'NH{q', 17
                        mem[(2 * ceil32(return_data.size)) + 256] = block.hash(block.number - 1)
                        mem[(2 * ceil32(return_data.size)) + 288] = block.timestamp
                        mem[(2 * ceil32(return_data.size)) + 320] = msg.sender
                        mem[(2 * ceil32(return_data.size)) + 224] = 96
                        mem[(2 * ceil32(return_data.size)) + 352] = 0x717e1d3700000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 356] = sha3(block.hash(block.number - 1), block.timestamp, msg.sender)
                        mem[(2 * ceil32(return_data.size)) + 388] = stor8
                        mem[(2 * ceil32(return_data.size)) + 420] = stor9
                        require ext_code.size(RNDAddress)
                        staticcall RNDAddress.0x717e1d37 with:
                                gas gas_remaining wei
                               args sha3(block.hash(block.number - 1), block.timestamp, msg.sender), stor8, stor9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 352
                        require return_data.size >= 64
                        _152 = mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 383 < (2 * ceil32(return_data.size)) + return_data.size + 352
                        _182 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352] > test266151307():
                            revert with 'NH{q', 65
                        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 353 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 353
                        mem[(4 * ceil32(return_data.size)) + 352] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]
                        require _152 + (32 * _182) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _152 + 384
                        t = (4 * ceil32(return_data.size)) + 384
                        while idx < _182:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _497 = mem[(2 * ceil32(return_data.size)) + 384]
                        require mem[(2 * ceil32(return_data.size)) + 384] == mem[(2 * ceil32(return_data.size)) + 384]
                        if stor6 > -mem[(2 * ceil32(return_data.size)) + 384] - 1:
                            revert with 'NH{q', 17
                        if stor6 + mem[(2 * ceil32(return_data.size)) + 384] and stor10 > -1 / stor6 + mem[(2 * ceil32(return_data.size)) + 384]:
                            revert with 'NH{q', 17
                        _521 = mem[64]
                        mem[mem[64]] = 0xd79fdf0a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 128
                        if bool(stor5.length):
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            mem[mem[64] + 132] = stor5.length.field_1
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=Mask(248, 8, stor5.length)), address(arg1), arg2, (stor6 * stor10) + (_497 * stor10)
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[mem[64] + idx + 164] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[_521 + 36] = arg1
                                    mem[_521 + 68] = arg2
                                    mem[_521 + 100] = (stor6 * stor10) + (_497 * stor10)
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _521 + ceil32(stor5.length.field_1) + -mem[64] + 160]
                        else:
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            mem[mem[64] + 132] = stor5.length.field_1
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=stor5.length % 128, data=Mask(248, 8, stor5.length)), address(arg1), arg2, (stor6 * stor10) + (_497 * stor10)
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[mem[64] + idx + 164] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[_521 + 36] = arg1
                                    mem[_521 + 68] = arg2
                                    mem[_521 + 100] = (stor6 * stor10) + (_497 * stor10)
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _521 + ceil32(stor5.length.field_1) + -mem[64] + 160]
                else:
                    idx = 0
                    s = 0
                    while idx < stor3.length.field_1:
                        mem[(2 * ceil32(return_data.size)) + idx + 388] = stor3[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_abfaf568Address)
                    call sub_abfaf568Address.0x5e554b5e with:
                         gas gas_remaining wei
                        args Array(len=stor3.length % 128, data=mem[(2 * ceil32(return_data.size)) + 388 len ceil32(stor3.length.field_1)]), address(arg1), arg2, stor4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor7:
                        if stor6 > -1:
                            revert with 'NH{q', 17
                        if stor6 and stor10 > -1 / stor6:
                            revert with 'NH{q', 17
                        if bool(stor5.length):
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=Mask(248, 8, stor5.length)), address(arg1), arg2, stor6 * stor10
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 228 len -(2 * ceil32(return_data.size)) - 228]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[(2 * ceil32(return_data.size)) + idx + 388] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[(2 * ceil32(return_data.size)) + 388 len ceil32(stor5.length.field_1)]), address(arg1), arg2, stor6 * stor10
                        else:
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=stor5.length % 128, data=Mask(248, 8, stor5.length)), address(arg1), arg2, stor6 * stor10
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 228 len -(2 * ceil32(return_data.size)) - 228]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[(2 * ceil32(return_data.size)) + idx + 388] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args Array(len=stor5.length % 128, data=mem[(2 * ceil32(return_data.size)) + 388 len ceil32(stor5.length.field_1)]), address(arg1), arg2, stor6 * stor10
                    else:
                        if block.number < 1:
                            revert with 'NH{q', 17
                        mem[(2 * ceil32(return_data.size)) + 256] = block.hash(block.number - 1)
                        mem[(2 * ceil32(return_data.size)) + 288] = block.timestamp
                        mem[(2 * ceil32(return_data.size)) + 320] = msg.sender
                        mem[(2 * ceil32(return_data.size)) + 224] = 96
                        mem[(2 * ceil32(return_data.size)) + 352] = 0x717e1d3700000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 356] = sha3(block.hash(block.number - 1), block.timestamp, msg.sender)
                        mem[(2 * ceil32(return_data.size)) + 388] = stor8
                        mem[(2 * ceil32(return_data.size)) + 420] = stor9
                        require ext_code.size(RNDAddress)
                        staticcall RNDAddress.0x717e1d37 with:
                                gas gas_remaining wei
                               args sha3(block.hash(block.number - 1), block.timestamp, msg.sender), stor8, stor9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 352
                        require return_data.size >= 64
                        _371 = mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 383 < (2 * ceil32(return_data.size)) + return_data.size + 352
                        _396 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]
                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352] > test266151307():
                            revert with 'NH{q', 65
                        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 353 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 353
                        mem[(4 * ceil32(return_data.size)) + 352] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]
                        require _371 + (32 * _396) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _371 + 384
                        t = (4 * ceil32(return_data.size)) + 384
                        while idx < _396:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _496 = mem[(2 * ceil32(return_data.size)) + 384]
                        require mem[(2 * ceil32(return_data.size)) + 384] == mem[(2 * ceil32(return_data.size)) + 384]
                        if stor6 > -mem[(2 * ceil32(return_data.size)) + 384] - 1:
                            revert with 'NH{q', 17
                        if stor6 + mem[(2 * ceil32(return_data.size)) + 384] and stor10 > -1 / stor6 + mem[(2 * ceil32(return_data.size)) + 384]:
                            revert with 'NH{q', 17
                        _520 = mem[64]
                        mem[mem[64]] = 0xd79fdf0a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 128
                        if bool(stor5.length):
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            mem[mem[64] + 132] = stor5.length.field_1
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=Mask(248, 8, stor5.length)), address(arg1), arg2, (stor6 * stor10) + (_496 * stor10)
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[mem[64] + idx + 164] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[_520 + 36] = arg1
                                    mem[_520 + 68] = arg2
                                    mem[_520 + 100] = (stor6 * stor10) + (_496 * stor10)
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _520 + ceil32(stor5.length.field_1) + -mem[64] + 160]
                        else:
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            mem[mem[64] + 132] = stor5.length.field_1
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=stor5.length % 128, data=Mask(248, 8, stor5.length)), address(arg1), arg2, (stor6 * stor10) + (_496 * stor10)
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[mem[64] + idx + 164] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[_520 + 36] = arg1
                                    mem[_520 + 68] = arg2
                                    mem[_520 + 100] = (stor6 * stor10) + (_496 * stor10)
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _520 + ceil32(stor5.length.field_1) + -mem[64] + 160]
    else:
        mem[ceil32(return_data.size) + 100] = arg2
        require ext_code.size(arg1)
        staticcall arg1.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg2
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'FeatureClaim: not approved or owner'
        mem[(2 * ceil32(return_data.size)) + 132] = arg2
        mem[(2 * ceil32(return_data.size)) + 164] = arg3
        require ext_code.size(sub_fac5b190Address)
        staticcall sub_fac5b190Address.0x7009f834 with:
                gas gas_remaining wei
               args address(arg1), arg2, arg3
        mem[(2 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        if not ext_call.return_data[32]:
            revert with 0, 'FeatureClaim: beyond available features'
        if ext_call.return_data[0] != 8:
            revert with 0, 'FeatureClaim: incorrect feature type for cliam'
        mem[(4 * ceil32(return_data.size)) + 128] = arg1
        mem[(4 * ceil32(return_data.size)) + 160] = arg2
        mem[(4 * ceil32(return_data.size)) + 192] = arg3
        mem[(4 * ceil32(return_data.size)) + 96] = 96
        if block.timestamp < lastClaim[address(arg1)][arg2][arg3]:
            revert with 'NH{q', 17
        if block.timestamp - lastClaim[address(arg1)][arg2][arg3] < stor11:
            revert with 0, 'FeatureClaim: wait one day to claim'
        mem[32] = 12
        lastClaim[address(arg1)][arg2][arg3] = block.timestamp
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor3.length):
                mem[(4 * ceil32(return_data.size)) + 388] = Mask(248, 8, stor3.length)
                require ext_code.size(sub_abfaf568Address)
                call sub_abfaf568Address.0x5e554b5e with:
                     gas gas_remaining wei
                    args Array(len=2 * Mask(256, -1, stor3.length.field_1), data=Mask(248, 8, stor3.length)), address(arg1), arg2, stor4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor7:
                    if stor6 > -1:
                        revert with 'NH{q', 17
                    if stor6 and stor10 > -1 / stor6:
                        revert with 'NH{q', 17
                    if bool(stor5.length):
                        if bool(stor5.length) == stor5.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor5.length):
                            require ext_code.size(sub_abfaf568Address)
                            call sub_abfaf568Address.0xd79fdf0a with:
                                 gas gas_remaining wei
                                args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=Mask(248, 8, stor5.length)), address(arg1), arg2, stor6 * stor10
                        else:
                            if bool(stor5.length) != 1:
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 228 len -(4 * ceil32(return_data.size)) - 228]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor5.length.field_1:
                                    mem[(4 * ceil32(return_data.size)) + idx + 388] = stor5[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[(4 * ceil32(return_data.size)) + 388 len ceil32(stor5.length.field_1)]), address(arg1), arg2, stor6 * stor10
                    else:
                        if bool(stor5.length) == stor5.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor5.length):
                            require ext_code.size(sub_abfaf568Address)
                            call sub_abfaf568Address.0xd79fdf0a with:
                                 gas gas_remaining wei
                                args Array(len=stor5.length % 128, data=Mask(248, 8, stor5.length)), address(arg1), arg2, stor6 * stor10
                        else:
                            if bool(stor5.length) != 1:
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 228 len -(4 * ceil32(return_data.size)) - 228]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor5.length.field_1:
                                    mem[(4 * ceil32(return_data.size)) + idx + 388] = stor5[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=stor5.length % 128, data=mem[(4 * ceil32(return_data.size)) + 388 len ceil32(stor5.length.field_1)]), address(arg1), arg2, stor6 * stor10
                else:
                    if block.number < 1:
                        revert with 'NH{q', 17
                    mem[(4 * ceil32(return_data.size)) + 256] = block.hash(block.number - 1)
                    mem[(4 * ceil32(return_data.size)) + 288] = block.timestamp
                    mem[(4 * ceil32(return_data.size)) + 320] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 224] = 96
                    mem[(4 * ceil32(return_data.size)) + 352] = 0x717e1d3700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 356] = sha3(block.hash(block.number - 1), block.timestamp, msg.sender)
                    mem[(4 * ceil32(return_data.size)) + 388] = stor8
                    mem[(4 * ceil32(return_data.size)) + 420] = stor9
                    require ext_code.size(RNDAddress)
                    staticcall RNDAddress.0x717e1d37 with:
                            gas gas_remaining wei
                           args sha3(block.hash(block.number - 1), block.timestamp, msg.sender), stor8, stor9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 352
                    require return_data.size >= 64
                    _227 = mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 383 < (4 * ceil32(return_data.size)) + return_data.size + 352
                    _251 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352] > test266151307():
                        revert with 'NH{q', 65
                    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 353 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 353
                    mem[(6 * ceil32(return_data.size)) + 352] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]
                    require _227 + (32 * _251) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _227 + 384
                    t = (6 * ceil32(return_data.size)) + 384
                    while idx < _251:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _498 = mem[(4 * ceil32(return_data.size)) + 384]
                    require mem[(4 * ceil32(return_data.size)) + 384] == mem[(4 * ceil32(return_data.size)) + 384]
                    if stor6 > -mem[(4 * ceil32(return_data.size)) + 384] - 1:
                        revert with 'NH{q', 17
                    if stor6 + mem[(4 * ceil32(return_data.size)) + 384] and stor10 > -1 / stor6 + mem[(4 * ceil32(return_data.size)) + 384]:
                        revert with 'NH{q', 17
                    _522 = mem[64]
                    mem[mem[64]] = 0xd79fdf0a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 128
                    if bool(stor5.length):
                        if bool(stor5.length) == stor5.length.field_1 < 32:
                            revert with 'NH{q', 34
                        mem[mem[64] + 132] = stor5.length.field_1
                        if not bool(stor5.length):
                            require ext_code.size(sub_abfaf568Address)
                            call sub_abfaf568Address.0xd79fdf0a with:
                                 gas gas_remaining wei
                                args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=Mask(248, 8, stor5.length)), address(arg1), arg2, (stor6 * stor10) + (_498 * stor10)
                        else:
                            if bool(stor5.length) != 1:
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len -mem[64] - 4]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor5.length.field_1:
                                    mem[mem[64] + idx + 164] = stor5[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[_522 + 36] = arg1
                                mem[_522 + 68] = arg2
                                mem[_522 + 100] = (stor6 * stor10) + (_498 * stor10)
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _522 + ceil32(stor5.length.field_1) + -mem[64] + 160]
                    else:
                        if bool(stor5.length) == stor5.length.field_1 < 32:
                            revert with 'NH{q', 34
                        mem[mem[64] + 132] = stor5.length.field_1
                        if not bool(stor5.length):
                            require ext_code.size(sub_abfaf568Address)
                            call sub_abfaf568Address.0xd79fdf0a with:
                                 gas gas_remaining wei
                                args Array(len=stor5.length % 128, data=Mask(248, 8, stor5.length)), address(arg1), arg2, (stor6 * stor10) + (_498 * stor10)
                        else:
                            if bool(stor5.length) != 1:
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len -mem[64] - 4]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor5.length.field_1:
                                    mem[mem[64] + idx + 164] = stor5[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[_522 + 36] = arg1
                                mem[_522 + 68] = arg2
                                mem[_522 + 100] = (stor6 * stor10) + (_498 * stor10)
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _522 + ceil32(stor5.length.field_1) + -mem[64] + 160]
            else:
                if bool(stor3.length) != 1:
                    require ext_code.size(sub_abfaf568Address)
                    call sub_abfaf568Address.0x5e554b5e with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 228 len -(4 * ceil32(return_data.size)) - 228]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor7:
                        if stor6 > -1:
                            revert with 'NH{q', 17
                        if stor6 and stor10 > -1 / stor6:
                            revert with 'NH{q', 17
                        if bool(stor5.length):
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=Mask(248, 8, stor5.length)), address(arg1), arg2, stor6 * stor10
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 228 len -(4 * ceil32(return_data.size)) - 228]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[(4 * ceil32(return_data.size)) + idx + 388] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[(4 * ceil32(return_data.size)) + 388 len ceil32(stor5.length.field_1)]), address(arg1), arg2, stor6 * stor10
                        else:
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=stor5.length % 128, data=Mask(248, 8, stor5.length)), address(arg1), arg2, stor6 * stor10
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 228 len -(4 * ceil32(return_data.size)) - 228]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[(4 * ceil32(return_data.size)) + idx + 388] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args Array(len=stor5.length % 128, data=mem[(4 * ceil32(return_data.size)) + 388 len ceil32(stor5.length.field_1)]), address(arg1), arg2, stor6 * stor10
                    else:
                        if block.number < 1:
                            revert with 'NH{q', 17
                        mem[(4 * ceil32(return_data.size)) + 256] = block.hash(block.number - 1)
                        mem[(4 * ceil32(return_data.size)) + 288] = block.timestamp
                        mem[(4 * ceil32(return_data.size)) + 320] = msg.sender
                        mem[(4 * ceil32(return_data.size)) + 224] = 96
                        mem[(4 * ceil32(return_data.size)) + 352] = 0x717e1d3700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 356] = sha3(block.hash(block.number - 1), block.timestamp, msg.sender)
                        mem[(4 * ceil32(return_data.size)) + 388] = stor8
                        mem[(4 * ceil32(return_data.size)) + 420] = stor9
                        require ext_code.size(RNDAddress)
                        staticcall RNDAddress.0x717e1d37 with:
                                gas gas_remaining wei
                               args sha3(block.hash(block.number - 1), block.timestamp, msg.sender), stor8, stor9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 352
                        require return_data.size >= 64
                        _236 = mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 383 < (4 * ceil32(return_data.size)) + return_data.size + 352
                        _253 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 353 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 353
                        mem[(6 * ceil32(return_data.size)) + 352] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]
                        require _236 + (32 * _253) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _236 + 384
                        t = (6 * ceil32(return_data.size)) + 384
                        while idx < _253:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _500 = mem[(4 * ceil32(return_data.size)) + 384]
                        require mem[(4 * ceil32(return_data.size)) + 384] == mem[(4 * ceil32(return_data.size)) + 384]
                        if stor6 > -mem[(4 * ceil32(return_data.size)) + 384] - 1:
                            revert with 'NH{q', 17
                        if stor6 + mem[(4 * ceil32(return_data.size)) + 384] and stor10 > -1 / stor6 + mem[(4 * ceil32(return_data.size)) + 384]:
                            revert with 'NH{q', 17
                        _524 = mem[64]
                        mem[mem[64]] = 0xd79fdf0a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 128
                        if bool(stor5.length):
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            mem[mem[64] + 132] = stor5.length.field_1
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=Mask(248, 8, stor5.length)), address(arg1), arg2, (stor6 * stor10) + (_500 * stor10)
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[mem[64] + idx + 164] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[_524 + 36] = arg1
                                    mem[_524 + 68] = arg2
                                    mem[_524 + 100] = (stor6 * stor10) + (_500 * stor10)
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _524 + ceil32(stor5.length.field_1) + -mem[64] + 160]
                        else:
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            mem[mem[64] + 132] = stor5.length.field_1
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=stor5.length % 128, data=Mask(248, 8, stor5.length)), address(arg1), arg2, (stor6 * stor10) + (_500 * stor10)
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[mem[64] + idx + 164] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[_524 + 36] = arg1
                                    mem[_524 + 68] = arg2
                                    mem[_524 + 100] = (stor6 * stor10) + (_500 * stor10)
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _524 + ceil32(stor5.length.field_1) + -mem[64] + 160]
                else:
                    idx = 0
                    s = 0
                    while idx < stor3.length.field_1:
                        mem[(4 * ceil32(return_data.size)) + idx + 388] = stor3[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_abfaf568Address)
                    call sub_abfaf568Address.0x5e554b5e with:
                         gas gas_remaining wei
                        args Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[(4 * ceil32(return_data.size)) + 388 len ceil32(stor3.length.field_1)]), address(arg1), arg2, stor4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor7:
                        if stor6 > -1:
                            revert with 'NH{q', 17
                        if stor6 and stor10 > -1 / stor6:
                            revert with 'NH{q', 17
                        if bool(stor5.length):
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=Mask(248, 8, stor5.length)), address(arg1), arg2, stor6 * stor10
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 228 len -(4 * ceil32(return_data.size)) - 228]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[(4 * ceil32(return_data.size)) + idx + 388] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[(4 * ceil32(return_data.size)) + 388 len ceil32(stor5.length.field_1)]), address(arg1), arg2, stor6 * stor10
                        else:
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=stor5.length % 128, data=Mask(248, 8, stor5.length)), address(arg1), arg2, stor6 * stor10
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 228 len -(4 * ceil32(return_data.size)) - 228]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[(4 * ceil32(return_data.size)) + idx + 388] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args Array(len=stor5.length % 128, data=mem[(4 * ceil32(return_data.size)) + 388 len ceil32(stor5.length.field_1)]), address(arg1), arg2, stor6 * stor10
                    else:
                        if block.number < 1:
                            revert with 'NH{q', 17
                        mem[(4 * ceil32(return_data.size)) + 256] = block.hash(block.number - 1)
                        mem[(4 * ceil32(return_data.size)) + 288] = block.timestamp
                        mem[(4 * ceil32(return_data.size)) + 320] = msg.sender
                        mem[(4 * ceil32(return_data.size)) + 224] = 96
                        mem[(4 * ceil32(return_data.size)) + 352] = 0x717e1d3700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 356] = sha3(block.hash(block.number - 1), block.timestamp, msg.sender)
                        mem[(4 * ceil32(return_data.size)) + 388] = stor8
                        mem[(4 * ceil32(return_data.size)) + 420] = stor9
                        require ext_code.size(RNDAddress)
                        staticcall RNDAddress.0x717e1d37 with:
                                gas gas_remaining wei
                               args sha3(block.hash(block.number - 1), block.timestamp, msg.sender), stor8, stor9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 352
                        require return_data.size >= 64
                        _375 = mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 383 < (4 * ceil32(return_data.size)) + return_data.size + 352
                        _397 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 353 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 353
                        mem[(6 * ceil32(return_data.size)) + 352] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]
                        require _375 + (32 * _397) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _375 + 384
                        t = (6 * ceil32(return_data.size)) + 384
                        while idx < _397:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _499 = mem[(4 * ceil32(return_data.size)) + 384]
                        require mem[(4 * ceil32(return_data.size)) + 384] == mem[(4 * ceil32(return_data.size)) + 384]
                        if stor6 > -mem[(4 * ceil32(return_data.size)) + 384] - 1:
                            revert with 'NH{q', 17
                        if stor6 + mem[(4 * ceil32(return_data.size)) + 384] and stor10 > -1 / stor6 + mem[(4 * ceil32(return_data.size)) + 384]:
                            revert with 'NH{q', 17
                        _523 = mem[64]
                        mem[mem[64]] = 0xd79fdf0a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 128
                        if bool(stor5.length):
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            mem[mem[64] + 132] = stor5.length.field_1
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=Mask(248, 8, stor5.length)), address(arg1), arg2, (stor6 * stor10) + (_499 * stor10)
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[mem[64] + idx + 164] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[_523 + 36] = arg1
                                    mem[_523 + 68] = arg2
                                    mem[_523 + 100] = (stor6 * stor10) + (_499 * stor10)
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _523 + ceil32(stor5.length.field_1) + -mem[64] + 160]
                        else:
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            mem[mem[64] + 132] = stor5.length.field_1
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=stor5.length % 128, data=Mask(248, 8, stor5.length)), address(arg1), arg2, (stor6 * stor10) + (_499 * stor10)
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[mem[64] + idx + 164] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[_523 + 36] = arg1
                                    mem[_523 + 68] = arg2
                                    mem[_523 + 100] = (stor6 * stor10) + (_499 * stor10)
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _523 + ceil32(stor5.length.field_1) + -mem[64] + 160]
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor3.length):
                mem[(4 * ceil32(return_data.size)) + 388] = Mask(248, 8, stor3.length)
                require ext_code.size(sub_abfaf568Address)
                call sub_abfaf568Address.0x5e554b5e with:
                     gas gas_remaining wei
                    args Array(len=stor3.length % 128, data=Mask(248, 8, stor3.length)), address(arg1), arg2, stor4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor7:
                    if stor6 > -1:
                        revert with 'NH{q', 17
                    if stor6 and stor10 > -1 / stor6:
                        revert with 'NH{q', 17
                    if bool(stor5.length):
                        if bool(stor5.length) == stor5.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor5.length):
                            require ext_code.size(sub_abfaf568Address)
                            call sub_abfaf568Address.0xd79fdf0a with:
                                 gas gas_remaining wei
                                args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=Mask(248, 8, stor5.length)), address(arg1), arg2, stor6 * stor10
                        else:
                            if bool(stor5.length) != 1:
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 228 len -(4 * ceil32(return_data.size)) - 228]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor5.length.field_1:
                                    mem[(4 * ceil32(return_data.size)) + idx + 388] = stor5[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[(4 * ceil32(return_data.size)) + 388 len ceil32(stor5.length.field_1)]), address(arg1), arg2, stor6 * stor10
                    else:
                        if bool(stor5.length) == stor5.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor5.length):
                            require ext_code.size(sub_abfaf568Address)
                            call sub_abfaf568Address.0xd79fdf0a with:
                                 gas gas_remaining wei
                                args Array(len=stor5.length % 128, data=Mask(248, 8, stor5.length)), address(arg1), arg2, stor6 * stor10
                        else:
                            if bool(stor5.length) != 1:
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 228 len -(4 * ceil32(return_data.size)) - 228]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor5.length.field_1:
                                    mem[(4 * ceil32(return_data.size)) + idx + 388] = stor5[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=stor5.length % 128, data=mem[(4 * ceil32(return_data.size)) + 388 len ceil32(stor5.length.field_1)]), address(arg1), arg2, stor6 * stor10
                else:
                    if block.number < 1:
                        revert with 'NH{q', 17
                    mem[(4 * ceil32(return_data.size)) + 256] = block.hash(block.number - 1)
                    mem[(4 * ceil32(return_data.size)) + 288] = block.timestamp
                    mem[(4 * ceil32(return_data.size)) + 320] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 224] = 96
                    mem[(4 * ceil32(return_data.size)) + 352] = 0x717e1d3700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 356] = sha3(block.hash(block.number - 1), block.timestamp, msg.sender)
                    mem[(4 * ceil32(return_data.size)) + 388] = stor8
                    mem[(4 * ceil32(return_data.size)) + 420] = stor9
                    require ext_code.size(RNDAddress)
                    staticcall RNDAddress.0x717e1d37 with:
                            gas gas_remaining wei
                           args sha3(block.hash(block.number - 1), block.timestamp, msg.sender), stor8, stor9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 352
                    require return_data.size >= 64
                    _239 = mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 383 < (4 * ceil32(return_data.size)) + return_data.size + 352
                    _254 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352] > test266151307():
                        revert with 'NH{q', 65
                    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 353 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 353
                    mem[(6 * ceil32(return_data.size)) + 352] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]
                    require _239 + (32 * _254) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _239 + 384
                    t = (6 * ceil32(return_data.size)) + 384
                    while idx < _254:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _501 = mem[(4 * ceil32(return_data.size)) + 384]
                    require mem[(4 * ceil32(return_data.size)) + 384] == mem[(4 * ceil32(return_data.size)) + 384]
                    if stor6 > -mem[(4 * ceil32(return_data.size)) + 384] - 1:
                        revert with 'NH{q', 17
                    if stor6 + mem[(4 * ceil32(return_data.size)) + 384] and stor10 > -1 / stor6 + mem[(4 * ceil32(return_data.size)) + 384]:
                        revert with 'NH{q', 17
                    _525 = mem[64]
                    mem[mem[64]] = 0xd79fdf0a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 128
                    if bool(stor5.length):
                        if bool(stor5.length) == stor5.length.field_1 < 32:
                            revert with 'NH{q', 34
                        mem[mem[64] + 132] = stor5.length.field_1
                        if not bool(stor5.length):
                            require ext_code.size(sub_abfaf568Address)
                            call sub_abfaf568Address.0xd79fdf0a with:
                                 gas gas_remaining wei
                                args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=Mask(248, 8, stor5.length)), address(arg1), arg2, (stor6 * stor10) + (_501 * stor10)
                        else:
                            if bool(stor5.length) != 1:
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len -mem[64] - 4]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor5.length.field_1:
                                    mem[mem[64] + idx + 164] = stor5[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[_525 + 36] = arg1
                                mem[_525 + 68] = arg2
                                mem[_525 + 100] = (stor6 * stor10) + (_501 * stor10)
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _525 + ceil32(stor5.length.field_1) + -mem[64] + 160]
                    else:
                        if bool(stor5.length) == stor5.length.field_1 < 32:
                            revert with 'NH{q', 34
                        mem[mem[64] + 132] = stor5.length.field_1
                        if not bool(stor5.length):
                            require ext_code.size(sub_abfaf568Address)
                            call sub_abfaf568Address.0xd79fdf0a with:
                                 gas gas_remaining wei
                                args Array(len=stor5.length % 128, data=Mask(248, 8, stor5.length)), address(arg1), arg2, (stor6 * stor10) + (_501 * stor10)
                        else:
                            if bool(stor5.length) != 1:
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len -mem[64] - 4]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor5.length.field_1:
                                    mem[mem[64] + idx + 164] = stor5[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[_525 + 36] = arg1
                                mem[_525 + 68] = arg2
                                mem[_525 + 100] = (stor6 * stor10) + (_501 * stor10)
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _525 + ceil32(stor5.length.field_1) + -mem[64] + 160]
            else:
                if bool(stor3.length) != 1:
                    require ext_code.size(sub_abfaf568Address)
                    call sub_abfaf568Address.0x5e554b5e with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 228 len -(4 * ceil32(return_data.size)) - 228]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor7:
                        if stor6 > -1:
                            revert with 'NH{q', 17
                        if stor6 and stor10 > -1 / stor6:
                            revert with 'NH{q', 17
                        if bool(stor5.length):
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=Mask(248, 8, stor5.length)), address(arg1), arg2, stor6 * stor10
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 228 len -(4 * ceil32(return_data.size)) - 228]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[(4 * ceil32(return_data.size)) + idx + 388] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[(4 * ceil32(return_data.size)) + 388 len ceil32(stor5.length.field_1)]), address(arg1), arg2, stor6 * stor10
                        else:
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=stor5.length % 128, data=Mask(248, 8, stor5.length)), address(arg1), arg2, stor6 * stor10
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 228 len -(4 * ceil32(return_data.size)) - 228]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[(4 * ceil32(return_data.size)) + idx + 388] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args Array(len=stor5.length % 128, data=mem[(4 * ceil32(return_data.size)) + 388 len ceil32(stor5.length.field_1)]), address(arg1), arg2, stor6 * stor10
                    else:
                        if block.number < 1:
                            revert with 'NH{q', 17
                        mem[(4 * ceil32(return_data.size)) + 256] = block.hash(block.number - 1)
                        mem[(4 * ceil32(return_data.size)) + 288] = block.timestamp
                        mem[(4 * ceil32(return_data.size)) + 320] = msg.sender
                        mem[(4 * ceil32(return_data.size)) + 224] = 96
                        mem[(4 * ceil32(return_data.size)) + 352] = 0x717e1d3700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 356] = sha3(block.hash(block.number - 1), block.timestamp, msg.sender)
                        mem[(4 * ceil32(return_data.size)) + 388] = stor8
                        mem[(4 * ceil32(return_data.size)) + 420] = stor9
                        require ext_code.size(RNDAddress)
                        staticcall RNDAddress.0x717e1d37 with:
                                gas gas_remaining wei
                               args sha3(block.hash(block.number - 1), block.timestamp, msg.sender), stor8, stor9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 352
                        require return_data.size >= 64
                        _247 = mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 383 < (4 * ceil32(return_data.size)) + return_data.size + 352
                        _255 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 353 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 353
                        mem[(6 * ceil32(return_data.size)) + 352] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]
                        require _247 + (32 * _255) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _247 + 384
                        t = (6 * ceil32(return_data.size)) + 384
                        while idx < _255:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _503 = mem[(4 * ceil32(return_data.size)) + 384]
                        require mem[(4 * ceil32(return_data.size)) + 384] == mem[(4 * ceil32(return_data.size)) + 384]
                        if stor6 > -mem[(4 * ceil32(return_data.size)) + 384] - 1:
                            revert with 'NH{q', 17
                        if stor6 + mem[(4 * ceil32(return_data.size)) + 384] and stor10 > -1 / stor6 + mem[(4 * ceil32(return_data.size)) + 384]:
                            revert with 'NH{q', 17
                        _527 = mem[64]
                        mem[mem[64]] = 0xd79fdf0a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 128
                        if bool(stor5.length):
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            mem[mem[64] + 132] = stor5.length.field_1
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=Mask(248, 8, stor5.length)), address(arg1), arg2, (stor6 * stor10) + (_503 * stor10)
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[mem[64] + idx + 164] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[_527 + 36] = arg1
                                    mem[_527 + 68] = arg2
                                    mem[_527 + 100] = (stor6 * stor10) + (_503 * stor10)
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _527 + ceil32(stor5.length.field_1) + -mem[64] + 160]
                        else:
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            mem[mem[64] + 132] = stor5.length.field_1
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=stor5.length % 128, data=Mask(248, 8, stor5.length)), address(arg1), arg2, (stor6 * stor10) + (_503 * stor10)
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[mem[64] + idx + 164] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[_527 + 36] = arg1
                                    mem[_527 + 68] = arg2
                                    mem[_527 + 100] = (stor6 * stor10) + (_503 * stor10)
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _527 + ceil32(stor5.length.field_1) + -mem[64] + 160]
                else:
                    idx = 0
                    s = 0
                    while idx < stor3.length.field_1:
                        mem[(4 * ceil32(return_data.size)) + idx + 388] = stor3[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_abfaf568Address)
                    call sub_abfaf568Address.0x5e554b5e with:
                         gas gas_remaining wei
                        args Array(len=stor3.length % 128, data=mem[(4 * ceil32(return_data.size)) + 388 len ceil32(stor3.length.field_1)]), address(arg1), arg2, stor4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor7:
                        if stor6 > -1:
                            revert with 'NH{q', 17
                        if stor6 and stor10 > -1 / stor6:
                            revert with 'NH{q', 17
                        if bool(stor5.length):
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=Mask(248, 8, stor5.length)), address(arg1), arg2, stor6 * stor10
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 228 len -(4 * ceil32(return_data.size)) - 228]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[(4 * ceil32(return_data.size)) + idx + 388] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[(4 * ceil32(return_data.size)) + 388 len ceil32(stor5.length.field_1)]), address(arg1), arg2, stor6 * stor10
                        else:
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=stor5.length % 128, data=Mask(248, 8, stor5.length)), address(arg1), arg2, stor6 * stor10
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 228 len -(4 * ceil32(return_data.size)) - 228]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[(4 * ceil32(return_data.size)) + idx + 388] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args Array(len=stor5.length % 128, data=mem[(4 * ceil32(return_data.size)) + 388 len ceil32(stor5.length.field_1)]), address(arg1), arg2, stor6 * stor10
                    else:
                        if block.number < 1:
                            revert with 'NH{q', 17
                        mem[(4 * ceil32(return_data.size)) + 256] = block.hash(block.number - 1)
                        mem[(4 * ceil32(return_data.size)) + 288] = block.timestamp
                        mem[(4 * ceil32(return_data.size)) + 320] = msg.sender
                        mem[(4 * ceil32(return_data.size)) + 224] = 96
                        mem[(4 * ceil32(return_data.size)) + 352] = 0x717e1d3700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 356] = sha3(block.hash(block.number - 1), block.timestamp, msg.sender)
                        mem[(4 * ceil32(return_data.size)) + 388] = stor8
                        mem[(4 * ceil32(return_data.size)) + 420] = stor9
                        require ext_code.size(RNDAddress)
                        staticcall RNDAddress.0x717e1d37 with:
                                gas gas_remaining wei
                               args sha3(block.hash(block.number - 1), block.timestamp, msg.sender), stor8, stor9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 352
                        require return_data.size >= 64
                        _378 = mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 383 < (4 * ceil32(return_data.size)) + return_data.size + 352
                        _398 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 353 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]) + 353
                        mem[(6 * ceil32(return_data.size)) + 352] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, sha3(block.hash(block.number - 1), block.timestamp, msg.sender)) >> 32 + 352]
                        require _378 + (32 * _398) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _378 + 384
                        t = (6 * ceil32(return_data.size)) + 384
                        while idx < _398:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _502 = mem[(4 * ceil32(return_data.size)) + 384]
                        require mem[(4 * ceil32(return_data.size)) + 384] == mem[(4 * ceil32(return_data.size)) + 384]
                        if stor6 > -mem[(4 * ceil32(return_data.size)) + 384] - 1:
                            revert with 'NH{q', 17
                        if stor6 + mem[(4 * ceil32(return_data.size)) + 384] and stor10 > -1 / stor6 + mem[(4 * ceil32(return_data.size)) + 384]:
                            revert with 'NH{q', 17
                        _526 = mem[64]
                        mem[mem[64]] = 0xd79fdf0a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 128
                        if bool(stor5.length):
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            mem[mem[64] + 132] = stor5.length.field_1
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=2 * Mask(256, -1, stor5.length.field_1), data=Mask(248, 8, stor5.length)), address(arg1), arg2, (stor6 * stor10) + (_502 * stor10)
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[mem[64] + idx + 164] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[_526 + 36] = arg1
                                    mem[_526 + 68] = arg2
                                    mem[_526 + 100] = (stor6 * stor10) + (_502 * stor10)
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _526 + ceil32(stor5.length.field_1) + -mem[64] + 160]
                        else:
                            if bool(stor5.length) == stor5.length.field_1 < 32:
                                revert with 'NH{q', 34
                            mem[mem[64] + 132] = stor5.length.field_1
                            if not bool(stor5.length):
                                require ext_code.size(sub_abfaf568Address)
                                call sub_abfaf568Address.0xd79fdf0a with:
                                     gas gas_remaining wei
                                    args Array(len=stor5.length % 128, data=Mask(248, 8, stor5.length)), address(arg1), arg2, (stor6 * stor10) + (_502 * stor10)
                            else:
                                if bool(stor5.length) != 1:
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.0xd79fdf0a with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                else:
                                    idx = 0
                                    s = 0
                                    while idx < stor5.length.field_1:
                                        mem[mem[64] + idx + 164] = stor5[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[_526 + 36] = arg1
                                    mem[_526 + 68] = arg2
                                    mem[_526 + 100] = (stor6 * stor10) + (_502 * stor10)
                                    require ext_code.size(sub_abfaf568Address)
                                    call sub_abfaf568Address.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _526 + ceil32(stor5.length.field_1) + -mem[64] + 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
