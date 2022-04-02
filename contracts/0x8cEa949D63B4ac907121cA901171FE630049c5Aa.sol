contract main {




// =====================  Runtime code  =====================


array of struct stor0;
address governanceAddress;
address pendingGovernanceAddress;

function governance() payable {
    return governanceAddress
}

function pendingGovernance() payable {
    return pendingGovernanceAddress
}

function _fallback() payable {
    revert
}

function acceptGovernance() payable {
    require msg.sender == pendingGovernanceAddress
    governanceAddress = pendingGovernanceAddress
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == governanceAddress
    pendingGovernanceAddress = arg1
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
        if governanceAddress != msg.sender:
            revert with 0, '!authorized'
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
            _234 = mem[64]
            mem[64] = mem[64] + 64
            mem[_234] = stor0[address(arg1)][idx].field_0
            mem[_234 + 32] = stor0[address(arg1)][idx].field_256
            mem[s] = _234
            s = s + 32
            idx = idx + 1
            continue 
        _455 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _455 - 1:
            require idx < mem[(2 * ceil32(return_data.size)) + 96]
            _462 = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]]
            require idx < mem[(2 * ceil32(return_data.size)) + 96]
            _466 = mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 32]
            if not ext_call.return_data[0]:
                _471 = mem[64]
                mem[64] = mem[64] + 64
                mem[_471] = 26
                mem[_471 + 32] = 'SafeMath: division by zero'
                _481 = mem[64]
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = address(_462)
                mem[mem[64] + 100] = 0
                _483 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_483 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_483 + 36 len 28]
                mem[64] = _481 + 196
                mem[_481 + 132] = 32
                mem[_481 + 164] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                _516 = mem[_483]
                s = 0
                while s < _516:
                    mem[s + _481 + 196] = mem[s + _483 + 32]
                    _455 = mem[(2 * ceil32(return_data.size)) + 96]
                    s = s + 32
                    continue 
                if ceil32(_516) > _516:
                    mem[_516 + _481 + 196] = 0
                call address(ext_call.return_data[0]).mem[_481 + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[_481 + 200 len _516 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_481 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_481 + 200] = 32
                        mem[_481 + 232] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _481 + 264] = mem[idx + _481 + 164]
                            _455 = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_481 + 264]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _481 + ceil32(return_data.size) + 197
                    mem[_481 + 196] = return_data.size
                    mem[_481 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_481 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_481 + ceil32(return_data.size) + 201] = 32
                        mem[_481 + ceil32(return_data.size) + 233] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _481 + ceil32(return_data.size) + 265] = mem[idx + _481 + 164]
                            _455 = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_481 + ceil32(return_data.size) + 265]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_481 + 228] == bool(mem[_481 + 228])
                        if not mem[_481 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 32] * ext_call.return_data[0] / ext_call.return_data[0] != mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] + 32]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _473 = mem[64]
                mem[64] = mem[64] + 64
                mem[_473] = 26
                mem[_473 + 32] = 'SafeMath: division by zero'
                _482 = mem[64]
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = address(_462)
                mem[mem[64] + 100] = _466 * ext_call.return_data[0] / 1000
                _490 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_490 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_490 + 36 len 28]
                mem[64] = _482 + 196
                mem[_482 + 132] = 32
                mem[_482 + 164] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                _530 = mem[_490]
                s = 0
                while s < _530:
                    mem[s + _482 + 196] = mem[s + _490 + 32]
                    _455 = mem[(2 * ceil32(return_data.size)) + 96]
                    s = s + 32
                    continue 
                if ceil32(_530) > _530:
                    mem[_530 + _482 + 196] = 0
                call address(ext_call.return_data[0]).mem[_482 + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[_482 + 200 len _530 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_482 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_482 + 200] = 32
                        mem[_482 + 232] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _482 + 264] = mem[idx + _482 + 164]
                            _455 = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_482 + 264]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _482 + ceil32(return_data.size) + 197
                    mem[_482 + 196] = return_data.size
                    mem[_482 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_482 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_482 + ceil32(return_data.size) + 201] = 32
                        mem[_482 + ceil32(return_data.size) + 233] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _482 + ceil32(return_data.size) + 265] = mem[idx + _482 + 164]
                            _455 = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_482 + ceil32(return_data.size) + 265]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_482 + 228] == bool(mem[_482 + 228])
                        if not mem[_482 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            _455 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
        require mem[(2 * ceil32(return_data.size)) + 96] - 1 < mem[(2 * ceil32(return_data.size)) + 96]
        _460 = mem[mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (2 * ceil32(return_data.size)) + 128]]
        _464 = mem[64]
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = address(_460)
        mem[mem[64] + 100] = ext_call.return_data[0]
        _467 = mem[64]
        mem[mem[64]] = 100
        mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
        mem[64] = mem[64] + 196
        mem[_464 + 132] = 32
        mem[_464 + 164] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        _477 = mem[_467]
        mem[_464 + 196 len ceil32(mem[_467])] = mem[_467 + 32 len ceil32(mem[_467])]
        if ceil32(_477) > _477:
            mem[_477 + _464 + 196] = 0
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args mem[_464 + 200 len _477 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                var59001 = 32
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_464 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                var59001 = 32
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_464 + 228] == bool(mem[_464 + 228])
                if not mem[_464 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Distribute(ext_call.return_data[0], arg1);
}

function sub_877d707f(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0xfbfa77cf with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _235 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _236 = mem[_235]
        require mem[_235] == mem[_235 + 12 len 20]
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(address(_236))
        staticcall address(_236).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _239 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _240 = mem[_239]
        if mem[_239] > 1000:
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 0
            _242 = mem[64]
            mem[64] = mem[64] + (32 * stor0[address(cd[((32 * idx) + cd[4] + 36)])].field_0) + 32
            mem[_242] = stor0[address(cd[((32 * idx) + cd[4] + 36)])].field_0
            s = _242 + 32
            t = 0
            while t < stor0[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                mem[0] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0)
                _466 = mem[64]
                mem[64] = mem[64] + 64
                mem[_466] = stor0[address(cd[((32 * idx) + cd[4] + 36)])][t].field_0
                mem[_466 + 32] = stor0[address(cd[((32 * idx) + cd[4] + 36)])][t].field_256
                mem[s] = _466
                s = s + 32
                t = t + 1
                continue 
            _687 = mem[_242]
            s = 0
            while s < _687 - 1:
                require s < mem[_242]
                _694 = mem[mem[(32 * s) + _242 + 32]]
                require s < mem[_242]
                _698 = mem[mem[(32 * s) + _242 + 32] + 32]
                if not _240:
                    _703 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_703] = 26
                    mem[_703 + 32] = 'SafeMath: division by zero'
                    _713 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 68] = address(_694)
                    mem[mem[64] + 100] = 0
                    _715 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_715 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_715 + 36 len 28]
                    mem[64] = _713 + 196
                    mem[_713 + 132] = 32
                    mem[_713 + 164] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_236)):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(_236)):
                        revert with 0, 'Address: call to non-contract'
                    _748 = mem[_715]
                    idx = 0
                    while idx < _748:
                        mem[idx + _713 + 196] = mem[idx + _715 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_748) > _748:
                        mem[_748 + _713 + 196] = 0
                    call address(_236).mem[_713 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_713 + 200 len _748 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_713 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_713 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _713 + 264] = mem[idx + _713 + 164]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_713 + 264]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _713 + ceil32(return_data.size) + 197
                        mem[_713 + 196] = return_data.size
                        mem[_713 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_713 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_713 + ceil32(return_data.size) + 201] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _713 + ceil32(return_data.size) + 265] = mem[idx + _713 + 164]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_713 + ceil32(return_data.size) + 265]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_713 + 228] == bool(mem[_713 + 228])
                            if not mem[_713 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if mem[mem[(32 * s) + _242 + 32] + 32] * _240 / _240 != mem[mem[(32 * s) + _242 + 32] + 32]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _705 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_705] = 26
                    mem[_705 + 32] = 'SafeMath: division by zero'
                    _714 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 68] = address(_694)
                    mem[mem[64] + 100] = _698 * _240 / 1000
                    _722 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_722 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_722 + 36 len 28]
                    mem[64] = _714 + 196
                    mem[_714 + 132] = 32
                    mem[_714 + 164] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_236)):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(_236)):
                        revert with 0, 'Address: call to non-contract'
                    _762 = mem[_722]
                    idx = 0
                    while idx < _762:
                        mem[idx + _714 + 196] = mem[idx + _722 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_762) > _762:
                        mem[_762 + _714 + 196] = 0
                    call address(_236).mem[_714 + 196 len 4] with:
                         gas gas_remaining wei
                        args mem[_714 + 200 len _762 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_714 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_714 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _714 + 264] = mem[idx + _714 + 164]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_714 + 264]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _714 + ceil32(return_data.size) + 197
                        mem[_714 + 196] = return_data.size
                        mem[_714 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_714 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_714 + ceil32(return_data.size) + 201] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _714 + ceil32(return_data.size) + 265] = mem[idx + _714 + 164]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_714 + ceil32(return_data.size) + 265]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_714 + 228] == bool(mem[_714 + 228])
                            if not mem[_714 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                s = s + 1
                continue 
            require mem[_242] - 1 < mem[_242]
            _692 = mem[mem[(32 * mem[_242] - 1) + _242 + 32]]
            _696 = mem[64]
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 68] = address(_692)
            mem[mem[64] + 100] = _240
            _699 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_699 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_699 + 36 len 28]
            mem[64] = _696 + 196
            mem[_696 + 132] = 32
            mem[_696 + 164] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(_236)):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(_236)):
                revert with 0, 'Address: call to non-contract'
            _709 = mem[_699]
            s = 0
            while s < _709:
                mem[s + _696 + 196] = mem[s + _699 + 32]
                s = s + 32
                continue 
            if ceil32(_709) > _709:
                mem[_709 + _696 + 196] = 0
            call address(_236).mem[_696 + 196 len 4] with:
                 gas gas_remaining wei
                args mem[_696 + 200 len _709 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_696 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_696 + 200] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _696 + 264] = mem[idx + _696 + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_696 + 264]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_696 + 196] = _240
            else:
                mem[64] = _696 + ceil32(return_data.size) + 197
                mem[_696 + 196] = return_data.size
                mem[_696 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_696 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_696 + ceil32(return_data.size) + 201] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _696 + ceil32(return_data.size) + 265] = mem[idx + _696 + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_696 + ceil32(return_data.size) + 265]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_696 + 228] == bool(mem[_696 + 228])
                    if not mem[_696 + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_696 + ceil32(return_data.size) + 197] = _240
            emit Distribute(_240, address(cd[((32 * idx) + cd[4] + 36)]));
        idx = idx + 1
        continue 
}



}
