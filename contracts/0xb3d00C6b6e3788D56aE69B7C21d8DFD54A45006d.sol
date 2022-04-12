contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_c32d423f(?) payable {
    require calldata.size - 4 >= 64
    if arg1 >= arg2:
        revert with 0, 'Ea>=Eb'
    if 997000 * arg1 * arg2 <= 3:
        if not 997000 * arg1 * arg2:
            return (-1000 * arg1 / 997)
        return ((-1000 * arg1) + 1 / 997)
    s = (997000 * arg1 * arg2 / 2) + 1
    t = 997000 * arg1 * arg2
    while s < t:
        require s
        s = (997000 * arg1 * arg2 / s) + s / 2
        t = s
        continue 
    return (t - (1000 * arg1) / 997)
}

function sub_5f6b42e7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    idx = 0
    while idx < arg2.length:
        if not idx:
            idx = idx + 1
            continue 
        if idx != 1:
            if idx <= 1:
                idx = idx + 1
                continue 
            if idx < arg1.length:
                if mem[(32 * idx) + 128]:
                    if 1 < arg2.length:
                        require ext_code.size(mem[(32 * arg1.length) + 204 len 20])
                        staticcall mem[(32 * arg1.length) + 204 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if 1000 * ext_call.return_data[18 len 14]:
                            idx = idx + 1
                            continue 
                else:
                    if idx < arg2.length:
                        require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                        staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if 1000 * ext_call.return_data[50 len 14]:
                            idx = idx + 1
                            continue 
        else:
            if 0 < arg1.length:
                if mem[128] != 1:
                    if 0 < arg2.length:
                        require ext_code.size(mem[(32 * arg1.length) + 172 len 20])
                        staticcall mem[(32 * arg1.length) + 172 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if 1 < arg1.length:
                            if mem[160]:
                                if 1 < arg2.length:
                                    require ext_code.size(mem[(32 * arg1.length) + 204 len 20])
                                    staticcall mem[(32 * arg1.length) + 204 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, ext_call.return_data[0])):
                                        if idx <= 1:
                                            idx = idx + 1
                                            continue 
                                        if idx < arg1.length:
                                            if mem[(32 * idx) + 128]:
                                                if 1 < arg2.length:
                                                    require ext_code.size(mem[(32 * arg1.length) + 204 len 20])
                                                    staticcall mem[(32 * arg1.length) + 204 len 20].getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    if (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 1997 * Mask(112, 0, ext_call.return_data[0])):
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                if idx < arg2.length:
                                                    require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                                    staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    if (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 1997 * Mask(112, 0, ext_call.return_data[0])):
                                                        idx = idx + 1
                                                        continue 
                            else:
                                if 1 < arg2.length:
                                    require ext_code.size(mem[(32 * arg1.length) + 204 len 20])
                                    staticcall mem[(32 * arg1.length) + 204 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, ext_call.return_data[0])):
                                        if idx <= 1:
                                            idx = idx + 1
                                            continue 
                                        if idx < arg1.length:
                                            if mem[(32 * idx) + 128]:
                                                if 1 < arg2.length:
                                                    require ext_code.size(mem[(32 * arg1.length) + 204 len 20])
                                                    staticcall mem[(32 * arg1.length) + 204 len 20].getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    if (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, ext_call.return_data[0]))):
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                if idx < arg2.length:
                                                    require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                                    staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    if (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, ext_call.return_data[0]))):
                                                        idx = idx + 1
                                                        continue 
                else:
                    if 0 < arg2.length:
                        require ext_code.size(mem[(32 * arg1.length) + 172 len 20])
                        staticcall mem[(32 * arg1.length) + 172 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if 1 < arg1.length:
                            if mem[160]:
                                if 1 < arg2.length:
                                    require ext_code.size(mem[(32 * arg1.length) + 204 len 20])
                                    staticcall mem[(32 * arg1.length) + 204 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, ext_call.return_data[32])):
                                        if idx <= 1:
                                            idx = idx + 1
                                            continue 
                                        if idx < arg1.length:
                                            if mem[(32 * idx) + 128]:
                                                if 1 < arg2.length:
                                                    require ext_code.size(mem[(32 * arg1.length) + 204 len 20])
                                                    staticcall mem[(32 * arg1.length) + 204 len 20].getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    if (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, ext_call.return_data[32]))):
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                if idx < arg2.length:
                                                    require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                                    staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    if (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, ext_call.return_data[32]))):
                                                        idx = idx + 1
                                                        continue 
                            else:
                                if 1 < arg2.length:
                                    require ext_code.size(mem[(32 * arg1.length) + 204 len 20])
                                    staticcall mem[(32 * arg1.length) + 204 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, ext_call.return_data[32])):
                                        if idx <= 1:
                                            idx = idx + 1
                                            continue 
                                        if idx < arg1.length:
                                            if mem[(32 * idx) + 128]:
                                                if 1 < arg2.length:
                                                    require ext_code.size(mem[(32 * arg1.length) + 204 len 20])
                                                    staticcall mem[(32 * arg1.length) + 204 len 20].getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    if (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 1997 * Mask(112, 0, ext_call.return_data[32])):
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                if idx < arg2.length:
                                                    require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                                                    staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    if (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 1997 * Mask(112, 0, ext_call.return_data[32])):
                                                        idx = idx + 1
                                                        continue 
        revert
    return 0
}



}
