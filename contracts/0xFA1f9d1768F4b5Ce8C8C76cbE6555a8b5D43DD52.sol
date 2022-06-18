contract main {




// =====================  Runtime code  =====================


const maxCount = 20

const sub_aa2de187(?) = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb

const balance = ext_call.return_data[0]


function _fallback() payable {
    revert
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_9919073c(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x2f745c59 with:
            gas gas_remaining wei
           args this.address, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_69816eed(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    mem[96 len 640] = call.data[calldata.size len 640]
    if 1 > arg2:
        revert with 0, 'Wrong class'
    if arg2 > 11:
        revert with 0, 'Wrong class'
    if arg3 <= 0:
        revert with 0, 'Cant summon zero summoners'
    if arg3 >= 20:
        revert with 0, 'Too many summons'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
            gas gas_remaining wei
    mem[736] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 736
    require return_data.size >= 32
    idx = 0
    s = mem[736]
    while idx < arg3:
        mem[mem[64]] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg2
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = var46001
        t = var46005
        while s > 0:
            mem[mem[64] + 4] = t
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                    gas gas_remaining wei
                   args t
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _194 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _195 = mem[_194]
            require mem[_194] == mem[_194 + 12 len 20]
            if mem[_194 + 12 len 20] != this.address:
                if t > -2:
                    revert with 0, 17
                if s < 1:
                    revert with 0, 17
                s = s - 1
                t = t + 1
                continue 
            _200 = mem[64]
            mem[64] = mem[64] + 64
            mem[_200] = 14
            mem[_200 + 32] = 'count %s %s %s' << 144
            _201 = mem[64]
            mem[mem[64] + 36] = 128
            mem[mem[64] + 164] = 14
            u = 0
            while u < 14:
                mem[u + mem[64] + 196] = mem[_200 + u + 32]
                u = u + 32
                continue 
            mem[mem[64] + 210] = 0
            mem[mem[64] + 68] = s
            mem[mem[64] + 100] = address(_195)
            mem[mem[64] + 132] = t
            _270 = mem[64]
            mem[mem[64]] = 196
            mem[64] = mem[64] + 228
            mem[_270 + 32] = 0x58497afe00000000000000000000000000000000000000000000000000000000 or mem[_270 + 36 len 28]
            staticcall 'console.log'.mem[_270 + 32 len 4] with:
                    gas gas_remaining wei
                   args mem[_270 + 36 len mem[_270] - 4]
            if idx >= 20:
                revert with 0, 50
            mem[(32 * idx) + 96] = t
            if 1 > !t:
                revert with 0, 17
            mem[_201 + 232] = t
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                    gas gas_remaining wei
                   args t
            mem[_201 + 228] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[_201 + ceil32(return_data.size) + 228] = 12
            mem[_201 + ceil32(return_data.size) + 260] = 'sum %s %s %s' << 160
            mem[_201 + ceil32(return_data.size) + 328] = 128
            mem[_201 + ceil32(return_data.size) + 456] = 12
            s = 0
            while s < 12:
                mem[s + _201 + ceil32(return_data.size) + 488] = mem[_201 + ceil32(return_data.size) + s + 260]
                s = s + 32
                continue 
            mem[_201 + ceil32(return_data.size) + 500] = 0
            mem[_201 + ceil32(return_data.size) + 360] = t
            mem[_201 + ceil32(return_data.size) + 392] = address(ext_call.return_data[0])
            mem[_201 + ceil32(return_data.size) + 424] = this.address
            mem[_201 + ceil32(return_data.size) + 292] = 196
            mem[64] = _201 + ceil32(return_data.size) + 520
            mem[_201 + ceil32(return_data.size) + 324] = 0xeac8928100000000000000000000000000000000000000000000000000000000
            staticcall 'console.log'.0xeac89281 with:
                    gas gas_remaining wei
                   args 0, 0, t, address(ext_call.return_data[0]), this.address, 12, mem[_201 + ceil32(return_data.size) + 488 len 12], 0
            mem[_201 + ceil32(return_data.size) + 520] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[_201 + ceil32(return_data.size) + 524] = this.address
            mem[_201 + ceil32(return_data.size) + 556] = address(arg1)
            mem[_201 + ceil32(return_data.size) + 588] = t
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x42842e0e with:
                 gas gas_remaining wei
                args this.address, address(arg1), t
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = t + 1
            continue 
        if idx >= 20:
            revert with 0, 50
        mem[(32 * idx) + 96] = 0
        mem[mem[64] + 4] = 0
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                gas gas_remaining wei
               args 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _198 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _199 = mem[_198]
        require mem[_198] == mem[_198 + 12 len 20]
        _203 = mem[64]
        mem[64] = mem[64] + 64
        mem[_203] = 12
        mem[_203 + 32] = 'sum %s %s %s' << 160
        _204 = mem[64]
        mem[mem[64] + 36] = 128
        mem[mem[64] + 164] = 12
        s = 0
        while s < 12:
            mem[s + mem[64] + 196] = mem[_203 + s + 32]
            s = s + 32
            continue 
        mem[mem[64] + 208] = 0
        mem[mem[64] + 68] = 0
        mem[mem[64] + 100] = address(_199)
        mem[mem[64] + 132] = this.address
        _267 = mem[64]
        mem[mem[64]] = 196
        mem[64] = mem[64] + 228
        mem[_267 + 32] = 0xeac8928100000000000000000000000000000000000000000000000000000000 or mem[_267 + 36 len 28]
        staticcall 'console.log'.mem[_267 + 32 len 4] with:
                gas gas_remaining wei
               args mem[_267 + 36 len mem[_267] - 4]
        mem[_204 + 228] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[_204 + 232] = this.address
        mem[_204 + 264] = address(arg1)
        mem[_204 + 296] = 0
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x42842e0e with:
             gas gas_remaining wei
            args this.address, address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = 1
        continue 
    mem[mem[64] len 640] = mem[96 len 640]
    return memory
      from mem[64]
       len 640
}



}
