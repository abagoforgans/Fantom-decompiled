contract main {




// =====================  Runtime code  =====================


#
#  - sub_0551f733(?)
#  - sub_4ee3394d(?)
#  - sub_5890b53a(?)
#  - sub_60daabda(?)
#  - sub_7ce45cba(?)
#  - sub_d7b20e6b(?)
#  - sub_e4cbbc7b(?)
#
mapping of uint8 stor0;
mapping of struct stor1;
array of struct stor2;
array of struct stor4;
array of struct stor5;

function isController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function relinquishControl() payable {
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[msg.sender] = 0
}

function addController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[address(arg1)] = 1
}

function sub_677808aa(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if arg5 > test266151307():
        revert with 0, 65
    mem[96] = arg5
    mem[64] = (32 * arg5) + 128
    if not arg5:
        if arg4 and arg5 > -1 / arg4:
            revert with 0, 17
        if arg4 and arg5 > -1 / arg4:
            revert with 0, 17
        if arg4 * arg5 > !arg5:
            revert with 0, 17
        if var76002 >= (arg4 * arg5) + arg5:
            mem[(32 * arg5) + 128] = 64
            mem[(32 * arg5) + 192] = arg5
            mem[(32 * arg5) + 224 len 32 * arg5] = mem[128 len 32 * arg5]
            mem[(32 * arg5) + 160] = 0
            return memory
              from (32 * arg5) + 128
               len (96 * arg5) + 96
        mem[(32 * arg5) + 128] = 0xd31674db00000000000000000000000000000000000000000000000000000000
        mem[var80001] = var80002
        require ext_code.size(address(arg1))
        staticcall address(arg1).mem[var84003 len 4] with:
                gas gas_remaining wei
               args mem[var84003 + 4 len var84004 - 4]
        if not ext_call.success:
            if var92001 == -1:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            # nil
        else:
            require var88002 - var88001 >= 32
            require ext_code.size(address(arg1))
            # nil
    else:
        mem[128 len 32 * arg5] = call.data[calldata.size len 32 * arg5]
        if arg4 and arg5 > -1 / arg4:
            revert with 0, 17
        if arg4 and arg5 > -1 / arg4:
            revert with 0, 17
        if arg4 * arg5 > !arg5:
            revert with 0, 17
        if var77002 >= (arg4 * arg5) + arg5:
            mem[(32 * arg5) + 128] = 64
            mem[(32 * arg5) + 192] = arg5
            mem[(32 * arg5) + 224 len 32 * arg5] = call.data[calldata.size len 32 * arg5]
            mem[(32 * arg5) + 160] = 0
            return memory
              from (32 * arg5) + 128
               len (96 * arg5) + 96
        mem[(32 * arg5) + 128] = 0xd31674db00000000000000000000000000000000000000000000000000000000
        mem[var81001] = var81002
        require ext_code.size(address(arg1))
        staticcall address(arg1).mem[var85003 len 4] with:
                gas gas_remaining wei
               args mem[var85003 + 4 len var85004 - 4]
        if not ext_call.success:
            if var93001 == -1:
                revert with 0, 17
            if arg4 and arg5 > -1 / arg4:
                revert with 0, 17
            # nil
        else:
            require var89002 - var89001 >= 32
            require ext_code.size(address(arg1))
            # nil
}

function sub_d0290656(?) payable {
    require calldata.size - 4 >= 32
    if stor1[arg1].field_256:
        if stor1[arg1].field_256 == stor1[arg1].field_257 < 32:
            revert with 0, 34
        if stor1[arg1].field_256:
            if stor1[arg1].field_256 == stor1[arg1].field_257 < 32:
                revert with 0, 34
            if stor1[arg1].field_257:
                if 31 >= stor1[arg1].field_257:
                    mem[128] = 256 * stor1[arg1].field_264
                else:
                    mem[128] = stor1[arg1][1].field_0
                    idx = 128
                    s = 0
                    while stor1[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor1[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor1[arg1].field_256 == stor1[arg1].field_257 < 32:
                revert with 0, 34
            if stor1[arg1].field_257:
                if 31 >= stor1[arg1].field_257:
                    mem[128] = 256 * stor1[arg1].field_264
                else:
                    mem[128] = stor1[arg1][1].field_0
                    idx = 128
                    s = 0
                    while stor1[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor1[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor1[arg1].field_512:
            if stor1[arg1].field_512 == stor1[arg1].field_513 < 32:
                revert with 0, 34
            if stor1[arg1].field_512:
                if stor1[arg1].field_512 == stor1[arg1].field_513 < 32:
                    revert with 0, 34
                if not stor1[arg1].field_513:
                    if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                        mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
                    if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                        mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
                else:
                    if 31 >= stor1[arg1].field_513:
                        mem[ceil32(stor1[arg1].field_257) + 160] = 256 * stor1[arg1].field_520
                    else:
                        mem[ceil32(stor1[arg1].field_257) + 160] = stor1[arg1][2].field_0
                        idx = ceil32(stor1[arg1].field_257) + 160
                        s = 0
                        while ceil32(stor1[arg1].field_257) + stor1[arg1].field_513 + 128 > idx:
                            mem[idx + 32] = stor1[arg1][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                        mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
                    if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                        mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
            else:
                if stor1[arg1].field_512 == stor1[arg1].field_513 < 32:
                    revert with 0, 34
                if not stor1[arg1].field_513:
                    if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                        mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
                    if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                        mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
                else:
                    if 31 >= stor1[arg1].field_513:
                        mem[ceil32(stor1[arg1].field_257) + 160] = 256 * stor1[arg1].field_520
                    else:
                        mem[ceil32(stor1[arg1].field_257) + 160] = stor1[arg1][2].field_0
                        idx = ceil32(stor1[arg1].field_257) + 160
                        s = 0
                        while ceil32(stor1[arg1].field_257) + stor1[arg1].field_513 + 128 > idx:
                            mem[idx + 32] = stor1[arg1][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                        mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
                    if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                        mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
            return stor1[arg1].field_0, 
                   Array(len=2 * Mask(256, -1, stor1[arg1].field_257), data=mem[128 len ceil32(stor1[arg1].field_257)], 2 * Mask(256, -1, stor1[arg1].field_513), mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]),
                   ceil32(stor1[arg1].field_257) + 320,
                   stor1[arg1].field_768,
                   stor1[arg1].field_1024,
                   stor1[arg1].field_1280,
                   stor1[arg1].field_1536,
                   stor1[arg1].field_1792,
                   stor1[arg1].field_2048
        if stor1[arg1].field_512 == stor1[arg1].field_513 < 32:
            revert with 0, 34
        if stor1[arg1].field_512:
            if stor1[arg1].field_512 == stor1[arg1].field_513 < 32:
                revert with 0, 34
            if not stor1[arg1].field_513:
                if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                    mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
                if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
            else:
                if 31 >= stor1[arg1].field_513:
                    mem[ceil32(stor1[arg1].field_257) + 160] = 256 * stor1[arg1].field_520
                else:
                    mem[ceil32(stor1[arg1].field_257) + 160] = stor1[arg1][2].field_0
                    idx = ceil32(stor1[arg1].field_257) + 160
                    s = 0
                    while ceil32(stor1[arg1].field_257) + stor1[arg1].field_513 + 128 > idx:
                        mem[idx + 32] = stor1[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                    mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
                if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
        else:
            if stor1[arg1].field_512 == stor1[arg1].field_513 < 32:
                revert with 0, 34
            if not stor1[arg1].field_513:
                if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                    mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
                if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
            else:
                if 31 >= stor1[arg1].field_513:
                    mem[ceil32(stor1[arg1].field_257) + 160] = 256 * stor1[arg1].field_520
                else:
                    mem[ceil32(stor1[arg1].field_257) + 160] = stor1[arg1][2].field_0
                    idx = ceil32(stor1[arg1].field_257) + 160
                    s = 0
                    while ceil32(stor1[arg1].field_257) + stor1[arg1].field_513 + 128 > idx:
                        mem[idx + 32] = stor1[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                    mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
                if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
        return stor1[arg1].field_0, 
               Array(len=2 * Mask(256, -1, stor1[arg1].field_257), data=mem[128 len ceil32(stor1[arg1].field_257)], stor1[arg1].field_512, mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]),
               ceil32(stor1[arg1].field_257) + 320,
               stor1[arg1].field_768,
               stor1[arg1].field_1024,
               stor1[arg1].field_1280,
               stor1[arg1].field_1536,
               stor1[arg1].field_1792,
               stor1[arg1].field_2048
    if stor1[arg1].field_256 == stor1[arg1].field_257 < 32:
        revert with 0, 34
    if stor1[arg1].field_256:
        if stor1[arg1].field_256 == stor1[arg1].field_257 < 32:
            revert with 0, 34
        if stor1[arg1].field_257:
            if 31 >= stor1[arg1].field_257:
                mem[128] = 256 * stor1[arg1].field_264
            else:
                mem[128] = stor1[arg1][1].field_0
                idx = 128
                s = 0
                while stor1[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor1[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor1[arg1].field_256 == stor1[arg1].field_257 < 32:
            revert with 0, 34
        if stor1[arg1].field_257:
            if 31 >= stor1[arg1].field_257:
                mem[128] = 256 * stor1[arg1].field_264
            else:
                mem[128] = stor1[arg1][1].field_0
                idx = 128
                s = 0
                while stor1[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor1[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor1[arg1].field_512:
        if stor1[arg1].field_512 == stor1[arg1].field_513 < 32:
            revert with 0, 34
        if stor1[arg1].field_512:
            if stor1[arg1].field_512 == stor1[arg1].field_513 < 32:
                revert with 0, 34
            if not stor1[arg1].field_513:
                if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                    mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
                if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
            else:
                if 31 >= stor1[arg1].field_513:
                    mem[ceil32(stor1[arg1].field_257) + 160] = 256 * stor1[arg1].field_520
                else:
                    mem[ceil32(stor1[arg1].field_257) + 160] = stor1[arg1][2].field_0
                    idx = ceil32(stor1[arg1].field_257) + 160
                    s = 0
                    while ceil32(stor1[arg1].field_257) + stor1[arg1].field_513 + 128 > idx:
                        mem[idx + 32] = stor1[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                    mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
                if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
        else:
            if stor1[arg1].field_512 == stor1[arg1].field_513 < 32:
                revert with 0, 34
            if not stor1[arg1].field_513:
                if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                    mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
                if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
            else:
                if 31 >= stor1[arg1].field_513:
                    mem[ceil32(stor1[arg1].field_257) + 160] = 256 * stor1[arg1].field_520
                else:
                    mem[ceil32(stor1[arg1].field_257) + 160] = stor1[arg1][2].field_0
                    idx = ceil32(stor1[arg1].field_257) + 160
                    s = 0
                    while ceil32(stor1[arg1].field_257) + stor1[arg1].field_513 + 128 > idx:
                        mem[idx + 32] = stor1[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                    mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
                if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                    mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
        return stor1[arg1].field_0, 
               Array(len=stor1[arg1].field_256, data=mem[128 len ceil32(stor1[arg1].field_257)], 2 * Mask(256, -1, stor1[arg1].field_513), mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]),
               ceil32(stor1[arg1].field_257) + 320,
               stor1[arg1].field_768,
               stor1[arg1].field_1024,
               stor1[arg1].field_1280,
               stor1[arg1].field_1536,
               stor1[arg1].field_1792,
               stor1[arg1].field_2048
    if stor1[arg1].field_512 == stor1[arg1].field_513 < 32:
        revert with 0, 34
    if stor1[arg1].field_512:
        if stor1[arg1].field_512 == stor1[arg1].field_513 < 32:
            revert with 0, 34
        if not stor1[arg1].field_513:
            if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
            mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
            mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
            if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
        else:
            if 31 >= stor1[arg1].field_513:
                mem[ceil32(stor1[arg1].field_257) + 160] = 256 * stor1[arg1].field_520
            else:
                mem[ceil32(stor1[arg1].field_257) + 160] = stor1[arg1][2].field_0
                idx = ceil32(stor1[arg1].field_257) + 160
                s = 0
                while ceil32(stor1[arg1].field_257) + stor1[arg1].field_513 + 128 > idx:
                    mem[idx + 32] = stor1[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
            mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
            mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
            if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
    else:
        if stor1[arg1].field_512 == stor1[arg1].field_513 < 32:
            revert with 0, 34
        if not stor1[arg1].field_513:
            if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
            mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
            mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
            if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
        else:
            if 31 >= stor1[arg1].field_513:
                mem[ceil32(stor1[arg1].field_257) + 160] = 256 * stor1[arg1].field_520
            else:
                mem[ceil32(stor1[arg1].field_257) + 160] = stor1[arg1][2].field_0
                idx = ceil32(stor1[arg1].field_257) + 160
                s = 0
                while ceil32(stor1[arg1].field_257) + stor1[arg1].field_513 + 128 > idx:
                    mem[idx + 32] = stor1[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor1[arg1].field_257) > stor1[arg1].field_257:
                mem[ceil32(stor1[arg1].field_257) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_257 + 480] = 0
            mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 480] = stor1[arg1].field_513
            mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + 512 len ceil32(stor1[arg1].field_513)] = mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]
            if ceil32(stor1[arg1].field_513) > stor1[arg1].field_513:
                mem[(2 * ceil32(stor1[arg1].field_257)) + ceil32(stor1[arg1].field_513) + stor1[arg1].field_513 + 512] = 0
    return stor1[arg1].field_0, 
           Array(len=stor1[arg1].field_256, data=mem[128 len ceil32(stor1[arg1].field_257)], stor1[arg1].field_512, mem[ceil32(stor1[arg1].field_257) + 160 len ceil32(stor1[arg1].field_513)]),
           ceil32(stor1[arg1].field_257) + 320,
           stor1[arg1].field_768,
           stor1[arg1].field_1024,
           stor1[arg1].field_1280,
           stor1[arg1].field_1536,
           stor1[arg1].field_1792,
           stor1[arg1].field_2048
}

function sub_0f4c5ccf(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < stor5[arg1].field_0
    if stor5[arg1][arg2].field_256:
        if stor5[arg1][arg2].field_256 == stor5[arg1][arg2].field_257 < 32:
            revert with 0, 34
        if stor5[arg1][arg2].field_256:
            if stor5[arg1][arg2].field_256 == stor5[arg1][arg2].field_257 < 32:
                revert with 0, 34
            if stor5[arg1][arg2].field_257:
                if 31 >= stor5[arg1][arg2].field_257:
                    mem[128] = 256 * stor5[arg1][arg2].field_264
                else:
                    mem[128] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor5[arg1][arg2].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor5[arg1][arg2].field_256 == stor5[arg1][arg2].field_257 < 32:
                revert with 0, 34
            if stor5[arg1][arg2].field_257:
                if 31 >= stor5[arg1][arg2].field_257:
                    mem[128] = 256 * stor5[arg1][arg2].field_264
                else:
                    mem[128] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor5[arg1][arg2].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor5[arg1][arg2].field_512:
            if stor5[arg1][arg2].field_512 == stor5[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if stor5[arg1][arg2].field_512:
                if stor5[arg1][arg2].field_512 == stor5[arg1][arg2].field_513 < 32:
                    revert with 0, 34
                if not stor5[arg1][arg2].field_513:
                    if ceil32(stor5[arg1][arg2].field_257) > stor5[arg1][arg2].field_257:
                        mem[ceil32(stor5[arg1][arg2].field_257) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_257 + 480] = 0
                    mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 480] = stor5[arg1][arg2].field_513
                    mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 512 len ceil32(stor5[arg1][arg2].field_513)] = mem[ceil32(stor5[arg1][arg2].field_257) + 160 len ceil32(stor5[arg1][arg2].field_513)]
                    if ceil32(stor5[arg1][arg2].field_513) > stor5[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_513 + 512] = 0
                else:
                    if 31 >= stor5[arg1][arg2].field_513:
                        mem[ceil32(stor5[arg1][arg2].field_257) + 160] = 256 * stor5[arg1][arg2].field_520
                    else:
                        mem[ceil32(stor5[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 2)].field_0
                        idx = ceil32(stor5[arg1][arg2].field_257) + 160
                        s = 0
                        while ceil32(stor5[arg1][arg2].field_257) + stor5[arg1][arg2].field_513 + 128 > idx:
                            mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 2)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor5[arg1][arg2].field_257) > stor5[arg1][arg2].field_257:
                        mem[ceil32(stor5[arg1][arg2].field_257) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_257 + 480] = 0
                    mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 480] = stor5[arg1][arg2].field_513
                    mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 512 len ceil32(stor5[arg1][arg2].field_513)] = mem[ceil32(stor5[arg1][arg2].field_257) + 160 len ceil32(stor5[arg1][arg2].field_513)]
                    if ceil32(stor5[arg1][arg2].field_513) > stor5[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_513 + 512] = 0
            else:
                if stor5[arg1][arg2].field_512 == stor5[arg1][arg2].field_513 < 32:
                    revert with 0, 34
                if not stor5[arg1][arg2].field_513:
                    if ceil32(stor5[arg1][arg2].field_257) > stor5[arg1][arg2].field_257:
                        mem[ceil32(stor5[arg1][arg2].field_257) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_257 + 480] = 0
                    mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 480] = stor5[arg1][arg2].field_513
                    mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 512 len ceil32(stor5[arg1][arg2].field_513)] = mem[ceil32(stor5[arg1][arg2].field_257) + 160 len ceil32(stor5[arg1][arg2].field_513)]
                    if ceil32(stor5[arg1][arg2].field_513) > stor5[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_513 + 512] = 0
                else:
                    if 31 >= stor5[arg1][arg2].field_513:
                        mem[ceil32(stor5[arg1][arg2].field_257) + 160] = 256 * stor5[arg1][arg2].field_520
                    else:
                        mem[ceil32(stor5[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 2)].field_0
                        idx = ceil32(stor5[arg1][arg2].field_257) + 160
                        s = 0
                        while ceil32(stor5[arg1][arg2].field_257) + stor5[arg1][arg2].field_513 + 128 > idx:
                            mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 2)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor5[arg1][arg2].field_257) > stor5[arg1][arg2].field_257:
                        mem[ceil32(stor5[arg1][arg2].field_257) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_257 + 480] = 0
                    mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 480] = stor5[arg1][arg2].field_513
                    mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 512 len ceil32(stor5[arg1][arg2].field_513)] = mem[ceil32(stor5[arg1][arg2].field_257) + 160 len ceil32(stor5[arg1][arg2].field_513)]
                    if ceil32(stor5[arg1][arg2].field_513) > stor5[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_513 + 512] = 0
            return stor5[arg1][arg2].field_0, 
                   Array(len=2 * Mask(256, -1, stor5[arg1][arg2].field_257), data=mem[128 len ceil32(stor5[arg1][arg2].field_257)], 2 * Mask(256, -1, stor5[arg1][arg2].field_513), mem[ceil32(stor5[arg1][arg2].field_257) + 160 len ceil32(stor5[arg1][arg2].field_513)]),
                   ceil32(stor5[arg1][arg2].field_257) + 320,
                   stor5[arg1][arg2].field_768,
                   stor5[arg1][arg2].field_1024,
                   stor5[arg1][arg2].field_1280,
                   stor5[arg1][arg2].field_1536,
                   stor5[arg1][arg2].field_1792,
                   stor5[arg1][arg2].field_2048
        if stor5[arg1][arg2].field_512 == stor5[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if stor5[arg1][arg2].field_512:
            if stor5[arg1][arg2].field_512 == stor5[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if not stor5[arg1][arg2].field_513:
                if ceil32(stor5[arg1][arg2].field_257) > stor5[arg1][arg2].field_257:
                    mem[ceil32(stor5[arg1][arg2].field_257) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 480] = stor5[arg1][arg2].field_513
                mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 512 len ceil32(stor5[arg1][arg2].field_513)] = mem[ceil32(stor5[arg1][arg2].field_257) + 160 len ceil32(stor5[arg1][arg2].field_513)]
                if ceil32(stor5[arg1][arg2].field_513) > stor5[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_513 + 512] = 0
            else:
                if 31 >= stor5[arg1][arg2].field_513:
                    mem[ceil32(stor5[arg1][arg2].field_257) + 160] = 256 * stor5[arg1][arg2].field_520
                else:
                    mem[ceil32(stor5[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 2)].field_0
                    idx = ceil32(stor5[arg1][arg2].field_257) + 160
                    s = 0
                    while ceil32(stor5[arg1][arg2].field_257) + stor5[arg1][arg2].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor5[arg1][arg2].field_257) > stor5[arg1][arg2].field_257:
                    mem[ceil32(stor5[arg1][arg2].field_257) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 480] = stor5[arg1][arg2].field_513
                mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 512 len ceil32(stor5[arg1][arg2].field_513)] = mem[ceil32(stor5[arg1][arg2].field_257) + 160 len ceil32(stor5[arg1][arg2].field_513)]
                if ceil32(stor5[arg1][arg2].field_513) > stor5[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_513 + 512] = 0
        else:
            if stor5[arg1][arg2].field_512 == stor5[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if not stor5[arg1][arg2].field_513:
                if ceil32(stor5[arg1][arg2].field_257) > stor5[arg1][arg2].field_257:
                    mem[ceil32(stor5[arg1][arg2].field_257) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 480] = stor5[arg1][arg2].field_513
                mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 512 len ceil32(stor5[arg1][arg2].field_513)] = mem[ceil32(stor5[arg1][arg2].field_257) + 160 len ceil32(stor5[arg1][arg2].field_513)]
                if ceil32(stor5[arg1][arg2].field_513) > stor5[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_513 + 512] = 0
            else:
                if 31 >= stor5[arg1][arg2].field_513:
                    mem[ceil32(stor5[arg1][arg2].field_257) + 160] = 256 * stor5[arg1][arg2].field_520
                else:
                    mem[ceil32(stor5[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 2)].field_0
                    idx = ceil32(stor5[arg1][arg2].field_257) + 160
                    s = 0
                    while ceil32(stor5[arg1][arg2].field_257) + stor5[arg1][arg2].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor5[arg1][arg2].field_257) > stor5[arg1][arg2].field_257:
                    mem[ceil32(stor5[arg1][arg2].field_257) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 480] = stor5[arg1][arg2].field_513
                mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 512 len ceil32(stor5[arg1][arg2].field_513)] = mem[ceil32(stor5[arg1][arg2].field_257) + 160 len ceil32(stor5[arg1][arg2].field_513)]
                if ceil32(stor5[arg1][arg2].field_513) > stor5[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_513 + 512] = 0
        return stor5[arg1][arg2].field_0, 
               Array(len=2 * Mask(256, -1, stor5[arg1][arg2].field_257), data=mem[128 len ceil32(stor5[arg1][arg2].field_257)], stor5[arg1][arg2].field_512, mem[ceil32(stor5[arg1][arg2].field_257) + 160 len ceil32(stor5[arg1][arg2].field_513)]),
               ceil32(stor5[arg1][arg2].field_257) + 320,
               stor5[arg1][arg2].field_768,
               stor5[arg1][arg2].field_1024,
               stor5[arg1][arg2].field_1280,
               stor5[arg1][arg2].field_1536,
               stor5[arg1][arg2].field_1792,
               stor5[arg1][arg2].field_2048
    if stor5[arg1][arg2].field_256 == stor5[arg1][arg2].field_257 < 32:
        revert with 0, 34
    if stor5[arg1][arg2].field_256:
        if stor5[arg1][arg2].field_256 == stor5[arg1][arg2].field_257 < 32:
            revert with 0, 34
        if stor5[arg1][arg2].field_257:
            if 31 >= stor5[arg1][arg2].field_257:
                mem[128] = 256 * stor5[arg1][arg2].field_264
            else:
                mem[128] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 1)].field_0
                idx = 128
                s = 0
                while stor5[arg1][arg2].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor5[arg1][arg2].field_256 == stor5[arg1][arg2].field_257 < 32:
            revert with 0, 34
        if stor5[arg1][arg2].field_257:
            if 31 >= stor5[arg1][arg2].field_257:
                mem[128] = 256 * stor5[arg1][arg2].field_264
            else:
                mem[128] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 1)].field_0
                idx = 128
                s = 0
                while stor5[arg1][arg2].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor5[arg1][arg2].field_512:
        if stor5[arg1][arg2].field_512 == stor5[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if stor5[arg1][arg2].field_512:
            if stor5[arg1][arg2].field_512 == stor5[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if not stor5[arg1][arg2].field_513:
                if ceil32(stor5[arg1][arg2].field_257) > stor5[arg1][arg2].field_257:
                    mem[ceil32(stor5[arg1][arg2].field_257) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 480] = stor5[arg1][arg2].field_513
                mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 512 len ceil32(stor5[arg1][arg2].field_513)] = mem[ceil32(stor5[arg1][arg2].field_257) + 160 len ceil32(stor5[arg1][arg2].field_513)]
                if ceil32(stor5[arg1][arg2].field_513) > stor5[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_513 + 512] = 0
            else:
                if 31 >= stor5[arg1][arg2].field_513:
                    mem[ceil32(stor5[arg1][arg2].field_257) + 160] = 256 * stor5[arg1][arg2].field_520
                else:
                    mem[ceil32(stor5[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 2)].field_0
                    idx = ceil32(stor5[arg1][arg2].field_257) + 160
                    s = 0
                    while ceil32(stor5[arg1][arg2].field_257) + stor5[arg1][arg2].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor5[arg1][arg2].field_257) > stor5[arg1][arg2].field_257:
                    mem[ceil32(stor5[arg1][arg2].field_257) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 480] = stor5[arg1][arg2].field_513
                mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 512 len ceil32(stor5[arg1][arg2].field_513)] = mem[ceil32(stor5[arg1][arg2].field_257) + 160 len ceil32(stor5[arg1][arg2].field_513)]
                if ceil32(stor5[arg1][arg2].field_513) > stor5[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_513 + 512] = 0
        else:
            if stor5[arg1][arg2].field_512 == stor5[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if not stor5[arg1][arg2].field_513:
                if ceil32(stor5[arg1][arg2].field_257) > stor5[arg1][arg2].field_257:
                    mem[ceil32(stor5[arg1][arg2].field_257) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 480] = stor5[arg1][arg2].field_513
                mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 512 len ceil32(stor5[arg1][arg2].field_513)] = mem[ceil32(stor5[arg1][arg2].field_257) + 160 len ceil32(stor5[arg1][arg2].field_513)]
                if ceil32(stor5[arg1][arg2].field_513) > stor5[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_513 + 512] = 0
            else:
                if 31 >= stor5[arg1][arg2].field_513:
                    mem[ceil32(stor5[arg1][arg2].field_257) + 160] = 256 * stor5[arg1][arg2].field_520
                else:
                    mem[ceil32(stor5[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 2)].field_0
                    idx = ceil32(stor5[arg1][arg2].field_257) + 160
                    s = 0
                    while ceil32(stor5[arg1][arg2].field_257) + stor5[arg1][arg2].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor5[arg1][arg2].field_257) > stor5[arg1][arg2].field_257:
                    mem[ceil32(stor5[arg1][arg2].field_257) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 480] = stor5[arg1][arg2].field_513
                mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 512 len ceil32(stor5[arg1][arg2].field_513)] = mem[ceil32(stor5[arg1][arg2].field_257) + 160 len ceil32(stor5[arg1][arg2].field_513)]
                if ceil32(stor5[arg1][arg2].field_513) > stor5[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_513 + 512] = 0
        return stor5[arg1][arg2].field_0, 
               Array(len=stor5[arg1][arg2].field_256, data=mem[128 len ceil32(stor5[arg1][arg2].field_257)], 2 * Mask(256, -1, stor5[arg1][arg2].field_513), mem[ceil32(stor5[arg1][arg2].field_257) + 160 len ceil32(stor5[arg1][arg2].field_513)]),
               ceil32(stor5[arg1][arg2].field_257) + 320,
               stor5[arg1][arg2].field_768,
               stor5[arg1][arg2].field_1024,
               stor5[arg1][arg2].field_1280,
               stor5[arg1][arg2].field_1536,
               stor5[arg1][arg2].field_1792,
               stor5[arg1][arg2].field_2048
    if stor5[arg1][arg2].field_512 == stor5[arg1][arg2].field_513 < 32:
        revert with 0, 34
    if stor5[arg1][arg2].field_512:
        if stor5[arg1][arg2].field_512 == stor5[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if not stor5[arg1][arg2].field_513:
            if ceil32(stor5[arg1][arg2].field_257) > stor5[arg1][arg2].field_257:
                mem[ceil32(stor5[arg1][arg2].field_257) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_257 + 480] = 0
            mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 480] = stor5[arg1][arg2].field_513
            mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 512 len ceil32(stor5[arg1][arg2].field_513)] = mem[ceil32(stor5[arg1][arg2].field_257) + 160 len ceil32(stor5[arg1][arg2].field_513)]
            if ceil32(stor5[arg1][arg2].field_513) > stor5[arg1][arg2].field_513:
                mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_513 + 512] = 0
        else:
            if 31 >= stor5[arg1][arg2].field_513:
                mem[ceil32(stor5[arg1][arg2].field_257) + 160] = 256 * stor5[arg1][arg2].field_520
            else:
                mem[ceil32(stor5[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 2)].field_0
                idx = ceil32(stor5[arg1][arg2].field_257) + 160
                s = 0
                while ceil32(stor5[arg1][arg2].field_257) + stor5[arg1][arg2].field_513 + 128 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor5[arg1][arg2].field_257) > stor5[arg1][arg2].field_257:
                mem[ceil32(stor5[arg1][arg2].field_257) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_257 + 480] = 0
            mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 480] = stor5[arg1][arg2].field_513
            mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 512 len ceil32(stor5[arg1][arg2].field_513)] = mem[ceil32(stor5[arg1][arg2].field_257) + 160 len ceil32(stor5[arg1][arg2].field_513)]
            if ceil32(stor5[arg1][arg2].field_513) > stor5[arg1][arg2].field_513:
                mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_513 + 512] = 0
    else:
        if stor5[arg1][arg2].field_512 == stor5[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if not stor5[arg1][arg2].field_513:
            if ceil32(stor5[arg1][arg2].field_257) > stor5[arg1][arg2].field_257:
                mem[ceil32(stor5[arg1][arg2].field_257) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_257 + 480] = 0
            mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 480] = stor5[arg1][arg2].field_513
            mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 512 len ceil32(stor5[arg1][arg2].field_513)] = mem[ceil32(stor5[arg1][arg2].field_257) + 160 len ceil32(stor5[arg1][arg2].field_513)]
            if ceil32(stor5[arg1][arg2].field_513) > stor5[arg1][arg2].field_513:
                mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_513 + 512] = 0
        else:
            if 31 >= stor5[arg1][arg2].field_513:
                mem[ceil32(stor5[arg1][arg2].field_257) + 160] = 256 * stor5[arg1][arg2].field_520
            else:
                mem[ceil32(stor5[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 2)].field_0
                idx = ceil32(stor5[arg1][arg2].field_257) + 160
                s = 0
                while ceil32(stor5[arg1][arg2].field_257) + stor5[arg1][arg2].field_513 + 128 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor5', 5)) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor5[arg1][arg2].field_257) > stor5[arg1][arg2].field_257:
                mem[ceil32(stor5[arg1][arg2].field_257) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_257 + 480] = 0
            mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 480] = stor5[arg1][arg2].field_513
            mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + 512 len ceil32(stor5[arg1][arg2].field_513)] = mem[ceil32(stor5[arg1][arg2].field_257) + 160 len ceil32(stor5[arg1][arg2].field_513)]
            if ceil32(stor5[arg1][arg2].field_513) > stor5[arg1][arg2].field_513:
                mem[(2 * ceil32(stor5[arg1][arg2].field_257)) + ceil32(stor5[arg1][arg2].field_513) + stor5[arg1][arg2].field_513 + 512] = 0
    return stor5[arg1][arg2].field_0, 
           Array(len=stor5[arg1][arg2].field_256, data=mem[128 len ceil32(stor5[arg1][arg2].field_257)], stor5[arg1][arg2].field_512, mem[ceil32(stor5[arg1][arg2].field_257) + 160 len ceil32(stor5[arg1][arg2].field_513)]),
           ceil32(stor5[arg1][arg2].field_257) + 320,
           stor5[arg1][arg2].field_768,
           stor5[arg1][arg2].field_1024,
           stor5[arg1][arg2].field_1280,
           stor5[arg1][arg2].field_1536,
           stor5[arg1][arg2].field_1792,
           stor5[arg1][arg2].field_2048
}

function sub_8c54baf0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < stor4[arg1].field_0
    if stor4[arg1][arg2].field_256:
        if stor4[arg1][arg2].field_256 == stor4[arg1][arg2].field_257 < 32:
            revert with 0, 34
        if stor4[arg1][arg2].field_256:
            if stor4[arg1][arg2].field_256 == stor4[arg1][arg2].field_257 < 32:
                revert with 0, 34
            if stor4[arg1][arg2].field_257:
                if 31 >= stor4[arg1][arg2].field_257:
                    mem[128] = 256 * stor4[arg1][arg2].field_264
                else:
                    mem[128] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1][arg2].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor4[arg1][arg2].field_256 == stor4[arg1][arg2].field_257 < 32:
                revert with 0, 34
            if stor4[arg1][arg2].field_257:
                if 31 >= stor4[arg1][arg2].field_257:
                    mem[128] = 256 * stor4[arg1][arg2].field_264
                else:
                    mem[128] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1][arg2].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor4[arg1][arg2].field_512:
            if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if stor4[arg1][arg2].field_512:
                if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
                    revert with 0, 34
                if not stor4[arg1][arg2].field_513:
                    if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                        mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
                    if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
                else:
                    if 31 >= stor4[arg1][arg2].field_513:
                        mem[ceil32(stor4[arg1][arg2].field_257) + 160] = 256 * stor4[arg1][arg2].field_520
                    else:
                        mem[ceil32(stor4[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_0
                        idx = ceil32(stor4[arg1][arg2].field_257) + 160
                        s = 0
                        while ceil32(stor4[arg1][arg2].field_257) + stor4[arg1][arg2].field_513 + 128 > idx:
                            mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                        mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
                    if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
            else:
                if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
                    revert with 0, 34
                if not stor4[arg1][arg2].field_513:
                    if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                        mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
                    if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
                else:
                    if 31 >= stor4[arg1][arg2].field_513:
                        mem[ceil32(stor4[arg1][arg2].field_257) + 160] = 256 * stor4[arg1][arg2].field_520
                    else:
                        mem[ceil32(stor4[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_0
                        idx = ceil32(stor4[arg1][arg2].field_257) + 160
                        s = 0
                        while ceil32(stor4[arg1][arg2].field_257) + stor4[arg1][arg2].field_513 + 128 > idx:
                            mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                        mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
                    if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
            return stor4[arg1][arg2].field_0, 
                   Array(len=2 * Mask(256, -1, stor4[arg1][arg2].field_257), data=mem[128 len ceil32(stor4[arg1][arg2].field_257)], 2 * Mask(256, -1, stor4[arg1][arg2].field_513), mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]),
                   ceil32(stor4[arg1][arg2].field_257) + 320,
                   stor4[arg1][arg2].field_768,
                   stor4[arg1][arg2].field_1024,
                   stor4[arg1][arg2].field_1280,
                   stor4[arg1][arg2].field_1536,
                   stor4[arg1][arg2].field_1792,
                   stor4[arg1][arg2].field_2048
        if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if stor4[arg1][arg2].field_512:
            if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if not stor4[arg1][arg2].field_513:
                if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                    mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
                if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
            else:
                if 31 >= stor4[arg1][arg2].field_513:
                    mem[ceil32(stor4[arg1][arg2].field_257) + 160] = 256 * stor4[arg1][arg2].field_520
                else:
                    mem[ceil32(stor4[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_0
                    idx = ceil32(stor4[arg1][arg2].field_257) + 160
                    s = 0
                    while ceil32(stor4[arg1][arg2].field_257) + stor4[arg1][arg2].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                    mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
                if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
        else:
            if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if not stor4[arg1][arg2].field_513:
                if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                    mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
                if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
            else:
                if 31 >= stor4[arg1][arg2].field_513:
                    mem[ceil32(stor4[arg1][arg2].field_257) + 160] = 256 * stor4[arg1][arg2].field_520
                else:
                    mem[ceil32(stor4[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_0
                    idx = ceil32(stor4[arg1][arg2].field_257) + 160
                    s = 0
                    while ceil32(stor4[arg1][arg2].field_257) + stor4[arg1][arg2].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                    mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
                if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
        return stor4[arg1][arg2].field_0, 
               Array(len=2 * Mask(256, -1, stor4[arg1][arg2].field_257), data=mem[128 len ceil32(stor4[arg1][arg2].field_257)], stor4[arg1][arg2].field_512, mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]),
               ceil32(stor4[arg1][arg2].field_257) + 320,
               stor4[arg1][arg2].field_768,
               stor4[arg1][arg2].field_1024,
               stor4[arg1][arg2].field_1280,
               stor4[arg1][arg2].field_1536,
               stor4[arg1][arg2].field_1792,
               stor4[arg1][arg2].field_2048
    if stor4[arg1][arg2].field_256 == stor4[arg1][arg2].field_257 < 32:
        revert with 0, 34
    if stor4[arg1][arg2].field_256:
        if stor4[arg1][arg2].field_256 == stor4[arg1][arg2].field_257 < 32:
            revert with 0, 34
        if stor4[arg1][arg2].field_257:
            if 31 >= stor4[arg1][arg2].field_257:
                mem[128] = 256 * stor4[arg1][arg2].field_264
            else:
                mem[128] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 1)].field_0
                idx = 128
                s = 0
                while stor4[arg1][arg2].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor4[arg1][arg2].field_256 == stor4[arg1][arg2].field_257 < 32:
            revert with 0, 34
        if stor4[arg1][arg2].field_257:
            if 31 >= stor4[arg1][arg2].field_257:
                mem[128] = 256 * stor4[arg1][arg2].field_264
            else:
                mem[128] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 1)].field_0
                idx = 128
                s = 0
                while stor4[arg1][arg2].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor4[arg1][arg2].field_512:
        if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if stor4[arg1][arg2].field_512:
            if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if not stor4[arg1][arg2].field_513:
                if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                    mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
                if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
            else:
                if 31 >= stor4[arg1][arg2].field_513:
                    mem[ceil32(stor4[arg1][arg2].field_257) + 160] = 256 * stor4[arg1][arg2].field_520
                else:
                    mem[ceil32(stor4[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_0
                    idx = ceil32(stor4[arg1][arg2].field_257) + 160
                    s = 0
                    while ceil32(stor4[arg1][arg2].field_257) + stor4[arg1][arg2].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                    mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
                if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
        else:
            if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if not stor4[arg1][arg2].field_513:
                if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                    mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
                if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
            else:
                if 31 >= stor4[arg1][arg2].field_513:
                    mem[ceil32(stor4[arg1][arg2].field_257) + 160] = 256 * stor4[arg1][arg2].field_520
                else:
                    mem[ceil32(stor4[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_0
                    idx = ceil32(stor4[arg1][arg2].field_257) + 160
                    s = 0
                    while ceil32(stor4[arg1][arg2].field_257) + stor4[arg1][arg2].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                    mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
                if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
        return stor4[arg1][arg2].field_0, 
               Array(len=stor4[arg1][arg2].field_256, data=mem[128 len ceil32(stor4[arg1][arg2].field_257)], 2 * Mask(256, -1, stor4[arg1][arg2].field_513), mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]),
               ceil32(stor4[arg1][arg2].field_257) + 320,
               stor4[arg1][arg2].field_768,
               stor4[arg1][arg2].field_1024,
               stor4[arg1][arg2].field_1280,
               stor4[arg1][arg2].field_1536,
               stor4[arg1][arg2].field_1792,
               stor4[arg1][arg2].field_2048
    if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
        revert with 0, 34
    if stor4[arg1][arg2].field_512:
        if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if not stor4[arg1][arg2].field_513:
            if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
            mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
            mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
            if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
        else:
            if 31 >= stor4[arg1][arg2].field_513:
                mem[ceil32(stor4[arg1][arg2].field_257) + 160] = 256 * stor4[arg1][arg2].field_520
            else:
                mem[ceil32(stor4[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_0
                idx = ceil32(stor4[arg1][arg2].field_257) + 160
                s = 0
                while ceil32(stor4[arg1][arg2].field_257) + stor4[arg1][arg2].field_513 + 128 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
            mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
            mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
            if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
    else:
        if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if not stor4[arg1][arg2].field_513:
            if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
            mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
            mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
            if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
        else:
            if 31 >= stor4[arg1][arg2].field_513:
                mem[ceil32(stor4[arg1][arg2].field_257) + 160] = 256 * stor4[arg1][arg2].field_520
            else:
                mem[ceil32(stor4[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_0
                idx = ceil32(stor4[arg1][arg2].field_257) + 160
                s = 0
                while ceil32(stor4[arg1][arg2].field_257) + stor4[arg1][arg2].field_513 + 128 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor4[arg1][arg2].field_257) > stor4[arg1][arg2].field_257:
                mem[ceil32(stor4[arg1][arg2].field_257) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_257 + 480] = 0
            mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 480] = stor4[arg1][arg2].field_513
            mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + 512 len ceil32(stor4[arg1][arg2].field_513)] = mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]
            if ceil32(stor4[arg1][arg2].field_513) > stor4[arg1][arg2].field_513:
                mem[(2 * ceil32(stor4[arg1][arg2].field_257)) + ceil32(stor4[arg1][arg2].field_513) + stor4[arg1][arg2].field_513 + 512] = 0
    return stor4[arg1][arg2].field_0, 
           Array(len=stor4[arg1][arg2].field_256, data=mem[128 len ceil32(stor4[arg1][arg2].field_257)], stor4[arg1][arg2].field_512, mem[ceil32(stor4[arg1][arg2].field_257) + 160 len ceil32(stor4[arg1][arg2].field_513)]),
           ceil32(stor4[arg1][arg2].field_257) + 320,
           stor4[arg1][arg2].field_768,
           stor4[arg1][arg2].field_1024,
           stor4[arg1][arg2].field_1280,
           stor4[arg1][arg2].field_1536,
           stor4[arg1][arg2].field_1792,
           stor4[arg1][arg2].field_2048
}

function sub_ef3c4a05(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < stor2[arg1].field_0
    if stor2[arg1][arg2].field_256:
        if stor2[arg1][arg2].field_256 == stor2[arg1][arg2].field_257 < 32:
            revert with 0, 34
        if stor2[arg1][arg2].field_256:
            if stor2[arg1][arg2].field_256 == stor2[arg1][arg2].field_257 < 32:
                revert with 0, 34
            if stor2[arg1][arg2].field_257:
                if 31 >= stor2[arg1][arg2].field_257:
                    mem[128] = 256 * stor2[arg1][arg2].field_264
                else:
                    mem[128] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor2[arg1][arg2].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor2[arg1][arg2].field_256 == stor2[arg1][arg2].field_257 < 32:
                revert with 0, 34
            if stor2[arg1][arg2].field_257:
                if 31 >= stor2[arg1][arg2].field_257:
                    mem[128] = 256 * stor2[arg1][arg2].field_264
                else:
                    mem[128] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor2[arg1][arg2].field_257 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor2[arg1][arg2].field_512:
            if stor2[arg1][arg2].field_512 == stor2[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if stor2[arg1][arg2].field_512:
                if stor2[arg1][arg2].field_512 == stor2[arg1][arg2].field_513 < 32:
                    revert with 0, 34
                if not stor2[arg1][arg2].field_513:
                    if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                        mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
                    if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
                else:
                    if 31 >= stor2[arg1][arg2].field_513:
                        mem[ceil32(stor2[arg1][arg2].field_257) + 160] = 256 * stor2[arg1][arg2].field_520
                    else:
                        mem[ceil32(stor2[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_0
                        idx = ceil32(stor2[arg1][arg2].field_257) + 160
                        s = 0
                        while ceil32(stor2[arg1][arg2].field_257) + stor2[arg1][arg2].field_513 + 128 > idx:
                            mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                        mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
                    if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
            else:
                if stor2[arg1][arg2].field_512 == stor2[arg1][arg2].field_513 < 32:
                    revert with 0, 34
                if not stor2[arg1][arg2].field_513:
                    if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                        mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
                    if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
                else:
                    if 31 >= stor2[arg1][arg2].field_513:
                        mem[ceil32(stor2[arg1][arg2].field_257) + 160] = 256 * stor2[arg1][arg2].field_520
                    else:
                        mem[ceil32(stor2[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_0
                        idx = ceil32(stor2[arg1][arg2].field_257) + 160
                        s = 0
                        while ceil32(stor2[arg1][arg2].field_257) + stor2[arg1][arg2].field_513 + 128 > idx:
                            mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                        mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
                    if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                        mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
            return stor2[arg1][arg2].field_0, 
                   Array(len=2 * Mask(256, -1, stor2[arg1][arg2].field_257), data=mem[128 len ceil32(stor2[arg1][arg2].field_257)], 2 * Mask(256, -1, stor2[arg1][arg2].field_513), mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]),
                   ceil32(stor2[arg1][arg2].field_257) + 320,
                   stor2[arg1][arg2].field_768,
                   stor2[arg1][arg2].field_1024,
                   stor2[arg1][arg2].field_1280,
                   stor2[arg1][arg2].field_1536,
                   stor2[arg1][arg2].field_1792,
                   stor2[arg1][arg2].field_2048
        if stor2[arg1][arg2].field_512 == stor2[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if stor2[arg1][arg2].field_512:
            if stor2[arg1][arg2].field_512 == stor2[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if not stor2[arg1][arg2].field_513:
                if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                    mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
                if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
            else:
                if 31 >= stor2[arg1][arg2].field_513:
                    mem[ceil32(stor2[arg1][arg2].field_257) + 160] = 256 * stor2[arg1][arg2].field_520
                else:
                    mem[ceil32(stor2[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_0
                    idx = ceil32(stor2[arg1][arg2].field_257) + 160
                    s = 0
                    while ceil32(stor2[arg1][arg2].field_257) + stor2[arg1][arg2].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                    mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
                if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
        else:
            if stor2[arg1][arg2].field_512 == stor2[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if not stor2[arg1][arg2].field_513:
                if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                    mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
                if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
            else:
                if 31 >= stor2[arg1][arg2].field_513:
                    mem[ceil32(stor2[arg1][arg2].field_257) + 160] = 256 * stor2[arg1][arg2].field_520
                else:
                    mem[ceil32(stor2[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_0
                    idx = ceil32(stor2[arg1][arg2].field_257) + 160
                    s = 0
                    while ceil32(stor2[arg1][arg2].field_257) + stor2[arg1][arg2].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                    mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
                if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
        return stor2[arg1][arg2].field_0, 
               Array(len=2 * Mask(256, -1, stor2[arg1][arg2].field_257), data=mem[128 len ceil32(stor2[arg1][arg2].field_257)], stor2[arg1][arg2].field_512, mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]),
               ceil32(stor2[arg1][arg2].field_257) + 320,
               stor2[arg1][arg2].field_768,
               stor2[arg1][arg2].field_1024,
               stor2[arg1][arg2].field_1280,
               stor2[arg1][arg2].field_1536,
               stor2[arg1][arg2].field_1792,
               stor2[arg1][arg2].field_2048
    if stor2[arg1][arg2].field_256 == stor2[arg1][arg2].field_257 < 32:
        revert with 0, 34
    if stor2[arg1][arg2].field_256:
        if stor2[arg1][arg2].field_256 == stor2[arg1][arg2].field_257 < 32:
            revert with 0, 34
        if stor2[arg1][arg2].field_257:
            if 31 >= stor2[arg1][arg2].field_257:
                mem[128] = 256 * stor2[arg1][arg2].field_264
            else:
                mem[128] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1)].field_0
                idx = 128
                s = 0
                while stor2[arg1][arg2].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor2[arg1][arg2].field_256 == stor2[arg1][arg2].field_257 < 32:
            revert with 0, 34
        if stor2[arg1][arg2].field_257:
            if 31 >= stor2[arg1][arg2].field_257:
                mem[128] = 256 * stor2[arg1][arg2].field_264
            else:
                mem[128] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1)].field_0
                idx = 128
                s = 0
                while stor2[arg1][arg2].field_257 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor2[arg1][arg2].field_512:
        if stor2[arg1][arg2].field_512 == stor2[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if stor2[arg1][arg2].field_512:
            if stor2[arg1][arg2].field_512 == stor2[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if not stor2[arg1][arg2].field_513:
                if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                    mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
                if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
            else:
                if 31 >= stor2[arg1][arg2].field_513:
                    mem[ceil32(stor2[arg1][arg2].field_257) + 160] = 256 * stor2[arg1][arg2].field_520
                else:
                    mem[ceil32(stor2[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_0
                    idx = ceil32(stor2[arg1][arg2].field_257) + 160
                    s = 0
                    while ceil32(stor2[arg1][arg2].field_257) + stor2[arg1][arg2].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                    mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
                if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
        else:
            if stor2[arg1][arg2].field_512 == stor2[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if not stor2[arg1][arg2].field_513:
                if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                    mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
                if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
            else:
                if 31 >= stor2[arg1][arg2].field_513:
                    mem[ceil32(stor2[arg1][arg2].field_257) + 160] = 256 * stor2[arg1][arg2].field_520
                else:
                    mem[ceil32(stor2[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_0
                    idx = ceil32(stor2[arg1][arg2].field_257) + 160
                    s = 0
                    while ceil32(stor2[arg1][arg2].field_257) + stor2[arg1][arg2].field_513 + 128 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                    mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
                if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                    mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
        return stor2[arg1][arg2].field_0, 
               Array(len=stor2[arg1][arg2].field_256, data=mem[128 len ceil32(stor2[arg1][arg2].field_257)], 2 * Mask(256, -1, stor2[arg1][arg2].field_513), mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]),
               ceil32(stor2[arg1][arg2].field_257) + 320,
               stor2[arg1][arg2].field_768,
               stor2[arg1][arg2].field_1024,
               stor2[arg1][arg2].field_1280,
               stor2[arg1][arg2].field_1536,
               stor2[arg1][arg2].field_1792,
               stor2[arg1][arg2].field_2048
    if stor2[arg1][arg2].field_512 == stor2[arg1][arg2].field_513 < 32:
        revert with 0, 34
    if stor2[arg1][arg2].field_512:
        if stor2[arg1][arg2].field_512 == stor2[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if not stor2[arg1][arg2].field_513:
            if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
            mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
            mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
            if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
        else:
            if 31 >= stor2[arg1][arg2].field_513:
                mem[ceil32(stor2[arg1][arg2].field_257) + 160] = 256 * stor2[arg1][arg2].field_520
            else:
                mem[ceil32(stor2[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_0
                idx = ceil32(stor2[arg1][arg2].field_257) + 160
                s = 0
                while ceil32(stor2[arg1][arg2].field_257) + stor2[arg1][arg2].field_513 + 128 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
            mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
            mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
            if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
    else:
        if stor2[arg1][arg2].field_512 == stor2[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if not stor2[arg1][arg2].field_513:
            if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
            mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
            mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
            if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
        else:
            if 31 >= stor2[arg1][arg2].field_513:
                mem[ceil32(stor2[arg1][arg2].field_257) + 160] = 256 * stor2[arg1][arg2].field_520
            else:
                mem[ceil32(stor2[arg1][arg2].field_257) + 160] = stor[sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_0
                idx = ceil32(stor2[arg1][arg2].field_257) + 160
                s = 0
                while ceil32(stor2[arg1][arg2].field_257) + stor2[arg1][arg2].field_513 + 128 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor2', 2)) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor2[arg1][arg2].field_257) > stor2[arg1][arg2].field_257:
                mem[ceil32(stor2[arg1][arg2].field_257) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_257 + 480] = 0
            mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 480] = stor2[arg1][arg2].field_513
            mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + 512 len ceil32(stor2[arg1][arg2].field_513)] = mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]
            if ceil32(stor2[arg1][arg2].field_513) > stor2[arg1][arg2].field_513:
                mem[(2 * ceil32(stor2[arg1][arg2].field_257)) + ceil32(stor2[arg1][arg2].field_513) + stor2[arg1][arg2].field_513 + 512] = 0
    return stor2[arg1][arg2].field_0, 
           Array(len=stor2[arg1][arg2].field_256, data=mem[128 len ceil32(stor2[arg1][arg2].field_257)], stor2[arg1][arg2].field_512, mem[ceil32(stor2[arg1][arg2].field_257) + 160 len ceil32(stor2[arg1][arg2].field_513)]),
           ceil32(stor2[arg1][arg2].field_257) + 320,
           stor2[arg1][arg2].field_768,
           stor2[arg1][arg2].field_1024,
           stor2[arg1][arg2].field_1280,
           stor2[arg1][arg2].field_1536,
           stor2[arg1][arg2].field_1792,
           stor2[arg1][arg2].field_2048
}



}
