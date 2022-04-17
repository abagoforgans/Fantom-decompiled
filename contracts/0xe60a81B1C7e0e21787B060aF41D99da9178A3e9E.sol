contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_e02a797f(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[96 len 384] = call.data[calldata.size len 384]
    if ('cd', 4).length > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    mem[64] = 864
    mem[480 len 384] = call.data[calldata.size len 384]
    idx = 0
    while idx < 2 * ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])
        if 0 >= cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
            revert with 0, 50
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] == address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)]))
        staticcall address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= 12:
            revert with 0, 50
        mem[(32 * idx) + 480] = mem[_17]
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])
        if 1 >= cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
            revert with 0, 50
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 100)] == address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 100)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 100)]))
        staticcall address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 100)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if 1 > !idx:
            revert with 0, 17
        if idx + 1 >= 12:
            revert with 0, 50
        mem[(32 * idx + 1) + 480] = mem[_21]
        if idx > -3:
            revert with 0, 17
        idx = idx + 2
        continue 
    mem[mem[64] len 384] = mem[480 len 384]
    return memory
      from mem[64]
       len 384
}



}
