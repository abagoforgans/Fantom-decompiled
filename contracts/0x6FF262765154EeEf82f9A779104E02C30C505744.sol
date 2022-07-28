contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_431bbf8a(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 36).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(stor0)
        staticcall stor0.balanceOf(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _12 = mem[_11]
        require mem[_11] == mem[_11]
        mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64] + 36] = cd[4]
        mem[mem[64] + 68] = _12
        require ext_code.size(stor0)
        call stor0.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[36] + 36)], cd[4], _12
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_15] == bool(mem[_15])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_b476689c(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 36).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(stor1)
        staticcall stor1.balanceOf(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _12 = mem[_11]
        require mem[_11] == mem[_11]
        mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64] + 36] = cd[4]
        mem[mem[64] + 68] = _12
        require ext_code.size(stor1)
        call stor1.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[36] + 36)], cd[4], _12
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_15] == bool(mem[_15])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
