contract main {




// =====================  Runtime code  =====================


#
#  - getProxyImplementation(address arg1)
#  - getProxyAdmin(address arg1)
#
address owner;
uint256 stor1;
uint256 stor2;
address sub_6efaefe7Address;
array of struct stor4;

function sub_6efaefe7(?) {
    return sub_6efaefe7Address
}

function owner() {
    return owner
}

function sub_f1c5fd82(?) {
    return stor4.length
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function closeProposal(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor4.length:
        revert with 0, 50
    if stor4[arg1].field_1032 > 2:
        revert with 0, 33
    if not stor4[arg1].field_1032:
        stor4[arg1].field_1032 = 2
    emit ProposalClosed(arg1);
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

function vote(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4.length < 1:
        revert with 0, 17
    if stor4.length - 1 >= stor4.length:
        revert with 0, 50
    if stor4.length:
        if stor4[stor4.length].field_0:
            if stor4[stor4.length].field_0 == uint255(stor4[stor4.length].field_0) * 0.5 < 32:
                revert with 0, 34
        else:
            if stor4[stor4.length].field_0 == stor4[stor4.length].field_0 < 32:
                revert with 0, 34
        if stor4[stor4.length].field_0:
            if stor4[stor4.length].field_0 == uint255(stor4[stor4.length].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4[stor4.length].field_0):
                if 31 < uint255(stor4[stor4.length].field_0) * 0.5:
                    idx = 448
                    s = 0
                    while (uint255(stor4[stor4.length].field_0) * 0.5) + 416 > idx:
                        mem[idx + 32] = stor[s + sha3(('name', 'stor4', 4) + (9 * stor4.length) - 6)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor4[stor4.length].field_0 == stor4[stor4.length].field_0 < 32:
                revert with 0, 34
            if stor4[stor4.length].field_0:
                if 31 < stor4[stor4.length].field_0:
                    idx = 448
                    s = 0
                    while stor4[stor4.length].field_0 + 416 > idx:
                        mem[idx + 32] = stor[s + sha3(('name', 'stor4', 4) + (9 * stor4.length) - 6)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor4[stor4.length].field_0 > 2:
            revert with 0, 33
        if stor4[stor4.length].field_0 > 2:
            revert with 0, 33
        if stor4[stor4.length].field_0 > 2:
            revert with 0, 33
        if stor4[stor4.length].field_0:
            revert with 0, 'not open'
    require ext_code.size(sub_6efaefe7Address)
    staticcall sub_6efaefe7Address.0x782d6fe1 with:
            gas gas_remaining wei
           args msg.sender, stor4[stor4.length].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor4[stor4.length].field_0 > !ext_call.return_data[0]:
        revert with 0, 17
    if not arg1:
        stor4[stor4.length].field_0 += ext_call.return_data[0]
    else:
        stor4[stor4.length].field_0 += ext_call.return_data[0]
    if stor4.length < 1:
        revert with 0, 17
    emit 0x628521ab: ext_call.return_data[0], msg.sender, stor4.length - 1, arg1
}

function proposals(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor4.length
    if stor4[arg1].field_768:
        if stor4[arg1].field_768 == uint255(stor4[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if stor4[arg1].field_768:
            if stor4[arg1].field_768 == uint255(stor4[arg1].field_768) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4[arg1].field_768):
                if 31 >= uint255(stor4[arg1].field_768) * 0.5:
                    mem[128] = 256 * stor4[arg1].field_776
                else:
                    mem[128] = stor[sha3((9 * arg1) + ('name', 'stor4', 4) + 3)].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor4[arg1].field_768) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                revert with 0, 34
            if stor4[arg1].field_769:
                if 31 >= stor4[arg1].field_769:
                    mem[128] = 256 * stor4[arg1].field_776
                else:
                    mem[128] = stor[sha3((9 * arg1) + ('name', 'stor4', 4) + 3)].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_769 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor4[arg1].field_1024 >= 3:
            revert with 0, 33
        if stor4[arg1].field_1032 >= 3:
            revert with 0, 33
        return stor4[arg1].field_0, 
               stor4[arg1].field_256,
               stor4[arg1].field_512,
               Array(len=2 * Mask(256, -1, stor4[arg1].field_768), data=mem[128 len ceil32(uint255(stor4[arg1].field_768) * 0.5)]),
               stor4[arg1].field_1024,
               stor4[arg1].field_1024,
               stor4[arg1].field_1280,
               stor4[arg1].field_1536,
               stor4[arg1].field_1792,
               stor4[arg1].field_2048
    if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
        revert with 0, 34
    if stor4[arg1].field_768:
        if stor4[arg1].field_768 == uint255(stor4[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4[arg1].field_768):
            if 31 >= uint255(stor4[arg1].field_768) * 0.5:
                mem[128] = 256 * stor4[arg1].field_776
            else:
                mem[128] = stor[sha3((9 * arg1) + ('name', 'stor4', 4) + 3)].field_0
                idx = 128
                s = 0
                while (uint255(stor4[arg1].field_768) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
            revert with 0, 34
        if stor4[arg1].field_769:
            if 31 >= stor4[arg1].field_769:
                mem[128] = 256 * stor4[arg1].field_776
            else:
                mem[128] = stor[sha3((9 * arg1) + ('name', 'stor4', 4) + 3)].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_769 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg1) + ('name', 'stor4', 4) + 3)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor4[arg1].field_1024 >= 3:
        revert with 0, 33
    if stor4[arg1].field_1032 >= 3:
        revert with 0, 33
    return stor4[arg1].field_0, 
           stor4[arg1].field_256,
           stor4[arg1].field_512,
           Array(len=stor4[arg1].field_768, data=mem[128 len ceil32(stor4[arg1].field_769)]),
           stor4[arg1].field_1024,
           stor4[arg1].field_1024,
           stor4[arg1].field_1280,
           stor4[arg1].field_1536,
           stor4[arg1].field_1792,
           stor4[arg1].field_2048
}

function sub_aab718a1(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    require arg6 < 3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor4.length:
        if stor4.length < 1:
            revert with 0, 17
        if stor4.length - 1 >= stor4.length:
            revert with 0, 50
        if stor4[stor4.length].field_0:
            if stor4[stor4.length].field_0 == uint255(stor4[stor4.length].field_0) * 0.5 < 32:
                revert with 0, 34
        else:
            if stor4[stor4.length].field_0 == stor4[stor4.length].field_0 < 32:
                revert with 0, 34
        if stor4[stor4.length].field_0:
            if stor4[stor4.length].field_0 == uint255(stor4[stor4.length].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4[stor4.length].field_0):
                if 31 < uint255(stor4[stor4.length].field_0) * 0.5:
                    idx = ceil32(ceil32(arg5.length)) + 449
                    s = 0
                    while ceil32(ceil32(arg5.length)) + (uint255(stor4[stor4.length].field_0) * 0.5) + 417 > idx:
                        mem[idx + 32] = stor[s + sha3(('name', 'stor4', 4) + (9 * stor4.length) - 6)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor4[stor4.length].field_0 == stor4[stor4.length].field_0 < 32:
                revert with 0, 34
            if stor4[stor4.length].field_0:
                if 31 < stor4[stor4.length].field_0:
                    idx = ceil32(ceil32(arg5.length)) + 449
                    s = 0
                    while ceil32(ceil32(arg5.length)) + stor4[stor4.length].field_0 + 417 > idx:
                        mem[idx + 32] = stor[s + sha3(('name', 'stor4', 4) + (9 * stor4.length) - 6)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor4[stor4.length].field_0 > 2:
            revert with 0, 33
        if stor4[stor4.length].field_0 > 2:
            revert with 0, 33
        if stor4[stor4.length].field_0 > 2:
            revert with 0, 33
        if not stor4[stor4.length].field_0:
            revert with 0, 'active proposal'
    if arg4 < stor1:
        revert with 0, 'invalid period value'
    if arg4 > stor2:
        revert with 0, 'invalid period value'
    if arg6 > 2:
        revert with 0, 33
    if block.timestamp > !arg4:
        revert with 0, 17
    stor4.length++
    stor4[stor4.length].field_0 = address(arg1)
    stor4[stor4.length].field_256 = address(arg2)
    stor4[stor4.length].field_512 = address(arg3)
    if stor4[stor4.length].field_768:
        if stor4[stor4.length].field_768 == uint255(stor4[stor4.length].field_768) * 0.5 < 32:
            revert with 0, 34
        if arg5.length:
            stor[sha3((9 * stor4.length) + ('name', 'stor4', 4) + 3)][].field_0 = Array(len=arg5.length, data=arg5[all])
        else:
            stor4[stor4.length].field_768 = 0
            idx = 0
            while (uint255(stor4[stor4.length].field_768) * 0.5) + 31 / 32 > idx:
                stor[idx + sha3((9 * stor4.length) + ('name', 'stor4', 4) + 3)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor4[stor4.length].field_768 == stor4[stor4.length].field_769 < 32:
            revert with 0, 34
        if arg5.length:
            stor[sha3((9 * stor4.length) + ('name', 'stor4', 4) + 3)][].field_0 = Array(len=arg5.length, data=arg5[all])
        else:
            stor4[stor4.length].field_768 = 0
            idx = 0
            while stor4[stor4.length].field_769 + 31 / 32 > idx:
                stor[idx + sha3((9 * stor4.length) + ('name', 'stor4', 4) + 3)].field_0 = 0
                idx = idx + 1
                continue 
    if arg6 > 2:
        revert with 0, 33
    stor4[stor4.length].field_1024 = arg6 or Mask(248, 8, stor4[stor4.length].field_1024)
    stor4[stor4.length].field_1032 = 0
    stor4[stor4.length].field_1280 = 0
    stor4[stor4.length].field_1280 = block.number
    stor4[stor4.length].field_1536 = block.timestamp + arg4
    stor4[stor4.length].field_1792 = 0
    stor4[stor4.length].field_2048 = 0
    if stor4.length < 1:
        revert with 0, 17
    emit 0xc15fe0de: stor4.length - 1
}

function executeProposal(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor4.length:
        revert with 0, 50
    if stor4[arg1].field_768:
        if stor4[arg1].field_768 == uint255(stor4[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if stor4[arg1].field_768:
            if stor4[arg1].field_768 == uint255(stor4[arg1].field_768) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4[arg1].field_768):
                if 31 >= uint255(stor4[arg1].field_768) * 0.5:
                    mem[448] = 256 * stor4[arg1].field_776
                else:
                    mem[448] = stor[sha3(('name', 'stor4', 4) + (9 * arg1) + 3)].field_0
                    idx = 448
                    s = 0
                    while (uint255(stor4[arg1].field_768) * 0.5) + 416 > idx:
                        mem[idx + 32] = stor[s + sha3(('name', 'stor4', 4) + (9 * arg1) + 3)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                revert with 0, 34
            if stor4[arg1].field_769:
                if 31 >= stor4[arg1].field_769:
                    mem[448] = 256 * stor4[arg1].field_776
                else:
                    mem[448] = stor[sha3(('name', 'stor4', 4) + (9 * arg1) + 3)].field_0
                    idx = 448
                    s = 0
                    while stor4[arg1].field_769 + 416 > idx:
                        mem[idx + 32] = stor[s + sha3(('name', 'stor4', 4) + (9 * arg1) + 3)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor4[arg1].field_1024 > 2:
            revert with 0, 33
        if stor4[arg1].field_1032 > 2:
            revert with 0, 33
        if stor4[arg1].field_1032 > 2:
            revert with 0, 33
        if stor4[arg1].field_1032:
            revert with 0, 'not open'
        if stor4[arg1].field_1536 < block.timestamp:
            revert with 0, 'not end yet'
        if arg1 >= stor4.length:
            revert with 0, 50
        if stor4[arg1].field_1792 <= stor4[arg1].field_2048:
            stor4[arg1].field_1032 = 2
        else:
            if stor4[arg1].field_1024 > 2:
                revert with 0, 33
            if stor4[arg1].field_1024 == 1:
                require ext_code.size(stor4[arg1].field_0)
                call stor4[arg1].field_0.0x3659cfe6 with:
                     gas gas_remaining wei
                    args stor4[arg1].field_512
            else:
                if stor4[arg1].field_1024 > 2:
                    revert with 0, 33
                if stor4[arg1].field_1024 != 2:
                    require ext_code.size(stor4[arg1].field_0)
                    call stor4[arg1].field_0.0x8f283970 with:
                         gas gas_remaining wei
                        args stor4[arg1].field_256
                else:
                    if stor4[arg1].field_768:
                        if stor4[arg1].field_768 == uint255(stor4[arg1].field_768) * 0.5 < 32:
                            revert with 0, 34
                        if not stor4[arg1].field_768:
                            require ext_code.size(stor4[arg1].field_0)
                            call stor4[arg1].field_0.0x4f1ef286 with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args stor4[arg1].field_512, Array(len=2 * Mask(256, -1, stor4[arg1].field_768), data=Mask(248, 8, stor4[arg1].field_768))
                        else:
                            if stor4[arg1].field_768 != 1:
                                require ext_code.size(stor4[arg1].field_0)
                                call stor4[arg1].field_0.0x4f1ef286 with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args mem[ceil32(uint255(stor4[arg1].field_768) * 0.5) + 452 len -ceil32(uint255(stor4[arg1].field_768) * 0.5) - 452]
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor4[arg1].field_768) * 0.5:
                                    mem[idx + ceil32(uint255(stor4[arg1].field_768) * 0.5) + 548] = stor[s + sha3((9 * arg1) + ('name', 'stor4', 4) + 3)].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(stor4[arg1].field_0)
                                call stor4[arg1].field_0.0x4f1ef286 with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args stor4[arg1].field_512, Array(len=2 * Mask(256, -1, stor4[arg1].field_768), data=mem[ceil32(uint255(stor4[arg1].field_768) * 0.5) + 548 len ceil32(uint255(stor4[arg1].field_768) * 0.5)])
                    else:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 0, 34
                        if not stor4[arg1].field_768:
                            require ext_code.size(stor4[arg1].field_0)
                            call stor4[arg1].field_0.0x4f1ef286 with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args stor4[arg1].field_512, Array(len=stor4[arg1].field_768, data=Mask(248, 8, stor4[arg1].field_768))
                        else:
                            if stor4[arg1].field_768 != 1:
                                require ext_code.size(stor4[arg1].field_0)
                                call stor4[arg1].field_0.0x4f1ef286 with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args mem[ceil32(uint255(stor4[arg1].field_768) * 0.5) + 452 len -ceil32(uint255(stor4[arg1].field_768) * 0.5) - 452]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor4[arg1].field_769:
                                    mem[idx + ceil32(uint255(stor4[arg1].field_768) * 0.5) + 548] = stor[s + sha3((9 * arg1) + ('name', 'stor4', 4) + 3)].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(stor4[arg1].field_0)
                                call stor4[arg1].field_0.0x4f1ef286 with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args stor4[arg1].field_512, Array(len=stor4[arg1].field_768, data=mem[ceil32(uint255(stor4[arg1].field_768) * 0.5) + 548 len ceil32(stor4[arg1].field_769)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor4[arg1].field_1032 = 1
    else:
        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
            revert with 0, 34
        if stor4[arg1].field_768:
            if stor4[arg1].field_768 == uint255(stor4[arg1].field_768) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4[arg1].field_768):
                if 31 >= uint255(stor4[arg1].field_768) * 0.5:
                    mem[448] = 256 * stor4[arg1].field_776
                else:
                    mem[448] = stor[sha3(('name', 'stor4', 4) + (9 * arg1) + 3)].field_0
                    idx = 448
                    s = 0
                    while (uint255(stor4[arg1].field_768) * 0.5) + 416 > idx:
                        mem[idx + 32] = stor[s + sha3(('name', 'stor4', 4) + (9 * arg1) + 3)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                revert with 0, 34
            if stor4[arg1].field_769:
                if 31 >= stor4[arg1].field_769:
                    mem[448] = 256 * stor4[arg1].field_776
                else:
                    mem[448] = stor[sha3(('name', 'stor4', 4) + (9 * arg1) + 3)].field_0
                    idx = 448
                    s = 0
                    while stor4[arg1].field_769 + 416 > idx:
                        mem[idx + 32] = stor[s + sha3(('name', 'stor4', 4) + (9 * arg1) + 3)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor4[arg1].field_1024 > 2:
            revert with 0, 33
        if stor4[arg1].field_1032 > 2:
            revert with 0, 33
        if stor4[arg1].field_1032 > 2:
            revert with 0, 33
        if stor4[arg1].field_1032:
            revert with 0, 'not open'
        if stor4[arg1].field_1536 < block.timestamp:
            revert with 0, 'not end yet'
        if arg1 >= stor4.length:
            revert with 0, 50
        if stor4[arg1].field_1792 <= stor4[arg1].field_2048:
            stor4[arg1].field_1032 = 2
        else:
            if stor4[arg1].field_1024 > 2:
                revert with 0, 33
            if stor4[arg1].field_1024 == 1:
                require ext_code.size(stor4[arg1].field_0)
                call stor4[arg1].field_0.0x3659cfe6 with:
                     gas gas_remaining wei
                    args stor4[arg1].field_512
            else:
                if stor4[arg1].field_1024 > 2:
                    revert with 0, 33
                if stor4[arg1].field_1024 != 2:
                    require ext_code.size(stor4[arg1].field_0)
                    call stor4[arg1].field_0.0x8f283970 with:
                         gas gas_remaining wei
                        args stor4[arg1].field_256
                else:
                    if stor4[arg1].field_768:
                        if stor4[arg1].field_768 == uint255(stor4[arg1].field_768) * 0.5 < 32:
                            revert with 0, 34
                        if not stor4[arg1].field_768:
                            require ext_code.size(stor4[arg1].field_0)
                            call stor4[arg1].field_0.0x4f1ef286 with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args stor4[arg1].field_512, Array(len=2 * Mask(256, -1, stor4[arg1].field_768), data=Mask(248, 8, stor4[arg1].field_768))
                        else:
                            if stor4[arg1].field_768 != 1:
                                require ext_code.size(stor4[arg1].field_0)
                                call stor4[arg1].field_0.0x4f1ef286 with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args mem[ceil32(stor4[arg1].field_769) + 452 len -ceil32(stor4[arg1].field_769) - 452]
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor4[arg1].field_768) * 0.5:
                                    mem[idx + ceil32(stor4[arg1].field_769) + 548] = stor[s + sha3((9 * arg1) + ('name', 'stor4', 4) + 3)].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(stor4[arg1].field_0)
                                call stor4[arg1].field_0.0x4f1ef286 with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args stor4[arg1].field_512, Array(len=2 * Mask(256, -1, stor4[arg1].field_768), data=mem[ceil32(stor4[arg1].field_769) + 548 len ceil32(uint255(stor4[arg1].field_768) * 0.5)])
                    else:
                        if stor4[arg1].field_768 == stor4[arg1].field_769 < 32:
                            revert with 0, 34
                        if not stor4[arg1].field_768:
                            require ext_code.size(stor4[arg1].field_0)
                            call stor4[arg1].field_0.0x4f1ef286 with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args stor4[arg1].field_512, Array(len=stor4[arg1].field_768, data=Mask(248, 8, stor4[arg1].field_768))
                        else:
                            if stor4[arg1].field_768 != 1:
                                require ext_code.size(stor4[arg1].field_0)
                                call stor4[arg1].field_0.0x4f1ef286 with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args mem[ceil32(stor4[arg1].field_769) + 452 len -ceil32(stor4[arg1].field_769) - 452]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor4[arg1].field_769:
                                    mem[idx + ceil32(stor4[arg1].field_769) + 548] = stor[s + sha3((9 * arg1) + ('name', 'stor4', 4) + 3)].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(stor4[arg1].field_0)
                                call stor4[arg1].field_0.0x4f1ef286 with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args stor4[arg1].field_512, Array(len=stor4[arg1].field_768, data=mem[ceil32(stor4[arg1].field_769) + 548 len ceil32(stor4[arg1].field_769)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor4[arg1].field_1032 = 1
    emit ProposalExecuted(arg1);
}



}
