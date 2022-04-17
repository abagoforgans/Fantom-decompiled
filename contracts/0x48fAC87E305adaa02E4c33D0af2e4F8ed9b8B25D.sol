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
    if ('cd', 4).length > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 2 * ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = 2 * ('cd', 4).length
    if not uint255(('cd', 4).length):
        mem[64] = (64 * ('cd', 4).length) + 512
        mem[(64 * ('cd', 4).length) + 128 len 384] = call.data[calldata.size len 384]
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
            _40 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= 12:
                revert with 0, 50
            mem[(32 * idx) + (64 * ('cd', 4).length) + 128] = mem[_40]
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
            _48 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if 1 > !idx:
                revert with 0, 17
            if idx + 1 >= 12:
                revert with 0, 50
            mem[(32 * idx + 1) + (64 * ('cd', 4).length) + 128] = mem[_48]
            if idx > -3:
                revert with 0, 17
            idx = idx + 2
            continue 
    else:
        mem[128 len 64 * ('cd', 4).length] = call.data[calldata.size len 64 * ('cd', 4).length]
        mem[64] = (64 * ('cd', 4).length) + 512
        mem[(64 * ('cd', 4).length) + 128 len 384] = call.data[calldata.size len 384]
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
            _41 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= 12:
                revert with 0, 50
            mem[(32 * idx) + (64 * ('cd', 4).length) + 128] = mem[_41]
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
            _49 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if 1 > !idx:
                revert with 0, 17
            if idx + 1 >= 12:
                revert with 0, 50
            mem[(32 * idx + 1) + (64 * ('cd', 4).length) + 128] = mem[_49]
            if idx > -3:
                revert with 0, 17
            idx = idx + 2
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
