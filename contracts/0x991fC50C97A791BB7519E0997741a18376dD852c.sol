contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address vaultAddress;
uint256 stor0;
address sub_8d93bf67Address;
array of uint256 stor2;
uint256 totalSupply;
uint256 sub_9304b8bf;
mapping of uint256 adventurers_log;

function totalSupply() {
    return totalSupply
}

function sub_8d93bf67(?) {
    return sub_8d93bf67Address
}

function sub_9304b8bf(?) {
    return sub_9304b8bf
}

function sub_c783cc2f(?) {
    return stor2.length
}

function adventurers_log(uint256 arg1) {
    require calldata.size - 4 >= 32
    return adventurers_log[arg1]
}

function vault() {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function setVault(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_8d93bf67Address != msg.sender:
        revert with 0, '!owner'
    address(vaultAddress) = arg1
}

function setApprovalForAll(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_8d93bf67Address != msg.sender:
        revert with 0, '!owner'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0xa22cb465 with:
         gas gas_remaining wei
        args address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
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

function sub_5536b963(?) {
    if sub_8d93bf67Address != msg.sender:
        revert with 0, '!owner'
    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
    staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args sub_9304b8bf
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args sub_9304b8bf, 2183809, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_a2776e86(?) payable {
    require calldata.size - 4 >= 32
    if msg.value != 10^18:
        revert with 0, '!payable'
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = address(vaultAddress)
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(vaultAddress)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= msg.value:
        mem[(2 * ceil32(return_data.size)) + 100] = msg.value
        mem[(2 * ceil32(return_data.size)) + 132] = sub_8d93bf67Address
        require ext_code.size(address(vaultAddress))
        call address(vaultAddress).deposit(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args msg.value, sub_8d93bf67Address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        idx = 0
        s = 0
        while idx < 2:
            t = 0
            while t < stor2.length:
                mem[0] = 2
                mem[mem[64] + 4] = stor2[t]
                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0xeed25028 with:
                        gas gas_remaining wei
                       args stor2[t]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5686 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if block.timestamp <= mem[_5686]:
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    continue 
                if t >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = stor2[t]
                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args stor2[t]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5853 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _5935 = mem[_5853]
                mem[mem[64] + 4] = stor2[t]
                mem[mem[64] + 36] = sub_9304b8bf
                mem[mem[64] + 68] = _5935
                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args stor2[t], sub_9304b8bf, _5935
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6101 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_6101] == bool(mem[_6101])
                if s > !_5935:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + _5935
                continue 
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5671 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5685 = mem[_5671]
            stor2.length++
            mem[0] = 2
            stor2[stor2.length] = _5685
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
                 gas gas_remaining wei
                args 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 36] = 22
            mem[mem[64] + 68] = 8
            mem[mem[64] + 100] = 8
            mem[mem[64] + 132] = 8
            mem[mem[64] + 164] = 8
            mem[mem[64] + 196] = 8
            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
            call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                 gas gas_remaining wei
                args _5685, 22, 8, 8, 8, 8, 8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = _5685
            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args _5685
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5886 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5952 = mem[_5886]
            mem[mem[64] + 4] = _5685
            mem[mem[64] + 36] = sub_9304b8bf
            mem[mem[64] + 68] = _5952
            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args _5685, sub_9304b8bf, _5952
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6134 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_6134] == bool(mem[_6134])
            if s > !_5952:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + _5952
            continue 
        mem[mem[64] + 4] = sub_9304b8bf
        mem[mem[64] + 36] = arg1
        if s < 12:
            mem[mem[64] + 68] = s
            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args sub_9304b8bf, arg1, s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2844 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2844] == bool(mem[_2844])
        else:
            mem[mem[64] + 68] = 12
            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args sub_9304b8bf, arg1, 12
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2845 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2845] == bool(mem[_2845])
    else:
        mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
        mem[(2 * ceil32(return_data.size)) + 164] = 0
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if not ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 264] = this.address
                mem[(2 * ceil32(return_data.size)) + 296] = address(vaultAddress)
                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(vaultAddress)
                mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[(4 * ceil32(return_data.size)) + 296] = address(vaultAddress)
                mem[(4 * ceil32(return_data.size)) + 328] = -1
                mem[(4 * ceil32(return_data.size)) + 260] = 68
                mem[(4 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                mem[(4 * ceil32(return_data.size)) + 360] = 32
                mem[(4 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 424 len 96] = 0, address(vaultAddress), -1, 0
                mem[(4 * ceil32(return_data.size)) + 492] = 0
                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
                   funct Mask(32, 224, 0, address(vaultAddress), -1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(vaultAddress), -1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        mem[(4 * ceil32(return_data.size)) + 428] = msg.value
                        mem[(4 * ceil32(return_data.size)) + 460] = sub_8d93bf67Address
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).deposit(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args msg.value, sub_8d93bf67Address
                        mem[(4 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 424
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while idx < 2:
                            t = 0
                            while t < stor2.length:
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0xeed25028 with:
                                        gas gas_remaining wei
                                       args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11282 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if block.timestamp <= mem[_11282]:
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    continue 
                                if t >= stor2.length:
                                    revert with 0, 50
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12013 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _12141 = mem[_12013]
                                mem[mem[64] + 4] = stor2[t]
                                mem[mem[64] + 36] = sub_9304b8bf
                                mem[mem[64] + 68] = _12141
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args stor2[t], sub_9304b8bf, _12141
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12525 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_12525] == bool(mem[_12525])
                                if s > !_12141:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + _12141
                                continue 
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11153 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11281 = mem[_11153]
                            stor2.length++
                            mem[0] = 2
                            stor2[stor2.length] = _11281
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = 22
                            mem[mem[64] + 68] = 8
                            mem[mem[64] + 100] = 8
                            mem[mem[64] + 132] = 8
                            mem[mem[64] + 164] = 8
                            mem[mem[64] + 196] = 8
                            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                            call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args _11281, 22, 8, 8, 8, 8, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = _11281
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _11281
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12077 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _12277 = mem[_12077]
                            mem[mem[64] + 4] = _11281
                            mem[mem[64] + 36] = sub_9304b8bf
                            mem[mem[64] + 68] = _12277
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args _11281, sub_9304b8bf, _12277
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12589 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_12589] == bool(mem[_12589])
                            if s > !_12277:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + _12277
                            continue 
                        mem[mem[64] + 4] = sub_9304b8bf
                        mem[mem[64] + 36] = arg1
                        if s < 12:
                            mem[mem[64] + 68] = s
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8908 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8908] == bool(mem[_8908])
                        else:
                            mem[mem[64] + 68] = 12
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, 12
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8909 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8909] == bool(mem[_8909])
                    else:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(4 * ceil32(return_data.size)) + 428] = msg.value
                        mem[(4 * ceil32(return_data.size)) + 460] = sub_8d93bf67Address
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).deposit(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args msg.value, sub_8d93bf67Address
                        mem[(4 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 424
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while idx < 2:
                            t = 0
                            while t < stor2.length:
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0xeed25028 with:
                                        gas gas_remaining wei
                                       args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11284 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if block.timestamp <= mem[_11284]:
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    continue 
                                if t >= stor2.length:
                                    revert with 0, 50
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12014 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _12142 = mem[_12014]
                                mem[mem[64] + 4] = stor2[t]
                                mem[mem[64] + 36] = sub_9304b8bf
                                mem[mem[64] + 68] = _12142
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args stor2[t], sub_9304b8bf, _12142
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12526 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_12526] == bool(mem[_12526])
                                if s > !_12142:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + _12142
                                continue 
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11155 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11283 = mem[_11155]
                            stor2.length++
                            mem[0] = 2
                            stor2[stor2.length] = _11283
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = 22
                            mem[mem[64] + 68] = 8
                            mem[mem[64] + 100] = 8
                            mem[mem[64] + 132] = 8
                            mem[mem[64] + 164] = 8
                            mem[mem[64] + 196] = 8
                            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                            call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args _11283, 22, 8, 8, 8, 8, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = _11283
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _11283
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12078 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _12280 = mem[_12078]
                            mem[mem[64] + 4] = _11283
                            mem[mem[64] + 36] = sub_9304b8bf
                            mem[mem[64] + 68] = _12280
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args _11283, sub_9304b8bf, _12280
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12590 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_12590] == bool(mem[_12590])
                            if s > !_12280:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + _12280
                            continue 
                        mem[mem[64] + 4] = sub_9304b8bf
                        mem[mem[64] + 36] = arg1
                        if s < 12:
                            mem[mem[64] + 68] = s
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8912 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8912] == bool(mem[_8912])
                        else:
                            mem[mem[64] + 68] = 12
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, 12
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8913 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8913] == bool(mem[_8913])
                else:
                    mem[(4 * ceil32(return_data.size)) + 424] = return_data.size
                    mem[(4 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = msg.value
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = sub_8d93bf67Address
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).deposit(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args msg.value, sub_8d93bf67Address
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while idx < 2:
                            t = 0
                            while t < stor2.length:
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0xeed25028 with:
                                        gas gas_remaining wei
                                       args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11286 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if block.timestamp <= mem[_11286]:
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    continue 
                                if t >= stor2.length:
                                    revert with 0, 50
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12015 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _12143 = mem[_12015]
                                mem[mem[64] + 4] = stor2[t]
                                mem[mem[64] + 36] = sub_9304b8bf
                                mem[mem[64] + 68] = _12143
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args stor2[t], sub_9304b8bf, _12143
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12527 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_12527] == bool(mem[_12527])
                                if s > !_12143:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + _12143
                                continue 
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11157 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11285 = mem[_11157]
                            stor2.length++
                            mem[0] = 2
                            stor2[stor2.length] = _11285
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = 22
                            mem[mem[64] + 68] = 8
                            mem[mem[64] + 100] = 8
                            mem[mem[64] + 132] = 8
                            mem[mem[64] + 164] = 8
                            mem[mem[64] + 196] = 8
                            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                            call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args _11285, 22, 8, 8, 8, 8, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = _11285
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _11285
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12079 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _12283 = mem[_12079]
                            mem[mem[64] + 4] = _11285
                            mem[mem[64] + 36] = sub_9304b8bf
                            mem[mem[64] + 68] = _12283
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args _11285, sub_9304b8bf, _12283
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12591 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_12591] == bool(mem[_12591])
                            if s > !_12283:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + _12283
                            continue 
                        mem[mem[64] + 4] = sub_9304b8bf
                        mem[mem[64] + 36] = arg1
                        if s < 12:
                            mem[mem[64] + 68] = s
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8917 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8917] == bool(mem[_8917])
                        else:
                            mem[mem[64] + 68] = 12
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, 12
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8918 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8918] == bool(mem[_8918])
                    else:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 456] == bool(mem[(4 * ceil32(return_data.size)) + 456])
                        if not mem[(4 * ceil32(return_data.size)) + 456]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = msg.value
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = sub_8d93bf67Address
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).deposit(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args msg.value, sub_8d93bf67Address
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while idx < 2:
                            t = 0
                            while t < stor2.length:
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0xeed25028 with:
                                        gas gas_remaining wei
                                       args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11288 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if block.timestamp <= mem[_11288]:
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    continue 
                                if t >= stor2.length:
                                    revert with 0, 50
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12016 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _12144 = mem[_12016]
                                mem[mem[64] + 4] = stor2[t]
                                mem[mem[64] + 36] = sub_9304b8bf
                                mem[mem[64] + 68] = _12144
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args stor2[t], sub_9304b8bf, _12144
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12528 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_12528] == bool(mem[_12528])
                                if s > !_12144:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + _12144
                                continue 
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11159 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11287 = mem[_11159]
                            stor2.length++
                            mem[0] = 2
                            stor2[stor2.length] = _11287
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = 22
                            mem[mem[64] + 68] = 8
                            mem[mem[64] + 100] = 8
                            mem[mem[64] + 132] = 8
                            mem[mem[64] + 164] = 8
                            mem[mem[64] + 196] = 8
                            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                            call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args _11287, 22, 8, 8, 8, 8, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = _11287
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _11287
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12080 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _12286 = mem[_12080]
                            mem[mem[64] + 4] = _11287
                            mem[mem[64] + 36] = sub_9304b8bf
                            mem[mem[64] + 68] = _12286
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args _11287, sub_9304b8bf, _12286
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12592 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_12592] == bool(mem[_12592])
                            if s > !_12286:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + _12286
                            continue 
                        mem[mem[64] + 4] = sub_9304b8bf
                        mem[mem[64] + 36] = arg1
                        if s < 12:
                            mem[mem[64] + 68] = s
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8921 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8921] == bool(mem[_8921])
                        else:
                            mem[mem[64] + 68] = 12
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, 12
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8922 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8922] == bool(mem[_8922])
            else:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(2 * ceil32(return_data.size)) + 264] = this.address
                mem[(2 * ceil32(return_data.size)) + 296] = address(vaultAddress)
                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(vaultAddress)
                mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[(4 * ceil32(return_data.size)) + 296] = address(vaultAddress)
                mem[(4 * ceil32(return_data.size)) + 328] = -1
                mem[(4 * ceil32(return_data.size)) + 260] = 68
                mem[(4 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                mem[(4 * ceil32(return_data.size)) + 360] = 32
                mem[(4 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 424 len 96] = 0, address(vaultAddress), -1, 0
                mem[(4 * ceil32(return_data.size)) + 492] = 0
                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
                   funct Mask(32, 224, 0, address(vaultAddress), -1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(vaultAddress), -1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        mem[(4 * ceil32(return_data.size)) + 428] = msg.value
                        mem[(4 * ceil32(return_data.size)) + 460] = sub_8d93bf67Address
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).deposit(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args msg.value, sub_8d93bf67Address
                        mem[(4 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 424
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while idx < 2:
                            t = 0
                            while t < stor2.length:
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0xeed25028 with:
                                        gas gas_remaining wei
                                       args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11298 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if block.timestamp <= mem[_11298]:
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    continue 
                                if t >= stor2.length:
                                    revert with 0, 50
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12021 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _12149 = mem[_12021]
                                mem[mem[64] + 4] = stor2[t]
                                mem[mem[64] + 36] = sub_9304b8bf
                                mem[mem[64] + 68] = _12149
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args stor2[t], sub_9304b8bf, _12149
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12533 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_12533] == bool(mem[_12533])
                                if s > !_12149:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + _12149
                                continue 
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11169 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11297 = mem[_11169]
                            stor2.length++
                            mem[0] = 2
                            stor2[stor2.length] = _11297
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = 22
                            mem[mem[64] + 68] = 8
                            mem[mem[64] + 100] = 8
                            mem[mem[64] + 132] = 8
                            mem[mem[64] + 164] = 8
                            mem[mem[64] + 196] = 8
                            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                            call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args _11297, 22, 8, 8, 8, 8, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = _11297
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _11297
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12085 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _12301 = mem[_12085]
                            mem[mem[64] + 4] = _11297
                            mem[mem[64] + 36] = sub_9304b8bf
                            mem[mem[64] + 68] = _12301
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args _11297, sub_9304b8bf, _12301
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12597 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_12597] == bool(mem[_12597])
                            if s > !_12301:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + _12301
                            continue 
                        mem[mem[64] + 4] = sub_9304b8bf
                        mem[mem[64] + 36] = arg1
                        if s < 12:
                            mem[mem[64] + 68] = s
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8944 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8944] == bool(mem[_8944])
                        else:
                            mem[mem[64] + 68] = 12
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, 12
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8945 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8945] == bool(mem[_8945])
                    else:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(4 * ceil32(return_data.size)) + 428] = msg.value
                        mem[(4 * ceil32(return_data.size)) + 460] = sub_8d93bf67Address
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).deposit(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args msg.value, sub_8d93bf67Address
                        mem[(4 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 424
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while idx < 2:
                            t = 0
                            while t < stor2.length:
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0xeed25028 with:
                                        gas gas_remaining wei
                                       args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11300 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if block.timestamp <= mem[_11300]:
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    continue 
                                if t >= stor2.length:
                                    revert with 0, 50
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12022 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _12150 = mem[_12022]
                                mem[mem[64] + 4] = stor2[t]
                                mem[mem[64] + 36] = sub_9304b8bf
                                mem[mem[64] + 68] = _12150
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args stor2[t], sub_9304b8bf, _12150
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12534 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_12534] == bool(mem[_12534])
                                if s > !_12150:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + _12150
                                continue 
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11171 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11299 = mem[_11171]
                            stor2.length++
                            mem[0] = 2
                            stor2[stor2.length] = _11299
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = 22
                            mem[mem[64] + 68] = 8
                            mem[mem[64] + 100] = 8
                            mem[mem[64] + 132] = 8
                            mem[mem[64] + 164] = 8
                            mem[mem[64] + 196] = 8
                            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                            call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args _11299, 22, 8, 8, 8, 8, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = _11299
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _11299
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12086 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _12304 = mem[_12086]
                            mem[mem[64] + 4] = _11299
                            mem[mem[64] + 36] = sub_9304b8bf
                            mem[mem[64] + 68] = _12304
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args _11299, sub_9304b8bf, _12304
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12598 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_12598] == bool(mem[_12598])
                            if s > !_12304:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + _12304
                            continue 
                        mem[mem[64] + 4] = sub_9304b8bf
                        mem[mem[64] + 36] = arg1
                        if s < 12:
                            mem[mem[64] + 68] = s
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8948 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8948] == bool(mem[_8948])
                        else:
                            mem[mem[64] + 68] = 12
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, 12
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8949 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8949] == bool(mem[_8949])
                else:
                    mem[(4 * ceil32(return_data.size)) + 424] = return_data.size
                    mem[(4 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = msg.value
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = sub_8d93bf67Address
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).deposit(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args msg.value, sub_8d93bf67Address
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while idx < 2:
                            t = 0
                            while t < stor2.length:
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0xeed25028 with:
                                        gas gas_remaining wei
                                       args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11302 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if block.timestamp <= mem[_11302]:
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    continue 
                                if t >= stor2.length:
                                    revert with 0, 50
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12023 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _12151 = mem[_12023]
                                mem[mem[64] + 4] = stor2[t]
                                mem[mem[64] + 36] = sub_9304b8bf
                                mem[mem[64] + 68] = _12151
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args stor2[t], sub_9304b8bf, _12151
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12535 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_12535] == bool(mem[_12535])
                                if s > !_12151:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + _12151
                                continue 
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11173 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11301 = mem[_11173]
                            stor2.length++
                            mem[0] = 2
                            stor2[stor2.length] = _11301
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = 22
                            mem[mem[64] + 68] = 8
                            mem[mem[64] + 100] = 8
                            mem[mem[64] + 132] = 8
                            mem[mem[64] + 164] = 8
                            mem[mem[64] + 196] = 8
                            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                            call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args _11301, 22, 8, 8, 8, 8, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = _11301
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _11301
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12087 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _12307 = mem[_12087]
                            mem[mem[64] + 4] = _11301
                            mem[mem[64] + 36] = sub_9304b8bf
                            mem[mem[64] + 68] = _12307
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args _11301, sub_9304b8bf, _12307
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12599 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_12599] == bool(mem[_12599])
                            if s > !_12307:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + _12307
                            continue 
                        mem[mem[64] + 4] = sub_9304b8bf
                        mem[mem[64] + 36] = arg1
                        if s < 12:
                            mem[mem[64] + 68] = s
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8953 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8953] == bool(mem[_8953])
                        else:
                            mem[mem[64] + 68] = 12
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, 12
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8954 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8954] == bool(mem[_8954])
                    else:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 456] == bool(mem[(4 * ceil32(return_data.size)) + 456])
                        if not mem[(4 * ceil32(return_data.size)) + 456]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = msg.value
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = sub_8d93bf67Address
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).deposit(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args msg.value, sub_8d93bf67Address
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while idx < 2:
                            t = 0
                            while t < stor2.length:
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0xeed25028 with:
                                        gas gas_remaining wei
                                       args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11304 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if block.timestamp <= mem[_11304]:
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    continue 
                                if t >= stor2.length:
                                    revert with 0, 50
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12024 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _12152 = mem[_12024]
                                mem[mem[64] + 4] = stor2[t]
                                mem[mem[64] + 36] = sub_9304b8bf
                                mem[mem[64] + 68] = _12152
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args stor2[t], sub_9304b8bf, _12152
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12536 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_12536] == bool(mem[_12536])
                                if s > !_12152:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + _12152
                                continue 
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11175 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11303 = mem[_11175]
                            stor2.length++
                            mem[0] = 2
                            stor2[stor2.length] = _11303
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = 22
                            mem[mem[64] + 68] = 8
                            mem[mem[64] + 100] = 8
                            mem[mem[64] + 132] = 8
                            mem[mem[64] + 164] = 8
                            mem[mem[64] + 196] = 8
                            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                            call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args _11303, 22, 8, 8, 8, 8, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = _11303
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _11303
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12088 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _12310 = mem[_12088]
                            mem[mem[64] + 4] = _11303
                            mem[mem[64] + 36] = sub_9304b8bf
                            mem[mem[64] + 68] = _12310
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args _11303, sub_9304b8bf, _12310
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12600 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_12600] == bool(mem[_12600])
                            if s > !_12310:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + _12310
                            continue 
                        mem[mem[64] + 4] = sub_9304b8bf
                        mem[mem[64] + 36] = arg1
                        if s < 12:
                            mem[mem[64] + 68] = s
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8957 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8957] == bool(mem[_8957])
                        else:
                            mem[mem[64] + 68] = 12
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, 12
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8958 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8958] == bool(mem[_8958])
        else:
            mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(vaultAddress)
                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(vaultAddress)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(vaultAddress)
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = -1
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(vaultAddress), -1, 0
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
                   funct Mask(32, 224, 0, address(vaultAddress), -1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(vaultAddress), -1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = msg.value
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = sub_8d93bf67Address
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).deposit(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args msg.value, sub_8d93bf67Address
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while idx < 2:
                            t = 0
                            while t < stor2.length:
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0xeed25028 with:
                                        gas gas_remaining wei
                                       args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11314 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if block.timestamp <= mem[_11314]:
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    continue 
                                if t >= stor2.length:
                                    revert with 0, 50
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12029 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _12157 = mem[_12029]
                                mem[mem[64] + 4] = stor2[t]
                                mem[mem[64] + 36] = sub_9304b8bf
                                mem[mem[64] + 68] = _12157
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args stor2[t], sub_9304b8bf, _12157
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12541 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_12541] == bool(mem[_12541])
                                if s > !_12157:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + _12157
                                continue 
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11185 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11313 = mem[_11185]
                            stor2.length++
                            mem[0] = 2
                            stor2[stor2.length] = _11313
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = 22
                            mem[mem[64] + 68] = 8
                            mem[mem[64] + 100] = 8
                            mem[mem[64] + 132] = 8
                            mem[mem[64] + 164] = 8
                            mem[mem[64] + 196] = 8
                            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                            call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args _11313, 22, 8, 8, 8, 8, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = _11313
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _11313
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12093 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _12325 = mem[_12093]
                            mem[mem[64] + 4] = _11313
                            mem[mem[64] + 36] = sub_9304b8bf
                            mem[mem[64] + 68] = _12325
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args _11313, sub_9304b8bf, _12325
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12605 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_12605] == bool(mem[_12605])
                            if s > !_12325:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + _12325
                            continue 
                        mem[mem[64] + 4] = sub_9304b8bf
                        mem[mem[64] + 36] = arg1
                        if s < 12:
                            mem[mem[64] + 68] = s
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8980 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8980] == bool(mem[_8980])
                        else:
                            mem[mem[64] + 68] = 12
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, 12
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8981 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8981] == bool(mem[_8981])
                    else:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = msg.value
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = sub_8d93bf67Address
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).deposit(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args msg.value, sub_8d93bf67Address
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while idx < 2:
                            t = 0
                            while t < stor2.length:
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0xeed25028 with:
                                        gas gas_remaining wei
                                       args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11316 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if block.timestamp <= mem[_11316]:
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    continue 
                                if t >= stor2.length:
                                    revert with 0, 50
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12030 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _12158 = mem[_12030]
                                mem[mem[64] + 4] = stor2[t]
                                mem[mem[64] + 36] = sub_9304b8bf
                                mem[mem[64] + 68] = _12158
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args stor2[t], sub_9304b8bf, _12158
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12542 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_12542] == bool(mem[_12542])
                                if s > !_12158:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + _12158
                                continue 
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11187 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11315 = mem[_11187]
                            stor2.length++
                            mem[0] = 2
                            stor2[stor2.length] = _11315
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = 22
                            mem[mem[64] + 68] = 8
                            mem[mem[64] + 100] = 8
                            mem[mem[64] + 132] = 8
                            mem[mem[64] + 164] = 8
                            mem[mem[64] + 196] = 8
                            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                            call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args _11315, 22, 8, 8, 8, 8, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = _11315
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _11315
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12094 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _12328 = mem[_12094]
                            mem[mem[64] + 4] = _11315
                            mem[mem[64] + 36] = sub_9304b8bf
                            mem[mem[64] + 68] = _12328
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args _11315, sub_9304b8bf, _12328
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12606 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_12606] == bool(mem[_12606])
                            if s > !_12328:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + _12328
                            continue 
                        mem[mem[64] + 4] = sub_9304b8bf
                        mem[mem[64] + 36] = arg1
                        if s < 12:
                            mem[mem[64] + 68] = s
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8984 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8984] == bool(mem[_8984])
                        else:
                            mem[mem[64] + 68] = 12
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, 12
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8985 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8985] == bool(mem[_8985])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(8 * ceil32(return_data.size)) + 430] = 32
                        mem[(8 * ceil32(return_data.size)) + 462] = 32
                        mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                        revert with memory
                          from (8 * ceil32(return_data.size)) + 426
                           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    if not return_data.size:
                        mem[(8 * ceil32(return_data.size)) + 430] = msg.value
                        mem[(8 * ceil32(return_data.size)) + 462] = sub_8d93bf67Address
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).deposit(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 430 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                        mem[(8 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (9 * ceil32(return_data.size)) + 426
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while idx < 2:
                            t = 0
                            while t < stor2.length:
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0xeed25028 with:
                                        gas gas_remaining wei
                                       args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11318 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if block.timestamp <= mem[_11318]:
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    continue 
                                if t >= stor2.length:
                                    revert with 0, 50
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12031 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _12159 = mem[_12031]
                                mem[mem[64] + 4] = stor2[t]
                                mem[mem[64] + 36] = sub_9304b8bf
                                mem[mem[64] + 68] = _12159
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args stor2[t], sub_9304b8bf, _12159
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12543 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_12543] == bool(mem[_12543])
                                if s > !_12159:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + _12159
                                continue 
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11189 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11317 = mem[_11189]
                            stor2.length++
                            mem[0] = 2
                            stor2[stor2.length] = _11317
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = 22
                            mem[mem[64] + 68] = 8
                            mem[mem[64] + 100] = 8
                            mem[mem[64] + 132] = 8
                            mem[mem[64] + 164] = 8
                            mem[mem[64] + 196] = 8
                            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                            call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args _11317, 22, 8, 8, 8, 8, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = _11317
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _11317
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12095 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _12331 = mem[_12095]
                            mem[mem[64] + 4] = _11317
                            mem[mem[64] + 36] = sub_9304b8bf
                            mem[mem[64] + 68] = _12331
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args _11317, sub_9304b8bf, _12331
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12607 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_12607] == bool(mem[_12607])
                            if s > !_12331:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + _12331
                            continue 
                        mem[mem[64] + 4] = sub_9304b8bf
                        mem[mem[64] + 36] = arg1
                        if s < 12:
                            mem[mem[64] + 68] = s
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8989 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8989] == bool(mem[_8989])
                        else:
                            mem[mem[64] + 68] = 12
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, 12
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8990 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8990] == bool(mem[_8990])
                    else:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                        if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                            mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 430] = 32
                            mem[(8 * ceil32(return_data.size)) + 462] = 42
                            mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
                            mem[(8 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 426
                               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        mem[(8 * ceil32(return_data.size)) + 430] = msg.value
                        mem[(8 * ceil32(return_data.size)) + 462] = sub_8d93bf67Address
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).deposit(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 430 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                        mem[(8 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (9 * ceil32(return_data.size)) + 426
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while idx < 2:
                            t = 0
                            while t < stor2.length:
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0xeed25028 with:
                                        gas gas_remaining wei
                                       args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11320 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if block.timestamp <= mem[_11320]:
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    continue 
                                if t >= stor2.length:
                                    revert with 0, 50
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12032 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _12160 = mem[_12032]
                                mem[mem[64] + 4] = stor2[t]
                                mem[mem[64] + 36] = sub_9304b8bf
                                mem[mem[64] + 68] = _12160
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args stor2[t], sub_9304b8bf, _12160
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12544 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_12544] == bool(mem[_12544])
                                if s > !_12160:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + _12160
                                continue 
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11191 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11319 = mem[_11191]
                            stor2.length++
                            mem[0] = 2
                            stor2[stor2.length] = _11319
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = 22
                            mem[mem[64] + 68] = 8
                            mem[mem[64] + 100] = 8
                            mem[mem[64] + 132] = 8
                            mem[mem[64] + 164] = 8
                            mem[mem[64] + 196] = 8
                            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                            call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args _11319, 22, 8, 8, 8, 8, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = _11319
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _11319
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12096 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _12334 = mem[_12096]
                            mem[mem[64] + 4] = _11319
                            mem[mem[64] + 36] = sub_9304b8bf
                            mem[mem[64] + 68] = _12334
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args _11319, sub_9304b8bf, _12334
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12608 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_12608] == bool(mem[_12608])
                            if s > !_12334:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + _12334
                            continue 
                        mem[mem[64] + 4] = sub_9304b8bf
                        mem[mem[64] + 36] = arg1
                        if s < 12:
                            mem[mem[64] + 68] = s
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8993 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8993] == bool(mem[_8993])
                        else:
                            mem[mem[64] + 68] = 12
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, 12
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8994 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8994] == bool(mem[_8994])
            else:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(vaultAddress)
                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(vaultAddress)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(vaultAddress)
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = -1
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(vaultAddress), -1, 0
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
                   funct Mask(32, 224, 0, address(vaultAddress), -1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(vaultAddress), -1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = msg.value
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = sub_8d93bf67Address
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).deposit(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args msg.value, sub_8d93bf67Address
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while idx < 2:
                            t = 0
                            while t < stor2.length:
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0xeed25028 with:
                                        gas gas_remaining wei
                                       args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11330 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if block.timestamp <= mem[_11330]:
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    continue 
                                if t >= stor2.length:
                                    revert with 0, 50
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12037 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _12165 = mem[_12037]
                                mem[mem[64] + 4] = stor2[t]
                                mem[mem[64] + 36] = sub_9304b8bf
                                mem[mem[64] + 68] = _12165
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args stor2[t], sub_9304b8bf, _12165
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12549 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_12549] == bool(mem[_12549])
                                if s > !_12165:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + _12165
                                continue 
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11201 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11329 = mem[_11201]
                            stor2.length++
                            mem[0] = 2
                            stor2[stor2.length] = _11329
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = 22
                            mem[mem[64] + 68] = 8
                            mem[mem[64] + 100] = 8
                            mem[mem[64] + 132] = 8
                            mem[mem[64] + 164] = 8
                            mem[mem[64] + 196] = 8
                            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                            call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args _11329, 22, 8, 8, 8, 8, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = _11329
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _11329
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12101 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _12349 = mem[_12101]
                            mem[mem[64] + 4] = _11329
                            mem[mem[64] + 36] = sub_9304b8bf
                            mem[mem[64] + 68] = _12349
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args _11329, sub_9304b8bf, _12349
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12613 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_12613] == bool(mem[_12613])
                            if s > !_12349:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + _12349
                            continue 
                        mem[mem[64] + 4] = sub_9304b8bf
                        mem[mem[64] + 36] = arg1
                        if s < 12:
                            mem[mem[64] + 68] = s
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9016 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9016] == bool(mem[_9016])
                        else:
                            mem[mem[64] + 68] = 12
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, 12
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9017 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9017] == bool(mem[_9017])
                    else:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = msg.value
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = sub_8d93bf67Address
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).deposit(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args msg.value, sub_8d93bf67Address
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while idx < 2:
                            t = 0
                            while t < stor2.length:
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0xeed25028 with:
                                        gas gas_remaining wei
                                       args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11332 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if block.timestamp <= mem[_11332]:
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    continue 
                                if t >= stor2.length:
                                    revert with 0, 50
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12038 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _12166 = mem[_12038]
                                mem[mem[64] + 4] = stor2[t]
                                mem[mem[64] + 36] = sub_9304b8bf
                                mem[mem[64] + 68] = _12166
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args stor2[t], sub_9304b8bf, _12166
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12550 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_12550] == bool(mem[_12550])
                                if s > !_12166:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + _12166
                                continue 
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11203 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11331 = mem[_11203]
                            stor2.length++
                            mem[0] = 2
                            stor2[stor2.length] = _11331
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = 22
                            mem[mem[64] + 68] = 8
                            mem[mem[64] + 100] = 8
                            mem[mem[64] + 132] = 8
                            mem[mem[64] + 164] = 8
                            mem[mem[64] + 196] = 8
                            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                            call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args _11331, 22, 8, 8, 8, 8, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = _11331
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _11331
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12102 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _12352 = mem[_12102]
                            mem[mem[64] + 4] = _11331
                            mem[mem[64] + 36] = sub_9304b8bf
                            mem[mem[64] + 68] = _12352
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args _11331, sub_9304b8bf, _12352
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12614 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_12614] == bool(mem[_12614])
                            if s > !_12352:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + _12352
                            continue 
                        mem[mem[64] + 4] = sub_9304b8bf
                        mem[mem[64] + 36] = arg1
                        if s < 12:
                            mem[mem[64] + 68] = s
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9020 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9020] == bool(mem[_9020])
                        else:
                            mem[mem[64] + 68] = 12
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, 12
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9021 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9021] == bool(mem[_9021])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(8 * ceil32(return_data.size)) + 430] = 32
                        mem[(8 * ceil32(return_data.size)) + 462] = 32
                        mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                        revert with memory
                          from (8 * ceil32(return_data.size)) + 426
                           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    if not return_data.size:
                        mem[(8 * ceil32(return_data.size)) + 430] = msg.value
                        mem[(8 * ceil32(return_data.size)) + 462] = sub_8d93bf67Address
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).deposit(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 430 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                        mem[(8 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (9 * ceil32(return_data.size)) + 426
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while idx < 2:
                            t = 0
                            while t < stor2.length:
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0xeed25028 with:
                                        gas gas_remaining wei
                                       args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11334 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if block.timestamp <= mem[_11334]:
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    continue 
                                if t >= stor2.length:
                                    revert with 0, 50
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12039 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _12167 = mem[_12039]
                                mem[mem[64] + 4] = stor2[t]
                                mem[mem[64] + 36] = sub_9304b8bf
                                mem[mem[64] + 68] = _12167
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args stor2[t], sub_9304b8bf, _12167
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12551 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_12551] == bool(mem[_12551])
                                if s > !_12167:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + _12167
                                continue 
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11205 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11333 = mem[_11205]
                            stor2.length++
                            mem[0] = 2
                            stor2[stor2.length] = _11333
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = 22
                            mem[mem[64] + 68] = 8
                            mem[mem[64] + 100] = 8
                            mem[mem[64] + 132] = 8
                            mem[mem[64] + 164] = 8
                            mem[mem[64] + 196] = 8
                            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                            call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args _11333, 22, 8, 8, 8, 8, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = _11333
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _11333
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12103 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _12355 = mem[_12103]
                            mem[mem[64] + 4] = _11333
                            mem[mem[64] + 36] = sub_9304b8bf
                            mem[mem[64] + 68] = _12355
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args _11333, sub_9304b8bf, _12355
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12615 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_12615] == bool(mem[_12615])
                            if s > !_12355:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + _12355
                            continue 
                        mem[mem[64] + 4] = sub_9304b8bf
                        mem[mem[64] + 36] = arg1
                        if s < 12:
                            mem[mem[64] + 68] = s
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9025 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9025] == bool(mem[_9025])
                        else:
                            mem[mem[64] + 68] = 12
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, 12
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9026 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9026] == bool(mem[_9026])
                    else:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                        if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                            mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 430] = 32
                            mem[(8 * ceil32(return_data.size)) + 462] = 42
                            mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
                            mem[(8 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 426
                               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        mem[(8 * ceil32(return_data.size)) + 430] = msg.value
                        mem[(8 * ceil32(return_data.size)) + 462] = sub_8d93bf67Address
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).deposit(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 430 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                        mem[(8 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (9 * ceil32(return_data.size)) + 426
                        require return_data.size >= 32
                        idx = 0
                        s = 0
                        while idx < 2:
                            t = 0
                            while t < stor2.length:
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0xeed25028 with:
                                        gas gas_remaining wei
                                       args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11336 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if block.timestamp <= mem[_11336]:
                                    if t == -1:
                                        revert with 0, 17
                                    t = t + 1
                                    continue 
                                if t >= stor2.length:
                                    revert with 0, 50
                                mem[0] = 2
                                mem[mem[64] + 4] = stor2[t]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor2[t]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12040 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _12168 = mem[_12040]
                                mem[mem[64] + 4] = stor2[t]
                                mem[mem[64] + 36] = sub_9304b8bf
                                mem[mem[64] + 68] = _12168
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args stor2[t], sub_9304b8bf, _12168
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12552 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_12552] == bool(mem[_12552])
                                if s > !_12168:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + _12168
                                continue 
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.next_summoner() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11207 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11335 = mem[_11207]
                            stor2.length++
                            mem[0] = 2
                            stor2[stor2.length] = _11335
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = 22
                            mem[mem[64] + 68] = 8
                            mem[mem[64] + 100] = 8
                            mem[mem[64] + 132] = 8
                            mem[mem[64] + 164] = 8
                            mem[mem[64] + 196] = 8
                            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
                            call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args _11335, 22, 8, 8, 8, 8, 8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = _11335
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _11335
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12104 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _12358 = mem[_12104]
                            mem[mem[64] + 4] = _11335
                            mem[mem[64] + 36] = sub_9304b8bf
                            mem[mem[64] + 68] = _12358
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args _11335, sub_9304b8bf, _12358
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12616 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_12616] == bool(mem[_12616])
                            if s > !_12358:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + _12358
                            continue 
                        mem[mem[64] + 4] = sub_9304b8bf
                        mem[mem[64] + 36] = arg1
                        if s < 12:
                            mem[mem[64] + 68] = s
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9029 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9029] == bool(mem[_9029])
                        else:
                            mem[mem[64] + 68] = 12
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_9304b8bf, arg1, 12
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9030 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_9030] == bool(mem[_9030])
}



}
