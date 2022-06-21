contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
    revert
}

function set(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
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
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    if stor0[arg1].field_0:
        if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if not arg2.length:
            stor0[arg1].field_0 = 0
            idx = 0
            while stor0[arg1].field_1 + 31 / 32 > idx:
                stor0[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor0[arg1].field_0 = (2 * arg2.length) + 1
            s = 0
            idx = arg2 + 36
            while arg2 + arg2.length + 36 > idx:
                stor0[arg1][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg2.length + 31) >> 5
            while stor0[arg1].field_1 + 31 / 32 > idx:
                stor0[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if not arg2.length:
            stor0[arg1].field_0 = 0
            idx = 0
            while stor0[arg1].field_1 + 31 / 32 > idx:
                stor0[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor0[arg1].field_0 = (2 * arg2.length) + 1
            s = 0
            idx = arg2 + 36
            while arg2 + arg2.length + 36 > idx:
                stor0[arg1][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg2.length + 31) >> 5
            while stor0[arg1].field_1 + 31 / 32 > idx:
                stor0[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function get(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0[arg1].field_0:
        if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_0:
            if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor0[arg1].field_1), data=mem[128 len ceil32(stor0[arg1].field_1)])
                mem[128] = 256 * stor0[arg1].field_8
        else:
            if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor0[arg1].field_1), data=mem[128 len ceil32(stor0[arg1].field_1)])
                mem[128] = 256 * stor0[arg1].field_8
        mem[ceil32(stor0[arg1].field_1) + 192 len ceil32(stor0[arg1].field_1)] = mem[128 len ceil32(stor0[arg1].field_1)]
        if ceil32(stor0[arg1].field_1) > stor0[arg1].field_1:
            mem[ceil32(stor0[arg1].field_1) + stor0[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0[arg1].field_1), data=mem[128 len ceil32(stor0[arg1].field_1)], mem[(2 * ceil32(stor0[arg1].field_1)) + 192 len 2 * ceil32(stor0[arg1].field_1)]), 
    if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor0[arg1].field_0:
        if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
            revert with 'NH{q', 34
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
