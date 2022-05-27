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

function sub_cbf3164d(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 128 < 96 or (32 * ('cd', 36).length) + 128 > test266151307():
        revert with 0, 65
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
    if 1 == bool(stor0[msg.sender]):
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            _59 = mem[(32 * idx) + 128]
            if idx >= ('cd', 68).length:
                revert with 0, 50
            _63 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 164] = address(_59)
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 196] = _63
            require ext_code.size(address(cd[4]))
            call address(cd[4]).mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_59), _63
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if this.address != msg.sender:
            revert with 0, 'Controllable: caller is not a controller'
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            _61 = mem[(32 * idx) + 128]
            if idx >= ('cd', 68).length:
                revert with 0, 50
            _65 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 164] = address(_61)
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 196] = _65
            require ext_code.size(address(cd[4]))
            call address(cd[4]).mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_61), _65
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
