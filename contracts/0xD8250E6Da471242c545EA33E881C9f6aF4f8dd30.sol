contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_7fe5f143(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == bool(cd[68])
    idx = 0
    while idx < ('cd', 36).length:
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        _8 = mem[64]
        mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
        mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
        call address(cd[4]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _8 + -mem[64] - 4]
        if return_data.size:
            _10 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_10] = return_data.size
            mem[_10 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        mem[mem[64]] = idx
        mem[mem[64] + 32] = address(cd[4])
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        mem[mem[64] + 160 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
        mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64] + 160] = 0
        mem[mem[64] + 96] = bool(ext_call.success)
        emit 0x76ba75f5: idx, address(cd[4]), Array(len=cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)], data=call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]), bool(ext_call.success)
        if not ext_call.success:
            require not cd[68]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
