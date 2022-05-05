contract main {




// =====================  Runtime code  =====================


address sub_cd96c052Address;
address sub_a7269dbcAddress;
array of address sub_a96d034f;

function getLockAddress(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > 4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'getLockAddress: lock doesnt exist'
    if arg1 >= sub_a96d034f.length:
        revert with 0, 50
    return sub_a96d034f[arg1].field_0
}

function sub_a7269dbc(?) payable {
    return sub_a7269dbcAddress
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
    staticcall sub_cd96c052Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(sub_a7269dbcAddress)
    staticcall sub_a7269dbcAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'forwardTokens: no shades!'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'forwardTokens: no Shade lps!'
    idx = 0
    while idx <= 3:
        if idx >= sub_a96d034f.length:
            revert with 0, 50
        mem[0] = 2
        mem[mem[64] + 4] = sub_a96d034f[idx].field_0
        mem[mem[64] + 36] = ext_call.return_data[0] / 4
        require ext_code.size(sub_cd96c052Address)
        call sub_cd96c052Address.0xa9059cbb with:
             gas gas_remaining wei
            args sub_a96d034f[idx].field_0, ext_call.return_data[0] / 4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_25] == bool(mem[_25])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(sub_cd96c052Address)
    staticcall sub_cd96c052Address.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _21 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _23 = mem[_21]
    if not mem[_21]:
        if 4 >= sub_a96d034f.length:
            revert with 0, 50
        mem[0] = 2
        _29 = mem[64]
        mem[mem[64] + 36] = address(sub_a96d034f.field_1024)
        mem[mem[64] + 68] = ext_call.return_data[0]
        _32 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_29 + 100] = 32
        mem[_29 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_a7269dbcAddress):
            revert with 0, 'Address: call to non-contract'
        _41 = mem[_32]
        mem[_29 + 164 len ceil32(mem[_32])] = mem[_32 + 32 len ceil32(mem[_32])]
        if ceil32(_41) > _41:
            mem[_29 + _41 + 164] = 0
        call sub_a7269dbcAddress with:
             gas gas_remaining wei
            args mem[_29 + 168 len _41 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_29 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_29 + 196] == bool(mem[_29 + 196])
                if not mem[_29 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if 3 >= sub_a96d034f.length:
            revert with 0, 50
        mem[0] = 2
        mem[mem[64] + 4] = address(sub_a96d034f.field_768)
        mem[mem[64] + 36] = _23
        require ext_code.size(sub_cd96c052Address)
        call sub_cd96c052Address.0xa9059cbb with:
             gas gas_remaining wei
            args address(sub_a96d034f.field_768), _23
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _35 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_35] == bool(mem[_35])
        if 4 >= sub_a96d034f.length:
            revert with 0, 50
        mem[0] = 2
        _44 = mem[64]
        mem[mem[64] + 36] = address(sub_a96d034f.field_1024)
        mem[mem[64] + 68] = ext_call.return_data[0]
        _46 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_44 + 100] = 32
        mem[_44 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_a7269dbcAddress):
            revert with 0, 'Address: call to non-contract'
        _59 = mem[_46]
        mem[_44 + 164 len ceil32(mem[_46])] = mem[_46 + 32 len ceil32(mem[_46])]
        if ceil32(_59) > _59:
            mem[_44 + _59 + 164] = 0
        call sub_a7269dbcAddress with:
             gas gas_remaining wei
            args mem[_44 + 168 len _59 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_44 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_44 + 196] == bool(mem[_44 + 196])
                if not mem[_44 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
