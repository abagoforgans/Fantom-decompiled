contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getLastHarvests(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            _34 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_34 + 32] = mem[_34 + 36 len 28] or 0xf1a392da00000000000000000000000000000000000000000000000000000000
            staticcall cd[((32 * idx) + arg1 + 36)].mem[_34 + 32 len 4] with:
                    gas 16000 wei
                   args mem[_34 + 36 len mem[_34] - 4]
            if 1 != ext_call.success:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = 0
            else:
                if 32 != return_data.size:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = 0
                else:
                    mem[0] = ext_call.return_data[0]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = ext_call.return_data[0]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            _38 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_38 + 32] = mem[_38 + 36 len 28] or 0xf1a392da00000000000000000000000000000000000000000000000000000000
            staticcall cd[((32 * idx) + arg1 + 36)].mem[_38 + 32 len 4] with:
                    gas 16000 wei
                   args mem[_38 + 36 len mem[_38] - 4]
            if 1 != ext_call.success:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = 0
            else:
                if 32 != return_data.size:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = 0
                else:
                    mem[0] = ext_call.return_data[0]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = ext_call.return_data[0]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
