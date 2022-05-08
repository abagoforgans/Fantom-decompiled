contract main {




// =====================  Runtime code  =====================


address sub_cd96c052Address;
array of address sub_a96d034f;

function getLockAddress(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'getLockAddress: lock doesnt exist'
    if arg1 >= sub_a96d034f.length:
        revert with 0, 50
    return sub_a96d034f[arg1].field_0
}

function sub_a96d034f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_a96d034f.length
    return sub_a96d034f[arg1].field_0
}

function sub_cd96c052(?) payable {
    return sub_cd96c052Address
}

function _fallback() payable {
    revert
}

function release(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= sub_a96d034f.length:
        revert with 0, 50
    require ext_code.size(sub_a96d034f[arg1].field_0)
    call sub_a96d034f[arg1].field_0.release() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function forwardTokens() payable {
    mem[100] = this.address
    require ext_code.size(sub_cd96c052Address)
    staticcall sub_cd96c052Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'forwardTokens: no shades!'
    idx = 0
    while idx <= 3:
        if idx >= sub_a96d034f.length:
            revert with 0, 50
        mem[0] = 1
        mem[mem[64] + 4] = sub_a96d034f[idx].field_0
        mem[mem[64] + 36] = ext_call.return_data[0] / 4
        require ext_code.size(sub_cd96c052Address)
        call sub_cd96c052Address.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_a96d034f[idx].field_0, ext_call.return_data[0] / 4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_19] == bool(mem[_19])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(sub_cd96c052Address)
    staticcall sub_cd96c052Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _15 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _16 = mem[_15]
    if mem[_15]:
        if 3 >= sub_a96d034f.length:
            revert with 0, 50
        mem[0] = 1
        mem[mem[64] + 4] = address(sub_a96d034f.field_768)
        mem[mem[64] + 36] = _16
        require ext_code.size(sub_cd96c052Address)
        call sub_cd96c052Address.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(sub_a96d034f.field_768), _16
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _24 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_24] == bool(mem[_24])
}



}
