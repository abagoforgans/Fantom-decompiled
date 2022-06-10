contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_b22c10a9(?) payable {
    require calldata.size - 4 >= 32
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summoner(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[576 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    mem[96] = ext_call.return_data[0]
    mem[128] = ext_call.return_data[32]
    mem[160] = ext_call.return_data[64]
    mem[192] = ext_call.return_data[96]
    mem[ceil32(return_data.size) + 576] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 580] = arg1
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.tokenURI(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 576
    require return_data.size >= 32
    _13 = mem[ceil32(return_data.size) + 576 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 576 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 576 len 4], Mask(224, 32, arg1) >> 32 + 607 < ceil32(return_data.size) + return_data.size + 576
    _14 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 576 len 4], Mask(224, 32, arg1) >> 32 + 576]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 576 len 4], Mask(224, 32, arg1) >> 32 + 576] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 576 len 4], Mask(224, 32, arg1) >> 32 + 576])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 576 len 4], Mask(224, 32, arg1) >> 32 + 576])) + 577 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 576 len 4], Mask(224, 32, arg1) >> 32 + 576])) + 577
    mem[(2 * ceil32(return_data.size)) + 576] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 576 len 4], Mask(224, 32, arg1) >> 32 + 576]
    require _13 + _14 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 608 len ceil32(_14)] = mem[ceil32(return_data.size) + _13 + 608 len ceil32(_14)]
    if ceil32(_14) <= _14:
        mem[320] = (2 * ceil32(return_data.size)) + 576
        mem[mem[64] + 4] = ext_call.return_data[96]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.xp_required(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[96]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _128 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[224] = mem[_128]
        mem[mem[64] + 4] = ext_call.return_data[96]
        require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
        staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.abilities_by_level(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[96]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _136 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[256] = mem[_136]
        mem[mem[64] + 4] = arg1
        require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
        staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.character_created(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _144 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_144] == bool(mem[_144])
        mem[352] = bool(mem[_144])
        mem[mem[64] + 4] = arg1
        require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
        staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.level_points_spent(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _152 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[288] = mem[_152]
        require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
        staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _160 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        _162 = mem[64]
        if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 192
        require mem[_160] == mem[_160 + 28 len 4]
        mem[_162] = mem[_160]
        require mem[_160 + 32] == mem[_160 + 60 len 4]
        mem[_162 + 32] = mem[_160 + 32]
        require mem[_160 + 64] == mem[_160 + 92 len 4]
        mem[_162 + 64] = mem[_160 + 64]
        require mem[_160 + 96] == mem[_160 + 124 len 4]
        mem[_162 + 96] = mem[_160 + 96]
        require mem[_160 + 128] == mem[_160 + 156 len 4]
        mem[_162 + 128] = mem[_160 + 128]
        require mem[_160 + 160] == mem[_160 + 188 len 4]
        mem[_162 + 160] = mem[_160 + 160]
        mem[mem[64]] = 224
        mem[mem[64] + 224] = ext_call.return_data[0]
        mem[mem[64] + 256] = ext_call.return_data[32]
        mem[mem[64] + 288] = ext_call.return_data[64]
        mem[mem[64] + 320] = ext_call.return_data[96]
        mem[mem[64] + 352] = mem[224]
        mem[mem[64] + 384] = mem[256]
        mem[mem[64] + 416] = mem[288]
        mem[mem[64] + 448] = 288
        _186 = mem[(2 * ceil32(return_data.size)) + 576]
        mem[mem[64] + 512] = mem[(2 * ceil32(return_data.size)) + 576]
        mem[mem[64] + 544 len ceil32(_186)] = mem[(2 * ceil32(return_data.size)) + 608 len ceil32(_186)]
        if ceil32(_186) > _186:
            mem[mem[64] + _186 + 544] = 0
        mem[mem[64] + 480] = bool(mem[352])
        mem[mem[64] + 32] = mem[_162 + 28 len 4]
        mem[mem[64] + 64] = mem[_162 + 60 len 4]
        mem[mem[64] + 96] = mem[_162 + 92 len 4]
        mem[mem[64] + 128] = mem[_162 + 124 len 4]
        mem[mem[64] + 160] = mem[_162 + 156 len 4]
        mem[mem[64] + 192] = mem[_162 + 188 len 4]
        return 224, 
               mem[mem[64] + 32 len 192],
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96],
               mem[mem[64] + 352 len 96],
               288,
               mem[mem[64] + 480 len ceil32(_186) + 64]
    mem[(2 * ceil32(return_data.size)) + _14 + 608] = 0
    mem[320] = (2 * ceil32(return_data.size)) + 576
    mem[mem[64] + 4] = ext_call.return_data[96]
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.xp_required(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[96]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _129 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[224] = mem[_129]
    mem[mem[64] + 4] = ext_call.return_data[96]
    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
    staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.abilities_by_level(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[96]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _137 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[256] = mem[_137]
    mem[mem[64] + 4] = arg1
    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
    staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.character_created(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _145 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_145] == bool(mem[_145])
    mem[352] = bool(mem[_145])
    mem[mem[64] + 4] = arg1
    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
    staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.level_points_spent(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _153 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[288] = mem[_153]
    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
    staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _161 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 192
    _163 = mem[64]
    if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
        revert with 0, 65
    mem[64] = mem[64] + 192
    require mem[_161] == mem[_161 + 28 len 4]
    mem[_163] = mem[_161]
    require mem[_161 + 32] == mem[_161 + 60 len 4]
    mem[_163 + 32] = mem[_161 + 32]
    require mem[_161 + 64] == mem[_161 + 92 len 4]
    mem[_163 + 64] = mem[_161 + 64]
    require mem[_161 + 96] == mem[_161 + 124 len 4]
    mem[_163 + 96] = mem[_161 + 96]
    require mem[_161 + 128] == mem[_161 + 156 len 4]
    mem[_163 + 128] = mem[_161 + 128]
    require mem[_161 + 160] == mem[_161 + 188 len 4]
    mem[_163 + 160] = mem[_161 + 160]
    mem[mem[64]] = 224
    mem[mem[64] + 224] = ext_call.return_data[0]
    mem[mem[64] + 256] = ext_call.return_data[32]
    mem[mem[64] + 288] = ext_call.return_data[64]
    mem[mem[64] + 320] = ext_call.return_data[96]
    mem[mem[64] + 352] = mem[224]
    mem[mem[64] + 384] = mem[256]
    mem[mem[64] + 416] = mem[288]
    mem[mem[64] + 448] = 288
    _195 = mem[(2 * ceil32(return_data.size)) + 576]
    mem[mem[64] + 512] = mem[(2 * ceil32(return_data.size)) + 576]
    mem[mem[64] + 544 len ceil32(_195)] = mem[(2 * ceil32(return_data.size)) + 608 len ceil32(_195)]
    if ceil32(_195) > _195:
        mem[mem[64] + _195 + 544] = 0
    mem[mem[64] + 480] = bool(mem[352])
    mem[mem[64] + 32] = mem[_163 + 28 len 4]
    mem[mem[64] + 64] = mem[_163 + 60 len 4]
    mem[mem[64] + 96] = mem[_163 + 92 len 4]
    mem[mem[64] + 128] = mem[_163 + 124 len 4]
    mem[mem[64] + 160] = mem[_163 + 156 len 4]
    mem[mem[64] + 192] = mem[_163 + 188 len 4]
    return 224, 
           mem[mem[64] + 32 len 192],
           ext_call.return_data[0],
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           mem[mem[64] + 352 len 96],
           288,
           mem[mem[64] + 480 len ceil32(_195) + 64]
}



}
