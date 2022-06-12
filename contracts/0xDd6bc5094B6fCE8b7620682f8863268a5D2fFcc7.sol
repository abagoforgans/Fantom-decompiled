contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_bc150002(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    stor0 = address(arg1)
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return Mask(32, 224, sha3(0xfe6f6e455243373231526563656976656428616464726573732c616464726573732c75696e743235362c6279746573))
}

function sub_ab93d873(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    idx = 0
    while idx < arg1:
        require ext_code.size(stor0)
        staticcall stor0.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _22 = mem[_21]
        require mem[_21] == mem[_21]
        require ext_code.size(stor0)
        call stor0.summon(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor0)
        call stor0.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), address(arg3), _22
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _22
        _28 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_28 + 32] = mem[_28 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
        _31 = mem[_28]
        s = 0
        while s < _31:
            mem[_27 + s + 100] = mem[_28 + s + 32]
            s = s + 32
            continue 
        if ceil32(_31) <= _31:
            delegate stor0.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _27 + _31 + -mem[64] + 96]
            if return_data.size:
                _39 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_39] = return_data.size
                mem[_39 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_27 + _31 + 100] = 0
            delegate stor0.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _27 + _31 + -mem[64] + 96]
            if return_data.size:
                _41 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_41] = return_data.size
                mem[_41 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require delegate.return_code
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
