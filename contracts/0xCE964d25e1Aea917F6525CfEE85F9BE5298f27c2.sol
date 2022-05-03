contract main {




// =====================  Runtime code  =====================


address owner;
address operatorAddress;

function operator() payable {
    return operatorAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function test(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and 10 > -1 / arg1:
        revert with 'NH{q', 17
    return (10 * arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferOperatorship(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the operator'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new operator is the zero address'
    emit OperatorshipTransferred(operatorAddress, arg1);
    operatorAddress = arg1
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the operator'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args operatorAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_0093a2f5(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if ('cd', 68).length < 1:
        revert with 'NH{q', 17
    if ('cd', 68).length - 1 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    if address(('cd', 68)[0]) != address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]):
        revert with 0, 'must end with the same token'
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = cd[4]
    mem[132] = 64
    mem[164] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = 196
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[4], Array(len=('cd', 68).length, data=mem[196 len 32 * ('cd', 68).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _17 = mem[96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < return_data.size + 96
    _18 = mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _18
    require _17 + (32 * _18) + 32 <= return_data.size
    idx = 0
    s = _17 + 128
    t = ceil32(return_data.size) + 128
    while idx < _18:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _18 < 1:
        revert with 'NH{q', 17
    if _18 - 1 >= _18:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[(32 * _18 - 1) + ceil32(return_data.size) + 128]
    return memory
      from mem[64]
       len 32
}

function sub_055143c3(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == address(cd[100])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    mem[100] = this.address
    require ext_code.size(address(('cd', 68)[0]))
    staticcall address(('cd', 68)[0]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < cd[4]:
        return 0
    if ('cd', 132).length < 1:
        revert with 'NH{q', 17
    if ('cd', 132).length - 1 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    if address(('cd', 68)[0]) != address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]):
        revert with 0, 'must end with the same token'
    if 0 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require ('cd', 132)[0] == address(('cd', 132)[0])
    if ('cd', 68).length < 1:
        revert with 'NH{q', 17
    if ('cd', 68).length - 1 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) != address(('cd', 132)[0]):
        revert with 0, 'exit must start with last entry'
    mem[ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = cd[4]
    mem[ceil32(return_data.size) + 132] = 64
    mem[ceil32(return_data.size) + 164] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = ceil32(return_data.size) + 196
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[4], Array(len=('cd', 68).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 68).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
    # nil
}

function sub_395b8659(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = 0
            staticcall this.address.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'view failed'
                require mem[96] >= 32
                require mem[128] == mem[128]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[128]
            else:
                _48 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_48] = return_data.size
                mem[_48 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'view failed'
                require return_data.size >= 32
                require mem[_48 + 32] == mem[_48 + 32]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_48 + 32]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = 0
            staticcall this.address.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'view failed'
                require mem[96] >= 32
                require mem[128] == mem[128]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[128]
            else:
                _49 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_49] = return_data.size
                mem[_49 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'view failed'
                require return_data.size >= 32
                require mem[_49 + 32] == mem[_49 + 32]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_49 + 32]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_3a6e6207(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == address(cd[100])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if ('cd', 132).length < 1:
        revert with 'NH{q', 17
    if ('cd', 132).length - 1 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    if address(('cd', 68)[0]) != address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]):
        revert with 0, 'must end with the same token'
    if 0 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require ('cd', 132)[0] == address(('cd', 132)[0])
    if ('cd', 68).length < 1:
        revert with 'NH{q', 17
    if ('cd', 68).length - 1 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) != address(('cd', 132)[0]):
        revert with 0, 'exit must start with last entry'
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = cd[4]
    mem[132] = 64
    mem[164] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = 196
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[4], Array(len=('cd', 68).length, data=mem[196 len 32 * ('cd', 68).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _25 = mem[96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < return_data.size + 96
    _26 = mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _26
    require _25 + (32 * _26) + 32 <= return_data.size
    idx = 0
    s = _25 + 128
    t = ceil32(return_data.size) + 128
    while idx < _26:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _26 < 1:
        revert with 'NH{q', 17
    if _26 - 1 >= _26:
        revert with 'NH{q', 50
    _47 = mem[(32 * _26 - 1) + ceil32(return_data.size) + 128]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _47
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = ('cd', 132).length
    idx = 0
    s = cd[132] + 36
    t = mem[64] + 100
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _47, Array(len=('cd', 132).length, data=mem[mem[64] + 100 len 32 * ('cd', 132).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _61 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _62 = mem[_61]
    require mem[_61] <= test266151307()
    require _61 + mem[_61] + 31 < _61 + return_data.size
    _63 = mem[_61 + mem[_61]]
    if mem[_61 + mem[_61]] > test266151307():
        revert with 'NH{q', 65
    if _61 + ceil32(return_data.size) + floor32(mem[_61 + mem[_61]]) + 1 > test266151307() or floor32(mem[_61 + mem[_61]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _61 + ceil32(return_data.size) + floor32(mem[_61 + mem[_61]]) + 1
    mem[_61 + ceil32(return_data.size)] = _63
    require _62 + (32 * _63) + 32 <= return_data.size
    idx = 0
    s = _61 + _62 + 32
    t = _61 + ceil32(return_data.size) + 32
    while idx < _63:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _63 < 1:
        revert with 'NH{q', 17
    if _63 - 1 >= _63:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[(32 * _63 - 1) + _61 + ceil32(return_data.size) + 32]
    return memory
      from mem[64]
       len 32
}

function sub_dbd37a80(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if 0 < ('cd', 68).length:
        require ('cd', 68)[0] == address(('cd', 68)[0])
        mem[100] = this.address
        require ext_code.size(address(('cd', 68)[0]))
        staticcall address(('cd', 68)[0]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < cd[4]:
            return 0
        if ('cd', 68).length < 1:
            revert with 'NH{q', 17
        s = var251014
        while ('cd', 68).length - 1 < ('cd', 68).length:
            require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require ('cd', 68)[0] == address(('cd', 68)[0])
            if address(('cd', 68)[0]) != address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]):
                revert with 0, 'must end with the same token'
            _264 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = ('cd', 68).length
            idx = 0
            t = cd[68] + 36
            u = mem[64] + 100
            while idx < ('cd', 68).length:
                require cd[t] == address(cd[t])
                mem[u] = address(cd[t])
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _264 + (32 * ('cd', 68).length) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _292 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _293 = mem[_292]
            require mem[_292] <= test266151307()
            require _292 + mem[_292] + 31 < _292 + return_data.size
            _294 = mem[_292 + mem[_292]]
            if mem[_292 + mem[_292]] > test266151307():
                revert with 'NH{q', 65
            if _292 + ceil32(return_data.size) + floor32(mem[_292 + mem[_292]]) + 1 > test266151307() or floor32(mem[_292 + mem[_292]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _292 + ceil32(return_data.size) + floor32(mem[_292 + mem[_292]]) + 1
            mem[_292 + ceil32(return_data.size)] = _294
            require _293 + (32 * _294) + 32 <= return_data.size
            idx = 0
            t = _292 + _293 + 32
            u = _292 + ceil32(return_data.size) + 32
            while idx < _294:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            if _294 < 1:
                revert with 'NH{q', 17
            if _294 - 1 >= _294:
                revert with 'NH{q', 50
            if mem[(32 * _294 - 1) + _292 + ceil32(return_data.size) + 32] <= cd[4]:
                return 0
            if s >= 10:
                return 0
            mem[mem[64] + 4] = address(cd[36])
            mem[mem[64] + 36] = cd[4]
            require ext_code.size(address(('cd', 68)[0]))
            call address(('cd', 68)[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[36]), cd[4]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _325 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_325] == bool(mem[_325])
            _327 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4]
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = ('cd', 68).length
            idx = 0
            t = cd[68] + 36
            u = mem[64] + 196
            while idx < ('cd', 68).length:
                require cd[t] == address(cd[t])
                mem[u] = address(cd[t])
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_327 + 100] = this.address
            mem[_327 + 132] = block.timestamp
            require ext_code.size(address(cd[36]))
            call address(cd[36]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _327 + (32 * ('cd', 68).length) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _335 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _336 = mem[_335]
            require mem[_335] <= test266151307()
            require _335 + mem[_335] + 31 < _335 + return_data.size
            _337 = mem[_335 + mem[_335]]
            if mem[_335 + mem[_335]] > test266151307():
                revert with 'NH{q', 65
            if _335 + ceil32(return_data.size) + floor32(mem[_335 + mem[_335]]) + 1 > test266151307() or floor32(mem[_335 + mem[_335]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _335 + ceil32(return_data.size) + floor32(mem[_335 + mem[_335]]) + 1
            mem[_335 + ceil32(return_data.size)] = _337
            require _336 + (32 * _337) + 32 <= return_data.size
            idx = 0
            t = _335 + _336 + 32
            u = _335 + ceil32(return_data.size) + 32
            while idx < _337:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            if s > -2:
                revert with 'NH{q', 17
            if ('cd', 68).length < 1:
                revert with 'NH{q', 17
            s = s + 1
            continue 
    revert with 'NH{q', 50
}

function sub_544b36ca(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            _120 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
            mem[_120] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            mem[_120 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
            mem[_120 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
            _122 = mem[64]
            mem[64] = mem[64] + 64
            mem[_122] = 30
            mem[_122 + 32] = 'Address: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(this.address) <= 0:
                revert with 0, 'Address: call to non-contract'
            _129 = mem[64]
            s = 0
            while s < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                mem[_129 + s] = mem[_120 + s + 32]
                s = s + 32
                continue 
            if ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) <= cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                call this.address.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _129 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        require mem[128] == mem[128]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = mem[128]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    _248 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _268 = mem[_122]
                    mem[mem[64] + 36] = mem[_122]
                    idx = 0
                    while idx < _268:
                        mem[_248 + idx + 68] = mem[_122 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_268) > _268:
                        mem[_248 + _268 + 68] = 0
                    revert with memory
                      from mem[64]
                       len _248 + ceil32(_268) + -mem[64] + 68
                _238 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_238] = return_data.size
                mem[_238 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    require mem[_238 + 32] == mem[_238 + 32]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = mem[_238 + 32]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                _250 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _269 = mem[_122]
                mem[mem[64] + 36] = mem[_122]
                idx = 0
                while idx < _269:
                    mem[_250 + idx + 68] = mem[_122 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_269) > _269:
                    mem[_250 + _269 + 68] = 0
                revert with memory
                  from mem[64]
                   len _250 + ceil32(_269) + -mem[64] + 68
            mem[_129 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = 0
            call this.address.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _129 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    require mem[128] == mem[128]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = mem[128]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                _260 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _274 = mem[_122]
                mem[mem[64] + 36] = mem[_122]
                idx = 0
                while idx < _274:
                    mem[_260 + idx + 68] = mem[_122 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_274) > _274:
                    mem[_260 + _274 + 68] = 0
                revert with memory
                  from mem[64]
                   len _260 + ceil32(_274) + -mem[64] + 68
            _242 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_242] = return_data.size
            mem[_242 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                require mem[_242 + 32] == mem[_242 + 32]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_242 + 32]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            _262 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _275 = mem[_122]
            mem[mem[64] + 36] = mem[_122]
            idx = 0
            while idx < _275:
                mem[_262 + idx + 68] = mem[_122 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_275) > _275:
                mem[_262 + _275 + 68] = 0
            revert with memory
              from mem[64]
               len _262 + ceil32(_275) + -mem[64] + 68
    else:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            _121 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 32
            mem[_121] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            mem[_121 + 32 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
            mem[_121 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 32] = 0
            _123 = mem[64]
            mem[64] = mem[64] + 64
            mem[_123] = 30
            mem[_123 + 32] = 'Address: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(this.address) <= 0:
                revert with 0, 'Address: call to non-contract'
            _132 = mem[64]
            s = 0
            while s < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                mem[_132 + s] = mem[_121 + s + 32]
                s = s + 32
                continue 
            if ceil32(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) <= cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                call this.address.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _132 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        require mem[128] == mem[128]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = mem[128]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    _254 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _270 = mem[_123]
                    mem[mem[64] + 36] = mem[_123]
                    idx = 0
                    while idx < _270:
                        mem[_254 + idx + 68] = mem[_123 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_270) > _270:
                        mem[_254 + _270 + 68] = 0
                    revert with memory
                      from mem[64]
                       len _254 + ceil32(_270) + -mem[64] + 68
                _240 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_240] = return_data.size
                mem[_240 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    require mem[_240 + 32] == mem[_240 + 32]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = mem[_240 + 32]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                _256 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _271 = mem[_123]
                mem[mem[64] + 36] = mem[_123]
                idx = 0
                while idx < _271:
                    mem[_256 + idx + 68] = mem[_123 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_271) > _271:
                    mem[_256 + _271 + 68] = 0
                revert with memory
                  from mem[64]
                   len _256 + ceil32(_271) + -mem[64] + 68
            mem[_132 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = 0
            call this.address.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _132 + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    require mem[128] == mem[128]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = mem[128]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                _264 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _278 = mem[_123]
                mem[mem[64] + 36] = mem[_123]
                idx = 0
                while idx < _278:
                    mem[_264 + idx + 68] = mem[_123 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_278) > _278:
                    mem[_264 + _278 + 68] = 0
                revert with memory
                  from mem[64]
                   len _264 + ceil32(_278) + -mem[64] + 68
            _243 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_243] = return_data.size
            mem[_243 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                require mem[_243 + 32] == mem[_243 + 32]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_243 + 32]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            _266 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _279 = mem[_123]
            mem[mem[64] + 36] = mem[_123]
            idx = 0
            while idx < _279:
                mem[_266 + idx + 68] = mem[_123 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_279) > _279:
                mem[_266 + _279 + 68] = 0
            revert with memory
              from mem[64]
               len _266 + ceil32(_279) + -mem[64] + 68
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
