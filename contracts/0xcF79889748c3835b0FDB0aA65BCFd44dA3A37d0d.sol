contract main {




// =====================  Runtime code  =====================


#
#  - sub_cf29a21c(?)
#
uint128 sub_2a9719a4;
uint128 sub_b0759d08; offset 128
uint256 sub_94d5567a;
address stor2;
address sub_23ba76faAddress;

function sub_23ba76fa(?) {
    return sub_23ba76faAddress
}

function sub_2a9719a4(?) {
    return sub_2a9719a4
}

function sub_94d5567a(?) {
    return sub_94d5567a
}

function sub_b0759d08(?) {
    return sub_b0759d08
}

function _fallback() payable {
    revert
}

function sub_b22be9c3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(arg1) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        call 0x5638f545c240e52920f49c035ba6e85846d229d6 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            return 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args 0x5638f545c240e52920f49c035ba6e85846d229d6, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return ext_call.return_data[0]
}

function sub_db01742a(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx <= 2:
        mem[mem[64] + 4] = idx
        require ext_code.size(stor2)
        call stor2.coins(uint256 arg1) with:
             gas gas_remaining wei
            args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_17] == mem[_17 + 12 len 20]
        if mem[_17 + 12 len 20] != 0x4068da6c83afcfa0e13ba15a6696662335d5b75:
            mem[mem[64] + 4] = idx
            require ext_code.size(stor2)
            call stor2.coins(uint256 arg1) with:
                 gas gas_remaining wei
                args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _26 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_26] == mem[_26 + 12 len 20]
            if 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e == mem[_26 + 12 len 20]:
                sub_b0759d08 = uint128(idx)
        else:
            sub_2a9719a4 = uint128(idx)
            mem[mem[64] + 4] = idx
            require ext_code.size(stor2)
            call stor2.coins(uint256 arg1) with:
                 gas gas_remaining wei
                args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_27] == mem[_27 + 12 len 20]
            if 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e == mem[_27 + 12 len 20]:
                sub_b0759d08 = uint128(idx)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e)
    staticcall 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _18 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _20 = mem[_18]
    require mem[_18] == mem[_18]
    _21 = mem[64]
    mem[mem[64] + 36] = sub_2a9719a4
    mem[mem[64] + 68] = sub_b0759d08
    mem[mem[64] + 100] = arg1
    mem[mem[64] + 132] = 1
    _30 = mem[64]
    mem[mem[64]] = 132
    mem[64] = mem[64] + 164
    mem[_30 + 32 len 4] = exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4)
    _33 = mem[_30]
    mem[_21 + 164 len ceil32(mem[_30])] = mem[_30 + 32 len ceil32(mem[_30])]
    if ceil32(_33) <= _33:
        call sub_23ba76faAddress with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _21 + _33 + -mem[64] + 160]
        if not return_data.size:
            require ext_call.success
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e)
            staticcall 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _68 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_68] == mem[_68]
            if mem[_68] < _20:
                revert with 'NH{q', 17
            sub_94d5567a = mem[_68] - _20
        else:
            _57 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_57] = return_data.size
            mem[_57 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require ext_call.success
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e)
            staticcall 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_69] == mem[_69]
            if mem[_69] < _20:
                revert with 'NH{q', 17
            sub_94d5567a = mem[_69] - _20
    else:
        mem[_21 + _33 + 164] = 0
        call sub_23ba76faAddress with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _21 + _33 + -mem[64] + 160]
        if not return_data.size:
            require ext_call.success
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e)
            staticcall 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _70 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_70] == mem[_70]
            if mem[_70] < _20:
                revert with 'NH{q', 17
            sub_94d5567a = mem[_70] - _20
        else:
            _59 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_59] = return_data.size
            mem[_59 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require ext_call.success
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e)
            staticcall 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _71 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_71] == mem[_71]
            if mem[_71] < _20:
                revert with 'NH{q', 17
            sub_94d5567a = mem[_71] - _20
}



}
