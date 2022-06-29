contract main {




// =====================  Runtime code  =====================


const name = 'Rarity Extended Name', 0


mapping of struct stor0;

function _fallback() payable {
    revert
}

function sub_ff05b7bb(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
    if stor0[arg1].field_0:
        if stor0[arg1].field_0 == uint255(stor0[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor0[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor0[arg1].field_0 = 0
            idx = 0
            while (uint255(stor0[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor0[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor0[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor0[arg1].field_0 = 0
            idx = 0
            while stor0[arg1].field_1 + 31 / 32 > idx:
                stor0[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_7f0f543c(?) payable {
    require calldata.size - 4 >= 32
    if stor0[arg1].field_0:
        if stor0[arg1].field_0 == uint255(stor0[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor0[arg1].field_0:
            if stor0[arg1].field_0 == uint255(stor0[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0[arg1].field_0):
                if 31 < uint255(stor0[arg1].field_0) * 0.5:
                    mem[128] = stor0[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor0[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0[arg1].field_0), data=mem[128 len ceil32(uint255(stor0[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor0[arg1].field_8
        else:
            if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
                revert with 0, 34
            if stor0[arg1].field_1:
                if 31 < stor0[arg1].field_1:
                    mem[128] = stor0[arg1].field_0
                    idx = 128
                    s = 0
                    while stor0[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor0[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0[arg1].field_0), data=mem[128 len ceil32(uint255(stor0[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor0[arg1].field_8
        mem[ceil32(uint255(stor0[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor0[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor0[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor0[arg1].field_0) * 0.5) > uint255(stor0[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor0[arg1].field_0) * 0.5) + (uint255(stor0[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0[arg1].field_0), data=mem[128 len ceil32(uint255(stor0[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor0[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor0[arg1].field_0) * 0.5)]), 
    if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
        revert with 0, 34
    if stor0[arg1].field_0:
        if stor0[arg1].field_0 == uint255(stor0[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0[arg1].field_0):
            if 31 < uint255(stor0[arg1].field_0) * 0.5:
                mem[128] = stor0[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor0[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0[arg1].field_0, data=mem[128 len ceil32(stor0[arg1].field_1)])
            mem[128] = 256 * stor0[arg1].field_8
    else:
        if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
            revert with 0, 34
        if stor0[arg1].field_1:
            if 31 < stor0[arg1].field_1:
                mem[128] = stor0[arg1].field_0
                idx = 128
                s = 0
                while stor0[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor0[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0[arg1].field_0, data=mem[128 len ceil32(stor0[arg1].field_1)])
            mem[128] = 256 * stor0[arg1].field_8
    mem[ceil32(stor0[arg1].field_1) + 192 len ceil32(stor0[arg1].field_1)] = mem[128 len ceil32(stor0[arg1].field_1)]
    if ceil32(stor0[arg1].field_1) > stor0[arg1].field_1:
        mem[ceil32(stor0[arg1].field_1) + stor0[arg1].field_1 + 192] = 0
    return Array(len=stor0[arg1].field_0, data=mem[128 len ceil32(stor0[arg1].field_1)], mem[(2 * ceil32(stor0[arg1].field_1)) + 192 len 2 * ceil32(stor0[arg1].field_1)]), 
}



}
