contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_318adb8b(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Array length mismatch'
    idx = 0
    s = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if s > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        continue 
    if s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length != msg.value:
        revert with 0, 'Sent amount does not equal total amount'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        call mem[(32 * idx) + 140 len 20] with:
           value mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] wei
             gas gas_remaining wei
        if return_data.size:
            _85 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_85] = return_data.size
            mem[_85 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 1
}

function send(address arg1, address[] arg2, uint256[] arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg2.length) + 97 < 96 or ceil32(32 * arg2.length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    s = arg2 + 36
    t = 128
    idx = 0
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg3.length) + 98 < 97 or ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * arg2.length) + 97] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = ceil32(32 * arg2.length) + 129
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg2.length != arg3.length:
        revert with 0, 'Array length mismatch'
    idx = 0
    s = 0
    while idx < arg3.length:
        if idx >= arg3.length:
            revert with 'NH{q', 50
        if s > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
        continue 
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 102] = msg.sender
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 134] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length > ext_call.return_data[0]:
        revert with 0, 'Allowance is too low'
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(return_data.size) + 102] = msg.sender
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (2 * ceil32(return_data.size)) + 98
    require return_data.size >= 32
    if s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length > ext_call.return_data[0]:
        revert with 0, 'Balance is too low'
    idx = 0
    while idx < arg2.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _124 = mem[(32 * idx) + 128]
        if idx >= mem[ceil32(32 * arg2.length) + 97]:
            revert with 'NH{q', 50
        _126 = mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(_124)
        mem[mem[64] + 68] = _126
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_124), _126
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _129 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_129] == bool(mem[_129])
        require mem[_129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 1
}



}
