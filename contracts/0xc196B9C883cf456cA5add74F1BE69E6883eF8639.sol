contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


uint32 stor0;
address stor0;
uint256 sub_27e911cd;

function sub_27e911cd(?) {
    return sub_27e911cd
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return (arg1 == address(stor0))
}

function sub_cc90a64f(?) {
    require calldata.size - 4 >= 32
    if address(stor0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x6d54c1a5: sub_27e911cd, arg1
    sub_27e911cd = arg1
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    if address(stor0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    emit OwnerSet(address(stor0), arg1);
    address(stor0) = arg1
}

function sub_78048307(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while uint8(idx) < ('cd', 4).length:
        if s + cd[((32 * uint8(idx)) + cd[4] + 36)] < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + cd[((32 * uint8(idx)) + cd[4] + 36)]
        continue 
    return (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if address(stor0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == 48879:
        call address(stor0) with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(stor0), Mask(224, 32, arg2) >> 32
        mem[416 len 4] = 0
        call arg1 with:
           funct uint32(stor0)
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(stor0), arg2
            if not unknown_0x23b872dd(?????), address(this.address) << 64:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
    emit Withdraw(address(arg1), arg2);
}

function multisend(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = 0
    while uint8(idx) < arg3.length:
        if s + cd[((32 * uint8(idx)) + arg3 + 36)] < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + cd[((32 * uint8(idx)) + arg3 + 36)]
        continue 
    if arg1 != 48879:
        if msg.value < sub_27e911cd:
            revert with 0, 'Not enough tips'
        idx = 0
        t = 0
        while uint8(idx) < arg2.length:
            require uint8(idx) < arg3.length
            _175 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
            mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg3 + 36)]
            _176 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_176 + 32] = mem[_176 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[64] = _175 + 196
            mem[_175 + 132] = 32
            mem[_175 + 164] = 'SafeERC20: low-level call failed'
            if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(arg1):
                revert with 0, 'Address: call to non-contract'
            _190 = mem[_176]
            u = _176 + 32
            v = _175 + 196
            s = mem[_176]
            while s >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                s = s - 32
                continue 
            mem[_175 + floor32(mem[_176]) + 196] = mem[_176 + -(mem[_176] % 32) + floor32(mem[_176]) + 64 len mem[_176] % 32] or Mask(8 * -(mem[_176] % 32) + 32, -(8 * -(mem[_176] % 32) + 32) + 256, mem[_175 + floor32(mem[_176]) + 196])
            call arg1.mem[_175 + 196 len 4] with:
                 gas gas_remaining wei
                args mem[_175 + 200 len _190 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_175 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_175 + 200] = 32
                    mem[_175 + 232] = 32
                    idx = 0
                    while idx < 32:
                        mem[_175 + idx + 264] = mem[_175 + idx + 164]
                        idx = idx + 32
                        continue 
                    revert with memory
                      from mem[64]
                       len _175 + -mem[64] + 296
                if mem[96] > 0:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_175 + 306 len 22]
            else:
                mem[64] = _175 + ceil32(return_data.size) + 197
                mem[_175 + 196] = return_data.size
                mem[_175 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_175 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_175 + ceil32(return_data.size) + 201] = 32
                    idx = 0
                    while idx < 32:
                        mem[_175 + ceil32(return_data.size) + idx + 265] = mem[_175 + idx + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_175 + ceil32(return_data.size) + 265]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[_175 + 228]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_175 + ceil32(return_data.size) + 307 len 22]
            require uint8(idx) < arg3.length
            if t + cd[((32 * uint8(idx)) + arg3 + 36)] < t:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            t = t + cd[((32 * uint8(idx)) + arg3 + 36)]
            continue 
    else:
        if msg.value < s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None:
            revert with 0, 'Not enough amount'
        if (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + sub_27e911cd < s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None:
            revert with 0, 'SafeMath: addition overflow'
        if msg.value < (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) + sub_27e911cd:
            revert with 0, 'Not enough tips'
        idx = 0
        t = msg.value
        while idx < arg2.length:
            require idx < arg3.length
            require t >= cd[((32 * idx) + arg3 + 36)]
            require idx < arg3.length
            _179 = mem[64]
            mem[64] = mem[64] + 64
            mem[_179] = 30
            mem[_179 + 32] = 'SafeMath: subtraction overflow'
            if cd[((32 * idx) + arg3 + 36)] > t:
                _180 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_180 + idx + 68] = mem[_179 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_180 + 68] = mem[_180 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _180 + -mem[64] + 100
            require idx < arg2.length
            require idx < arg3.length
            _193 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            _195 = mem[_193]
            u = _193 + 32
            v = _193 + 32
            s = mem[_193]
            while s >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                s = s - 32
                continue 
            mem[_193 + floor32(mem[_193]) + 32] = mem[_193 + -(mem[_193] % 32) + floor32(mem[_193]) + 64 len mem[_193] % 32] or Mask(8 * -(mem[_193] % 32) + 32, -(8 * -(mem[_193] % 32) + 32) + 256, mem[_193 + floor32(mem[_193]) + 32])
            call address(cd[((32 * idx) + arg2 + 36)]).mem[_193 + 32 len 4] with:
               value cd[((32 * idx) + arg3 + 36)] wei
                 gas gas_remaining wei
                args mem[_193 + 36 len _195 - 4]
            if return_data.size:
                mem[64] = _193 + ceil32(return_data.size) + 33
                mem[_193 + 32] = return_data.size
                mem[_193 + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Transfer failed.'
            idx = idx + 1
            t = t - cd[((32 * idx) + arg3 + 36)]
            continue 
    emit Multisended(s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None, arg1);
}



}
