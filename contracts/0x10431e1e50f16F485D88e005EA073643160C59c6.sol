contract main {




// =====================  Runtime code  =====================


const sub_7fb9b726(?) = 750000


address owner;
address traderAddress;

function trader() {
    return traderAddress
}

function owner() {
    return owner
}

function destroy() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTrader(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    traderAddress = arg1
}

function transfer(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < arg1:
        revert with 0, 'BAL'
    call arg2 with:
       value arg1 wei
         gas gas_remaining wei
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approveERC20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function invoke(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not return_data.size:
        return ' '
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function transferERC20(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'BAL'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e01c1d7e(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if traderAddress != msg.sender:
        revert with 0, 'LOL'
    if cd[164] < 1:
        revert with 0, 'ITER'
    if ('cd', 100).length < 4:
        revert with 0, 'LEN'
    if not ('cd', 100).length:
        revert with 0, 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    if ('cd', 100).length < 1:
        revert with 0, 17
    if ('cd', 100).length - 1 >= ('cd', 100).length:
        revert with 0, 50
    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    idx = 0
    while idx < cd[164]:
        _29 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[36]
        mem[mem[64] + 36] = cd[68]
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 100).length
        s = 0
        t = cd[100] + 36
        u = mem[64] + 196
        while s < ('cd', 100).length:
            require cd[t] == address(cd[t])
            mem[u] = address(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_29 + 100] = this.address
        mem[_29 + 132] = cd[132]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _29 + (32 * ('cd', 100).length) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _52 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _53 = mem[_52]
        require mem[_52] <= test266151307()
        require _52 + mem[_52] + 31 < _52 + return_data.size
        _54 = mem[_52 + mem[_52]]
        if mem[_52 + mem[_52]] > test266151307():
            revert with 0, 65
        if _52 + ceil32(return_data.size) + ceil32(32 * mem[_52 + mem[_52]]) + 1 > test266151307() or ceil32(32 * mem[_52 + mem[_52]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _52 + ceil32(return_data.size) + ceil32(32 * mem[_52 + mem[_52]]) + 1
        mem[_52 + ceil32(return_data.size)] = _54
        require return_data.size >= _53 + (32 * _54) + 32
        t = _52 + _53 + 32
        u = _52 + ceil32(return_data.size) + 32
        s = 0
        while s < _54:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if gas_remaining < 750000:
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(('cd', 100)[0]))
        staticcall address(('cd', 100)[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _75 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_75] < cd[36]:
        _77 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[36]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = ('cd', 100).length
        s = 0
        t = cd[100] + 36
        u = mem[64] + 100
        while s < ('cd', 100).length:
            require cd[t] == address(cd[t])
            mem[u] = address(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _77 + (32 * ('cd', 100).length) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _89 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _90 = mem[_89]
        require mem[_89] <= test266151307()
        require _89 + mem[_89] + 31 < _89 + return_data.size
        _91 = mem[_89 + mem[_89]]
        if mem[_89 + mem[_89]] > test266151307():
            revert with 0, 65
        if _89 + ceil32(return_data.size) + ceil32(32 * mem[_89 + mem[_89]]) + 1 > test266151307() or ceil32(32 * mem[_89 + mem[_89]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _89 + ceil32(return_data.size) + ceil32(32 * mem[_89 + mem[_89]]) + 1
        mem[_89 + ceil32(return_data.size)] = _91
        require return_data.size >= _90 + (32 * _91) + 32
        t = _89 + _90 + 32
        u = _89 + ceil32(return_data.size) + 32
        s = 0
        while s < _91:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if 0 == _91:
        if _91 < 1:
            revert with 0, 17
        if _91 - 1 >= _91:
            revert with 0, 50
        if mem[(32 * _91 - 1) + _89 + ceil32(return_data.size) + 32] < cd[68]:
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
