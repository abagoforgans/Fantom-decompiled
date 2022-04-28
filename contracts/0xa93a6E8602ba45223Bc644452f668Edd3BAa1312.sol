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
    while ('cd', 4).length > uint8(idx):
        require uint8(idx) < ('cd', 4).length
        if cd[((32 * uint8(idx)) + cd[4] + 36)] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = cd[((32 * uint8(idx)) + cd[4] + 36)] + s
        continue 
    return (cd[((32 * uint8(None)) + cd[4] + 36)] * None)
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
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
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
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
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
    while arg3.length > uint8(idx):
        require uint8(idx) < arg3.length
        if cd[((32 * uint8(idx)) + arg3 + 36)] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = cd[((32 * uint8(idx)) + arg3 + 36)] + s
        continue 
    if arg1 != 48879:
        if msg.value < sub_27e911cd:
            revert with 0, 'Not enough tips'
        idx = 0
        s = 0
        while arg2.length > uint8(idx):
            require uint8(idx) < arg2.length
            require uint8(idx) < arg3.length
            _189 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
            mem[mem[64] + 100] = cd[((32 * uint8(idx)) + arg3 + 36)]
            _190 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_190 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_190 + 36 len 28]
            mem[64] = _189 + 196
            mem[_189 + 132] = 32
            mem[_189 + 164] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(arg1):
                revert with 0, 'Address: call to non-contract'
            _203 = mem[_190]
            u = _190 + 32
            v = mem[64]
            t = mem[_190]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[mem[64] + floor32(mem[_190])] = mem[_190 + floor32(mem[_190]) + -(mem[_190] % 32) + 64 len mem[_190] % 32] or Mask(8 * -(mem[_190] % 32) + 32, -(8 * -(mem[_190] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_190])])
            call arg1.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _203 + _189 + -mem[64] + 192]
            if not return_data.size:
                if ext_call.success:
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    require uint8(idx) < arg3.length
                    if cd[((32 * uint8(idx)) + arg3 + 36)] + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = cd[((32 * uint8(idx)) + arg3 + 36)] + s
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_189 + 132]
                _289 = mem[_189 + 132]
                if not mem[_189 + 132]:
                    if not mem[_189 + 132] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[_189 + 132] + 32]
                    mem[floor32(mem[_189 + 132]) + mem[64] + 68] = mem[floor32(mem[_189 + 132]) + mem[64] + -(mem[_189 + 132] % 32) + 100 len mem[_189 + 132] % 32]
                else:
                    mem[mem[64] + 68] = mem[_189 + 164]
                    idx = 32
                    while idx < _289:
                        mem[idx + mem[64] + 68] = mem[idx + _189 + 164]
                        idx = idx + 32
                        continue 
                    if not _289 % 32:
                        revert with 0, 32, mem[mem[64] + 36 len _289 + 32]
                    mem[floor32(_289) + mem[64] + 68] = mem[floor32(_289) + mem[64] + -(_289 % 32) + 100 len _289 % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_289) + 64]
            _276 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_276] = return_data.size
            mem[_276 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_276 + 32]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                require uint8(idx) < arg3.length
                if cd[((32 * uint8(idx)) + arg3 + 36)] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = cd[((32 * uint8(idx)) + arg3 + 36)] + s
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _291 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_189 + 132]
            _293 = mem[_189 + 132]
            if not mem[_189 + 132]:
                if not mem[_189 + 132] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_189 + 132] + 32]
                mem[floor32(mem[_189 + 132]) + mem[64] + 68] = mem[floor32(mem[_189 + 132]) + mem[64] + -(mem[_189 + 132] % 32) + 100 len mem[_189 + 132] % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_293) + 64]
            mem[mem[64] + 68] = mem[_189 + 164]
            idx = 32
            while idx < _293:
                mem[idx + mem[64] + 68] = mem[idx + _189 + 164]
                idx = idx + 32
                continue 
            if not _293 % 32:
                revert with memory
                  from mem[64]
                   len _293 + _291 + -mem[64] + 68
            mem[floor32(_293) + _291 + 68] = mem[floor32(_293) + _291 + -(_293 % 32) + 100 len _293 % 32]
            revert with memory
              from mem[64]
               len floor32(_293) + _291 + -mem[64] + 100
    else:
        if msg.value < cd[((32 * uint8(None)) + arg3 + 36)] * None:
            revert with 0, 'Not enough amount'
        if sub_27e911cd + (cd[((32 * uint8(None)) + arg3 + 36)] * None) < cd[((32 * uint8(None)) + arg3 + 36)] * None:
            revert with 0, 'SafeMath: addition overflow'
        if msg.value < sub_27e911cd + (cd[((32 * uint8(None)) + arg3 + 36)] * None):
            revert with 0, 'Not enough tips'
        idx = 0
        s = msg.value
        while idx < arg2.length:
            require idx < arg3.length
            require s >= cd[((32 * idx) + arg3 + 36)]
            require idx < arg3.length
            _193 = mem[64]
            mem[64] = mem[64] + 64
            mem[_193] = 30
            mem[_193 + 32] = 'SafeMath: subtraction overflow'
            if cd[((32 * idx) + arg3 + 36)] > s:
                _194 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _194 + 68] = mem[idx + _193 + 32]
                    idx = idx + 32
                    continue 
                mem[_194 + 68] = mem[_194 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _194 + -mem[64] + 100
            require idx < arg2.length
            require idx < arg3.length
            _206 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            _207 = mem[_206]
            u = _206 + 32
            v = _206 + 32
            t = mem[_206]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[_206 + floor32(mem[_206]) + 32] = mem[_206 + floor32(mem[_206]) + -(mem[_206] % 32) + 64 len mem[_206] % 32] or Mask(8 * -(mem[_206] % 32) + 32, -(8 * -(mem[_206] % 32) + 32) + 256, mem[_206 + floor32(mem[_206]) + 32])
            call address(cd[((32 * idx) + arg2 + 36)]).mem[mem[64] len 4] with:
               value cd[((32 * idx) + arg3 + 36)] wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _207 + _206 + -mem[64] + 28]
            if return_data.size:
                _277 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_277] = return_data.size
                mem[_277 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Transfer failed.'
            idx = idx + 1
            s = s - cd[((32 * idx) + arg3 + 36)]
            continue 
    emit Multisended(cd[((32 * uint8(None)) + arg3 + 36)] * None, arg1);
}



}
