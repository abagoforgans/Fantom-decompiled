contract main {




// =====================  Runtime code  =====================


const sub_2a335ec7(?) = 0x6470c8a650de57a748a35998e2ced604dd50e958

const sub_712fd9a4(?) = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb

const sub_fe31aa80(?) = 0xc600d41b9c7656e60c0bf76d79b1532b4770d0c


array of struct _owners;
mapping of address sub_59ab7f84;
array of uint256 stor2;

function sub_59ab7f84(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_59ab7f84[arg1]
}

function _owners(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < _owners.length
    return _owners[arg1].field_0
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    idx = 0
    while idx < _owners.length:
        mem[0] = 0
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function sub_3f25a1be(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor2.length:
        require idx < stor2.length
        mem[0] = 2
        if stor2[idx] != arg1:
            idx = idx + 1
            continue 
        return idx
    return -1
}

function sub_4bc9518d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor2.length:
        require idx < stor2.length
        mem[0] = 2
        if stor2[idx] != arg1:
            idx = idx + 1
            continue 
        if idx != -1:
            return 1
        else:
            return 0
    return 0
}

function sub_65706a78(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < _owners.length:
        mem[0] = 0
        if _owners[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
        call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_59ab7f84[arg1], arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
        call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), sub_59ab7f84[arg1], arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only available to contract owners.'
}

function getOwners() payable {
    mem[64] = (32 * _owners.length) + 128
    mem[96] = _owners.length
    if not _owners.length:
        mem[(32 * _owners.length) + 128] = 32
        mem[(32 * _owners.length) + 160] = _owners.length
        idx = 0
        s = 128
        t = (32 * _owners.length) + 192
        while idx < _owners.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * _owners.length) + 128
           len (96 * _owners.length) + 64
    mem[128] = address(_owners.field_0)
    idx = 128
    s = 0
    while (32 * _owners.length) + 96 > idx:
        mem[idx + 32] = _owners[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * _owners.length) + 128] = 32
    mem[(32 * _owners.length) + 160] = _owners.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _owners.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * _owners.length) + -mem[64] + 192
}

function setOwners(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    s = 0
    while arg1.length < _owners.length:
        mem[0] = 0
        if _owners[arg1.length].field_0 != msg.sender:
            s = arg1.length + 1
            continue 
        _owners.length = arg1.length
        if not arg1.length:
            idx = sha3(0)
            while sha3(0) + _owners.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = sha3(0)
            idx = 128
            while (32 * arg1.length) + 128 > idx:
                stor[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(0) + (Mask(251, 0, (32 * arg1.length) + 31) >> 5)
            while sha3(0) + _owners.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
    revert with 0, 'Only available to contract owners.'
}

function sub_38c8242d(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 1
    if sub_59ab7f84[arg1] != msg.sender:
        revert with 0, 'Sender is not owner...'
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        mem[mem[64] + 4] = stor2[idx]
        require ext_code.size(0x6470c8a650de57a748a35998e2ced604dd50e958)
        staticcall 0x6470c8a650de57a748a35998e2ced604dd50e958.getSummoner(uint256 arg1) with:
                gas gas_remaining wei
               args stor2[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _32 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _33 = mem[_32]
        require mem[_32] == mem[_32]
        if mem[_32] > 0:
            mem[mem[64] + 4] = mem[_32]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args _33
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _38 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_38] == mem[_38]
            if block.timestamp > mem[_38]:
                mem[mem[64]] = 0x81a1c99600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor2[idx]
                require ext_code.size(0x6470c8a650de57a748a35998e2ced604dd50e958)
                call 0x6470c8a650de57a748a35998e2ced604dd50e958.0x81a1c996 with:
                     gas gas_remaining wei
                    args stor2[idx]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
    call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
    call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_59ab7f84[arg1] = 0
    idx = 0
    while idx < stor2.length:
        require idx < stor2.length
        mem[0] = 2
        if stor2[idx] != arg1:
            idx = idx + 1
            continue 
        if idx != -1:
            require stor2.length - 1 < stor2.length
            require idx < stor2.length
            stor2[idx] = stor2[stor2.length]
            require stor2.length
            stor2[stor2.length] = 0
            stor2.length--
        emit 0xfe700fb2: arg1, msg.sender
    emit 0xfe700fb2: arg1, msg.sender
}

function sub_f0928914(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[32] = 1
    sub_59ab7f84[arg1] = msg.sender
    mem[100] = arg1
    require ext_code.size(0x6470c8a650de57a748a35998e2ced604dd50e958)
    staticcall 0x6470c8a650de57a748a35998e2ced604dd50e958.getSummoner(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'FUM has no summoner, not able to drop off...'
    mem[ceil32(return_data.size) + 96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = arg1
    require ext_code.size(0xc600d41b9c7656e60c0bf76d79b1532b4770d0c)
    call 0x0c600d41b9c7656e60c0bf76d79b1532b4770d0c.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor2.length++
    mem[0] = 2
    stor2[stor2.length] = arg1
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        mem[mem[64] + 4] = stor2[idx]
        require ext_code.size(0x6470c8a650de57a748a35998e2ced604dd50e958)
        staticcall 0x6470c8a650de57a748a35998e2ced604dd50e958.getSummoner(uint256 arg1) with:
                gas gas_remaining wei
               args stor2[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _28 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _29 = mem[_28]
        require mem[_28] == mem[_28]
        if mem[_28] > 0:
            mem[mem[64] + 4] = mem[_28]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args _29
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_33] == mem[_33]
            if block.timestamp > mem[_33]:
                mem[mem[64]] = 0x81a1c99600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor2[idx]
                require ext_code.size(0x6470c8a650de57a748a35998e2ced604dd50e958)
                call 0x6470c8a650de57a748a35998e2ced604dd50e958.0x81a1c996 with:
                     gas gas_remaining wei
                    args stor2[idx]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    emit 0x8a084a56: arg1, msg.sender
}



}
