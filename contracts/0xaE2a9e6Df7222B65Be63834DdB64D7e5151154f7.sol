contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function isController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function relinquishControl() payable {
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[msg.sender] = 0
}

function addController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[address(arg1)] = 1
}

function sub_259c276e(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 128 < 96 or (32 * ('cd', 36).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 68).length) + 160 < 128 or (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 > test266151307():
        revert with 0, 65
    mem[64] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 0
    if 1 == bool(stor0[msg.sender]):
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            _71 = mem[(32 * idx) + 128]
            if idx >= mem[(32 * ('cd', 36).length) + 128]:
                revert with 0, 50
            _75 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_71)
            mem[mem[64] + 68] = _75
            require ext_code.size(address(cd[4]))
            call address(cd[4]).0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), address(_71), _75
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _81 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_81] == bool(mem[_81])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if this.address != msg.sender:
            revert with 0, 'Controllable: caller is not a controller'
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            _73 = mem[(32 * idx) + 128]
            if idx >= mem[(32 * ('cd', 36).length) + 128]:
                revert with 0, 50
            _77 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_73)
            mem[mem[64] + 68] = _77
            require ext_code.size(address(cd[4]))
            call address(cd[4]).0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), address(_73), _77
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _82 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_82] == bool(mem[_82])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
