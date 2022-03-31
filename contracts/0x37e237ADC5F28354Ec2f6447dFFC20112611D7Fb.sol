contract main {




// =====================  Runtime code  =====================


array of struct stor0;
address sub_0ed820efAddress;
address sub_345e9cd6Address;

function sub_0ed820ef(?) payable {
    return sub_0ed820efAddress
}

function sub_345e9cd6(?) payable {
    return sub_345e9cd6Address
}

function _fallback() payable {
    revert
}

function acceptStratMs() payable {
    require msg.sender == sub_345e9cd6Address
    sub_0ed820efAddress = sub_345e9cd6Address
}

function changeStratMs(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == sub_0ed820efAddress
    sub_345e9cd6Address = arg1
}

function sub_259ddefc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < stor0[arg1].field_0
    return stor0[arg1][arg2].field_0, stor0[arg1][arg2].field_256
}

function checkBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0xfbfa77cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function viewContributors(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 0
    mem[64] = (32 * stor0[address(arg1)].field_0) + 128
    mem[96] = stor0[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor0[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 0)
        _12 = mem[64]
        mem[64] = mem[64] + 64
        mem[_12] = stor0[address(arg1)][idx].field_0
        mem[_12 + 32] = stor0[address(arg1)][idx].field_256
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    _14 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _14:
        _19 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_19 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _13 + (64 * _14) + -mem[64] + 64
}

function sub_ab32256b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if ('cd', 68).length != ('cd', 36).length:
        revert with 0, 'length not the same'
    if not stor0[address(cd[4])].field_0:
        mem[32] = 0
        stor0[address(cd[4])].field_0 = 0
        idx = 0
        while 2 * stor0[address(cd[4])].field_0 > idx:
            stor0[address(cd[4])][idx].field_0 = 0
            stor0[address(cd[4])][idx].field_256 = 0
            idx = idx + 2
            continue 
        idx = 0
        s = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            if cd[((32 * idx) + cd[68] + 36)] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(cd[4])
            mem[32] = 0
            _55 = mem[64]
            mem[64] = mem[64] + 64
            require idx < ('cd', 36).length
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[_55] = address(cd[((32 * idx) + cd[36] + 36)])
            require idx < ('cd', 68).length
            mem[_55 + 32] = cd[((32 * idx) + cd[68] + 36)]
            stor0[address(cd[4])].field_0++
            mem[0] = sha3(address(cd[4]), 0)
            stor0[address(cd[4])][stor0[address(cd[4])].field_0].field_0 = address(cd[((32 * idx) + cd[36] + 36)])
            stor0[address(cd[4])][stor0[address(cd[4])].field_0].field_256 = cd[((32 * idx) + cd[68] + 36)]
            idx = idx + 1
            s = cd[((32 * idx) + cd[68] + 36)] + s
            continue 
        if cd[((32 * ('cd', 36).length) + cd[68] + 36)] * ('cd', 36).length > 1000:
            revert with 0, 'share total more than 100%'
        _46 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = ('cd', 36).length
        idx = 0
        s = mem[64] + 96
        t = cd[36] + 36
        while idx < ('cd', 36).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_46 + 32] = (32 * ('cd', 36).length) + 96
        mem[_46 + (32 * ('cd', 36).length) + 96] = ('cd', 68).length
        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[_46 + (32 * ('cd', 36).length) + 128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_46 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 128] = 0
        emit ContributorsSet(address rg1, address[] rg2, uint256[] rg3):
                             mem[mem[64] len _46 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + -mem[64] + 128],
                             address(cd[4]),
    else:
        if sub_0ed820efAddress != msg.sender:
            revert with 0, 'Only Strat MS can overwrite'
        mem[32] = 0
        stor0[address(cd[4])].field_0 = 0
        idx = 0
        while 2 * stor0[address(cd[4])].field_0 > idx:
            stor0[address(cd[4])][idx].field_0 = 0
            stor0[address(cd[4])][idx].field_256 = 0
            idx = idx + 2
            continue 
        idx = 0
        s = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            if cd[((32 * idx) + cd[68] + 36)] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(cd[4])
            mem[32] = 0
            _58 = mem[64]
            mem[64] = mem[64] + 64
            require idx < ('cd', 36).length
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[_58] = address(cd[((32 * idx) + cd[36] + 36)])
            require idx < ('cd', 68).length
            mem[_58 + 32] = cd[((32 * idx) + cd[68] + 36)]
            stor0[address(cd[4])].field_0++
            mem[0] = sha3(address(cd[4]), 0)
            stor0[address(cd[4])][stor0[address(cd[4])].field_0].field_0 = address(cd[((32 * idx) + cd[36] + 36)])
            stor0[address(cd[4])][stor0[address(cd[4])].field_0].field_256 = cd[((32 * idx) + cd[68] + 36)]
            idx = idx + 1
            s = cd[((32 * idx) + cd[68] + 36)] + s
            continue 
        if cd[((32 * ('cd', 36).length) + cd[68] + 36)] * ('cd', 36).length > 1000:
            revert with 0, 'share total more than 100%'
        _48 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = ('cd', 36).length
        idx = 0
        s = mem[64] + 96
        t = cd[36] + 36
        while idx < ('cd', 36).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_48 + 32] = (32 * ('cd', 36).length) + 96
        mem[_48 + (32 * ('cd', 36).length) + 96] = ('cd', 68).length
        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[_48 + (32 * ('cd', 36).length) + 128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_48 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 128] = 0
        emit ContributorsSet(address rg1, address[] rg2, uint256[] rg3):
                             mem[mem[64] len _48 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + -mem[64] + 128],
                             address(cd[4]),
}

function distribute(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0xfbfa77cf with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = arg1
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 1000:
        mem[0] = arg1
        mem[32] = 0
        mem[64] = (2 * ceil32(return_data.size)) + (32 * stor0[address(arg1)].field_0) + 128
        mem[(2 * ceil32(return_data.size)) + 96] = stor0[address(arg1)].field_0
        s = (2 * ceil32(return_data.size)) + 128
        idx = 0
        while idx < stor0[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 0)
            _230 = mem[64]
            mem[64] = mem[64] + 64
            mem[_230] = stor0[address(arg1)][idx].field_0
            mem[_230 + 32] = stor0[address(arg1)][idx].field_256
            mem[s] = _230
            s = s + 32
            idx = idx + 1
            continue 
        _447 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _447:
            require idx < mem[(2 * ceil32(return_data.size)) + 96]
            _451 = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]]
            require idx < mem[(2 * ceil32(return_data.size)) + 96]
            _454 = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 32]
            if not ext_call.return_data[0]:
                _459 = mem[64]
                mem[64] = mem[64] + 64
                mem[_459] = 26
                mem[_459 + 32] = 'SafeMath: division by zero'
                _469 = mem[64]
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = address(_451)
                mem[mem[64] + 100] = 0
                _473 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_473 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_473 + 36 len 28]
                mem[64] = _469 + 196
                mem[_469 + 132] = 32
                mem[_469 + 164] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                _508 = mem[_473]
                s = 0
                while s < _508:
                    mem[s + _469 + 196] = mem[s + _473 + 32]
                    _447 = mem[(2 * ceil32(return_data.size)) + 96]
                    s = s + 32
                    continue 
                if ceil32(_508) > _508:
                    mem[_508 + _469 + 196] = 0
                call address(ext_call.return_data[0]).mem[_469 + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[_469 + 200 len _508 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_469 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_469 + 200] = 32
                        mem[_469 + 232] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _469 + 264] = mem[idx + _469 + 164]
                            _447 = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_469 + 264]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _469 + ceil32(return_data.size) + 197
                    mem[_469 + 196] = return_data.size
                    mem[_469 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_469 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_469 + ceil32(return_data.size) + 201] = 32
                        mem[_469 + ceil32(return_data.size) + 233] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _469 + ceil32(return_data.size) + 265] = mem[idx + _469 + 164]
                            _447 = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_469 + ceil32(return_data.size) + 265]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_469 + 228] == bool(mem[_469 + 228])
                        if not mem[_469 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 32] * ext_call.return_data[0] / ext_call.return_data[0] != mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 32]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _464 = mem[64]
                mem[64] = mem[64] + 64
                mem[_464] = 26
                mem[_464 + 32] = 'SafeMath: division by zero'
                _472 = mem[64]
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = address(_451)
                mem[mem[64] + 100] = _454 * ext_call.return_data[0] / 1000
                _478 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_478 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_478 + 36 len 28]
                mem[64] = _472 + 196
                mem[_472 + 132] = 32
                mem[_472 + 164] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                _526 = mem[_478]
                s = 0
                while s < _526:
                    mem[s + _472 + 196] = mem[s + _478 + 32]
                    _447 = mem[(2 * ceil32(return_data.size)) + 96]
                    s = s + 32
                    continue 
                if ceil32(_526) > _526:
                    mem[_526 + _472 + 196] = 0
                call address(ext_call.return_data[0]).mem[_472 + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[_472 + 200 len _526 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_472 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_472 + 200] = 32
                        mem[_472 + 232] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _472 + 264] = mem[idx + _472 + 164]
                            _447 = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_472 + 264]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _472 + ceil32(return_data.size) + 197
                    mem[_472 + 196] = return_data.size
                    mem[_472 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_472 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_472 + ceil32(return_data.size) + 201] = 32
                        mem[_472 + ceil32(return_data.size) + 233] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _472 + ceil32(return_data.size) + 265] = mem[idx + _472 + 164]
                            _447 = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_472 + ceil32(return_data.size) + 265]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_472 + 228] == bool(mem[_472 + 228])
                        if not mem[_472 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            _447 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        _449 = mem[64]
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = sub_0ed820efAddress
        mem[mem[64] + 100] = ext_call.return_data[0]
        _455 = mem[64]
        mem[mem[64]] = 100
        mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
        mem[64] = mem[64] + 196
        mem[_449 + 132] = 32
        mem[_449 + 164] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        _465 = mem[_455]
        mem[_449 + 196 len ceil32(mem[_455])] = mem[_455 + 32 len ceil32(mem[_455])]
        if ceil32(_465) > _465:
            mem[_465 + _449 + 196] = 0
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args mem[_449 + 200 len _465 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_449 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_449 + 228] == bool(mem[_449 + 228])
                if not mem[_449 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Distribute(ext_call.return_data[0], arg1);
}



}
