contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}

function sub_2d9e1d15(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 68).length) + 97
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require cd[36] > 0
    idx = 0
    while idx < ('cd', 68).length:
        if idx >= mem[96]:
            revert with 0, 50
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = cd[36]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], cd[36]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_25] == bool(mem[_25])
        require mem[_25]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function bulksendToken(address arg1, address[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 < 96 or ceil32(32 * arg2.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 98 < 97 or ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98
    mem[ceil32(32 * arg2.length) + 97] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    s = arg3 + 36
    t = ceil32(32 * arg2.length) + 129
    idx = 0
    while idx < arg3.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2.length == arg3.length
    idx = 0
    while idx < arg2.length:
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[ceil32(32 * arg2.length) + 97]:
            revert with 0, 50
        _47 = mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = _47
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _47
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _50 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_50] == bool(mem[_50])
        require mem[_50]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
