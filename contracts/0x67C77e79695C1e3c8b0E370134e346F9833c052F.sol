contract main {




// =====================  Runtime code  =====================


const sub_42d4817c(?) = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb


address owner;
mapping of uint256 sub_2552342a;
mapping of uint8 stor2;
array of uint256 tokenIds;

function sub_2552342a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_2552342a[arg1]
}

function sub_4756b0a7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function owner() payable {
    return owner
}

function tokenIds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < tokenIds.length
    return tokenIds[arg1]
}

function _fallback() payable {
    revert
}

function sub_b481862e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, '!owner'
    if not arg1:
        revert with 0, '!zero'
    if not sub_2552342a[arg1]:
        sub_2552342a[arg1] = tokenIds.length
        tokenIds.length++
        tokenIds[tokenIds.length] = arg1
    stor2[arg1] = uint8(bool(arg2))
}

function adventure() payable {
    if owner != msg.sender:
        revert with 0, '!owner'
    idx = 1
    while idx < tokenIds.length:
        mem[0] = tokenIds[idx]
        mem[32] = 2
        if stor2[stor3[idx]]:
            mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[100] = tokenIds[idx]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args tokenIds[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function level_up() payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, '!owner'
    idx = 1
    while idx < tokenIds.length:
        mem[0] = 3
        mem[mem[64] + 4] = tokenIds[idx]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                gas gas_remaining wei
               args tokenIds[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _23 = mem[_22]
        require mem[_22] == mem[_22]
        mem[mem[64] + 4] = mem[_22]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.xp_required(uint256 arg1) with:
                gas gas_remaining wei
               args _23
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _26 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _27 = mem[_26]
        require mem[_26] == mem[_26]
        mem[mem[64] + 4] = tokenIds[idx]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.xp(uint256 arg1) with:
                gas gas_remaining wei
               args tokenIds[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _30 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_30] == mem[_30]
        if mem[_30] >= _27:
            mem[0] = tokenIds[idx]
            mem[32] = 2
            if stor2[stor3[idx]]:
                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = tokenIds[idx]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                     gas gas_remaining wei
                    args tokenIds[idx]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
