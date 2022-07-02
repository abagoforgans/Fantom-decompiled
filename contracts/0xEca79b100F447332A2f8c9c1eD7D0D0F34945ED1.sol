contract main {




// =====================  Runtime code  =====================


#
#  - getTiersCount()
#
address owner;
mapping of uint256 pool;
mapping of uint256 sub_cd22c752;
uint256 poolCount;
mapping of uint8 stor4;
mapping of uint256 sub_da276040;
mapping of uint256 sub_644877fc;
uint256 sub_294ebec0;
mapping of uint8 stor8;
address bankAddress;

function sub_294ebec0(?) {
    return sub_294ebec0
}

function sub_644877fc(?) {
    require calldata.size - 4 >= 32
    return sub_644877fc[arg1]
}

function bank() {
    return bankAddress
}

function owner() {
    return owner
}

function initialized(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function executors(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
}

function sub_cd22c752(?) {
    require calldata.size - 4 >= 32
    return sub_cd22c752[arg1]
}

function sub_da276040(?) {
    require calldata.size - 4 >= 32
    return sub_da276040[arg1]
}

function poolCount() {
    return poolCount
}

function pool(uint256 arg1) {
    require calldata.size - 4 >= 32
    return pool[arg1]
}

function setBank(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'caller is not the owner'
    bankAddress = arg1
}

function sub_b91849e5(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'caller is not the owner'
    stor8[address(arg1)] = uint8(bool(arg2))
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'caller is not the owner'
    if not arg1:
        revert with 0, 'new owner is the zero address'
    owner = arg1
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function _fallback() payable {
    if owner != msg.sender:
        return memory
          from 128
           len mem[96]
    require 20 <= calldata.size
    require calldata.size <= calldata.size
    call address(call.func_hash) >> 96 with:
       value msg.value wei
         gas gas_remaining wei
        args call.data[20 len calldata.size - 20]
    if not return_data.size:
        if not ext_call.success:
            revert with 0x6c6f772d6c6576656c2063616c6c206661696c6564
        return 0x6c6f772d6c6576656c2063616c6c206661696c6564
    if ext_call.success:
        return ext_call.return_data[0 len return_data.size]
    if return_data.size:
        revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 'low-level ', 0
}

function sub_96676682(?) {
    if poolCount > !sub_294ebec0:
        revert with 0, 17
    if poolCount + sub_294ebec0 > test266151307():
        revert with 0, 65
    mem[96] = poolCount + sub_294ebec0
    mem[64] = (32 * poolCount + sub_294ebec0) + 128
    if not poolCount + sub_294ebec0:
        idx = 1
        s = 0
        while idx <= poolCount:
            mem[0] = pool[idx]
            mem[32] = 4
            if stor4[stor1[idx]]:
                mem[mem[64] + 4] = pool[idx]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventurers_log(uint256 arg1) with:
                        gas gas_remaining wei
                       args pool[idx]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _55 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if block.timestamp <= mem[_55]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = pool[idx]
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        idx = 1
        t = s
        while idx <= sub_294ebec0:
            mem[0] = idx
            mem[32] = 5
            mem[mem[64] + 4] = sub_da276040[idx]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args sub_da276040[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _83 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.timestamp <= mem[_83]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = t
                continue 
            if t >= mem[96]:
                revert with 0, 50
            mem[(32 * t) + 128] = sub_da276040[idx]
            if t == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t + 1
            continue 
    else:
        mem[128 len 32 * poolCount + sub_294ebec0] = call.data[calldata.size len 32 * poolCount + sub_294ebec0]
        idx = 1
        s = 0
        while idx <= poolCount:
            mem[0] = pool[idx]
            mem[32] = 4
            if stor4[stor1[idx]]:
                mem[mem[64] + 4] = pool[idx]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventurers_log(uint256 arg1) with:
                        gas gas_remaining wei
                       args pool[idx]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _57 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if block.timestamp <= mem[_57]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = pool[idx]
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        idx = 1
        t = s
        while idx <= sub_294ebec0:
            mem[0] = idx
            mem[32] = 5
            mem[mem[64] + 4] = sub_da276040[idx]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args sub_da276040[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _85 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.timestamp <= mem[_85]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = t
                continue 
            if t >= mem[96]:
                revert with 0, 50
            mem[(32 * t) + 128] = sub_da276040[idx]
            if t == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_3a091650(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        if stor4[cd[((32 * idx) + cd[4] + 36)]]:
            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 6
            if sub_644877fc[cd[((32 * idx) + cd[4] + 36)]]:
                if sub_644877fc[cd[((32 * idx) + cd[4] + 36)]] <= 0:
                    revert with 0, 1
                if poolCount == -1:
                    revert with 0, 17
                poolCount++
                pool[stor3 + 1] = sub_da276040[stor6[cd[((32 * idx) + cd[4] + 36)]]]
                sub_cd22c752[stor5[stor6[cd[((32 * idx) + cd[4] + 36)]]]] = poolCount
                if sub_644877fc[cd[((32 * idx) + cd[4] + 36)]] != sub_294ebec0:
                    sub_da276040[stor6[cd[((32 * idx) + cd[4] + 36)]]] = sub_da276040[stor7]
                    sub_644877fc[stor5[stor7]] = sub_644877fc[cd[((32 * idx) + cd[4] + 36)]]
                if not sub_294ebec0:
                    revert with 0, 17
                sub_294ebec0--
                sub_da276040[stor7] = 0
                mem[0] = sub_da276040[stor6[cd[((32 * idx) + cd[4] + 36)]]]
                mem[32] = 6
                sub_644877fc[stor5[sub_644877fc[cd[((32 * idx) + cd[4] + 36)]]]] = 0
        else:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 4
            stor4[cd[((32 * idx) + cd[4] + 36)]] = 1
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 36] = 8
            mem[mem[64] + 68] = 8
            mem[mem[64] + 100] = 8
            mem[mem[64] + 132] = 22
            mem[mem[64] + 164] = 8
            mem[mem[64] + 196] = 8
            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
            call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], 8, 8, 8, 22, 8, 8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _33 = mem[64]
            mem[64] = mem[64] + 1152
            mem[_33] = 0
            mem[_33 + 32] = 0
            mem[_33 + 64] = 0
            mem[_33 + 96] = 0
            mem[_33 + 128] = 0
            mem[_33 + 160] = 4
            mem[_33 + 192] = 0
            mem[_33 + 224] = 0
            mem[_33 + 256] = 0
            mem[_33 + 288] = 0
            mem[_33 + 320] = 0
            mem[_33 + 352] = 0
            mem[_33 + 384] = 0
            mem[_33 + 416] = 0
            mem[_33 + 448] = 0
            mem[_33 + 480] = 0
            mem[_33 + 512] = 0
            mem[_33 + 544] = 0
            mem[_33 + 576] = 0
            mem[_33 + 608] = 0
            mem[_33 + 640] = 0
            mem[_33 + 672] = 0
            mem[_33 + 704] = 0
            mem[_33 + 736] = 0
            mem[_33 + 768] = 0
            mem[_33 + 800] = 0
            mem[_33 + 832] = 0
            mem[_33 + 864] = 0
            mem[_33 + 896] = 0
            mem[_33 + 928] = 0
            mem[_33 + 960] = 0
            mem[_33 + 992] = 0
            mem[_33 + 1024] = 0
            mem[_33 + 1056] = 0
            mem[_33 + 1088] = 0
            mem[_33 + 1120] = 0
            mem[mem[64]] = 0x54d3652a00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            s = 0
            t = _33
            u = mem[64] + 36
            while s < 36:
                mem[u] = mem[t + 31 len 1]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(0x51c0b29a1d84611373ba301706c6b4b72283c80f)
            call 0x51c0b29a1d84611373ba301706c6b4b72283c80f.0x54d3652a with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], mem[mem[64] + 36 len 1152]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
            staticcall 0xf41270836df4db1d28f7fd0935270e3a603e78cc.SUMMMONER_ID() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _49 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _50 = mem[_49]
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] + 36] = _50
            mem[mem[64] + 68] = -1
            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.approve(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], _50, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _53 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_53] == bool(mem[_53])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_a17b3181(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 68).length)) + 97 < 96 or ceil32(ceil32(('cd', 68).length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 68).length
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    mem[128 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
    mem[('cd', 68).length + 128] = 0
    require cd[100] == uint32(cd[100])
    if owner != msg.sender:
        revert with 0, 'caller is not the owner'
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(('cd', 68).length)) + 97] = ('cd', 4).length
    mem[64] = ceil32(ceil32(('cd', 68).length)) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if not ext_code.size(cd[36]):
                revert with 0, 'call to non-contract'
            mem[cd[100] + 128] = cd[((32 * idx) + cd[4] + 36)]
            _109 = mem[64]
            _112 = mem[96]
            s = 0
            while s < _112:
                mem[s + _109] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(_112) <= _112:
                call address(cd[36]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _112 + _109 + -mem[64] - 4]
                if not return_data.size:
                    _224 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_224] = 21
                    mem[_224 + 32] = 0x6c6f772d6c6576656c2063616c6c206661696c65640000000000000000000000
                    if ext_call.success:
                        if idx >= mem[ceil32(ceil32(('cd', 68).length)) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(ceil32(('cd', 68).length)) + 129] = 96
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _234 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 21
                    idx = 0
                    while idx < 21:
                        mem[idx + _234 + 68] = mem[idx + _224 + 32]
                        idx = idx + 32
                        continue 
                    mem[_234 + 89] = 0
                    revert with memory
                      from mem[64]
                       len _234 + -mem[64] + 100
                _219 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_219] = return_data.size
                mem[_219 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                _225 = mem[64]
                mem[64] = mem[64] + 64
                mem[_225] = 21
                mem[_225 + 32] = 0x6c6f772d6c6576656c2063616c6c206661696c65640000000000000000000000
                if ext_call.success:
                    if idx >= mem[ceil32(ceil32(('cd', 68).length)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(('cd', 68).length)) + 129] = _219
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _236 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 21
                idx = 0
                while idx < 21:
                    mem[idx + _236 + 68] = mem[idx + _225 + 32]
                    idx = idx + 32
                    continue 
                mem[_236 + 89] = 0
                revert with memory
                  from mem[64]
                   len _236 + -mem[64] + 100
            mem[_109 + _112] = 0
            call address(cd[36]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _112 + _109 + -mem[64] - 4]
            if not return_data.size:
                _229 = mem[64]
                mem[64] = mem[64] + 64
                mem[_229] = 21
                mem[_229 + 32] = 0x6c6f772d6c6576656c2063616c6c206661696c65640000000000000000000000
                if ext_call.success:
                    if idx >= mem[ceil32(ceil32(('cd', 68).length)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(('cd', 68).length)) + 129] = 96
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _243 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 21
                idx = 0
                while idx < 21:
                    mem[idx + _243 + 68] = mem[idx + _229 + 32]
                    idx = idx + 32
                    continue 
                mem[_243 + 89] = 0
                revert with memory
                  from mem[64]
                   len _243 + -mem[64] + 100
            _226 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_226] = return_data.size
            mem[_226 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            _230 = mem[64]
            mem[64] = mem[64] + 64
            mem[_230] = 21
            mem[_230 + 32] = 0x6c6f772d6c6576656c2063616c6c206661696c65640000000000000000000000
            if ext_call.success:
                if idx >= mem[ceil32(ceil32(('cd', 68).length)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(('cd', 68).length)) + 129] = _226
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _245 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 21
            idx = 0
            while idx < 21:
                mem[idx + _245 + 68] = mem[idx + _230 + 32]
                idx = idx + 32
                continue 
            mem[_245 + 89] = 0
            revert with memory
              from mem[64]
               len _245 + -mem[64] + 100
        _107 = mem[64]
        mem[mem[64]] = 32
        _108 = mem[ceil32(ceil32(('cd', 68).length)) + 97]
        mem[mem[64] + 32] = mem[ceil32(ceil32(('cd', 68).length)) + 97]
        idx = 0
        s = ceil32(ceil32(('cd', 68).length)) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _108) + 64
        while idx < _108:
            mem[t] = u + -_107 - 64
            _209 = mem[s]
            _212 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _212:
                mem[v + u + 32] = mem[v + _209 + 32]
                v = v + 32
                continue 
            if ceil32(_212) > _212:
                mem[u + _212 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_212) + u + 32
            continue 
    else:
        mem[ceil32(ceil32(('cd', 68).length)) + 129] = 96
        s = ceil32(ceil32(('cd', 68).length)) + 129
        idx = ('cd', 4).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            if not ext_code.size(cd[36]):
                revert with 0, 'call to non-contract'
            mem[cd[100] + 128] = cd[((32 * idx) + cd[4] + 36)]
            _216 = mem[64]
            _222 = mem[96]
            s = 0
            while s < _222:
                mem[s + _216] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(_222) <= _222:
                call address(cd[36]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _222 + _216 + -mem[64] - 4]
                if not return_data.size:
                    _326 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_326] = 21
                    mem[_326 + 32] = 0x6c6f772d6c6576656c2063616c6c206661696c65640000000000000000000000
                    if ext_call.success:
                        if idx >= mem[ceil32(ceil32(('cd', 68).length)) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(ceil32(('cd', 68).length)) + 129] = 96
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _333 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 21
                    idx = 0
                    while idx < 21:
                        mem[idx + _333 + 68] = mem[idx + _326 + 32]
                        idx = idx + 32
                        continue 
                    mem[_333 + 89] = 0
                    revert with memory
                      from mem[64]
                       len _333 + -mem[64] + 100
                _320 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_320] = return_data.size
                mem[_320 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                _327 = mem[64]
                mem[64] = mem[64] + 64
                mem[_327] = 21
                mem[_327 + 32] = 0x6c6f772d6c6576656c2063616c6c206661696c65640000000000000000000000
                if ext_call.success:
                    if idx >= mem[ceil32(ceil32(('cd', 68).length)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(('cd', 68).length)) + 129] = _320
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _335 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 21
                idx = 0
                while idx < 21:
                    mem[idx + _335 + 68] = mem[idx + _327 + 32]
                    idx = idx + 32
                    continue 
                mem[_335 + 89] = 0
                revert with memory
                  from mem[64]
                   len _335 + -mem[64] + 100
            mem[_216 + _222] = 0
            call address(cd[36]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _222 + _216 + -mem[64] - 4]
            if not return_data.size:
                _329 = mem[64]
                mem[64] = mem[64] + 64
                mem[_329] = 21
                mem[_329 + 32] = 0x6c6f772d6c6576656c2063616c6c206661696c65640000000000000000000000
                if ext_call.success:
                    if idx >= mem[ceil32(ceil32(('cd', 68).length)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(('cd', 68).length)) + 129] = 96
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _341 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 21
                idx = 0
                while idx < 21:
                    mem[idx + _341 + 68] = mem[idx + _329 + 32]
                    idx = idx + 32
                    continue 
                mem[_341 + 89] = 0
                revert with memory
                  from mem[64]
                   len _341 + -mem[64] + 100
            _328 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_328] = return_data.size
            mem[_328 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            _330 = mem[64]
            mem[64] = mem[64] + 64
            mem[_330] = 21
            mem[_330 + 32] = 0x6c6f772d6c6576656c2063616c6c206661696c65640000000000000000000000
            if ext_call.success:
                if idx >= mem[ceil32(ceil32(('cd', 68).length)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(('cd', 68).length)) + 129] = _328
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _343 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 21
            idx = 0
            while idx < 21:
                mem[idx + _343 + 68] = mem[idx + _330 + 32]
                idx = idx + 32
                continue 
            mem[_343 + 89] = 0
            revert with memory
              from mem[64]
               len _343 + -mem[64] + 100
        _213 = mem[64]
        mem[mem[64]] = 32
        _214 = mem[ceil32(ceil32(('cd', 68).length)) + 97]
        mem[mem[64] + 32] = mem[ceil32(ceil32(('cd', 68).length)) + 97]
        idx = 0
        s = ceil32(ceil32(('cd', 68).length)) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _214) + 64
        while idx < _214:
            mem[t] = u + -_213 - 64
            _310 = mem[s]
            _313 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _313:
                mem[v + u + 32] = mem[v + _310 + 32]
                v = v + 32
                continue 
            if ceil32(_313) > _313:
                mem[u + _313 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_313) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
