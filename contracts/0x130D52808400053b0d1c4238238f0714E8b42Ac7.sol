contract main {




// =====================  Runtime code  =====================


#
#  - sub_16869914(?)
#  - sub_cd04289d(?)
#
array of struct stor0;
array of struct stor2;
mapping of struct stor3;

function _fallback() payable {
    revert
}

function sub_0dc91528(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    emit 0xa5b4745d: address(arg1), msg.sender
}

function sub_2734b525(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    emit 0x77d58b1a: address(arg1), msg.sender
}

function sub_a72cb0f3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    emit 0x6e99f620: address(arg1), msg.sender
}

function sub_e771efc9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    emit 0x82ae903c: address(arg1), msg.sender
}

function sub_f17dcbed(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    emit 0xa31ea1b5: address(arg1), msg.sender
}

function sub_2f6dc14d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    stor3[address(msg.sender)].field_1032 = 2
    emit 0xbbd73ad3: address(arg1), msg.sender
}

function sub_ad6d0275(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    stor3[address(msg.sender)].field_1032 = 1
    emit 0xfff8b1c3: address(arg1), msg.sender
}

function sub_f9ef6fac(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    stor3[address(msg.sender)].field_1032 = 0
    emit 0xbc8a25f9: address(arg1), msg.sender
}

function sub_7a34b06c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint32(arg2)
    stor3[address(msg.sender)].field_1032 = 0
    emit 0x8af1763c: address(arg1), uint32(arg2), msg.sender
}

function sub_fafac0e9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint32(arg2)
    stor3[address(msg.sender)].field_1032 = 1
    emit 0x8efe8dec: address(arg1), uint32(arg2), msg.sender
}

function sub_ba4c107f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= stor2.length:
        revert with 'NH{q', 50
    if stor2[arg1].field_256:
        if stor2[arg1].field_256 == stor2[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_256:
            if stor2[arg1].field_256 == stor2[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if stor2[arg1].field_257:
                if 31 >= stor2[arg1].field_257:
                    mem[128] = 256 * stor2[arg1].field_264
                else:
                    mem[128] = stor[sha3((5 * arg1) + ('name', 'stor2', 2) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor2[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor2', 2) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor2[arg1].field_256 == stor2[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if stor2[arg1].field_257:
                if 31 >= stor2[arg1].field_257:
                    mem[128] = 256 * stor2[arg1].field_264
                else:
                    mem[128] = stor[sha3((5 * arg1) + ('name', 'stor2', 2) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor2[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor2', 2) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor2[arg1].field_1024 >= 3:
            revert with 'NH{q', 33
        if stor2[arg1].field_1032 >= 4:
            revert with 'NH{q', 33
        return Array(len=2 * Mask(256, -1, stor2[arg1].field_257), data=mem[128 len ceil32(stor2[arg1].field_257)]), 
               stor2[arg1].field_512,
               stor2[arg1].field_768,
               stor2[arg1].field_1024,
               stor2[arg1].field_1032
    if stor2[arg1].field_256 == stor2[arg1].field_257 < 32:
        revert with 'NH{q', 34
    if stor2[arg1].field_256:
        if stor2[arg1].field_256 == stor2[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_257:
            if 31 >= stor2[arg1].field_257:
                mem[128] = 256 * stor2[arg1].field_264
            else:
                mem[128] = stor[sha3((5 * arg1) + ('name', 'stor2', 2) + 1)].field_0
                idx = 128
                s = 0
                while stor2[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor2', 2) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor2[arg1].field_256 == stor2[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_257:
            if 31 >= stor2[arg1].field_257:
                mem[128] = 256 * stor2[arg1].field_264
            else:
                mem[128] = stor[sha3((5 * arg1) + ('name', 'stor2', 2) + 1)].field_0
                idx = 128
                s = 0
                while stor2[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor2', 2) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor2[arg1].field_1024 >= 3:
        revert with 'NH{q', 33
    if stor2[arg1].field_1032 >= 4:
        revert with 'NH{q', 33
    return Array(len=stor2[arg1].field_256, data=mem[128 len ceil32(stor2[arg1].field_257)]), 
           stor2[arg1].field_512,
           stor2[arg1].field_768,
           stor2[arg1].field_1024,
           stor2[arg1].field_1032
}

function sub_7187088a(?) payable {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    require arg3 == arg3
    require arg4 < 3
    require arg5 < 4
    if arg4 > 2:
        revert with 'NH{q', 33
    if arg5 > 3:
        revert with 'NH{q', 33
    stor2.length++
    stor2[stor2.length].field_0 = msg.sender
    if stor2[stor2.length].field_256:
        if stor2[stor2.length].field_256 == stor2[stor2.length].field_257 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor[sha3((5 * stor2.length) + ('name', 'stor2', 2) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2[stor2.length].field_256 = 0
            idx = 0
            while stor2[stor2.length].field_257 + 31 / 32 > idx:
                stor[idx + sha3((5 * stor2.length) + ('name', 'stor2', 2) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor2[stor2.length].field_256 == stor2[stor2.length].field_257 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor[sha3((5 * stor2.length) + ('name', 'stor2', 2) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2[stor2.length].field_256 = 0
            idx = 0
            while stor2[stor2.length].field_257 + 31 / 32 > idx:
                stor[idx + sha3((5 * stor2.length) + ('name', 'stor2', 2) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    stor2[stor2.length].field_512 = arg2
    stor2[stor2.length].field_768 = arg3
    if arg4 > 2:
        revert with 'NH{q', 33
    stor2[stor2.length].field_1024 = arg4 or Mask(248, 8, stor2[stor2.length].field_1024)
    if arg5 > 3:
        revert with 'NH{q', 33
    stor2[stor2.length].field_1032 = Mask(248, 0, arg5)
    if stor2.length < 1:
        revert with 'NH{q', 17
    if stor2.length - 1 >= stor2.length:
        revert with 'NH{q', 50
    stor3[address(msg.sender)].field_0 = stor2[stor2.length].field_0
    if stor2[stor2.length].field_0:
        if stor2[stor2.length].field_0 == stor2[stor2.length].field_0 < 32:
            revert with 'NH{q', 34
        if stor3[address(msg.sender)].field_256:
            if stor3[address(msg.sender)].field_256 == stor3[address(msg.sender)].field_257 < 32:
                revert with 'NH{q', 34
            if not stor2[stor2.length].field_0:
                stor3[address(msg.sender)].field_256 = 0
                idx = 0
                while stor3[address(msg.sender)].field_257 + 31 / 32 > idx:
                    stor3[address(msg.sender)][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor3[address(msg.sender)].field_256 = (2 * stor2[stor2.length].field_0) + 1
                s = 0
                idx = 0
                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                    stor3[address(msg.sender)][s + 1].field_0 = stor[idx + sha3((5 * stor2.length) + ('name', 'stor2', 2) - 4)].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor2[stor2.length].field_0 + 31 / 32
                while stor3[address(msg.sender)].field_257 + 31 / 32 > idx:
                    stor3[address(msg.sender)][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor3[address(msg.sender)].field_256 == stor3[address(msg.sender)].field_257 < 32:
                revert with 'NH{q', 34
            if not stor2[stor2.length].field_0:
                stor3[address(msg.sender)].field_256 = 0
                idx = 0
                while stor3[address(msg.sender)].field_257 + 31 / 32 > idx:
                    stor3[address(msg.sender)][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor3[address(msg.sender)].field_256 = (2 * stor2[stor2.length].field_0) + 1
                s = 0
                idx = 0
                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                    stor3[address(msg.sender)][s + 1].field_0 = stor[idx + sha3((5 * stor2.length) + ('name', 'stor2', 2) - 4)].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor2[stor2.length].field_0 + 31 / 32
                while stor3[address(msg.sender)].field_257 + 31 / 32 > idx:
                    stor3[address(msg.sender)][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
    else:
        if stor2[stor2.length].field_0 == stor2[stor2.length].field_0 < 32:
            revert with 'NH{q', 34
        if stor3[address(msg.sender)].field_256:
            if stor3[address(msg.sender)].field_256 == stor3[address(msg.sender)].field_257 < 32:
                revert with 'NH{q', 34
            if not stor2[stor2.length].field_0:
                stor3[address(msg.sender)].field_256 = 0
                idx = 0
                while stor3[address(msg.sender)].field_257 + 31 / 32 > idx:
                    stor3[address(msg.sender)][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor3[address(msg.sender)].field_256 = (2 * stor2[stor2.length].field_0) + 1
                s = 0
                idx = 0
                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                    stor3[address(msg.sender)][s + 1].field_0 = stor[idx + sha3((5 * stor2.length) + ('name', 'stor2', 2) - 4)].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor2[stor2.length].field_0 + 31 / 32
                while stor3[address(msg.sender)].field_257 + 31 / 32 > idx:
                    stor3[address(msg.sender)][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor3[address(msg.sender)].field_256 == stor3[address(msg.sender)].field_257 < 32:
                revert with 'NH{q', 34
            if not stor2[stor2.length].field_0:
                stor3[address(msg.sender)].field_256 = 0
                idx = 0
                while stor3[address(msg.sender)].field_257 + 31 / 32 > idx:
                    stor3[address(msg.sender)][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor3[address(msg.sender)].field_256 = (2 * stor2[stor2.length].field_0) + 1
                s = 0
                idx = 0
                while stor2[stor2.length].field_0 + 31 / 32 > idx:
                    stor3[address(msg.sender)][s + 1].field_0 = stor[idx + sha3((5 * stor2.length) + ('name', 'stor2', 2) - 4)].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor2[stor2.length].field_0 + 31 / 32
                while stor3[address(msg.sender)].field_257 + 31 / 32 > idx:
                    stor3[address(msg.sender)][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
    stor3[address(msg.sender)].field_512 = stor2[stor2.length].field_0
    stor3[address(msg.sender)].field_768 = stor2[stor2.length].field_0
    if stor2[stor2.length].field_0 > 2:
        revert with 'NH{q', 33
    stor3[address(msg.sender)].field_1024 = stor2[stor2.length].field_0
    if stor2[stor2.length].field_0 > 3:
        revert with 'NH{q', 33
    stor3[address(msg.sender)].field_1032 = stor2[stor2.length].field_0
}

function sub_8d232517(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= stor0.length:
        revert with 'NH{q', 50
    if stor0[arg1].field_256:
        if stor0[arg1].field_256 == stor0[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_256:
            if stor0[arg1].field_256 == stor0[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if stor0[arg1].field_257:
                if 31 >= stor0[arg1].field_257:
                    mem[128] = 256 * stor0[arg1].field_264
                else:
                    mem[128] = stor[sha3((3 * arg1) + ('name', 'stor0', 0) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor0[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor0[arg1].field_256 == stor0[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if stor0[arg1].field_257:
                if 31 >= stor0[arg1].field_257:
                    mem[128] = 256 * stor0[arg1].field_264
                else:
                    mem[128] = stor[sha3((3 * arg1) + ('name', 'stor0', 0) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor0[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor0[arg1].field_512:
            if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
                revert with 'NH{q', 34
            if stor0[arg1].field_512:
                if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
                    revert with 'NH{q', 34
                if not stor0[arg1].field_513:
                    if ceil32(stor0[arg1].field_257) > stor0[arg1].field_257:
                        mem[ceil32(stor0[arg1].field_257) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_257 + 256] = 0
                    mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 256] = stor0[arg1].field_513
                    mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 288 len ceil32(stor0[arg1].field_513)] = mem[ceil32(stor0[arg1].field_257) + 160 len ceil32(stor0[arg1].field_513)]
                    if ceil32(stor0[arg1].field_513) > stor0[arg1].field_513:
                        mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_513 + 288] = 0
                else:
                    if 31 >= stor0[arg1].field_513:
                        mem[ceil32(stor0[arg1].field_257) + 160] = 256 * stor0[arg1].field_520
                    else:
                        mem[ceil32(stor0[arg1].field_257) + 160] = stor[sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_0
                        idx = ceil32(stor0[arg1].field_257) + 160
                        s = 0
                        while ceil32(stor0[arg1].field_257) + stor0[arg1].field_513 + 128 > idx:
                            mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor0[arg1].field_257) > stor0[arg1].field_257:
                        mem[ceil32(stor0[arg1].field_257) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_257 + 256] = 0
                    mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 256] = stor0[arg1].field_513
                    mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 288 len ceil32(stor0[arg1].field_513)] = mem[ceil32(stor0[arg1].field_257) + 160 len ceil32(stor0[arg1].field_513)]
                    if ceil32(stor0[arg1].field_513) > stor0[arg1].field_513:
                        mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_513 + 288] = 0
            else:
                if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
                    revert with 'NH{q', 34
                if not stor0[arg1].field_513:
                    if ceil32(stor0[arg1].field_257) > stor0[arg1].field_257:
                        mem[ceil32(stor0[arg1].field_257) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_257 + 256] = 0
                    mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 256] = stor0[arg1].field_513
                    mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 288 len ceil32(stor0[arg1].field_513)] = mem[ceil32(stor0[arg1].field_257) + 160 len ceil32(stor0[arg1].field_513)]
                    if ceil32(stor0[arg1].field_513) > stor0[arg1].field_513:
                        mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_513 + 288] = 0
                else:
                    if 31 >= stor0[arg1].field_513:
                        mem[ceil32(stor0[arg1].field_257) + 160] = 256 * stor0[arg1].field_520
                    else:
                        mem[ceil32(stor0[arg1].field_257) + 160] = stor[sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_0
                        idx = ceil32(stor0[arg1].field_257) + 160
                        s = 0
                        while ceil32(stor0[arg1].field_257) + stor0[arg1].field_513 + 128 > idx:
                            mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor0[arg1].field_257) > stor0[arg1].field_257:
                        mem[ceil32(stor0[arg1].field_257) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_257 + 256] = 0
                    mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 256] = stor0[arg1].field_513
                    mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 288 len ceil32(stor0[arg1].field_513)] = mem[ceil32(stor0[arg1].field_257) + 160 len ceil32(stor0[arg1].field_513)]
                    if ceil32(stor0[arg1].field_513) > stor0[arg1].field_513:
                        mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_513 + 288] = 0
            return Array(len=2 * Mask(256, -1, stor0[arg1].field_257), data=mem[128 len ceil32(stor0[arg1].field_257)], 2 * Mask(256, -1, stor0[arg1].field_513), mem[ceil32(stor0[arg1].field_257) + 160 len ceil32(stor0[arg1].field_513)]), 
                   ceil32(stor0[arg1].field_257) + 96
        if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_512:
            if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
                revert with 'NH{q', 34
            if not stor0[arg1].field_513:
                if ceil32(stor0[arg1].field_257) > stor0[arg1].field_257:
                    mem[ceil32(stor0[arg1].field_257) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_257 + 256] = 0
                mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 256] = stor0[arg1].field_513
                mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 288 len ceil32(stor0[arg1].field_513)] = mem[ceil32(stor0[arg1].field_257) + 160 len ceil32(stor0[arg1].field_513)]
                if ceil32(stor0[arg1].field_513) > stor0[arg1].field_513:
                    mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_513 + 288] = 0
            else:
                if 31 >= stor0[arg1].field_513:
                    mem[ceil32(stor0[arg1].field_257) + 160] = 256 * stor0[arg1].field_520
                else:
                    mem[ceil32(stor0[arg1].field_257) + 160] = stor[sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_0
                    idx = ceil32(stor0[arg1].field_257) + 160
                    s = 0
                    while ceil32(stor0[arg1].field_257) + stor0[arg1].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor0[arg1].field_257) > stor0[arg1].field_257:
                    mem[ceil32(stor0[arg1].field_257) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_257 + 256] = 0
                mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 256] = stor0[arg1].field_513
                mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 288 len ceil32(stor0[arg1].field_513)] = mem[ceil32(stor0[arg1].field_257) + 160 len ceil32(stor0[arg1].field_513)]
                if ceil32(stor0[arg1].field_513) > stor0[arg1].field_513:
                    mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_513 + 288] = 0
        else:
            if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
                revert with 'NH{q', 34
            if not stor0[arg1].field_513:
                if ceil32(stor0[arg1].field_257) > stor0[arg1].field_257:
                    mem[ceil32(stor0[arg1].field_257) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_257 + 256] = 0
                mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 256] = stor0[arg1].field_513
                mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 288 len ceil32(stor0[arg1].field_513)] = mem[ceil32(stor0[arg1].field_257) + 160 len ceil32(stor0[arg1].field_513)]
                if ceil32(stor0[arg1].field_513) > stor0[arg1].field_513:
                    mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_513 + 288] = 0
            else:
                if 31 >= stor0[arg1].field_513:
                    mem[ceil32(stor0[arg1].field_257) + 160] = 256 * stor0[arg1].field_520
                else:
                    mem[ceil32(stor0[arg1].field_257) + 160] = stor[sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_0
                    idx = ceil32(stor0[arg1].field_257) + 160
                    s = 0
                    while ceil32(stor0[arg1].field_257) + stor0[arg1].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor0[arg1].field_257) > stor0[arg1].field_257:
                    mem[ceil32(stor0[arg1].field_257) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_257 + 256] = 0
                mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 256] = stor0[arg1].field_513
                mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 288 len ceil32(stor0[arg1].field_513)] = mem[ceil32(stor0[arg1].field_257) + 160 len ceil32(stor0[arg1].field_513)]
                if ceil32(stor0[arg1].field_513) > stor0[arg1].field_513:
                    mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_513 + 288] = 0
        return Array(len=2 * Mask(256, -1, stor0[arg1].field_257), data=mem[128 len ceil32(stor0[arg1].field_257)], stor0[arg1].field_512, mem[ceil32(stor0[arg1].field_257) + 160 len ceil32(stor0[arg1].field_513)]), 
               ceil32(stor0[arg1].field_257) + 96
    if stor0[arg1].field_256 == stor0[arg1].field_257 < 32:
        revert with 'NH{q', 34
    if stor0[arg1].field_256:
        if stor0[arg1].field_256 == stor0[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_257:
            if 31 >= stor0[arg1].field_257:
                mem[128] = 256 * stor0[arg1].field_264
            else:
                mem[128] = stor[sha3((3 * arg1) + ('name', 'stor0', 0) + 1)].field_0
                idx = 128
                s = 0
                while stor0[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor0[arg1].field_256 == stor0[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_257:
            if 31 >= stor0[arg1].field_257:
                mem[128] = 256 * stor0[arg1].field_264
            else:
                mem[128] = stor[sha3((3 * arg1) + ('name', 'stor0', 0) + 1)].field_0
                idx = 128
                s = 0
                while stor0[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor0[arg1].field_512:
        if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_512:
            if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
                revert with 'NH{q', 34
            if not stor0[arg1].field_513:
                if ceil32(stor0[arg1].field_257) > stor0[arg1].field_257:
                    mem[ceil32(stor0[arg1].field_257) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_257 + 256] = 0
                mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 256] = stor0[arg1].field_513
                mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 288 len ceil32(stor0[arg1].field_513)] = mem[ceil32(stor0[arg1].field_257) + 160 len ceil32(stor0[arg1].field_513)]
                if ceil32(stor0[arg1].field_513) > stor0[arg1].field_513:
                    mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_513 + 288] = 0
            else:
                if 31 >= stor0[arg1].field_513:
                    mem[ceil32(stor0[arg1].field_257) + 160] = 256 * stor0[arg1].field_520
                else:
                    mem[ceil32(stor0[arg1].field_257) + 160] = stor[sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_0
                    idx = ceil32(stor0[arg1].field_257) + 160
                    s = 0
                    while ceil32(stor0[arg1].field_257) + stor0[arg1].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor0[arg1].field_257) > stor0[arg1].field_257:
                    mem[ceil32(stor0[arg1].field_257) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_257 + 256] = 0
                mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 256] = stor0[arg1].field_513
                mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 288 len ceil32(stor0[arg1].field_513)] = mem[ceil32(stor0[arg1].field_257) + 160 len ceil32(stor0[arg1].field_513)]
                if ceil32(stor0[arg1].field_513) > stor0[arg1].field_513:
                    mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_513 + 288] = 0
        else:
            if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
                revert with 'NH{q', 34
            if not stor0[arg1].field_513:
                if ceil32(stor0[arg1].field_257) > stor0[arg1].field_257:
                    mem[ceil32(stor0[arg1].field_257) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_257 + 256] = 0
                mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 256] = stor0[arg1].field_513
                mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 288 len ceil32(stor0[arg1].field_513)] = mem[ceil32(stor0[arg1].field_257) + 160 len ceil32(stor0[arg1].field_513)]
                if ceil32(stor0[arg1].field_513) > stor0[arg1].field_513:
                    mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_513 + 288] = 0
            else:
                if 31 >= stor0[arg1].field_513:
                    mem[ceil32(stor0[arg1].field_257) + 160] = 256 * stor0[arg1].field_520
                else:
                    mem[ceil32(stor0[arg1].field_257) + 160] = stor[sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_0
                    idx = ceil32(stor0[arg1].field_257) + 160
                    s = 0
                    while ceil32(stor0[arg1].field_257) + stor0[arg1].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor0[arg1].field_257) > stor0[arg1].field_257:
                    mem[ceil32(stor0[arg1].field_257) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_257 + 256] = 0
                mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 256] = stor0[arg1].field_513
                mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 288 len ceil32(stor0[arg1].field_513)] = mem[ceil32(stor0[arg1].field_257) + 160 len ceil32(stor0[arg1].field_513)]
                if ceil32(stor0[arg1].field_513) > stor0[arg1].field_513:
                    mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_513 + 288] = 0
        return Array(len=stor0[arg1].field_256, data=mem[128 len ceil32(stor0[arg1].field_257)], 2 * Mask(256, -1, stor0[arg1].field_513), mem[ceil32(stor0[arg1].field_257) + 160 len ceil32(stor0[arg1].field_513)]), 
               ceil32(stor0[arg1].field_257) + 96
    if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
        revert with 'NH{q', 34
    if stor0[arg1].field_512:
        if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
            revert with 'NH{q', 34
        if not stor0[arg1].field_513:
            if ceil32(stor0[arg1].field_257) > stor0[arg1].field_257:
                mem[ceil32(stor0[arg1].field_257) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_257 + 256] = 0
            mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 256] = stor0[arg1].field_513
            mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 288 len ceil32(stor0[arg1].field_513)] = mem[ceil32(stor0[arg1].field_257) + 160 len ceil32(stor0[arg1].field_513)]
            if ceil32(stor0[arg1].field_513) > stor0[arg1].field_513:
                mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_513 + 288] = 0
        else:
            if 31 >= stor0[arg1].field_513:
                mem[ceil32(stor0[arg1].field_257) + 160] = 256 * stor0[arg1].field_520
            else:
                mem[ceil32(stor0[arg1].field_257) + 160] = stor[sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_0
                idx = ceil32(stor0[arg1].field_257) + 160
                s = 0
                while ceil32(stor0[arg1].field_257) + stor0[arg1].field_513 + 128 > idx:
                    mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor0[arg1].field_257) > stor0[arg1].field_257:
                mem[ceil32(stor0[arg1].field_257) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_257 + 256] = 0
            mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 256] = stor0[arg1].field_513
            mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 288 len ceil32(stor0[arg1].field_513)] = mem[ceil32(stor0[arg1].field_257) + 160 len ceil32(stor0[arg1].field_513)]
            if ceil32(stor0[arg1].field_513) > stor0[arg1].field_513:
                mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_513 + 288] = 0
    else:
        if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
            revert with 'NH{q', 34
        if not stor0[arg1].field_513:
            if ceil32(stor0[arg1].field_257) > stor0[arg1].field_257:
                mem[ceil32(stor0[arg1].field_257) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_257 + 256] = 0
            mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 256] = stor0[arg1].field_513
            mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 288 len ceil32(stor0[arg1].field_513)] = mem[ceil32(stor0[arg1].field_257) + 160 len ceil32(stor0[arg1].field_513)]
            if ceil32(stor0[arg1].field_513) > stor0[arg1].field_513:
                mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_513 + 288] = 0
        else:
            if 31 >= stor0[arg1].field_513:
                mem[ceil32(stor0[arg1].field_257) + 160] = 256 * stor0[arg1].field_520
            else:
                mem[ceil32(stor0[arg1].field_257) + 160] = stor[sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_0
                idx = ceil32(stor0[arg1].field_257) + 160
                s = 0
                while ceil32(stor0[arg1].field_257) + stor0[arg1].field_513 + 128 > idx:
                    mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor0[arg1].field_257) > stor0[arg1].field_257:
                mem[ceil32(stor0[arg1].field_257) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_257 + 256] = 0
            mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 256] = stor0[arg1].field_513
            mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + 288 len ceil32(stor0[arg1].field_513)] = mem[ceil32(stor0[arg1].field_257) + 160 len ceil32(stor0[arg1].field_513)]
            if ceil32(stor0[arg1].field_513) > stor0[arg1].field_513:
                mem[(2 * ceil32(stor0[arg1].field_257)) + ceil32(stor0[arg1].field_513) + stor0[arg1].field_513 + 288] = 0
    return Array(len=stor0[arg1].field_256, data=mem[128 len ceil32(stor0[arg1].field_257)], stor0[arg1].field_512, mem[ceil32(stor0[arg1].field_257) + 160 len ceil32(stor0[arg1].field_513)]), 
           ceil32(stor0[arg1].field_257) + 96
}



}
