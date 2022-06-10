contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address rarityAddress;
address sub_d486adccAddress;
uint256 burn;
mapping of struct stor4;
mapping of struct sub_bb23cc58;

function burn() payable {
    return burn
}

function sub_bb23cc58(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_bb23cc58[arg1].field_0
}

function sub_d486adcc(?) payable {
    return sub_d486adccAddress
}

function rarity() payable {
    return rarityAddress
}

function _fallback() payable {
    revert
}

function setName(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'only the owner can set the name of a summoner'
    require ext_code.size(sub_d486adccAddress)
    staticcall sub_d486adccAddress.allowance(uint256 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args arg1, burn
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < sub_bb23cc58[arg1].field_0:
        revert with 0, 'insufficient allowance for rename'
    require ext_code.size(sub_d486adccAddress)
    staticcall sub_d486adccAddress.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < sub_bb23cc58[arg1].field_0:
        revert with 0, 'insufficient gold for rename'
    if stor4[arg1].field_0:
        if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor4[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor4[arg1].field_0 = 0
            idx = 0
            while stor4[arg1].field_1 + 31 / 32 > idx:
                stor4[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor4[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor4[arg1].field_0 = 0
            idx = 0
            while stor4[arg1].field_1 + 31 / 32 > idx:
                stor4[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    emit 0x60f27efc: arg1, Array(len=arg2.length, data=arg2[all])
    if not sub_bb23cc58[arg1].field_0:
        sub_bb23cc58[arg1].field_0 = stor0
    else:
        if sub_bb23cc58[arg1].field_0 and 2 > -1 / sub_bb23cc58[arg1].field_0:
            revert with 'NH{q', 17
        sub_bb23cc58[arg1].field_0 = 0
        sub_bb23cc58[arg1].field_1 = sub_bb23cc58[arg1].field_0
        require ext_code.size(sub_d486adccAddress)
        call sub_d486adccAddress.transferFrom(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args burn, arg1, burn, sub_bb23cc58[arg1].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function names(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4[arg1].field_0:
        if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_0:
            if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor4[arg1].field_1:
                if 31 < stor4[arg1].field_1:
                    mem[128] = stor4[arg1].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4[arg1].field_1), data=mem[128 len ceil32(stor4[arg1].field_1)])
                mem[128] = 256 * stor4[arg1].field_8
        else:
            if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor4[arg1].field_1:
                if 31 < stor4[arg1].field_1:
                    mem[128] = stor4[arg1].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4[arg1].field_1), data=mem[128 len ceil32(stor4[arg1].field_1)])
                mem[128] = 256 * stor4[arg1].field_8
        mem[ceil32(stor4[arg1].field_1) + 192 len ceil32(stor4[arg1].field_1)] = mem[128 len ceil32(stor4[arg1].field_1)]
        if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
            mem[ceil32(stor4[arg1].field_1) + stor4[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4[arg1].field_1), data=mem[128 len ceil32(stor4[arg1].field_1)], mem[(2 * ceil32(stor4[arg1].field_1)) + 192 len 2 * ceil32(stor4[arg1].field_1)]), 
    if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor4[arg1].field_0:
        if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_1:
            if 31 < stor4[arg1].field_1:
                mem[128] = stor4[arg1].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor4[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4[arg1].field_0, data=mem[128 len ceil32(stor4[arg1].field_1)])
            mem[128] = 256 * stor4[arg1].field_8
    else:
        if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_1:
            if 31 < stor4[arg1].field_1:
                mem[128] = stor4[arg1].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor4[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4[arg1].field_0, data=mem[128 len ceil32(stor4[arg1].field_1)])
            mem[128] = 256 * stor4[arg1].field_8
    mem[ceil32(stor4[arg1].field_1) + 192 len ceil32(stor4[arg1].field_1)] = mem[128 len ceil32(stor4[arg1].field_1)]
    if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
        mem[ceil32(stor4[arg1].field_1) + stor4[arg1].field_1 + 192] = 0
    return Array(len=stor4[arg1].field_0, data=mem[128 len ceil32(stor4[arg1].field_1)], mem[(2 * ceil32(stor4[arg1].field_1)) + 192 len 2 * ceil32(stor4[arg1].field_1)]), 
}



}
