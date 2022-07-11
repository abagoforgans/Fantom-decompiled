contract main {




// =====================  Runtime code  =====================


const sub_5e31e3a1(?) = ext_call.return_data[0]

const sub_7e147bc9(?) = ext_call.return_data[0]


address sub_ecd30301Address;
uint256 sub_63894dc7;
array of address stor2;
array of address stor3;

function sub_63894dc7(?) {
    return sub_63894dc7
}

function sub_ecd30301(?) {
    return sub_ecd30301Address
}

function _fallback() payable {
    revert
}

function sub_64c978a7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_ecd30301Address != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(sub_ecd30301Address, address(arg1));
    sub_ecd30301Address = address(arg1)
}

function sub_825e319d(?) {
    if sub_ecd30301Address != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(0xd02a30d33153877bc20e5721ee53dedee0422b2f)
    staticcall 0xd02a30d33153877bc20e5721ee53dedee0422b2f.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e)
    call 0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e.deposit(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ea034621(?) {
    if sub_ecd30301Address != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'WMATIC: Cannnot withdraw 0 uint.'
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call sub_ecd30301Address with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
}

function sub_76ad012c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_ecd30301Address != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'WMATIC: Cannnot withdraw 0 uint.'
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
}

function sub_852862e9(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    if sub_ecd30301Address != msg.sender:
        revert with 0, 'Caller is not owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _46 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_46))
        staticcall address(_46).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _49 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_49] == mem[_49]
        if mem[_49] > 0:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _52 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _54 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_54))
            staticcall address(_54).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _57 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _58 = mem[_57]
            require mem[_57] == mem[_57]
            mem[mem[64] + 4] = address(cd[36])
            mem[mem[64] + 36] = _58
            require ext_code.size(address(_52))
            call address(_52).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[36]), _58
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _61 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_61] == bool(mem[_61])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_09f74d8b(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if sub_ecd30301Address != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[96 len arg3.length] = arg3[all]
    mem[arg3.length + 96] = 0
    call address(arg1) with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    if not return_data.size:
        if ext_call.success:
        require mem[96] >= 68
        _8 = mem[100]
        require mem[100] >= 32
        require mem[132] <= test266151307()
        require mem[132] + 163 < mem[100] + 132
        _12 = mem[mem[132] + 132]
        if mem[mem[132] + 132] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[mem[132] + 132])) + 97 > test266151307() or ceil32(ceil32(mem[mem[132] + 132])) + 97 < 96:
            revert with 'NH{q', 65
        mem[64] = ceil32(ceil32(mem[mem[132] + 132])) + 97
        mem[96] = mem[mem[132] + 132]
        require mem[132] + mem[mem[132] + 132] + 164 <= _8 + 132
        mem[128 len ceil32(mem[mem[132] + 132])] = mem[mem[132] + 164 len ceil32(mem[mem[132] + 132])]
        if ceil32(_12) > _12:
            mem[_12 + 128] = 0
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[96]
        mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) > mem[96]:
            mem[mem[64] + mem[96] + 68] = 0
        revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
    mem[96] = return_data.size
    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if ext_call.success:
    require return_data.size >= 68
    _9 = Mask(224, 0, return_data.size), mem[128 len 4]
    require Mask(224, 0, return_data.size), mem[128 len 4] >= 32
    _11 = mem[132]
    require mem[132] <= test266151307()
    require mem[132] + 163 < Mask(224, 0, return_data.size), mem[128 len 4] + 132
    _13 = mem[mem[132] + 132]
    if mem[mem[132] + 132] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[132] + 132])) + 98 > test266151307() or ceil32(ceil32(mem[mem[132] + 132])) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[132] + 132])) + 98
    mem[ceil32(return_data.size) + 97] = mem[mem[132] + 132]
    require _11 + _13 + 68 <= _9 + 36
    mem[ceil32(return_data.size) + 129 len ceil32(_13)] = mem[_11 + 164 len ceil32(_13)]
    if ceil32(_13) > _13:
        mem[ceil32(return_data.size) + _13 + 129] = 0
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = _13
    mem[mem[64] + 68 len ceil32(_13)] = mem[ceil32(return_data.size) + 129 len ceil32(_13)]
    if ceil32(_13) > _13:
        mem[mem[64] + _13 + 68] = 0
    revert with 0, 32, _13, mem[mem[64] + 68 len ceil32(_13)]
}

function sub_faca3894(?) payable {
    mem[64] = 96
    require not msg.value
    if sub_ecd30301Address != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[96] = 0x84e9bd7e00000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    require ext_code.size(0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e)
    call 0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e.claim_rewards(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor2.length != stor3.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Swap: amounts of r and r are not equal.'
    idx = 0
    while idx < stor2.length:
        if idx >= stor3.length:
            revert with 'NH{q', 50
        if 0 >= uint256(stor3[idx]):
            revert with 'NH{q', 50
        mem[0] = sha3(3) + idx
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(stor3[idx]))
        staticcall address(stor3[idx]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _58 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _60 = mem[_58]
        require mem[_58] == mem[_58]
        if idx >= stor3.length:
            revert with 'NH{q', 50
        _65 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _60
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = uint256(stor3[idx])
        mem[0] = sha3(3) + idx
        s = 0
        t = sha3(mem[0])
        u = mem[64] + 196
        while s < uint256(stor3[idx]):
            mem[u] = stor[t]
            s = s + 1
            t = t + 1
            u = u + 32
            continue 
        mem[_65 + 100] = this.address
        mem[_65 + 132] = -1
        require ext_code.size(stor2[idx])
        call stor2[idx].mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len u + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _93 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _94 = mem[_93]
        require mem[_93] <= test266151307()
        require _93 + mem[_93] + 31 < _93 + return_data.size
        _95 = mem[_93 + mem[_93]]
        if mem[_93 + mem[_93]] > test266151307():
            revert with 'NH{q', 65
        if _93 + ceil32(return_data.size) + floor32(mem[_93 + mem[_93]]) + 1 > test266151307() or floor32(mem[_93 + mem[_93]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _93 + ceil32(return_data.size) + floor32(mem[_93 + mem[_93]]) + 1
        mem[_93 + ceil32(return_data.size)] = _95
        require _94 + (32 * _95) + 32 <= return_data.size
        s = 0
        t = _93 + _94 + 32
        u = _93 + ceil32(return_data.size) + 32
        while s < _95:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _48 = mem[64]
    mem[mem[64]] = 1
    mem[64] = mem[64] + 64
    if 0 >= mem[_48]:
        revert with 'NH{q', 50
    mem[_48 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    if sub_ecd30301Address != msg.sender:
        revert with 0, 'Caller is not owner'
    _85 = mem[_48]
    idx = 0
    while idx < _85:
        if idx >= mem[_48]:
            revert with 'NH{q', 50
        _87 = mem[(32 * idx) + _48 + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_87))
        staticcall address(_87).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _90 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_90] == mem[_90]
        if mem[_90] > 0:
            if idx >= mem[_48]:
                revert with 'NH{q', 50
            _97 = mem[(32 * idx) + _48 + 32]
            if idx >= mem[_48]:
                revert with 'NH{q', 50
            _99 = mem[(32 * idx) + _48 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_99))
            staticcall address(_99).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _103 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _105 = mem[_103]
            require mem[_103] == mem[_103]
            mem[mem[64] + 4] = sub_ecd30301Address
            mem[mem[64] + 36] = _105
            require ext_code.size(address(_97))
            call address(_97).0xa9059cbb with:
                 gas gas_remaining wei
                args sub_ecd30301Address, _105
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _108 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_108] == bool(mem[_108])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_207e2c53(?) payable {
    mem[64] = 96
    require not msg.value
    if sub_ecd30301Address != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[96] = 0x84e9bd7e00000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    require ext_code.size(0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e)
    call 0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e.claim_rewards(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor2.length != stor3.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Swap: amounts of r and r are not equal.'
    idx = 0
    while idx < stor2.length:
        if idx >= stor3.length:
            revert with 'NH{q', 50
        if 0 >= uint256(stor3[idx]):
            revert with 'NH{q', 50
        mem[0] = sha3(3) + idx
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(stor3[idx]))
        staticcall address(stor3[idx]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _46 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _48 = mem[_46]
        require mem[_46] == mem[_46]
        if idx >= stor3.length:
            revert with 'NH{q', 50
        _51 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _48
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = uint256(stor3[idx])
        mem[0] = sha3(3) + idx
        s = 0
        t = sha3(mem[0])
        u = mem[64] + 196
        while s < uint256(stor3[idx]):
            mem[u] = stor[t]
            s = s + 1
            t = t + 1
            u = u + 32
            continue 
        mem[_51 + 100] = this.address
        mem[_51 + 132] = -1
        require ext_code.size(stor2[idx])
        call stor2[idx].mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len u + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _72 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _73 = mem[_72]
        require mem[_72] <= test266151307()
        require _72 + mem[_72] + 31 < _72 + return_data.size
        _75 = mem[_72 + mem[_72]]
        if mem[_72 + mem[_72]] > test266151307():
            revert with 'NH{q', 65
        if _72 + ceil32(return_data.size) + floor32(mem[_72 + mem[_72]]) + 1 > test266151307() or floor32(mem[_72 + mem[_72]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _72 + ceil32(return_data.size) + floor32(mem[_72 + mem[_72]]) + 1
        mem[_72 + ceil32(return_data.size)] = _75
        require _73 + (32 * _75) + 32 <= return_data.size
        s = 0
        t = _72 + _73 + 32
        u = _72 + ceil32(return_data.size) + 32
        while s < _75:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _42 = mem[64]
    mem[64] = mem[64] + 96
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e)
    staticcall 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _47 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_47] == mem[_47]
    mem[_42] = mem[_47]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
    staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _54 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_54] == mem[_54]
    mem[_42 + 32] = mem[_54]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x49d68029688eabf473097a2fc38ef61633a3c7a)
    staticcall 0x49d68029688eabf473097a2fc38ef61633a3c7a.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _59 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_59] == mem[_59]
    mem[_42 + 64] = mem[_59]
    mem[mem[64]] = 0x2b6e993a00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4 len 96] = mem[_42 len 96]
    mem[mem[64] + 100] = 0
    mem[mem[64] + 132] = 1
    require ext_code.size(0xfa949783947bf6c1b171db13aeacbb488845b3f)
    call 0x0fa949783947bf6c1b171db13aeacbb488845b3f.add_liquidity(uint256[3] arg1, uint256 arg2, bool arg3) with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len 96], 0, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xd02a30d33153877bc20e5721ee53dedee0422b2f)
    staticcall 0xd02a30d33153877bc20e5721ee53dedee0422b2f.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _78 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_78] == mem[_78]
    require ext_code.size(0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e)
    call 0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e.deposit(uint256 arg1) with:
         gas gas_remaining wei
        args mem[_78]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3a12580c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_ecd30301Address != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[100] = this.address
    require ext_code.size(0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e)
    staticcall 0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e)
    call 0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_ecd30301Address != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[ceil32(return_data.size) + 96] = 0x84e9bd7e00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e)
    call 0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e.claim_rewards(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor2.length != stor3.length:
        revert with 0, 'Swap: amounts of r and r are not equal.'
    idx = 0
    while idx < stor2.length:
        if idx >= stor3.length:
            revert with 'NH{q', 50
        if 0 >= uint256(stor3[idx]):
            revert with 'NH{q', 50
        mem[0] = sha3(3) + idx
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(stor3[idx]))
        staticcall address(stor3[idx]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _74 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _76 = mem[_74]
        require mem[_74] == mem[_74]
        if idx >= stor3.length:
            revert with 'NH{q', 50
        _82 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _76
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = uint256(stor3[idx])
        mem[0] = sha3(3) + idx
        s = 0
        t = sha3(mem[0])
        u = mem[64] + 196
        while s < uint256(stor3[idx]):
            mem[u] = stor[t]
            s = s + 1
            t = t + 1
            u = u + 32
            continue 
        mem[_82 + 100] = this.address
        mem[_82 + 132] = -1
        require ext_code.size(stor2[idx])
        call stor2[idx].mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len u + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _118 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _120 = mem[_118]
        require mem[_118] <= test266151307()
        require _118 + mem[_118] + 31 < _118 + return_data.size
        _122 = mem[_118 + mem[_118]]
        if mem[_118 + mem[_118]] > test266151307():
            revert with 'NH{q', 65
        if _118 + ceil32(return_data.size) + floor32(mem[_118 + mem[_118]]) + 1 > test266151307() or floor32(mem[_118 + mem[_118]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _118 + ceil32(return_data.size) + floor32(mem[_118 + mem[_118]]) + 1
        mem[_118 + ceil32(return_data.size)] = _122
        require _120 + (32 * _122) + 32 <= return_data.size
        s = 0
        t = _118 + _120 + 32
        u = _118 + ceil32(return_data.size) + 32
        while s < _122:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _64 = mem[64]
    mem[mem[64]] = 1
    mem[64] = mem[64] + 64
    if 0 >= mem[_64]:
        revert with 'NH{q', 50
    mem[_64 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    if sub_ecd30301Address != msg.sender:
        revert with 0, 'Caller is not owner'
    _109 = mem[_64]
    idx = 0
    while idx < _109:
        if idx >= mem[_64]:
            revert with 'NH{q', 50
        _111 = mem[(32 * idx) + _64 + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_111))
        staticcall address(_111).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _115 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_115] == mem[_115]
        if mem[_115] > 0:
            if idx >= mem[_64]:
                revert with 'NH{q', 50
            _125 = mem[(32 * idx) + _64 + 32]
            if idx >= mem[_64]:
                revert with 'NH{q', 50
            _127 = mem[(32 * idx) + _64 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_127))
            staticcall address(_127).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _132 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _134 = mem[_132]
            require mem[_132] == mem[_132]
            mem[mem[64] + 4] = sub_ecd30301Address
            mem[mem[64] + 36] = _134
            require ext_code.size(address(_125))
            call address(_125).0xa9059cbb with:
                 gas gas_remaining wei
                args sub_ecd30301Address, _134
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _140 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_140] == bool(mem[_140])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xd02a30d33153877bc20e5721ee53dedee0422b2f)
    staticcall 0xd02a30d33153877bc20e5721ee53dedee0422b2f.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _121 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _123 = mem[_121]
    require mem[_121] == mem[_121]
    mem[mem[64] + 4] = address(arg1)
    mem[mem[64] + 36] = _123
    require ext_code.size(0xd02a30d33153877bc20e5721ee53dedee0422b2f)
    call 0xd02a30d33153877bc20e5721ee53dedee0422b2f.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), _123
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _136 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_136] == bool(mem[_136])
}

function sub_d628fac4(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 160
    require arg1 == bool(arg1)
    require arg2 == bool(arg2)
    require arg3 == bool(arg3)
    require arg4 == bool(arg4)
    require arg5 == bool(arg5)
    if sub_ecd30301Address != msg.sender:
        revert with 0, 'Caller is not owner'
    if not arg1:
        if not arg2:
            if arg4:
                require ext_code.size(0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e)
                staticcall 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(0x49d68029688eabf473097a2fc38ef61633a3c7a)
                staticcall 0x49d68029688eabf473097a2fc38ef61633a3c7a.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(0xfa949783947bf6c1b171db13aeacbb488845b3f)
                call 0x0fa949783947bf6c1b171db13aeacbb488845b3f.add_liquidity(uint256[3] arg1, uint256 arg2, bool arg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] >> 512, 0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if arg5:
                require ext_code.size(0xd02a30d33153877bc20e5721ee53dedee0422b2f)
                staticcall 0xd02a30d33153877bc20e5721ee53dedee0422b2f.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e)
                call 0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e.deposit(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if stor2.length != stor3.length:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Swap: amounts of r and r are not equal.'
            idx = 0
            while idx < stor2.length:
                if idx >= stor3.length:
                    revert with 'NH{q', 50
                if 0 >= uint256(stor3[idx]):
                    revert with 'NH{q', 50
                mem[0] = sha3(3) + idx
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(stor3[idx]))
                staticcall address(stor3[idx]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _248 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _260 = mem[_248]
                require mem[_248] == mem[_248]
                if idx >= stor3.length:
                    revert with 'NH{q', 50
                _281 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _260
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = uint256(stor3[idx])
                mem[0] = sha3(3) + idx
                s = 0
                t = sha3(mem[0])
                u = mem[64] + 196
                while s < uint256(stor3[idx]):
                    mem[u] = stor[t]
                    s = s + 1
                    t = t + 1
                    u = u + 32
                    continue 
                mem[_281 + 100] = this.address
                mem[_281 + 132] = -1
                require ext_code.size(stor2[idx])
                call stor2[idx].mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len u + -mem[64] - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _418 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _425 = mem[_418]
                require mem[_418] <= test266151307()
                require _418 + mem[_418] + 31 < _418 + return_data.size
                _432 = mem[_418 + mem[_418]]
                if mem[_418 + mem[_418]] > test266151307():
                    revert with 'NH{q', 65
                if _418 + ceil32(return_data.size) + floor32(mem[_418 + mem[_418]]) + 1 > test266151307() or floor32(mem[_418 + mem[_418]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _418 + ceil32(return_data.size) + floor32(mem[_418 + mem[_418]]) + 1
                mem[_418 + ceil32(return_data.size)] = _432
                require _425 + (32 * _432) + 32 <= return_data.size
                s = 0
                t = _418 + _425 + 32
                u = _418 + ceil32(return_data.size) + 32
                while s < _432:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not arg3:
                if not arg4:
                    if arg5:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xd02a30d33153877bc20e5721ee53dedee0422b2f)
                        staticcall 0xd02a30d33153877bc20e5721ee53dedee0422b2f.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _263 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_263] == mem[_263]
                        require ext_code.size(0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e)
                        call 0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e.deposit(uint256 arg1) with:
                             gas gas_remaining wei
                            args mem[_263]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    _225 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e)
                    staticcall 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _252 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_252] == mem[_252]
                    mem[_225] = mem[_252]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                    staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _319 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_319] == mem[_319]
                    mem[_225 + 32] = mem[_319]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0x49d68029688eabf473097a2fc38ef61633a3c7a)
                    staticcall 0x49d68029688eabf473097a2fc38ef61633a3c7a.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _353 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_353] == mem[_353]
                    mem[_225 + 64] = mem[_353]
                    mem[mem[64]] = 0x2b6e993a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4 len 96] = mem[_225 len 96]
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = 1
                    require ext_code.size(0xfa949783947bf6c1b171db13aeacbb488845b3f)
                    call 0x0fa949783947bf6c1b171db13aeacbb488845b3f.add_liquidity(uint256[3] arg1, uint256 arg2, bool arg3) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], 0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg5:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xd02a30d33153877bc20e5721ee53dedee0422b2f)
                        staticcall 0xd02a30d33153877bc20e5721ee53dedee0422b2f.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _455 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_455] == mem[_455]
                        require ext_code.size(0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e)
                        call 0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e.deposit(uint256 arg1) with:
                             gas gas_remaining wei
                            args mem[_455]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                _219 = mem[64]
                mem[mem[64]] = 1
                mem[64] = mem[64] + 64
                if 0 >= mem[_219]:
                    revert with 'NH{q', 50
                mem[_219 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
                if sub_ecd30301Address != msg.sender:
                    revert with 0, 'Caller is not owner'
                _391 = mem[_219]
                idx = 0
                while idx < _391:
                    if idx >= mem[_219]:
                        revert with 'NH{q', 50
                    _397 = mem[(32 * idx) + _219 + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_397))
                    staticcall address(_397).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _409 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_409] == mem[_409]
                    if mem[_409] > 0:
                        if idx >= mem[_219]:
                            revert with 'NH{q', 50
                        _439 = mem[(32 * idx) + _219 + 32]
                        if idx >= mem[_219]:
                            revert with 'NH{q', 50
                        _443 = mem[(32 * idx) + _219 + 32]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_443))
                        staticcall address(_443).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _464 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _471 = mem[_464]
                        require mem[_464] == mem[_464]
                        mem[mem[64] + 4] = sub_ecd30301Address
                        mem[mem[64] + 36] = _471
                        require ext_code.size(address(_439))
                        call address(_439).0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ecd30301Address, _471
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _490 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_490] == bool(mem[_490])
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not arg4:
                    if arg5:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xd02a30d33153877bc20e5721ee53dedee0422b2f)
                        staticcall 0xd02a30d33153877bc20e5721ee53dedee0422b2f.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _427 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_427] == mem[_427]
                        require ext_code.size(0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e)
                        call 0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e.deposit(uint256 arg1) with:
                             gas gas_remaining wei
                            args mem[_427]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    _401 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e)
                    staticcall 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _422 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_422] == mem[_422]
                    mem[_401] = mem[_422]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                    staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _467 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_467] == mem[_467]
                    mem[_401 + 32] = mem[_467]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0x49d68029688eabf473097a2fc38ef61633a3c7a)
                    staticcall 0x49d68029688eabf473097a2fc38ef61633a3c7a.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _485 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_485] == mem[_485]
                    mem[_401 + 64] = mem[_485]
                    mem[mem[64]] = 0x2b6e993a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4 len 96] = mem[_401 len 96]
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = 1
                    require ext_code.size(0xfa949783947bf6c1b171db13aeacbb488845b3f)
                    call 0x0fa949783947bf6c1b171db13aeacbb488845b3f.add_liquidity(uint256[3] arg1, uint256 arg2, bool arg3) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], 0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg5:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xd02a30d33153877bc20e5721ee53dedee0422b2f)
                        staticcall 0xd02a30d33153877bc20e5721ee53dedee0422b2f.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _509 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_509] == mem[_509]
                        require ext_code.size(0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e)
                        call 0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e.deposit(uint256 arg1) with:
                             gas gas_remaining wei
                            args mem[_509]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[96] = 0x84e9bd7e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        require ext_code.size(0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e)
        call 0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e.claim_rewards(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg2:
            if arg4:
                require ext_code.size(0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e)
                staticcall 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(0x49d68029688eabf473097a2fc38ef61633a3c7a)
                staticcall 0x49d68029688eabf473097a2fc38ef61633a3c7a.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(0xfa949783947bf6c1b171db13aeacbb488845b3f)
                call 0x0fa949783947bf6c1b171db13aeacbb488845b3f.add_liquidity(uint256[3] arg1, uint256 arg2, bool arg3) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] >> 512, 0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if arg5:
                require ext_code.size(0xd02a30d33153877bc20e5721ee53dedee0422b2f)
                staticcall 0xd02a30d33153877bc20e5721ee53dedee0422b2f.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e)
                call 0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e.deposit(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if stor2.length != stor3.length:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Swap: amounts of r and r are not equal.'
            idx = 0
            while idx < stor2.length:
                if idx >= stor3.length:
                    revert with 'NH{q', 50
                if 0 >= uint256(stor3[idx]):
                    revert with 'NH{q', 50
                mem[0] = sha3(3) + idx
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(stor3[idx]))
                staticcall address(stor3[idx]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _250 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _262 = mem[_250]
                require mem[_250] == mem[_250]
                if idx >= stor3.length:
                    revert with 'NH{q', 50
                _284 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _262
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = uint256(stor3[idx])
                mem[0] = sha3(3) + idx
                s = 0
                t = sha3(mem[0])
                u = mem[64] + 196
                while s < uint256(stor3[idx]):
                    mem[u] = stor[t]
                    s = s + 1
                    t = t + 1
                    u = u + 32
                    continue 
                mem[_284 + 100] = this.address
                mem[_284 + 132] = -1
                require ext_code.size(stor2[idx])
                call stor2[idx].mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len u + -mem[64] - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _420 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _426 = mem[_420]
                require mem[_420] <= test266151307()
                require _420 + mem[_420] + 31 < _420 + return_data.size
                _434 = mem[_420 + mem[_420]]
                if mem[_420 + mem[_420]] > test266151307():
                    revert with 'NH{q', 65
                if _420 + ceil32(return_data.size) + floor32(mem[_420 + mem[_420]]) + 1 > test266151307() or floor32(mem[_420 + mem[_420]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _420 + ceil32(return_data.size) + floor32(mem[_420 + mem[_420]]) + 1
                mem[_420 + ceil32(return_data.size)] = _434
                require _426 + (32 * _434) + 32 <= return_data.size
                s = 0
                t = _420 + _426 + 32
                u = _420 + ceil32(return_data.size) + 32
                while s < _434:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not arg3:
                if not arg4:
                    if arg5:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xd02a30d33153877bc20e5721ee53dedee0422b2f)
                        staticcall 0xd02a30d33153877bc20e5721ee53dedee0422b2f.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _265 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_265] == mem[_265]
                        require ext_code.size(0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e)
                        call 0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e.deposit(uint256 arg1) with:
                             gas gas_remaining wei
                            args mem[_265]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    _228 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e)
                    staticcall 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _256 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_256] == mem[_256]
                    mem[_228] = mem[_256]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                    staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _321 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_321] == mem[_321]
                    mem[_228 + 32] = mem[_321]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0x49d68029688eabf473097a2fc38ef61633a3c7a)
                    staticcall 0x49d68029688eabf473097a2fc38ef61633a3c7a.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _355 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_355] == mem[_355]
                    mem[_228 + 64] = mem[_355]
                    mem[mem[64]] = 0x2b6e993a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4 len 96] = mem[_228 len 96]
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = 1
                    require ext_code.size(0xfa949783947bf6c1b171db13aeacbb488845b3f)
                    call 0x0fa949783947bf6c1b171db13aeacbb488845b3f.add_liquidity(uint256[3] arg1, uint256 arg2, bool arg3) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], 0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg5:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xd02a30d33153877bc20e5721ee53dedee0422b2f)
                        staticcall 0xd02a30d33153877bc20e5721ee53dedee0422b2f.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _456 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_456] == mem[_456]
                        require ext_code.size(0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e)
                        call 0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e.deposit(uint256 arg1) with:
                             gas gas_remaining wei
                            args mem[_456]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                _222 = mem[64]
                mem[mem[64]] = 1
                mem[64] = mem[64] + 64
                if 0 >= mem[_222]:
                    revert with 'NH{q', 50
                mem[_222 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
                if sub_ecd30301Address != msg.sender:
                    revert with 0, 'Caller is not owner'
                _392 = mem[_222]
                idx = 0
                while idx < _392:
                    if idx >= mem[_222]:
                        revert with 'NH{q', 50
                    _399 = mem[(32 * idx) + _222 + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_399))
                    staticcall address(_399).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _410 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_410] == mem[_410]
                    if mem[_410] > 0:
                        if idx >= mem[_222]:
                            revert with 'NH{q', 50
                        _441 = mem[(32 * idx) + _222 + 32]
                        if idx >= mem[_222]:
                            revert with 'NH{q', 50
                        _445 = mem[(32 * idx) + _222 + 32]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_445))
                        staticcall address(_445).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _466 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _472 = mem[_466]
                        require mem[_466] == mem[_466]
                        mem[mem[64] + 4] = sub_ecd30301Address
                        mem[mem[64] + 36] = _472
                        require ext_code.size(address(_441))
                        call address(_441).0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ecd30301Address, _472
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _492 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_492] == bool(mem[_492])
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not arg4:
                    if arg5:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xd02a30d33153877bc20e5721ee53dedee0422b2f)
                        staticcall 0xd02a30d33153877bc20e5721ee53dedee0422b2f.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _428 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_428] == mem[_428]
                        require ext_code.size(0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e)
                        call 0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e.deposit(uint256 arg1) with:
                             gas gas_remaining wei
                            args mem[_428]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    _403 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e)
                    staticcall 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _424 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_424] == mem[_424]
                    mem[_403] = mem[_424]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                    staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _468 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_468] == mem[_468]
                    mem[_403 + 32] = mem[_468]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0x49d68029688eabf473097a2fc38ef61633a3c7a)
                    staticcall 0x49d68029688eabf473097a2fc38ef61633a3c7a.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _486 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_486] == mem[_486]
                    mem[_403 + 64] = mem[_486]
                    mem[mem[64]] = 0x2b6e993a00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4 len 96] = mem[_403 len 96]
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = 1
                    require ext_code.size(0xfa949783947bf6c1b171db13aeacbb488845b3f)
                    call 0x0fa949783947bf6c1b171db13aeacbb488845b3f.add_liquidity(uint256[3] arg1, uint256 arg2, bool arg3) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], 0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg5:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xd02a30d33153877bc20e5721ee53dedee0422b2f)
                        staticcall 0xd02a30d33153877bc20e5721ee53dedee0422b2f.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _510 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_510] == mem[_510]
                        require ext_code.size(0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e)
                        call 0xd4f94d0aaa640bbb72b5eec2d85f6d114d81a88e.deposit(uint256 arg1) with:
                             gas gas_remaining wei
                            args mem[_510]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}



}
