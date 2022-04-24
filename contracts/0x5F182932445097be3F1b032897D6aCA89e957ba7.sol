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

function approve(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the operator'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the operator'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args operatorAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
    staticcall address(cd[36]).getAmountsOut(uint256 rg1, address[] rg2) with:
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
    _48 = mem[64]
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
    staticcall address(cd[100]).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _48 + (32 * ('cd', 132).length) + -mem[64] + 96]
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

function sub_bf093378(?) payable {
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
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the operator'
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    mem[100] = this.address
    require ext_code.size(address(('cd', 68)[0]))
    staticcall address(('cd', 68)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < cd[4]:
        revert with 0, 'no enough balance to trade'
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
    staticcall address(cd[36]).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args cd[4], Array(len=('cd', 68).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 68).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _26 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _27 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _27
    require _26 + (32 * _27) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _26 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _27:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _27 < 1:
        revert with 'NH{q', 17
    if _27 - 1 >= _27:
        revert with 'NH{q', 50
    _64 = mem[(32 * _27 - 1) + (2 * ceil32(return_data.size)) + 128]
    _65 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _64
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
    staticcall address(cd[100]).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _65 + (32 * ('cd', 132).length) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _100 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _101 = mem[_100]
    require mem[_100] <= test266151307()
    require _100 + mem[_100] + 31 < _100 + return_data.size
    _102 = mem[_100 + mem[_100]]
    if mem[_100 + mem[_100]] > test266151307():
        revert with 'NH{q', 65
    if _100 + ceil32(return_data.size) + floor32(mem[_100 + mem[_100]]) + 1 > test266151307() or floor32(mem[_100 + mem[_100]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _100 + ceil32(return_data.size) + floor32(mem[_100 + mem[_100]]) + 1
    mem[_100 + ceil32(return_data.size)] = _102
    require _101 + (32 * _102) + 32 <= return_data.size
    idx = 0
    s = _100 + _101 + 32
    t = _100 + ceil32(return_data.size) + 32
    while idx < _102:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _102 < 1:
        revert with 'NH{q', 17
    if _102 - 1 >= _102:
        revert with 'NH{q', 50
    if mem[(32 * _102 - 1) + _100 + ceil32(return_data.size) + 32] <= cd[4]:
        revert with 0, 'no arb opportunity'
    _136 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[4]
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = mem[64] + 196
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_136 + 100] = this.address
    mem[_136 + 132] = block.timestamp
    require ext_code.size(address(cd[36]))
    call address(cd[36]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _136 + (32 * ('cd', 68).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _161 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _162 = mem[_161]
    require mem[_161] <= test266151307()
    require _161 + mem[_161] + 31 < _161 + return_data.size
    _163 = mem[_161 + mem[_161]]
    if mem[_161 + mem[_161]] > test266151307():
        revert with 'NH{q', 65
    if _161 + ceil32(return_data.size) + floor32(mem[_161 + mem[_161]]) + 1 > test266151307() or floor32(mem[_161 + mem[_161]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _161 + ceil32(return_data.size) + floor32(mem[_161 + mem[_161]]) + 1
    mem[_161 + ceil32(return_data.size)] = _163
    require _162 + (32 * _163) + 32 <= return_data.size
    idx = 0
    s = _161 + _162 + 32
    t = _161 + ceil32(return_data.size) + 32
    while idx < _163:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _163 < 1:
        revert with 'NH{q', 17
    if _163 - 1 >= _163:
        revert with 'NH{q', 50
    _184 = mem[(32 * _163 - 1) + _161 + ceil32(return_data.size) + 32]
    _185 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _184
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 132).length
    idx = 0
    s = cd[132] + 36
    t = mem[64] + 196
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_185 + 100] = this.address
    mem[_185 + 132] = block.timestamp
    require ext_code.size(address(cd[100]))
    call address(cd[100]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _185 + (32 * ('cd', 132).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _198 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _199 = mem[_198]
    require mem[_198] <= test266151307()
    require _198 + mem[_198] + 31 < _198 + return_data.size
    _200 = mem[_198 + mem[_198]]
    if mem[_198 + mem[_198]] > test266151307():
        revert with 'NH{q', 65
    if _198 + ceil32(return_data.size) + floor32(mem[_198 + mem[_198]]) + 1 > test266151307() or floor32(mem[_198 + mem[_198]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _198 + ceil32(return_data.size) + floor32(mem[_198 + mem[_198]]) + 1
    mem[_198 + ceil32(return_data.size)] = _200
    require _199 + (32 * _200) + 32 <= return_data.size
    idx = 0
    s = _198 + _199 + 32
    t = _198 + ceil32(return_data.size) + 32
    while idx < _200:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _200 < 1:
        revert with 'NH{q', 17
    if _200 - 1 >= _200:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[(32 * _200 - 1) + _198 + ceil32(return_data.size) + 32]
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
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the operator'
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    mem[100] = this.address
    require ext_code.size(address(('cd', 68)[0]))
    staticcall address(('cd', 68)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < cd[4]:
        revert with 0, 'no enough balance to trade'
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
    staticcall address(cd[36]).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args cd[4], Array(len=('cd', 68).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 68).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _26 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _27 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _27
    require _26 + (32 * _27) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _26 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _27:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _27 < 1:
        revert with 'NH{q', 17
    if _27 - 1 >= _27:
        revert with 'NH{q', 50
    _63 = mem[(32 * _27 - 1) + (2 * ceil32(return_data.size)) + 128]
    _64 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _63
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
    staticcall address(cd[100]).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _64 + (32 * ('cd', 132).length) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _99 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _100 = mem[_99]
    require mem[_99] <= test266151307()
    require _99 + mem[_99] + 31 < _99 + return_data.size
    _101 = mem[_99 + mem[_99]]
    if mem[_99 + mem[_99]] > test266151307():
        revert with 'NH{q', 65
    if _99 + ceil32(return_data.size) + floor32(mem[_99 + mem[_99]]) + 1 > test266151307() or floor32(mem[_99 + mem[_99]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _99 + ceil32(return_data.size) + floor32(mem[_99 + mem[_99]]) + 1
    mem[_99 + ceil32(return_data.size)] = _101
    require _100 + (32 * _101) + 32 <= return_data.size
    idx = 0
    s = _99 + _100 + 32
    t = _99 + ceil32(return_data.size) + 32
    while idx < _101:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _101 < 1:
        revert with 'NH{q', 17
    if _101 - 1 >= _101:
        revert with 'NH{q', 50
    if mem[(32 * _101 - 1) + _99 + ceil32(return_data.size) + 32] <= cd[4]:
        revert with 0, 'no arb opportunity'
    mem[mem[64] + 4] = address(cd[36])
    mem[mem[64] + 36] = cd[4]
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(cd[36]), cd[4]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _139 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_139] == bool(mem[_139])
    _141 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[4]
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = mem[64] + 196
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_141 + 100] = this.address
    mem[_141 + 132] = block.timestamp
    require ext_code.size(address(cd[36]))
    call address(cd[36]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _141 + (32 * ('cd', 68).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _165 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _166 = mem[_165]
    require mem[_165] <= test266151307()
    require _165 + mem[_165] + 31 < _165 + return_data.size
    _167 = mem[_165 + mem[_165]]
    if mem[_165 + mem[_165]] > test266151307():
        revert with 'NH{q', 65
    if _165 + ceil32(return_data.size) + floor32(mem[_165 + mem[_165]]) + 1 > test266151307() or floor32(mem[_165 + mem[_165]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _165 + ceil32(return_data.size) + floor32(mem[_165 + mem[_165]]) + 1
    mem[_165 + ceil32(return_data.size)] = _167
    require _166 + (32 * _167) + 32 <= return_data.size
    idx = 0
    s = _165 + _166 + 32
    t = _165 + ceil32(return_data.size) + 32
    while idx < _167:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require ('cd', 132)[0] == address(('cd', 132)[0])
    if _167 < 1:
        revert with 'NH{q', 17
    if _167 - 1 >= _167:
        revert with 'NH{q', 50
    _195 = mem[(32 * _167 - 1) + _165 + ceil32(return_data.size) + 32]
    mem[mem[64] + 4] = address(cd[100])
    mem[mem[64] + 36] = _195
    require ext_code.size(address(('cd', 132)[0]))
    call address(('cd', 132)[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(cd[100]), _195
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _198 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_198] == bool(mem[_198])
    if _167 < 1:
        revert with 'NH{q', 17
    if _167 - 1 >= _167:
        revert with 'NH{q', 50
    _202 = mem[(32 * _167 - 1) + _165 + ceil32(return_data.size) + 32]
    _203 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _202
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 132).length
    idx = 0
    s = cd[132] + 36
    t = mem[64] + 196
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_203 + 100] = this.address
    mem[_203 + 132] = block.timestamp
    require ext_code.size(address(cd[100]))
    call address(cd[100]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _203 + (32 * ('cd', 132).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _216 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _217 = mem[_216]
    require mem[_216] <= test266151307()
    require _216 + mem[_216] + 31 < _216 + return_data.size
    _218 = mem[_216 + mem[_216]]
    if mem[_216 + mem[_216]] > test266151307():
        revert with 'NH{q', 65
    if _216 + ceil32(return_data.size) + floor32(mem[_216 + mem[_216]]) + 1 > test266151307() or floor32(mem[_216 + mem[_216]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _216 + ceil32(return_data.size) + floor32(mem[_216 + mem[_216]]) + 1
    mem[_216 + ceil32(return_data.size)] = _218
    require _217 + (32 * _218) + 32 <= return_data.size
    idx = 0
    s = _216 + _217 + 32
    t = _216 + ceil32(return_data.size) + 32
    while idx < _218:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _218 < 1:
        revert with 'NH{q', 17
    if _218 - 1 >= _218:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[(32 * _218 - 1) + _216 + ceil32(return_data.size) + 32]
    return memory
      from mem[64]
       len 32
}



}
