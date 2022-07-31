contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 lastReleasedAt;
address aAddress;
uint256 totalShares;
mapping of uint256 shares;
array of struct payees;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function a() payable {
    return aAddress
}

function totalShares() payable {
    return totalShares
}

function lastReleasedAt() payable {
    return lastReleasedAt
}

function payees(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < payees.length
    return payees[arg1].field_0
}

function shares(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[arg1]
}

function _fallback() payable {
    revert
}

function getPayees() payable {
    mem[64] = (32 * payees.length) + 128
    mem[96] = payees.length
    if not payees.length:
        mem[(32 * payees.length) + 128] = 32
        mem[(32 * payees.length) + 160] = payees.length
        idx = 0
        s = (32 * payees.length) + 192
        t = 128
        while idx < payees.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * payees.length) + 128
           len (96 * payees.length) + 64
    mem[128] = address(payees.field_0)
    idx = 128
    s = 0
    while (32 * payees.length) + 96 > idx:
        mem[idx + 32] = payees[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * payees.length) + 128] = 32
    mem[(32 * payees.length) + 160] = payees.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < payees.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * payees.length) + -mem[64] + 192
}

function release() payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(aAddress)
    staticcall aAddress.0xf2f4eb26 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).state() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).availableIncome() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'income is 0'
    if not payees.length:
        revert with 0, 'Payees not configured yet'
    lastReleasedAt = block.timestamp
    idx = 0
    while idx < payees.length:
        mem[0] = payees[idx].field_0
        mem[32] = 4
        if not ext_call.return_data[0]:
            if totalShares <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalShares
            require ext_code.size(aAddress)
            staticcall aAddress.0x16d8a5a9 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _55 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _57 = mem[_55]
            require mem[_55] == mem[_55 + 12 len 20]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = payees[idx].field_0
            mem[mem[64] + 36] = 0 / totalShares
            require ext_code.size(address(_57))
            call address(_57).0x40c10f19 with:
                 gas gas_remaining wei
                args payees[idx].field_0, 0 / totalShares
        else:
            if shares[stor5[idx].field_0] * ext_call.return_data[0] / ext_call.return_data[0] != shares[stor5[idx].field_0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if totalShares <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalShares
            require ext_code.size(aAddress)
            staticcall aAddress.0x16d8a5a9 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _56 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _58 = mem[_56]
            require mem[_56] == mem[_56 + 12 len 20]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = payees[idx].field_0
            mem[mem[64] + 36] = shares[stor5[idx].field_0] * ext_call.return_data[0] / totalShares
            require ext_code.size(address(_58))
            call address(_58).0x40c10f19 with:
                 gas gas_remaining wei
                args payees[idx].field_0, shares[stor5[idx].field_0] * ext_call.return_data[0] / totalShares
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    emit FeeReleased(ext_call.return_data[0], lastReleasedAt);
    stor0 = 1
}

function changePayees(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 160 >= 128 and (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307()
    mem[(32 * arg1.length) + 128] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(ext_call.return_data[12 len 20])
    staticcall ext_call.return_data[12 len 20].0xec87621c with:
            gas gas_remaining wei
    mem[(32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 196] = msg.sender
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x91d14854 with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender
    mem[(32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Caller is not Manager'
    if arg1.length != arg2.length:
        revert with 0, 'Payees and shares mismatched'
    if arg1.length <= 0:
        revert with 0, 'No payees'
    require ext_code.size(aAddress)
    staticcall aAddress.0xf2f4eb26 with:
            gas gas_remaining wei
    mem[(32 * arg1.length) + (32 * arg2.length) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(ext_call.return_data[12 len 20])
    staticcall ext_call.return_data[12 len 20].state() with:
            gas gas_remaining wei
    mem[(32 * arg1.length) + (32 * arg2.length) + (7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(ext_call.return_data[12 len 20])
    staticcall ext_call.return_data[12 len 20].availableIncome() with:
            gas gas_remaining wei
    mem[(32 * arg1.length) + (32 * arg2.length) + (8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        idx = 0
        while idx < payees.length:
            mem[0] = payees[idx].field_0
            mem[32] = 4
            shares[stor5[idx].field_0] = 0
            idx = idx + 1
            continue 
        payees.length = 0
        idx = 0
        while payees.length > idx:
            payees[idx].field_0 = 0
            idx = idx + 1
            continue 
        totalShares = 0
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg2.length
            _553 = mem[(32 * idx) + (32 * arg1.length) + 160]
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'payee is the zero address'
            if mem[(32 * idx) + (32 * arg1.length) + 160] <= 0:
                revert with 0, 'shares are 0'
            if shares[mem[(32 * idx) + 140 len 20]]:
                revert with 0, 'payee already has shares'
            payees.length++
            stor36B6[stor5.length] = mem[(32 * idx) + 140 len 20]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 4
            shares[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160]
            if mem[(32 * idx) + (32 * arg1.length) + 160] + totalShares < totalShares:
                revert with 0, 'SafeMath: addition overflow'
            totalShares += mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + (10 * ceil32(return_data.size)) + 160] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + (10 * ceil32(return_data.size)) + 192] = _553
            emit PayeeAdded(mem[(32 * arg1.length) + (32 * arg2.length) + (10 * ceil32(return_data.size)) + 160], _553);
            idx = idx + 1
            continue 
    else:
        if not payees.length:
            idx = 0
            while idx < payees.length:
                mem[0] = payees[idx].field_0
                mem[32] = 4
                shares[stor5[idx].field_0] = 0
                idx = idx + 1
                continue 
            payees.length = 0
            idx = 0
            while payees.length > idx:
                payees[idx].field_0 = 0
                idx = idx + 1
                continue 
            totalShares = 0
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                require idx < arg2.length
                _554 = mem[(32 * idx) + (32 * arg1.length) + 160]
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'payee is the zero address'
                if mem[(32 * idx) + (32 * arg1.length) + 160] <= 0:
                    revert with 0, 'shares are 0'
                if shares[mem[(32 * idx) + 140 len 20]]:
                    revert with 0, 'payee already has shares'
                payees.length++
                stor36B6[stor5.length] = mem[(32 * idx) + 140 len 20]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 4
                shares[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160]
                if mem[(32 * idx) + (32 * arg1.length) + 160] + totalShares < totalShares:
                    revert with 0, 'SafeMath: addition overflow'
                totalShares += mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[(32 * arg1.length) + (32 * arg2.length) + (10 * ceil32(return_data.size)) + 160] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg1.length) + (32 * arg2.length) + (10 * ceil32(return_data.size)) + 192] = _554
                emit PayeeAdded(mem[(32 * arg1.length) + (32 * arg2.length) + (10 * ceil32(return_data.size)) + 160], _554);
                idx = idx + 1
                continue 
        else:
            if stor0 == 2:
                revert with 0, 'ReentrancyGuard: reentrant call'
            stor0 = 2
            require ext_code.size(aAddress)
            staticcall aAddress.0xf2f4eb26 with:
                    gas gas_remaining wei
            mem[(32 * arg1.length) + (32 * arg2.length) + (10 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(ext_call.return_data[12 len 20])
            staticcall ext_call.return_data[12 len 20].state() with:
                    gas gas_remaining wei
            mem[(32 * arg1.length) + (32 * arg2.length) + (11 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(ext_call.return_data[12 len 20])
            staticcall ext_call.return_data[12 len 20].availableIncome() with:
                    gas gas_remaining wei
            mem[(32 * arg1.length) + (32 * arg2.length) + (12 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg1.length) + (32 * arg2.length) + (13 * ceil32(return_data.size)) + 160
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0, 'income is 0'
            if not payees.length:
                revert with 0, 'Payees not configured yet'
            lastReleasedAt = block.timestamp
            idx = 0
            while idx < payees.length:
                mem[0] = payees[idx].field_0
                mem[32] = 4
                if not ext_call.return_data[0]:
                    if totalShares <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalShares
                    require ext_code.size(aAddress)
                    staticcall aAddress.0x16d8a5a9 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _445 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _460 = mem[_445]
                    require mem[_445] == mem[_445 + 12 len 20]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = payees[idx].field_0
                    mem[mem[64] + 36] = 0 / totalShares
                    require ext_code.size(address(_460))
                    call address(_460).0x40c10f19 with:
                         gas gas_remaining wei
                        args payees[idx].field_0, 0 / totalShares
                else:
                    if shares[stor5[idx].field_0] * ext_call.return_data[0] / ext_call.return_data[0] != shares[stor5[idx].field_0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if totalShares <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalShares
                    require ext_code.size(aAddress)
                    staticcall aAddress.0x16d8a5a9 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _459 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _468 = mem[_459]
                    require mem[_459] == mem[_459 + 12 len 20]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = payees[idx].field_0
                    mem[mem[64] + 36] = shares[stor5[idx].field_0] * ext_call.return_data[0] / totalShares
                    require ext_code.size(address(_468))
                    call address(_468).0x40c10f19 with:
                         gas gas_remaining wei
                        args payees[idx].field_0, shares[stor5[idx].field_0] * ext_call.return_data[0] / totalShares
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = ext_call.return_data[0]
            mem[mem[64] + 32] = lastReleasedAt
            emit FeeReleased(ext_call.return_data[0], lastReleasedAt);
            stor0 = 1
            idx = 0
            while idx < payees.length:
                mem[0] = payees[idx].field_0
                mem[32] = 4
                shares[stor5[idx].field_0] = 0
                idx = idx + 1
                continue 
            payees.length = 0
            mem[0] = 5
            idx = 0
            while payees.length > idx:
                payees[idx].field_0 = 0
                idx = idx + 1
                continue 
            totalShares = 0
            _596 = mem[96]
            idx = 0
            while idx < _596:
                require idx < mem[96]
                require idx < mem[(32 * arg1.length) + 128]
                _600 = mem[(32 * idx) + (32 * arg1.length) + 160]
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'payee is the zero address'
                if mem[(32 * idx) + (32 * arg1.length) + 160] <= 0:
                    revert with 0, 'shares are 0'
                if shares[mem[(32 * idx) + 140 len 20]]:
                    revert with 0, 'payee already has shares'
                payees.length++
                stor36B6[stor5.length] = mem[(32 * idx) + 140 len 20]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 4
                shares[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160]
                if mem[(32 * idx) + (32 * arg1.length) + 160] + totalShares < totalShares:
                    revert with 0, 'SafeMath: addition overflow'
                totalShares += mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[mem[64]] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 32] = _600
                emit PayeeAdded(mem[mem[64]], _600);
                _596 = mem[96]
                idx = idx + 1
                continue 
}



}
