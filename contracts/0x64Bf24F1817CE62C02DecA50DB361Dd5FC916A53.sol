contract main {




// =====================  Runtime code  =====================


#
#  - sub_22b0adfa(?)
#  - sub_b8bec783(?)
#
function _fallback() payable {
    revert
}

function sub_d07cbf8d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(arg1):
        return 1
    mem[132] = 0, mem[132 len 28]
    staticcall address(arg1).mem[132 len 4] with:
            gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            mem[168] = 0, mem[168 len 28]
            staticcall address(arg1).mem[168 len 4] with:
                    gas gas_remaining wei
            if not ext_call.success:
                return 1
    else:
        if not ext_call.success:
            mem[ceil32(return_data.size) + 169] = 0, mem[ceil32(return_data.size) + 169 len 28]
            staticcall address(arg1).mem[ceil32(return_data.size) + 169 len 4] with:
                    gas gas_remaining wei
            if not ext_call.success:
                return 1
    return 0
}

function sub_6132b7d9(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _50 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_50] == mem[_50 + 12 len 20]
            require ext_code.size(mem[_50 + 12 len 20])
            if mem[_50 + 12 len 20] != 0x1120e150da9def6fe930f4feded18ef57c0ca7ef:
                staticcall mem[_50 + 12 len 20].allPairsLength() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _62 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_62] == mem[_62]
                require idx < mem[96]
                mem[(32 * idx) + 128] = mem[_62]
            else:
                staticcall mem[_50 + 12 len 20].0x5d8c32a9 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _63 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_63] == mem[_63]
                require idx < mem[96]
                mem[(32 * idx) + 128] = mem[_63]
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 4).length] = code.data[4662 len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _51 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_51] == mem[_51 + 12 len 20]
            require ext_code.size(mem[_51 + 12 len 20])
            if mem[_51 + 12 len 20] != 0x1120e150da9def6fe930f4feded18ef57c0ca7ef:
                staticcall mem[_51 + 12 len 20].allPairsLength() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _64 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_64] == mem[_64]
                require idx < mem[96]
                mem[(32 * idx) + 128] = mem[_64]
            else:
                staticcall mem[_51 + 12 len 20].0x5d8c32a9 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _65 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_65] == mem[_65]
                require idx < mem[96]
                mem[(32 * idx) + 128] = mem[_65]
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_2c6ea668(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(ext_call.return_data[0]):
        if ext_call.return_data[12 len 20] != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
            mem[(2 * ceil32(return_data.size)) + 132] = 0, mem[(2 * ceil32(return_data.size)) + 132 len 28]
            staticcall address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + 132 len 4] with:
                    gas gas_remaining wei
            if ext_call.success:
                return 0
            if not return_data.size:
                mem[(2 * ceil32(return_data.size)) + 168] = 0, mem[(2 * ceil32(return_data.size)) + 168 len 28]
                staticcall address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + 168 len 4] with:
                        gas gas_remaining wei
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 169] = 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 169 len 28]
                staticcall address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 169 len 4] with:
                        gas gas_remaining wei
            if ext_call.success:
                return 0
    else:
        mem[(2 * ceil32(return_data.size)) + 132] = 0, mem[(2 * ceil32(return_data.size)) + 132 len 28]
        staticcall address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + 132 len 4] with:
                gas gas_remaining wei
        if ext_call.success:
            return 0
        if not return_data.size:
            mem[(2 * ceil32(return_data.size)) + 168] = 0, mem[(2 * ceil32(return_data.size)) + 168 len 28]
            staticcall address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + 168 len 4] with:
                    gas gas_remaining wei
            if ext_call.success:
                return 0
            if not return_data.size:
                if address(ext_call.return_data[0]) != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                    mem[(2 * ceil32(return_data.size)) + 204] = 0, mem[(2 * ceil32(return_data.size)) + 204 len 28]
                    staticcall address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + 204 len 4] with:
                            gas gas_remaining wei
                    if ext_call.success:
                        return 0
                    if not return_data.size:
                        mem[(2 * ceil32(return_data.size)) + 240] = 0, mem[(2 * ceil32(return_data.size)) + 240 len 28]
                        staticcall address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + 240 len 4] with:
                                gas gas_remaining wei
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 241] = 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 241 len 28]
                        staticcall address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 241 len 4] with:
                                gas gas_remaining wei
                    if ext_call.success:
                        return 0
            else:
                if address(ext_call.return_data[0]) != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 205] = 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 205 len 28]
                    staticcall address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 205 len 4] with:
                            gas gas_remaining wei
                    if ext_call.success:
                        return 0
                    if not return_data.size:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 241] = 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 241 len 28]
                        staticcall address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 241 len 4] with:
                                gas gas_remaining wei
                    else:
                        mem[(4 * ceil32(return_data.size)) + 242] = 0, mem[(4 * ceil32(return_data.size)) + 242 len 28]
                        staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 242 len 4] with:
                                gas gas_remaining wei
                    if ext_call.success:
                        return 0
        else:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 169] = 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 169 len 28]
            staticcall address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 169 len 4] with:
                    gas gas_remaining wei
            if ext_call.success:
                return 0
            if not return_data.size:
                if address(ext_call.return_data[0]) != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 205] = 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 205 len 28]
                    staticcall address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 205 len 4] with:
                            gas gas_remaining wei
                    if ext_call.success:
                        return 0
                    if not return_data.size:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 241] = 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 241 len 28]
                        staticcall address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 241 len 4] with:
                                gas gas_remaining wei
                    else:
                        mem[(4 * ceil32(return_data.size)) + 242] = 0, mem[(4 * ceil32(return_data.size)) + 242 len 28]
                        staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 242 len 4] with:
                                gas gas_remaining wei
                    if ext_call.success:
                        return 0
            else:
                if address(ext_call.return_data[0]) != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                    mem[(4 * ceil32(return_data.size)) + 206] = 0, mem[(4 * ceil32(return_data.size)) + 206 len 28]
                    staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 206 len 4] with:
                            gas gas_remaining wei
                    if ext_call.success:
                        return 0
                    if not return_data.size:
                        mem[(4 * ceil32(return_data.size)) + 242] = 0, mem[(4 * ceil32(return_data.size)) + 242 len 28]
                        staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + 242 len 4] with:
                                gas gas_remaining wei
                    else:
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 243] = 0, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 243 len 28]
                        staticcall address(ext_call.return_data[0]).mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 243 len 4] with:
                                gas gas_remaining wei
                    if ext_call.success:
                        return 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
}



}
