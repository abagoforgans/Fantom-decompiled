contract main {




// =====================  Runtime code  =====================


address rmAddress;

function rm() payable {
    return rmAddress
}

function _fallback() payable {
    revert
}

function sub_3a091650(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _50 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(rmAddress)
        staticcall rmAddress.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args _50
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _53 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp > mem[_53]:
            require ext_code.size(rmAddress)
            call rmAddress.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args _50
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = _50
            require ext_code.size(rmAddress)
            staticcall rmAddress.xp(uint256 arg1) with:
                    gas gas_remaining wei
                   args _50
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _59 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _60 = mem[_59]
            mem[mem[64] + 4] = _50
            require ext_code.size(rmAddress)
            staticcall rmAddress.level(uint256 arg1) with:
                    gas gas_remaining wei
                   args _50
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _63 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _64 = mem[_63]
            mem[mem[64] + 4] = mem[_63]
            require ext_code.size(rmAddress)
            staticcall rmAddress.xp_required(uint256 arg1) with:
                    gas gas_remaining wei
                   args _64
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _67 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_67] <= _60:
                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _50
                require ext_code.size(rmAddress)
                call rmAddress.level_up(uint256 arg1) with:
                     gas gas_remaining wei
                    args _50
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
