contract main {




// =====================  Runtime code  =====================


#
#  - sub_1171c9aa(?)
#  - sub_1438b893(?)
#  - sub_490d5e91(?)
#  - sub_b7800409(?)
#  - _fallback()
#
address stor0;
mapping of uint256 stor1;

function sub_cdfca7f2(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
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
    if stor0 != msg.sender:
        revert with 0, 'ad'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function runCmd(address[] arg1, uint256[] arg2, bytes[] arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
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
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    s = arg2 + 36
    t = ceil32(32 * arg1.length) + 129
    idx = 0
    while idx < arg2.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 99 < 98 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 99 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 99
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130
    while idx < arg3.length:
        require cd[s] <= test266151307()
        require arg3 + cd[s] + 67 < calldata.size
        if cd[(arg3 + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _152 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg3 + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(arg3 + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg3 + cd[s] + 36)])) + 1
        mem[_152] = cd[(arg3 + cd[s] + 36)]
        require arg3 + cd[s] + cd[(arg3 + cd[s] + 36)] + 68 <= calldata.size
        mem[_152 + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
        mem[_152 + cd[(arg3 + cd[s] + 36)] + 32] = 0
        mem[t] = _152
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender == stor0:
        _199 = mem[96]
        idx = 0
        while idx < _199:
            if idx >= mem[96]:
                revert with 0, 50
            _203 = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                revert with 0, 50
            _207 = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
            if idx >= mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98]:
                revert with 0, 50
            _211 = mem[(32 * idx) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130]
            _212 = mem[64]
            _215 = mem[mem[(32 * idx) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130]]
            s = 0
            while s < _215:
                mem[s + _212] = mem[_211 + s + 32]
                _199 = mem[96]
                s = s + 32
                continue 
            if ceil32(_215) <= _215:
                call address(_203).mem[mem[64] len 4] with:
                   value _207 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _215 + _212 + -mem[64] - 4]
                if return_data.size:
                    _247 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_247] = return_data.size
                    mem[_247 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                mem[_212 + _215] = 0
                call address(_203).mem[mem[64] len 4] with:
                   value _207 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _215 + _212 + -mem[64] - 4]
                if return_data.size:
                    _251 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_251] = return_data.size
                    mem[_251 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'cmdE'
            if idx == -1:
                revert with 0, 17
            _199 = mem[96]
            idx = idx + 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 1
        if stor1[msg.sender] != 1:
            revert with 0, 'ad'
        _200 = mem[96]
        idx = 0
        while idx < _200:
            if idx >= mem[96]:
                revert with 0, 50
            _205 = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                revert with 0, 50
            _209 = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
            if idx >= mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98]:
                revert with 0, 50
            _213 = mem[(32 * idx) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130]
            _214 = mem[64]
            _216 = mem[mem[(32 * idx) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130]]
            s = 0
            while s < _216:
                mem[s + _214] = mem[_213 + s + 32]
                _200 = mem[96]
                s = s + 32
                continue 
            if ceil32(_216) <= _216:
                call address(_205).mem[mem[64] len 4] with:
                   value _209 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _216 + _214 + -mem[64] - 4]
                if return_data.size:
                    _249 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_249] = return_data.size
                    mem[_249 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                mem[_214 + _216] = 0
                call address(_205).mem[mem[64] len 4] with:
                   value _209 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _216 + _214 + -mem[64] - 4]
                if return_data.size:
                    _252 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_252] = return_data.size
                    mem[_252 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'cmdE'
            if idx == -1:
                revert with 0, 17
            _200 = mem[96]
            idx = idx + 1
            continue 
}



}
