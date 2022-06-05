contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_d2557b35(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 >= 96 and ceil32(arg3.length) + 128 <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require ext_code.size(address(arg1))
    call address(arg1) with:
         gas gas_remaining wei
        args address(this.address), arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    mem[100] = this.address
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Invalid balance, was the flashLoan successful?'
    require arg5.length >= 64
    require cd[(arg5 + 36)] <= test266151307()
    require arg5 + cd[(arg5 + 36)] + 67 < arg5 + arg5.length + 36
    require cd[(arg5 + cd[(arg5 + 36)] + 36)] <= test266151307()
    require (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128 >= 96 and ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128 <= test266151307()
    mem[ceil32(return_data.size) + 96] = cd[(arg5 + cd[(arg5 + 36)] + 36)]
    require cd[(arg5 + 36)] + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 68 <= arg5.length + 36
    s = arg5 + cd[(arg5 + 36)] + 68
    t = ceil32(return_data.size) + 128
    idx = 0
    while idx < cd[(arg5 + cd[(arg5 + 36)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[(arg5 + 68)] <= test266151307()
    require arg5 + cd[(arg5 + 68)] + 67 < arg5 + arg5.length + 36
    require cd[(arg5 + cd[(arg5 + 68)] + 36)] <= test266151307()
    require (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160 >= 128 and ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160
    mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128] = cd[(arg5 + cd[(arg5 + 68)] + 36)]
    idx = 0
    s = arg5 + cd[(arg5 + 68)] + 68
    t = ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160
    while idx < cd[(arg5 + cd[(arg5 + 68)] + 36)]:
        require arg5 + cd[(arg5 + 68)] + cd[s] + 99 < arg5 + arg5.length + 36
        require cd[(arg5 + cd[(arg5 + 68)] + cd[s] + 68)] <= test266151307()
        _89 = mem[64]
        require mem[64] + ceil32(cd[(arg5 + cd[(arg5 + 68)] + cd[s] + 68)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg5 + cd[(arg5 + 68)] + cd[s] + 68)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg5 + cd[(arg5 + 68)] + cd[s] + 68)]) + 32
        mem[_89] = cd[(arg5 + cd[(arg5 + 68)] + cd[s] + 68)]
        require cd[(arg5 + 68)] + cd[s] + cd[(arg5 + cd[(arg5 + 68)] + cd[s] + 68)] + 100 <= arg5.length + 36
        mem[_89 + 32 len cd[(arg5 + cd[(arg5 + 68)] + cd[s] + 68)]] = call.data[arg5 + cd[(arg5 + 68)] + cd[s] + 100 len cd[(arg5 + cd[(arg5 + 68)] + cd[s] + 68)]]
        mem[_89 + cd[(arg5 + cd[(arg5 + 68)] + cd[s] + 68)] + 32] = 0
        mem[t] = _89
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require mem[ceil32(return_data.size) + 96] == mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
    require 0 < mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 4] = mem[ceil32(return_data.size) + 140 len 20]
    mem[mem[64] + 36] = arg3
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args mem[mem[64] + 4], arg3
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _91 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_91] == bool(mem[_91])
    _121 = mem[ceil32(return_data.size) + 96]
    idx = 0
    while idx < _121:
        require idx < mem[ceil32(return_data.size) + 96]
        _124 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require idx < mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
        _127 = mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]
        _128 = mem[64]
        _129 = mem[mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]]
        s = 0
        while s < _129:
            mem[s + _128] = mem[s + _127 + 32]
            _121 = mem[ceil32(return_data.size) + 96]
            s = s + 32
            continue 
        if ceil32(_129) <= _129:
            call address(_124).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _129 + _128 + -mem[64] - 4]
            if return_data.size:
                _151 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_151] = return_data.size
                mem[_151 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_128 + _129] = 0
            call address(_124).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _129 + _128 + -mem[64] - 4]
            if return_data.size:
                _153 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_153] = return_data.size
                mem[_153 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        _121 = mem[ceil32(return_data.size) + 96]
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _130 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _131 = mem[_130]
    if not mem[_130] - ext_call.return_data[0] - arg4:
        revert with 0, 'not profit'
    mem[mem[64] + 4] = owner
    mem[mem[64] + 36] = _131 - ext_call.return_data[0] - arg4
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args owner, _131 - ext_call.return_data[0] - arg4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _141 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_141] == bool(mem[_141])
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg4 + arg3
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg4 + arg3
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _145 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_145] == bool(mem[_145])
    if not mem[_145]:
        revert with 0, 'Transfer fund back failed'
}



}
