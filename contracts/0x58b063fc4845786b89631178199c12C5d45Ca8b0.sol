contract main {




// =====================  Runtime code  =====================


#
#  - sub_062cc858(?)
#
function _fallback() payable {
    revert
}

function sub_e5c71dc6(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == uint32(arg2)
    idx = 0
    while uint32(idx) < uint32(arg2):
        if uint32(arg1) > -uint32(idx) + test266151307():
            revert with 'NH{q', 17
        mem[mem[64] + 4] = uint32(uint32(arg1) + uint32(idx))
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                gas gas_remaining wei
               args (uint32(arg1) + uint32(idx) << 224)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_11] == mem[_11]
        if mem[_11] > 0:
            if uint32(arg1) > -uint32(idx) + test266151307():
                revert with 'NH{q', 17
            mem[mem[64] + 4] = uint32(uint32(arg1) + uint32(idx))
            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
            call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args (uint32(arg1) + uint32(idx) << 224)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_15] == mem[_15]
        if uint32(idx) == test266151307():
            revert with 'NH{q', 17
        idx = uint32(idx) + 1
        continue 
}



}
