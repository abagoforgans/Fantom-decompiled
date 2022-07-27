contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_81153fa0(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    mem[96] = (4 * ('cd', 4).length) + 2
    if not (4 * ('cd', 4).length) + 2:
        mem[(32 * (4 * ('cd', 4).length) + 2) + 160] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
        mem[(32 * (4 * ('cd', 4).length) + 2) + 180] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
        mem[(32 * (4 * ('cd', 4).length) + 2) + 128] = 40
        mem[(32 * (4 * ('cd', 4).length) + 2) + 232] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[(32 * (4 * ('cd', 4).length) + 2) + 233] = 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3000000000000000000000000
        mem[(32 * (4 * ('cd', 4).length) + 2) + 253] = sha3(290074973475372282, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        mem[(32 * (4 * ('cd', 4).length) + 2) + 285] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
        mem[(32 * (4 * ('cd', 4).length) + 2) + 200] = 85
        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                gas gas_remaining wei
               args address(sha3(0, 1526410864014554874, sha3(290074973475372282, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * (4 * ('cd', 4).length) + 2) + 353] = address(sha3(0, 1526410864014554874, sha3(290074973475372282, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2))
        mem[(32 * (4 * ('cd', 4).length) + 2) + 317] = 36
        mem[64] = (32 * (4 * ('cd', 4).length) + 2) + 385
        mem[(32 * (4 * ('cd', 4).length) + 2) + 353 len 28] = address(sha3(0, 1526410864014554874, sha3(290074973475372282, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)) << 64
        mem[(32 * (4 * ('cd', 4).length) + 2) + 349 len 4] = unknown_0x70a08231(?????)
        mem[(32 * (4 * ('cd', 4).length) + 2) + 385] = unknown_0x70a08231(?????), address(sha3(0, 1526410864014554874, sha3(290074973475372282, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)) << 64
        mem[(32 * (4 * ('cd', 4).length) + 2) + 445 len 4] = 0
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
                gas gas_remaining wei
               args Mask(224, 0, unknown_0x70a08231(?????), address(sha3(0, 1526410864014554874, sha3(290074973475372282, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)) << 64), mem[(32 * (4 * ('cd', 4).length) + 2) + 417 len 4]
        if not return_data.size:
            if not ext_call.success:
                require 0 < (4 * ('cd', 4).length) + 2
                require 1 < (4 * ('cd', 4).length) + 2
                mem[160] = 0
                mem[128] = ext_call.return_data[0]
                idx = 0
                while idx < ('cd', 4).length:
                    require idx < ('cd', 36).length
                    require idx < ('cd', 68).length
                    require idx < ('cd', 4).length
                    if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 == address(cd[((32 * idx) + cd[4] + 36)]):
                        revert with 0, 'IDENTICAL_ADDRESSES'
                    if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 < address(cd[((32 * idx) + cd[4] + 36)]):
                        _25938 = mem[64]
                        mem[mem[64] + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
                        mem[mem[64] + 52] = address(cd[((32 * idx) + cd[4] + 36)])
                        _25939 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _25941 = sha3(mem[_25939 + 32 len mem[_25939]])
                        mem[_25938 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_25938 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[_25938 + 125] = _25941
                        mem[_25938 + 157] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_25938 + 72] = 85
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                gas gas_remaining wei
                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25941, cd[((32 * idx) + cd[68] + 36)]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_25938 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25941, cd[((32 * idx) + cd[68] + 36)]))
                        mem[_25938 + 189] = 36
                        mem[64] = _25938 + 257
                        mem[_25938 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25941, cd[((32 * idx) + cd[68] + 36)])) << 64
                        t = _25938 + 221
                        u = _25938 + 257
                        s = 36
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_25938 + 289] = mem[_25938 + 281 len 4] or Mask(224, 32, mem[_25938 + 289])
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25938 + 257 len 4] with:
                                gas gas_remaining wei
                               args mem[_25938 + 261]
                        if not return_data.size:
                            if not ext_call.success:
                                require (4 * idx) + 2 < mem[96]
                                require (4 * idx) + 3 < mem[96]
                                mem[(32 * (4 * idx) + 3) + 128] = 0
                            else:
                                if mem[96] != 32:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    require mem[96] >= 32
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = mem[128]
                            mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                revert with 0, 'IDENTICAL_ADDRESSES'
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                mem[_25938 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                mem[_25938 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_25938 + 257] = 40
                                mem[_25938 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_25938 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                mem[_25938 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                mem[_25938 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                mem[_25938 + 329] = 85
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_25938 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                mem[_25938 + 446] = 36
                                mem[64] = _25938 + 514
                                mem[_25938 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                            else:
                                if not address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'ZERO_ADDRESS'
                                mem[_25938 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_25938 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                mem[_25938 + 257] = 40
                                mem[_25938 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_25938 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                mem[_25938 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                mem[_25938 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                mem[_25938 + 329] = 85
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_25938 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                mem[_25938 + 446] = 36
                                mem[64] = _25938 + 514
                                mem[_25938 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _25938 + 478
                            u = _25938 + 514
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_25938 + 546] = mem[_25938 + 538 len 4] or Mask(224, 32, mem[_25938 + 546])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25938 + 514 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_25938 + 518]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 4 < mem[96]
                                    require (4 * idx) + 5 < mem[96]
                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                            else:
                                mem[64] = _25938 + ceil32(return_data.size) + 515
                                mem[_25938 + 514] = return_data.size
                                mem[_25938 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 4 < mem[96]
                                    require (4 * idx) + 5 < mem[96]
                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = mem[_25938 + 546]
                        else:
                            mem[_25938 + 257] = return_data.size
                            mem[_25938 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require (4 * idx) + 2 < mem[96]
                                require (4 * idx) + 3 < mem[96]
                                mem[(32 * (4 * idx) + 3) + 128] = 0
                            else:
                                if return_data.size != 32:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    require return_data.size >= 32
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = mem[_25938 + 289]
                            mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                revert with 0, 'IDENTICAL_ADDRESSES'
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                mem[_25938 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                mem[_25938 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_25938 + ceil32(return_data.size) + 258] = 40
                                mem[_25938 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_25938 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                mem[_25938 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                mem[_25938 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                mem[_25938 + ceil32(return_data.size) + 330] = 85
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_25938 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                mem[_25938 + ceil32(return_data.size) + 447] = 36
                                mem[64] = _25938 + ceil32(return_data.size) + 515
                                mem[_25938 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                            else:
                                if not address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'ZERO_ADDRESS'
                                mem[_25938 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_25938 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                mem[_25938 + ceil32(return_data.size) + 258] = 40
                                mem[_25938 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_25938 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                mem[_25938 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                mem[_25938 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                mem[_25938 + ceil32(return_data.size) + 330] = 85
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_25938 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                mem[_25938 + ceil32(return_data.size) + 447] = 36
                                mem[64] = _25938 + ceil32(return_data.size) + 515
                                mem[_25938 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _25938 + ceil32(return_data.size) + 479
                            u = _25938 + ceil32(return_data.size) + 515
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_25938 + ceil32(return_data.size) + 547] = mem[_25938 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_25938 + ceil32(return_data.size) + 547])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25938 + ceil32(return_data.size) + 515 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_25938 + ceil32(return_data.size) + 519]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 4 < mem[96]
                                    require (4 * idx) + 5 < mem[96]
                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                            else:
                                mem[64] = _25938 + (2 * ceil32(return_data.size)) + 516
                                mem[_25938 + ceil32(return_data.size) + 515] = return_data.size
                                mem[_25938 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 4 < mem[96]
                                    require (4 * idx) + 5 < mem[96]
                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = mem[_25938 + ceil32(return_data.size) + 547]
                    else:
                        if not address(cd[((32 * idx) + cd[4] + 36)]):
                            revert with 0, 'ZERO_ADDRESS'
                        _25945 = mem[64]
                        mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 52] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
                        _25946 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _25948 = sha3(mem[_25946 + 32 len mem[_25946]])
                        mem[_25945 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_25945 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[_25945 + 125] = _25948
                        mem[_25945 + 157] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_25945 + 72] = 85
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                gas gas_remaining wei
                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25948, cd[((32 * idx) + cd[68] + 36)]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_25945 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25948, cd[((32 * idx) + cd[68] + 36)]))
                        mem[_25945 + 189] = 36
                        mem[64] = _25945 + 257
                        mem[_25945 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25948, cd[((32 * idx) + cd[68] + 36)])) << 64
                        t = _25945 + 221
                        u = _25945 + 257
                        s = 36
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_25945 + 289] = mem[_25945 + 281 len 4] or Mask(224, 32, mem[_25945 + 289])
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25945 + 257 len 4] with:
                                gas gas_remaining wei
                               args mem[_25945 + 261]
                        if not return_data.size:
                            if not ext_call.success:
                                require (4 * idx) + 2 < mem[96]
                                require (4 * idx) + 3 < mem[96]
                                mem[(32 * (4 * idx) + 3) + 128] = 0
                            else:
                                if mem[96] != 32:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    require mem[96] >= 32
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = mem[128]
                            mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                revert with 0, 'IDENTICAL_ADDRESSES'
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                mem[_25945 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                mem[_25945 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_25945 + 257] = 40
                                mem[_25945 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_25945 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                mem[_25945 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                mem[_25945 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                mem[_25945 + 329] = 85
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_25945 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                mem[_25945 + 446] = 36
                                mem[64] = _25945 + 514
                                mem[_25945 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                            else:
                                if not address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'ZERO_ADDRESS'
                                mem[_25945 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_25945 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                mem[_25945 + 257] = 40
                                mem[_25945 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_25945 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                mem[_25945 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                mem[_25945 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                mem[_25945 + 329] = 85
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_25945 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                mem[_25945 + 446] = 36
                                mem[64] = _25945 + 514
                                mem[_25945 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _25945 + 478
                            u = _25945 + 514
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_25945 + 546] = mem[_25945 + 538 len 4] or Mask(224, 32, mem[_25945 + 546])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25945 + 514 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_25945 + 518]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 4 < mem[96]
                                    require (4 * idx) + 5 < mem[96]
                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                            else:
                                mem[64] = _25945 + ceil32(return_data.size) + 515
                                mem[_25945 + 514] = return_data.size
                                mem[_25945 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 4 < mem[96]
                                    require (4 * idx) + 5 < mem[96]
                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = mem[_25945 + 546]
                        else:
                            mem[_25945 + 257] = return_data.size
                            mem[_25945 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require (4 * idx) + 2 < mem[96]
                                require (4 * idx) + 3 < mem[96]
                                mem[(32 * (4 * idx) + 3) + 128] = 0
                            else:
                                if return_data.size != 32:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    require return_data.size >= 32
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = mem[_25945 + 289]
                            mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                revert with 0, 'IDENTICAL_ADDRESSES'
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                mem[_25945 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                mem[_25945 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_25945 + ceil32(return_data.size) + 258] = 40
                                mem[_25945 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_25945 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                mem[_25945 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                mem[_25945 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                mem[_25945 + ceil32(return_data.size) + 330] = 85
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_25945 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                mem[_25945 + ceil32(return_data.size) + 447] = 36
                                mem[64] = _25945 + ceil32(return_data.size) + 515
                                mem[_25945 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                            else:
                                if not address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'ZERO_ADDRESS'
                                mem[_25945 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_25945 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                mem[_25945 + ceil32(return_data.size) + 258] = 40
                                mem[_25945 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_25945 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                mem[_25945 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                mem[_25945 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                mem[_25945 + ceil32(return_data.size) + 330] = 85
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_25945 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                mem[_25945 + ceil32(return_data.size) + 447] = 36
                                mem[64] = _25945 + ceil32(return_data.size) + 515
                                mem[_25945 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _25945 + ceil32(return_data.size) + 479
                            u = _25945 + ceil32(return_data.size) + 515
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_25945 + ceil32(return_data.size) + 547] = mem[_25945 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_25945 + ceil32(return_data.size) + 547])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25945 + ceil32(return_data.size) + 515 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_25945 + ceil32(return_data.size) + 519]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 4 < mem[96]
                                    require (4 * idx) + 5 < mem[96]
                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                            else:
                                mem[64] = _25945 + (2 * ceil32(return_data.size)) + 516
                                mem[_25945 + ceil32(return_data.size) + 515] = return_data.size
                                mem[_25945 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 4 < mem[96]
                                    require (4 * idx) + 5 < mem[96]
                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = mem[_25945 + ceil32(return_data.size) + 547]
                    mem[(32 * (4 * idx) + 4) + 128] = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
            else:
                if (4 * ('cd', 4).length) + 2 != 32:
                    require 0 < (4 * ('cd', 4).length) + 2
                    require 1 < (4 * ('cd', 4).length) + 2
                    mem[160] = 0
                    mem[128] = ext_call.return_data[0]
                    idx = 0
                    while idx < ('cd', 4).length:
                        require idx < ('cd', 36).length
                        require idx < ('cd', 68).length
                        require idx < ('cd', 4).length
                        if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 == address(cd[((32 * idx) + cd[4] + 36)]):
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 < address(cd[((32 * idx) + cd[4] + 36)]):
                            _25952 = mem[64]
                            mem[mem[64] + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
                            mem[mem[64] + 52] = address(cd[((32 * idx) + cd[4] + 36)])
                            _25953 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _25955 = sha3(mem[_25953 + 32 len mem[_25953]])
                            mem[_25952 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_25952 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[_25952 + 125] = _25955
                            mem[_25952 + 157] = cd[((32 * idx) + cd[68] + 36)]
                            mem[_25952 + 72] = 85
                            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                            staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25955, cd[((32 * idx) + cd[68] + 36)]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_25952 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25955, cd[((32 * idx) + cd[68] + 36)]))
                            mem[_25952 + 189] = 36
                            mem[64] = _25952 + 257
                            mem[_25952 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25955, cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _25952 + 221
                            u = _25952 + 257
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_25952 + 289] = mem[_25952 + 281 len 4] or Mask(224, 32, mem[_25952 + 289])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25952 + 257 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_25952 + 261]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[128]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_25952 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_25952 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_25952 + 257] = 40
                                    mem[_25952 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_25952 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_25952 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_25952 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_25952 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_25952 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_25952 + 446] = 36
                                    mem[64] = _25952 + 514
                                    mem[_25952 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_25952 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_25952 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_25952 + 257] = 40
                                    mem[_25952 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_25952 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_25952 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_25952 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_25952 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_25952 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_25952 + 446] = 36
                                    mem[64] = _25952 + 514
                                    mem[_25952 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _25952 + 478
                                u = _25952 + 514
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_25952 + 546] = mem[_25952 + 538 len 4] or Mask(224, 32, mem[_25952 + 546])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25952 + 514 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_25952 + 518]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _25952 + ceil32(return_data.size) + 515
                                    mem[_25952 + 514] = return_data.size
                                    mem[_25952 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_25952 + 546]
                            else:
                                mem[_25952 + 257] = return_data.size
                                mem[_25952 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[_25952 + 289]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_25952 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_25952 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_25952 + ceil32(return_data.size) + 258] = 40
                                    mem[_25952 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_25952 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_25952 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_25952 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_25952 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_25952 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_25952 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _25952 + ceil32(return_data.size) + 515
                                    mem[_25952 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_25952 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_25952 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_25952 + ceil32(return_data.size) + 258] = 40
                                    mem[_25952 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_25952 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_25952 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_25952 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_25952 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_25952 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_25952 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _25952 + ceil32(return_data.size) + 515
                                    mem[_25952 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _25952 + ceil32(return_data.size) + 479
                                u = _25952 + ceil32(return_data.size) + 515
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_25952 + ceil32(return_data.size) + 547] = mem[_25952 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_25952 + ceil32(return_data.size) + 547])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25952 + ceil32(return_data.size) + 515 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_25952 + ceil32(return_data.size) + 519]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _25952 + (2 * ceil32(return_data.size)) + 516
                                    mem[_25952 + ceil32(return_data.size) + 515] = return_data.size
                                    mem[_25952 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_25952 + ceil32(return_data.size) + 547]
                        else:
                            if not address(cd[((32 * idx) + cd[4] + 36)]):
                                revert with 0, 'ZERO_ADDRESS'
                            _25959 = mem[64]
                            mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 52] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
                            _25960 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _25962 = sha3(mem[_25960 + 32 len mem[_25960]])
                            mem[_25959 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_25959 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[_25959 + 125] = _25962
                            mem[_25959 + 157] = cd[((32 * idx) + cd[68] + 36)]
                            mem[_25959 + 72] = 85
                            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                            staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25962, cd[((32 * idx) + cd[68] + 36)]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_25959 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25962, cd[((32 * idx) + cd[68] + 36)]))
                            mem[_25959 + 189] = 36
                            mem[64] = _25959 + 257
                            mem[_25959 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25962, cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _25959 + 221
                            u = _25959 + 257
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_25959 + 289] = mem[_25959 + 281 len 4] or Mask(224, 32, mem[_25959 + 289])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25959 + 257 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_25959 + 261]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[128]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_25959 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_25959 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_25959 + 257] = 40
                                    mem[_25959 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_25959 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_25959 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_25959 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_25959 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_25959 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_25959 + 446] = 36
                                    mem[64] = _25959 + 514
                                    mem[_25959 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_25959 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_25959 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_25959 + 257] = 40
                                    mem[_25959 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_25959 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_25959 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_25959 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_25959 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_25959 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_25959 + 446] = 36
                                    mem[64] = _25959 + 514
                                    mem[_25959 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _25959 + 478
                                u = _25959 + 514
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_25959 + 546] = mem[_25959 + 538 len 4] or Mask(224, 32, mem[_25959 + 546])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25959 + 514 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_25959 + 518]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _25959 + ceil32(return_data.size) + 515
                                    mem[_25959 + 514] = return_data.size
                                    mem[_25959 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_25959 + 546]
                            else:
                                mem[_25959 + 257] = return_data.size
                                mem[_25959 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[_25959 + 289]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_25959 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_25959 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_25959 + ceil32(return_data.size) + 258] = 40
                                    mem[_25959 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_25959 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_25959 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_25959 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_25959 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_25959 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_25959 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _25959 + ceil32(return_data.size) + 515
                                    mem[_25959 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_25959 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_25959 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_25959 + ceil32(return_data.size) + 258] = 40
                                    mem[_25959 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_25959 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_25959 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_25959 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_25959 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_25959 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_25959 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _25959 + ceil32(return_data.size) + 515
                                    mem[_25959 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _25959 + ceil32(return_data.size) + 479
                                u = _25959 + ceil32(return_data.size) + 515
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_25959 + ceil32(return_data.size) + 547] = mem[_25959 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_25959 + ceil32(return_data.size) + 547])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25959 + ceil32(return_data.size) + 515 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_25959 + ceil32(return_data.size) + 519]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _25959 + (2 * ceil32(return_data.size)) + 516
                                    mem[_25959 + ceil32(return_data.size) + 515] = return_data.size
                                    mem[_25959 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_25959 + ceil32(return_data.size) + 547]
                        mem[(32 * (4 * idx) + 4) + 128] = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                else:
                    require (4 * ('cd', 4).length) + 2 >= 32
                    require 0 < (4 * ('cd', 4).length) + 2
                    require 1 < (4 * ('cd', 4).length) + 2
                    mem[160] = mem[128]
                    mem[128] = ext_call.return_data[0]
                    idx = 0
                    while idx < ('cd', 4).length:
                        require idx < ('cd', 36).length
                        require idx < ('cd', 68).length
                        require idx < ('cd', 4).length
                        if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 == address(cd[((32 * idx) + cd[4] + 36)]):
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 < address(cd[((32 * idx) + cd[4] + 36)]):
                            _25966 = mem[64]
                            mem[mem[64] + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
                            mem[mem[64] + 52] = address(cd[((32 * idx) + cd[4] + 36)])
                            _25967 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _25969 = sha3(mem[_25967 + 32 len mem[_25967]])
                            mem[_25966 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_25966 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[_25966 + 125] = _25969
                            mem[_25966 + 157] = cd[((32 * idx) + cd[68] + 36)]
                            mem[_25966 + 72] = 85
                            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                            staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25969, cd[((32 * idx) + cd[68] + 36)]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_25966 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25969, cd[((32 * idx) + cd[68] + 36)]))
                            mem[_25966 + 189] = 36
                            mem[64] = _25966 + 257
                            mem[_25966 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25969, cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _25966 + 221
                            u = _25966 + 257
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_25966 + 289] = mem[_25966 + 281 len 4] or Mask(224, 32, mem[_25966 + 289])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25966 + 257 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_25966 + 261]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[128]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_25966 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_25966 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_25966 + 257] = 40
                                    mem[_25966 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_25966 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_25966 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_25966 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_25966 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_25966 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_25966 + 446] = 36
                                    mem[64] = _25966 + 514
                                    mem[_25966 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_25966 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_25966 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_25966 + 257] = 40
                                    mem[_25966 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_25966 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_25966 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_25966 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_25966 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_25966 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_25966 + 446] = 36
                                    mem[64] = _25966 + 514
                                    mem[_25966 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _25966 + 478
                                u = _25966 + 514
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_25966 + 546] = mem[_25966 + 538 len 4] or Mask(224, 32, mem[_25966 + 546])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25966 + 514 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_25966 + 518]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _25966 + ceil32(return_data.size) + 515
                                    mem[_25966 + 514] = return_data.size
                                    mem[_25966 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_25966 + 546]
                            else:
                                mem[_25966 + 257] = return_data.size
                                mem[_25966 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[_25966 + 289]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_25966 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_25966 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_25966 + ceil32(return_data.size) + 258] = 40
                                    mem[_25966 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_25966 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_25966 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_25966 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_25966 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_25966 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_25966 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _25966 + ceil32(return_data.size) + 515
                                    mem[_25966 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_25966 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_25966 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_25966 + ceil32(return_data.size) + 258] = 40
                                    mem[_25966 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_25966 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_25966 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_25966 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_25966 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_25966 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_25966 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _25966 + ceil32(return_data.size) + 515
                                    mem[_25966 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _25966 + ceil32(return_data.size) + 479
                                u = _25966 + ceil32(return_data.size) + 515
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_25966 + ceil32(return_data.size) + 547] = mem[_25966 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_25966 + ceil32(return_data.size) + 547])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25966 + ceil32(return_data.size) + 515 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_25966 + ceil32(return_data.size) + 519]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _25966 + (2 * ceil32(return_data.size)) + 516
                                    mem[_25966 + ceil32(return_data.size) + 515] = return_data.size
                                    mem[_25966 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_25966 + ceil32(return_data.size) + 547]
                        else:
                            if not address(cd[((32 * idx) + cd[4] + 36)]):
                                revert with 0, 'ZERO_ADDRESS'
                            _25973 = mem[64]
                            mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 52] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
                            _25974 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _25976 = sha3(mem[_25974 + 32 len mem[_25974]])
                            mem[_25973 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_25973 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[_25973 + 125] = _25976
                            mem[_25973 + 157] = cd[((32 * idx) + cd[68] + 36)]
                            mem[_25973 + 72] = 85
                            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                            staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25976, cd[((32 * idx) + cd[68] + 36)]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_25973 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25976, cd[((32 * idx) + cd[68] + 36)]))
                            mem[_25973 + 189] = 36
                            mem[64] = _25973 + 257
                            mem[_25973 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25976, cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _25973 + 221
                            u = _25973 + 257
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_25973 + 289] = mem[_25973 + 281 len 4] or Mask(224, 32, mem[_25973 + 289])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25973 + 257 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_25973 + 261]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                    mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                        mem[_25973 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[_25973 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_25973 + 257] = 40
                                        mem[_25973 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_25973 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_25973 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                        mem[_25973 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_25973 + 329] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25973 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_25973 + 446] = 36
                                        mem[64] = _25973 + 514
                                        mem[_25973 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                    else:
                                        if not address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'ZERO_ADDRESS'
                                        mem[_25973 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_25973 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[_25973 + 257] = 40
                                        mem[_25973 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_25973 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_25973 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        mem[_25973 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_25973 + 329] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25973 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_25973 + 446] = 36
                                        mem[64] = _25973 + 514
                                        mem[_25973 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                    t = _25973 + 478
                                    u = _25973 + 514
                                    s = 36
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_25973 + 546] = mem[_25973 + 538 len 4] or Mask(224, 32, mem[_25973 + 546])
                                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25973 + 514 len 4] with:
                                            gas gas_remaining wei
                                           args mem[_25973 + 518]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if mem[96] != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require mem[96] >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                    else:
                                        mem[64] = _25973 + ceil32(return_data.size) + 515
                                        mem[_25973 + 514] = return_data.size
                                        mem[_25973 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if return_data.size != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require return_data.size >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[_25973 + 546]
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                        mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'IDENTICAL_ADDRESSES'
                                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                            mem[_25973 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                            mem[_25973 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_25973 + 257] = 40
                                            mem[_25973 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_25973 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[_25973 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                            mem[_25973 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                            mem[_25973 + 329] = 85
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25973 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                            mem[_25973 + 446] = 36
                                            mem[64] = _25973 + 514
                                            mem[_25973 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                            t = _25973 + 478
                                            u = mem[64]
                                            s = mem[_25973 + 446]
                                            while s >= 32:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_25973 + 446])] = mem[_25973 + floor32(mem[_25973 + 446]) + -(mem[_25973 + 446] % 32) + 510 len mem[_25973 + 446] % 32] or Mask(8 * -(mem[_25973 + 446] % 32) + 32, -(8 * -(mem[_25973 + 446] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_25973 + 446])])
                                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len _25973 + -mem[64] + 546]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    if mem[96] != 32:
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                                    else:
                                                        require mem[96] >= 32
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                            else:
                                                _52280 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_52280] = return_data.size
                                                mem[_52280 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    if return_data.size != 32:
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                                    else:
                                                        require return_data.size >= 32
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = mem[_52280 + 32]
                                        else:
                                            if not address(cd[((32 * idx) + cd[4] + 36)]):
                                                revert with 0, 'ZERO_ADDRESS'
                                            mem[_25973 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_25973 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                            mem[_25973 + 257] = 40
                                            mem[_25973 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_25973 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[_25973 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            mem[_25973 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                            mem[_25973 + 329] = 85
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25973 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                            mem[_25973 + 446] = 36
                                            mem[64] = _25973 + 514
                                            mem[_25973 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                            t = _25973 + 478
                                            u = _25973 + 514
                                            s = 36
                                            while s >= 32:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s - 32
                                                continue 
                                            mem[_25973 + 546] = mem[_25973 + 538 len 4] or Mask(224, 32, mem[_25973 + 546])
                                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25973 + 514 len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[_25973 + 518]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    if mem[96] != 32:
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                                    else:
                                                        require mem[96] >= 32
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                            else:
                                                mem[64] = _25973 + ceil32(return_data.size) + 515
                                                mem[_25973 + 514] = return_data.size
                                                mem[_25973 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    if return_data.size != 32:
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                                    else:
                                                        require return_data.size >= 32
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = mem[_25973 + 546]
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[128]
                                        mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'IDENTICAL_ADDRESSES'
                                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                            mem[_25973 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                            mem[_25973 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_25973 + 257] = 40
                                            mem[_25973 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_25973 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[_25973 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                            mem[_25973 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                            mem[_25973 + 329] = 85
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25973 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                            mem[_25973 + 446] = 36
                                            mem[64] = _25973 + 514
                                            mem[_25973 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                        else:
                                            if not address(cd[((32 * idx) + cd[4] + 36)]):
                                                revert with 0, 'ZERO_ADDRESS'
                                            mem[_25973 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_25973 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                            mem[_25973 + 257] = 40
                                            mem[_25973 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_25973 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[_25973 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            mem[_25973 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                            mem[_25973 + 329] = 85
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25973 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                            mem[_25973 + 446] = 36
                                            mem[64] = _25973 + 514
                                            mem[_25973 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _25973 + 478
                                        u = _25973 + 514
                                        s = 36
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_25973 + 546] = mem[_25973 + 538 len 4] or Mask(224, 32, mem[_25973 + 546])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25973 + 514 len 4] with:
                                                gas gas_remaining wei
                                               args mem[_25973 + 518]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            mem[64] = _25973 + ceil32(return_data.size) + 515
                                            mem[_25973 + 514] = return_data.size
                                            mem[_25973 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_25973 + 546]
                            else:
                                mem[_25973 + 257] = return_data.size
                                mem[_25973 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                    mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                        mem[_25973 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[_25973 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_25973 + ceil32(return_data.size) + 258] = 40
                                        mem[_25973 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_25973 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_25973 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                        mem[_25973 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_25973 + ceil32(return_data.size) + 330] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25973 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_25973 + ceil32(return_data.size) + 447] = 36
                                        mem[64] = _25973 + ceil32(return_data.size) + 515
                                        mem[_25973 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _25973 + ceil32(return_data.size) + 479
                                        u = _25973 + ceil32(return_data.size) + 515
                                        s = 36
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_25973 + ceil32(return_data.size) + 547] = mem[_25973 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_25973 + ceil32(return_data.size) + 547])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25973 + ceil32(return_data.size) + 515 len 4] with:
                                                gas gas_remaining wei
                                               args mem[_25973 + ceil32(return_data.size) + 519]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            mem[64] = _25973 + (2 * ceil32(return_data.size)) + 516
                                            mem[_25973 + ceil32(return_data.size) + 515] = return_data.size
                                            mem[_25973 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_25973 + ceil32(return_data.size) + 547]
                                    else:
                                        if not address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'ZERO_ADDRESS'
                                        mem[_25973 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_25973 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[_25973 + ceil32(return_data.size) + 258] = 40
                                        mem[_25973 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_25973 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_25973 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        mem[_25973 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_25973 + ceil32(return_data.size) + 330] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25973 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_25973 + ceil32(return_data.size) + 447] = 36
                                        mem[64] = _25973 + ceil32(return_data.size) + 515
                                        mem[_25973 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _25973 + ceil32(return_data.size) + 479
                                        u = mem[64]
                                        s = mem[_25973 + ceil32(return_data.size) + 447]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_25973 + ceil32(return_data.size) + 447])] = mem[_25973 + ceil32(return_data.size) + floor32(mem[_25973 + ceil32(return_data.size) + 447]) + -(mem[_25973 + ceil32(return_data.size) + 447] % 32) + 511 len mem[_25973 + ceil32(return_data.size) + 447] % 32] or Mask(8 * -(mem[_25973 + ceil32(return_data.size) + 447] % 32) + 32, -(8 * -(mem[_25973 + ceil32(return_data.size) + 447] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_25973 + ceil32(return_data.size) + 447])])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _25973 + ceil32(return_data.size) + -mem[64] + 547]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            _52285 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_52285] = return_data.size
                                            mem[_52285 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_52285 + 32]
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[_25973 + 289]
                                    mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                        mem[_25973 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[_25973 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_25973 + ceil32(return_data.size) + 258] = 40
                                        mem[_25973 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_25973 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_25973 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                        mem[_25973 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_25973 + ceil32(return_data.size) + 330] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25973 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_25973 + ceil32(return_data.size) + 447] = 36
                                        mem[64] = _25973 + ceil32(return_data.size) + 515
                                        mem[_25973 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                    else:
                                        if not address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'ZERO_ADDRESS'
                                        mem[_25973 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_25973 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[_25973 + ceil32(return_data.size) + 258] = 40
                                        mem[_25973 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_25973 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_25973 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        mem[_25973 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_25973 + ceil32(return_data.size) + 330] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25973 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_25973 + ceil32(return_data.size) + 447] = 36
                                        mem[64] = _25973 + ceil32(return_data.size) + 515
                                        mem[_25973 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                    t = _25973 + ceil32(return_data.size) + 479
                                    u = _25973 + ceil32(return_data.size) + 515
                                    s = 36
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_25973 + ceil32(return_data.size) + 547] = mem[_25973 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_25973 + ceil32(return_data.size) + 547])
                                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25973 + ceil32(return_data.size) + 515 len 4] with:
                                            gas gas_remaining wei
                                           args mem[_25973 + ceil32(return_data.size) + 519]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if mem[96] != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require mem[96] >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                    else:
                                        mem[64] = _25973 + (2 * ceil32(return_data.size)) + 516
                                        mem[_25973 + ceil32(return_data.size) + 515] = return_data.size
                                        mem[_25973 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if return_data.size != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require return_data.size >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[_25973 + ceil32(return_data.size) + 547]
                        mem[(32 * (4 * idx) + 4) + 128] = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
        else:
            mem[64] = (32 * (4 * ('cd', 4).length) + 2) + ceil32(return_data.size) + 386
            mem[(32 * (4 * ('cd', 4).length) + 2) + 385] = return_data.size
            mem[(32 * (4 * ('cd', 4).length) + 2) + 417 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require 0 < (4 * ('cd', 4).length) + 2
                require 1 < (4 * ('cd', 4).length) + 2
                mem[160] = 0
                mem[128] = ext_call.return_data[0]
                idx = 0
                while idx < ('cd', 4).length:
                    require idx < ('cd', 36).length
                    require idx < ('cd', 68).length
                    require idx < ('cd', 4).length
                    if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 == address(cd[((32 * idx) + cd[4] + 36)]):
                        revert with 0, 'IDENTICAL_ADDRESSES'
                    if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 >= address(cd[((32 * idx) + cd[4] + 36)]):
                        if not address(cd[((32 * idx) + cd[4] + 36)]):
                            revert with 0, 'ZERO_ADDRESS'
                        _25987 = mem[64]
                        mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 52] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
                        _25988 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _25990 = sha3(mem[_25988 + 32 len mem[_25988]])
                        mem[_25987 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_25987 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[_25987 + 125] = _25990
                        mem[_25987 + 157] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_25987 + 72] = 85
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                gas gas_remaining wei
                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25990, cd[((32 * idx) + cd[68] + 36)]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_25987 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25990, cd[((32 * idx) + cd[68] + 36)]))
                        mem[_25987 + 189] = 36
                        mem[64] = _25987 + 257
                        mem[_25987 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25990, cd[((32 * idx) + cd[68] + 36)])) << 64
                        t = _25987 + 221
                        u = _25987 + 257
                        s = 36
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_25987 + 289] = mem[_25987 + 281 len 4] or Mask(224, 32, mem[_25987 + 289])
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25987 + 257 len 4] with:
                                gas gas_remaining wei
                               args mem[_25987 + 261]
                        if not return_data.size:
                            if not ext_call.success:
                                require (4 * idx) + 2 < mem[96]
                                require (4 * idx) + 3 < mem[96]
                                mem[(32 * (4 * idx) + 3) + 128] = 0
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_25987 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_25987 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_25987 + 257] = 40
                                    mem[_25987 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_25987 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_25987 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_25987 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_25987 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_25987 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_25987 + 446] = 36
                                    mem[64] = _25987 + 514
                                    mem[_25987 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                    t = _25987 + 478
                                    u = mem[64]
                                    s = mem[_25987 + 446]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_25987 + 446])] = mem[_25987 + floor32(mem[_25987 + 446]) + -(mem[_25987 + 446] % 32) + 510 len mem[_25987 + 446] % 32] or Mask(8 * -(mem[_25987 + 446] % 32) + 32, -(8 * -(mem[_25987 + 446] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_25987 + 446])])
                                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _25987 + -mem[64] + 546]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if mem[96] != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require mem[96] >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                    else:
                                        _52302 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_52302] = return_data.size
                                        mem[_52302 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if return_data.size != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require return_data.size >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[_52302 + 32]
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_25987 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_25987 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_25987 + 257] = 40
                                    mem[_25987 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_25987 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_25987 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_25987 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_25987 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_25987 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_25987 + 446] = 36
                                    mem[64] = _25987 + 514
                                    mem[_25987 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                    t = _25987 + 478
                                    u = mem[64]
                                    s = mem[_25987 + 446]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_25987 + 446])] = mem[_25987 + floor32(mem[_25987 + 446]) + -(mem[_25987 + 446] % 32) + 510 len mem[_25987 + 446] % 32] or Mask(8 * -(mem[_25987 + 446] % 32) + 32, -(8 * -(mem[_25987 + 446] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_25987 + 446])])
                                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _25987 + -mem[64] + 546]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if mem[96] != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require mem[96] >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                    else:
                                        _52303 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_52303] = return_data.size
                                        mem[_52303 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if return_data.size != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require return_data.size >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[_52303 + 32]
                            else:
                                if mem[96] != 32:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                    mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                        mem[_25987 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[_25987 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_25987 + 257] = 40
                                        mem[_25987 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_25987 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_25987 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                        mem[_25987 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_25987 + 329] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25987 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_25987 + 446] = 36
                                        mem[64] = _25987 + 514
                                        mem[_25987 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _25987 + 478
                                        u = _25987 + 514
                                        s = 36
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_25987 + 546] = mem[_25987 + 538 len 4] or Mask(224, 32, mem[_25987 + 546])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25987 + 514 len 4] with:
                                                gas gas_remaining wei
                                               args mem[_25987 + 518]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            mem[64] = _25987 + ceil32(return_data.size) + 515
                                            mem[_25987 + 514] = return_data.size
                                            mem[_25987 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_25987 + 546]
                                    else:
                                        if not address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'ZERO_ADDRESS'
                                        mem[_25987 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_25987 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[_25987 + 257] = 40
                                        mem[_25987 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_25987 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_25987 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        mem[_25987 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_25987 + 329] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25987 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_25987 + 446] = 36
                                        mem[64] = _25987 + 514
                                        mem[_25987 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _25987 + 478
                                        u = mem[64]
                                        s = mem[_25987 + 446]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_25987 + 446])] = mem[_25987 + floor32(mem[_25987 + 446]) + -(mem[_25987 + 446] % 32) + 510 len mem[_25987 + 446] % 32] or Mask(8 * -(mem[_25987 + 446] % 32) + 32, -(8 * -(mem[_25987 + 446] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_25987 + 446])])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _25987 + -mem[64] + 546]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            _52305 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_52305] = return_data.size
                                            mem[_52305 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_52305 + 32]
                                else:
                                    require mem[96] >= 32
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = mem[128]
                                    mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                        mem[_25987 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[_25987 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_25987 + 257] = 40
                                        mem[_25987 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_25987 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_25987 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                        mem[_25987 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_25987 + 329] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25987 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_25987 + 446] = 36
                                        mem[64] = _25987 + 514
                                        mem[_25987 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _25987 + 478
                                        u = mem[64]
                                        s = mem[_25987 + 446]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_25987 + 446])] = mem[_25987 + floor32(mem[_25987 + 446]) + -(mem[_25987 + 446] % 32) + 510 len mem[_25987 + 446] % 32] or Mask(8 * -(mem[_25987 + 446] % 32) + 32, -(8 * -(mem[_25987 + 446] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_25987 + 446])])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _25987 + -mem[64] + 546]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            _52306 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_52306] = return_data.size
                                            mem[_52306 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_52306 + 32]
                                    else:
                                        if not address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'ZERO_ADDRESS'
                                        mem[_25987 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_25987 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[_25987 + 257] = 40
                                        mem[_25987 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_25987 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_25987 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        mem[_25987 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_25987 + 329] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25987 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_25987 + 446] = 36
                                        mem[64] = _25987 + 514
                                        mem[_25987 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _25987 + 478
                                        u = _25987 + 514
                                        s = 36
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_25987 + 546] = mem[_25987 + 538 len 4] or Mask(224, 32, mem[_25987 + 546])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25987 + 514 len 4] with:
                                                gas gas_remaining wei
                                               args mem[_25987 + 518]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            mem[64] = _25987 + ceil32(return_data.size) + 515
                                            mem[_25987 + 514] = return_data.size
                                            mem[_25987 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_25987 + 546]
                        else:
                            mem[_25987 + 257] = return_data.size
                            mem[_25987 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require (4 * idx) + 2 < mem[96]
                                require (4 * idx) + 3 < mem[96]
                                mem[(32 * (4 * idx) + 3) + 128] = 0
                            else:
                                if return_data.size != 32:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    require return_data.size >= 32
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = mem[_25987 + 289]
                            mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                revert with 0, 'IDENTICAL_ADDRESSES'
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                mem[_25987 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                mem[_25987 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_25987 + ceil32(return_data.size) + 258] = 40
                                mem[_25987 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_25987 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                mem[_25987 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                mem[_25987 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                mem[_25987 + ceil32(return_data.size) + 330] = 85
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_25987 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                mem[_25987 + ceil32(return_data.size) + 447] = 36
                                mem[64] = _25987 + ceil32(return_data.size) + 515
                                mem[_25987 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                            else:
                                if not address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'ZERO_ADDRESS'
                                mem[_25987 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_25987 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                mem[_25987 + ceil32(return_data.size) + 258] = 40
                                mem[_25987 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_25987 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                mem[_25987 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                mem[_25987 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                mem[_25987 + ceil32(return_data.size) + 330] = 85
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_25987 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                mem[_25987 + ceil32(return_data.size) + 447] = 36
                                mem[64] = _25987 + ceil32(return_data.size) + 515
                                mem[_25987 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _25987 + ceil32(return_data.size) + 479
                            u = _25987 + ceil32(return_data.size) + 515
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_25987 + ceil32(return_data.size) + 547] = mem[_25987 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_25987 + ceil32(return_data.size) + 547])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25987 + ceil32(return_data.size) + 515 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_25987 + ceil32(return_data.size) + 519]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 4 < mem[96]
                                    require (4 * idx) + 5 < mem[96]
                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                            else:
                                mem[64] = _25987 + (2 * ceil32(return_data.size)) + 516
                                mem[_25987 + ceil32(return_data.size) + 515] = return_data.size
                                mem[_25987 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 4 < mem[96]
                                    require (4 * idx) + 5 < mem[96]
                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = mem[_25987 + ceil32(return_data.size) + 547]
                    else:
                        _25980 = mem[64]
                        mem[mem[64] + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
                        mem[mem[64] + 52] = address(cd[((32 * idx) + cd[4] + 36)])
                        _25981 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _25983 = sha3(mem[_25981 + 32 len mem[_25981]])
                        mem[_25980 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_25980 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[_25980 + 125] = _25983
                        mem[_25980 + 157] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_25980 + 72] = 85
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                gas gas_remaining wei
                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25983, cd[((32 * idx) + cd[68] + 36)]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_25980 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25983, cd[((32 * idx) + cd[68] + 36)]))
                        mem[_25980 + 189] = 36
                        mem[64] = _25980 + 257
                        mem[_25980 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25983, cd[((32 * idx) + cd[68] + 36)])) << 64
                        t = _25980 + 221
                        u = mem[64]
                        s = mem[_25980 + 189]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_25980 + 189])] = mem[_25980 + floor32(mem[_25980 + 189]) + -(mem[_25980 + 189] % 32) + 253 len mem[_25980 + 189] % 32] or Mask(8 * -(mem[_25980 + 189] % 32) + 32, -(8 * -(mem[_25980 + 189] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_25980 + 189])])
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _25980 + -mem[64] + 289]
                        if not return_data.size:
                            if not ext_call.success:
                                require (4 * idx) + 2 < mem[96]
                                require (4 * idx) + 3 < mem[96]
                                mem[(32 * (4 * idx) + 3) + 128] = 0
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    _39834 = mem[64]
                                    mem[mem[64] + 32] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[mem[64] + 52] = address(cd[((32 * idx) + cd[4] + 36)])
                                    _39835 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _39837 = sha3(mem[_39835 + 32 len mem[_39835]])
                                    mem[_39834 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_39834 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_39834 + 125] = _39837
                                    mem[_39834 + 157] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_39834 + 72] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _39837, cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_39834 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _39837, cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_39834 + 189] = 36
                                    mem[64] = _39834 + 257
                                    mem[_39834 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _39837, cd[((32 * idx) + cd[68] + 36)])) << 64
                                    t = _39834 + 221
                                    u = _39834 + 257
                                    s = 36
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_39834 + 289] = mem[_39834 + 281 len 4] or Mask(224, 32, mem[_39834 + 289])
                                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_39834 + 257 len 4] with:
                                            gas gas_remaining wei
                                           args mem[_39834 + 261]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if mem[96] != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require mem[96] >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                    else:
                                        mem[64] = _39834 + ceil32(return_data.size) + 258
                                        mem[_39834 + 257] = return_data.size
                                        mem[_39834 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if return_data.size != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require return_data.size >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[_39834 + 289]
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    _39841 = mem[64]
                                    mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[mem[64] + 52] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    _39842 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _39844 = sha3(mem[_39842 + 32 len mem[_39842]])
                                    mem[_39841 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_39841 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_39841 + 125] = _39844
                                    mem[_39841 + 157] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_39841 + 72] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _39844, cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_39841 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _39844, cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_39841 + 189] = 36
                                    mem[64] = _39841 + 257
                                    mem[_39841 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _39844, cd[((32 * idx) + cd[68] + 36)])) << 64
                                    t = _39841 + 221
                                    u = _39841 + 257
                                    s = 36
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_39841 + 289] = mem[_39841 + 281 len 4] or Mask(224, 32, mem[_39841 + 289])
                                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_39841 + 257 len 4] with:
                                            gas gas_remaining wei
                                           args mem[_39841 + 261]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if mem[96] != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require mem[96] >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                    else:
                                        mem[64] = _39841 + ceil32(return_data.size) + 258
                                        mem[_39841 + 257] = return_data.size
                                        mem[_39841 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if return_data.size != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require return_data.size >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[_39841 + 289]
                            else:
                                if mem[96] != 32:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                    mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                        _40654 = mem[64]
                                        mem[mem[64] + 32] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[mem[64] + 52] = address(cd[((32 * idx) + cd[4] + 36)])
                                        _40655 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _40657 = sha3(mem[_40655 + 32 len mem[_40655]])
                                        mem[_40654 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_40654 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_40654 + 125] = _40657
                                        mem[_40654 + 157] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_40654 + 72] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _40657, cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_40654 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _40657, cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_40654 + 189] = 36
                                        mem[64] = _40654 + 257
                                        mem[_40654 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _40657, cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _40654 + 221
                                        u = _40654 + 257
                                        s = 36
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_40654 + 289] = mem[_40654 + 281 len 4] or Mask(224, 32, mem[_40654 + 289])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_40654 + 257 len 4] with:
                                                gas gas_remaining wei
                                               args mem[_40654 + 261]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            mem[64] = _40654 + ceil32(return_data.size) + 258
                                            mem[_40654 + 257] = return_data.size
                                            mem[_40654 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_40654 + 289]
                                    else:
                                        if not address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'ZERO_ADDRESS'
                                        _40661 = mem[64]
                                        mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[mem[64] + 52] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        _40662 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _40664 = sha3(mem[_40662 + 32 len mem[_40662]])
                                        mem[_40661 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_40661 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_40661 + 125] = _40664
                                        mem[_40661 + 157] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_40661 + 72] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _40664, cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_40661 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _40664, cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_40661 + 189] = 36
                                        mem[64] = _40661 + 257
                                        mem[_40661 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _40664, cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _40661 + 221
                                        u = _40661 + 257
                                        s = 36
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_40661 + 289] = mem[_40661 + 281 len 4] or Mask(224, 32, mem[_40661 + 289])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_40661 + 257 len 4] with:
                                                gas gas_remaining wei
                                               args mem[_40661 + 261]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            mem[64] = _40661 + ceil32(return_data.size) + 258
                                            mem[_40661 + 257] = return_data.size
                                            mem[_40661 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_40661 + 289]
                                else:
                                    require mem[96] >= 32
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = mem[128]
                                    mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                        _41590 = mem[64]
                                        mem[mem[64] + 32] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[mem[64] + 52] = address(cd[((32 * idx) + cd[4] + 36)])
                                        _41591 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _41593 = sha3(mem[_41591 + 32 len mem[_41591]])
                                        mem[_41590 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_41590 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_41590 + 125] = _41593
                                        mem[_41590 + 157] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_41590 + 72] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _41593, cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_41590 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _41593, cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_41590 + 189] = 36
                                        mem[64] = _41590 + 257
                                        mem[_41590 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _41593, cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _41590 + 221
                                        u = _41590 + 257
                                        s = 36
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_41590 + 289] = mem[_41590 + 281 len 4] or Mask(224, 32, mem[_41590 + 289])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_41590 + 257 len 4] with:
                                                gas gas_remaining wei
                                               args mem[_41590 + 261]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            mem[64] = _41590 + ceil32(return_data.size) + 258
                                            mem[_41590 + 257] = return_data.size
                                            mem[_41590 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_41590 + 289]
                                    else:
                                        if not address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'ZERO_ADDRESS'
                                        _41597 = mem[64]
                                        mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[mem[64] + 52] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        _41598 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _41600 = sha3(mem[_41598 + 32 len mem[_41598]])
                                        mem[_41597 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_41597 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_41597 + 125] = _41600
                                        mem[_41597 + 157] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_41597 + 72] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _41600, cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_41597 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _41600, cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_41597 + 189] = 36
                                        mem[64] = _41597 + 257
                                        mem[_41597 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _41600, cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _41597 + 221
                                        u = mem[64]
                                        s = mem[_41597 + 189]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_41597 + 189])] = mem[_41597 + floor32(mem[_41597 + 189]) + -(mem[_41597 + 189] % 32) + 253 len mem[_41597 + 189] % 32] or Mask(8 * -(mem[_41597 + 189] % 32) + 32, -(8 * -(mem[_41597 + 189] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_41597 + 189])])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _41597 + -mem[64] + 289]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            _52295 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_52295] = return_data.size
                                            mem[_52295 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_52295 + 32]
                        else:
                            _38808 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_38808] = return_data.size
                            mem[_38808 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require (4 * idx) + 2 < mem[96]
                                require (4 * idx) + 3 < mem[96]
                                mem[(32 * (4 * idx) + 3) + 128] = 0
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    _39850 = mem[64]
                                    mem[mem[64] + 32] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[mem[64] + 52] = address(cd[((32 * idx) + cd[4] + 36)])
                                    _39851 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _39853 = sha3(mem[_39851 + 32 len mem[_39851]])
                                    mem[_39850 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_39850 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_39850 + 125] = _39853
                                    mem[_39850 + 157] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_39850 + 72] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _39853, cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_39850 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _39853, cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_39850 + 189] = 36
                                    mem[64] = _39850 + 257
                                    mem[_39850 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _39853, cd[((32 * idx) + cd[68] + 36)])) << 64
                                    t = _39850 + 221
                                    u = _39850 + 257
                                    s = 36
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_39850 + 289] = mem[_39850 + 281 len 4] or Mask(224, 32, mem[_39850 + 289])
                                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_39850 + 257 len 4] with:
                                            gas gas_remaining wei
                                           args mem[_39850 + 261]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if mem[96] != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require mem[96] >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                    else:
                                        mem[64] = _39850 + ceil32(return_data.size) + 258
                                        mem[_39850 + 257] = return_data.size
                                        mem[_39850 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if return_data.size != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require return_data.size >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[_39850 + 289]
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    _39857 = mem[64]
                                    mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[mem[64] + 52] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    _39858 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _39860 = sha3(mem[_39858 + 32 len mem[_39858]])
                                    mem[_39857 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_39857 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_39857 + 125] = _39860
                                    mem[_39857 + 157] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_39857 + 72] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _39860, cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_39857 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _39860, cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_39857 + 189] = 36
                                    mem[64] = _39857 + 257
                                    mem[_39857 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _39860, cd[((32 * idx) + cd[68] + 36)])) << 64
                                    t = _39857 + 221
                                    u = _39857 + 257
                                    s = 36
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_39857 + 289] = mem[_39857 + 281 len 4] or Mask(224, 32, mem[_39857 + 289])
                                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_39857 + 257 len 4] with:
                                            gas gas_remaining wei
                                           args mem[_39857 + 261]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if mem[96] != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require mem[96] >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                    else:
                                        mem[64] = _39857 + ceil32(return_data.size) + 258
                                        mem[_39857 + 257] = return_data.size
                                        mem[_39857 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if return_data.size != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require return_data.size >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[_39857 + 289]
                            else:
                                if return_data.size != 32:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                    mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                        _40674 = mem[64]
                                        mem[mem[64] + 32] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[mem[64] + 52] = address(cd[((32 * idx) + cd[4] + 36)])
                                        _40675 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _40677 = sha3(mem[_40675 + 32 len mem[_40675]])
                                        mem[_40674 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_40674 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_40674 + 125] = _40677
                                        mem[_40674 + 157] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_40674 + 72] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _40677, cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_40674 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _40677, cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_40674 + 189] = 36
                                        mem[64] = _40674 + 257
                                        mem[_40674 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _40677, cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _40674 + 221
                                        u = _40674 + 257
                                        s = 36
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_40674 + 289] = mem[_40674 + 281 len 4] or Mask(224, 32, mem[_40674 + 289])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_40674 + 257 len 4] with:
                                                gas gas_remaining wei
                                               args mem[_40674 + 261]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            mem[64] = _40674 + ceil32(return_data.size) + 258
                                            mem[_40674 + 257] = return_data.size
                                            mem[_40674 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_40674 + 289]
                                    else:
                                        if not address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'ZERO_ADDRESS'
                                        _40681 = mem[64]
                                        mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[mem[64] + 52] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        _40682 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _40684 = sha3(mem[_40682 + 32 len mem[_40682]])
                                        mem[_40681 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_40681 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_40681 + 125] = _40684
                                        mem[_40681 + 157] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_40681 + 72] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _40684, cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_40681 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _40684, cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_40681 + 189] = 36
                                        mem[64] = _40681 + 257
                                        mem[_40681 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _40684, cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _40681 + 221
                                        u = _40681 + 257
                                        s = 36
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_40681 + 289] = mem[_40681 + 281 len 4] or Mask(224, 32, mem[_40681 + 289])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_40681 + 257 len 4] with:
                                                gas gas_remaining wei
                                               args mem[_40681 + 261]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            mem[64] = _40681 + ceil32(return_data.size) + 258
                                            mem[_40681 + 257] = return_data.size
                                            mem[_40681 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_40681 + 289]
                                else:
                                    require return_data.size >= 32
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = mem[_38808 + 32]
                                    mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                        _41608 = mem[64]
                                        mem[mem[64] + 32] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[mem[64] + 52] = address(cd[((32 * idx) + cd[4] + 36)])
                                        _41609 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _41611 = sha3(mem[_41609 + 32 len mem[_41609]])
                                        mem[_41608 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_41608 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_41608 + 125] = _41611
                                        mem[_41608 + 157] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_41608 + 72] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _41611, cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_41608 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _41611, cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_41608 + 189] = 36
                                        mem[64] = _41608 + 257
                                        mem[_41608 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _41611, cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _41608 + 221
                                        u = mem[64]
                                        s = mem[_41608 + 189]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_41608 + 189])] = mem[_41608 + floor32(mem[_41608 + 189]) + -(mem[_41608 + 189] % 32) + 253 len mem[_41608 + 189] % 32] or Mask(8 * -(mem[_41608 + 189] % 32) + 32, -(8 * -(mem[_41608 + 189] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_41608 + 189])])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _41608 + -mem[64] + 289]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            _52300 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_52300] = return_data.size
                                            mem[_52300 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_52300 + 32]
                                    else:
                                        if not address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'ZERO_ADDRESS'
                                        _41615 = mem[64]
                                        mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[mem[64] + 52] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        _41616 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _41618 = sha3(mem[_41616 + 32 len mem[_41616]])
                                        mem[_41615 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_41615 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_41615 + 125] = _41618
                                        mem[_41615 + 157] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_41615 + 72] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _41618, cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_41615 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _41618, cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_41615 + 189] = 36
                                        mem[64] = _41615 + 257
                                        mem[_41615 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _41618, cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _41615 + 221
                                        u = _41615 + 257
                                        s = 36
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_41615 + 289] = mem[_41615 + 281 len 4] or Mask(224, 32, mem[_41615 + 289])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_41615 + 257 len 4] with:
                                                gas gas_remaining wei
                                               args mem[_41615 + 261]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            mem[64] = _41615 + ceil32(return_data.size) + 258
                                            mem[_41615 + 257] = return_data.size
                                            mem[_41615 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_41615 + 289]
                    mem[(32 * (4 * idx) + 4) + 128] = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
            else:
                if return_data.size != 32:
                    require 0 < (4 * ('cd', 4).length) + 2
                    require 1 < (4 * ('cd', 4).length) + 2
                    mem[160] = 0
                    mem[128] = ext_call.return_data[0]
                    idx = 0
                    while idx < ('cd', 4).length:
                        require idx < ('cd', 36).length
                        require idx < ('cd', 68).length
                        require idx < ('cd', 4).length
                        if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 == address(cd[((32 * idx) + cd[4] + 36)]):
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 < address(cd[((32 * idx) + cd[4] + 36)]):
                            _25994 = mem[64]
                            mem[mem[64] + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
                            mem[mem[64] + 52] = address(cd[((32 * idx) + cd[4] + 36)])
                            _25995 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _25997 = sha3(mem[_25995 + 32 len mem[_25995]])
                            mem[_25994 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_25994 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[_25994 + 125] = _25997
                            mem[_25994 + 157] = cd[((32 * idx) + cd[68] + 36)]
                            mem[_25994 + 72] = 85
                            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                            staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25997, cd[((32 * idx) + cd[68] + 36)]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_25994 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25997, cd[((32 * idx) + cd[68] + 36)]))
                            mem[_25994 + 189] = 36
                            mem[64] = _25994 + 257
                            mem[_25994 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _25997, cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _25994 + 221
                            u = _25994 + 257
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_25994 + 289] = mem[_25994 + 281 len 4] or Mask(224, 32, mem[_25994 + 289])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25994 + 257 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_25994 + 261]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                    mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                        mem[_25994 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[_25994 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_25994 + 257] = 40
                                        mem[_25994 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_25994 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_25994 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                        mem[_25994 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_25994 + 329] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25994 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_25994 + 446] = 36
                                        mem[64] = _25994 + 514
                                        mem[_25994 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _25994 + 478
                                        u = mem[64]
                                        s = mem[_25994 + 446]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_25994 + 446])] = mem[_25994 + floor32(mem[_25994 + 446]) + -(mem[_25994 + 446] % 32) + 510 len mem[_25994 + 446] % 32] or Mask(8 * -(mem[_25994 + 446] % 32) + 32, -(8 * -(mem[_25994 + 446] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_25994 + 446])])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _25994 + -mem[64] + 546]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            _52314 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_52314] = return_data.size
                                            mem[_52314 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_52314 + 32]
                                    else:
                                        if not address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'ZERO_ADDRESS'
                                        mem[_25994 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_25994 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[_25994 + 257] = 40
                                        mem[_25994 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_25994 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_25994 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        mem[_25994 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_25994 + 329] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25994 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_25994 + 446] = 36
                                        mem[64] = _25994 + 514
                                        mem[_25994 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _25994 + 478
                                        u = _25994 + 514
                                        s = 36
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_25994 + 546] = mem[_25994 + 538 len 4] or Mask(224, 32, mem[_25994 + 546])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25994 + 514 len 4] with:
                                                gas gas_remaining wei
                                               args mem[_25994 + 518]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            mem[64] = _25994 + ceil32(return_data.size) + 515
                                            mem[_25994 + 514] = return_data.size
                                            mem[_25994 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_25994 + 546]
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[128]
                                    mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                        mem[_25994 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[_25994 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_25994 + 257] = 40
                                        mem[_25994 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_25994 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_25994 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                        mem[_25994 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_25994 + 329] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25994 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_25994 + 446] = 36
                                        mem[64] = _25994 + 514
                                        mem[_25994 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                    else:
                                        if not address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'ZERO_ADDRESS'
                                        mem[_25994 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_25994 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[_25994 + 257] = 40
                                        mem[_25994 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_25994 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_25994 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        mem[_25994 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_25994 + 329] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25994 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_25994 + 446] = 36
                                        mem[64] = _25994 + 514
                                        mem[_25994 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                    t = _25994 + 478
                                    u = _25994 + 514
                                    s = 36
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_25994 + 546] = mem[_25994 + 538 len 4] or Mask(224, 32, mem[_25994 + 546])
                                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25994 + 514 len 4] with:
                                            gas gas_remaining wei
                                           args mem[_25994 + 518]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if mem[96] != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require mem[96] >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                    else:
                                        mem[64] = _25994 + ceil32(return_data.size) + 515
                                        mem[_25994 + 514] = return_data.size
                                        mem[_25994 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if return_data.size != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require return_data.size >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[_25994 + 546]
                            else:
                                mem[_25994 + 257] = return_data.size
                                mem[_25994 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[_25994 + 289]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_25994 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_25994 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_25994 + ceil32(return_data.size) + 258] = 40
                                    mem[_25994 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_25994 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_25994 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_25994 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_25994 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_25994 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_25994 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _25994 + ceil32(return_data.size) + 515
                                    mem[_25994 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_25994 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_25994 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_25994 + ceil32(return_data.size) + 258] = 40
                                    mem[_25994 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_25994 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_25994 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_25994 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_25994 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_25994 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_25994 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _25994 + ceil32(return_data.size) + 515
                                    mem[_25994 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _25994 + ceil32(return_data.size) + 479
                                u = _25994 + ceil32(return_data.size) + 515
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_25994 + ceil32(return_data.size) + 547] = mem[_25994 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_25994 + ceil32(return_data.size) + 547])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_25994 + ceil32(return_data.size) + 515 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_25994 + ceil32(return_data.size) + 519]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _25994 + (2 * ceil32(return_data.size)) + 516
                                    mem[_25994 + ceil32(return_data.size) + 515] = return_data.size
                                    mem[_25994 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_25994 + ceil32(return_data.size) + 547]
                        else:
                            if not address(cd[((32 * idx) + cd[4] + 36)]):
                                revert with 0, 'ZERO_ADDRESS'
                            _26001 = mem[64]
                            mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 52] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
                            _26002 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _26004 = sha3(mem[_26002 + 32 len mem[_26002]])
                            mem[_26001 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_26001 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[_26001 + 125] = _26004
                            mem[_26001 + 157] = cd[((32 * idx) + cd[68] + 36)]
                            mem[_26001 + 72] = 85
                            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                            staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26004, cd[((32 * idx) + cd[68] + 36)]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_26001 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26004, cd[((32 * idx) + cd[68] + 36)]))
                            mem[_26001 + 189] = 36
                            mem[64] = _26001 + 257
                            mem[_26001 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26004, cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _26001 + 221
                            u = _26001 + 257
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_26001 + 289] = mem[_26001 + 281 len 4] or Mask(224, 32, mem[_26001 + 289])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26001 + 257 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_26001 + 261]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[128]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_26001 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26001 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26001 + 257] = 40
                                    mem[_26001 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26001 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26001 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_26001 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26001 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26001 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26001 + 446] = 36
                                    mem[64] = _26001 + 514
                                    mem[_26001 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_26001 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26001 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26001 + 257] = 40
                                    mem[_26001 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26001 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26001 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_26001 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26001 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26001 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26001 + 446] = 36
                                    mem[64] = _26001 + 514
                                    mem[_26001 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _26001 + 478
                                u = _26001 + 514
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_26001 + 546] = mem[_26001 + 538 len 4] or Mask(224, 32, mem[_26001 + 546])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26001 + 514 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_26001 + 518]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _26001 + ceil32(return_data.size) + 515
                                    mem[_26001 + 514] = return_data.size
                                    mem[_26001 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_26001 + 546]
                            else:
                                mem[_26001 + 257] = return_data.size
                                mem[_26001 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[_26001 + 289]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_26001 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26001 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26001 + ceil32(return_data.size) + 258] = 40
                                    mem[_26001 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26001 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26001 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_26001 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26001 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26001 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26001 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _26001 + ceil32(return_data.size) + 515
                                    mem[_26001 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_26001 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26001 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26001 + ceil32(return_data.size) + 258] = 40
                                    mem[_26001 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26001 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26001 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_26001 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26001 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26001 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26001 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _26001 + ceil32(return_data.size) + 515
                                    mem[_26001 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _26001 + ceil32(return_data.size) + 479
                                u = _26001 + ceil32(return_data.size) + 515
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_26001 + ceil32(return_data.size) + 547] = mem[_26001 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_26001 + ceil32(return_data.size) + 547])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26001 + ceil32(return_data.size) + 515 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_26001 + ceil32(return_data.size) + 519]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _26001 + (2 * ceil32(return_data.size)) + 516
                                    mem[_26001 + ceil32(return_data.size) + 515] = return_data.size
                                    mem[_26001 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_26001 + ceil32(return_data.size) + 547]
                        mem[(32 * (4 * idx) + 4) + 128] = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                else:
                    require return_data.size >= 32
                    require 0 < (4 * ('cd', 4).length) + 2
                    require 1 < (4 * ('cd', 4).length) + 2
                    mem[160] = mem[(32 * (4 * ('cd', 4).length) + 2) + 417 len 28], 0
                    mem[128] = ext_call.return_data[0]
                    idx = 0
                    while idx < ('cd', 4).length:
                        require idx < ('cd', 36).length
                        require idx < ('cd', 68).length
                        require idx < ('cd', 4).length
                        if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 == address(cd[((32 * idx) + cd[4] + 36)]):
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 < address(cd[((32 * idx) + cd[4] + 36)]):
                            _26008 = mem[64]
                            mem[mem[64] + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
                            mem[mem[64] + 52] = address(cd[((32 * idx) + cd[4] + 36)])
                            _26009 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _26011 = sha3(mem[_26009 + 32 len mem[_26009]])
                            mem[_26008 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_26008 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[_26008 + 125] = _26011
                            mem[_26008 + 157] = cd[((32 * idx) + cd[68] + 36)]
                            mem[_26008 + 72] = 85
                            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                            staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26011, cd[((32 * idx) + cd[68] + 36)]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_26008 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26011, cd[((32 * idx) + cd[68] + 36)]))
                            mem[_26008 + 189] = 36
                            mem[64] = _26008 + 257
                            mem[_26008 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26011, cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _26008 + 221
                            u = _26008 + 257
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_26008 + 289] = mem[_26008 + 281 len 4] or Mask(224, 32, mem[_26008 + 289])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26008 + 257 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_26008 + 261]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                    mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                        mem[_26008 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[_26008 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_26008 + 257] = 40
                                        mem[_26008 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_26008 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_26008 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                        mem[_26008 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_26008 + 329] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_26008 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_26008 + 446] = 36
                                        mem[64] = _26008 + 514
                                        mem[_26008 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _26008 + 478
                                        u = mem[64]
                                        s = mem[_26008 + 446]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[mem[64] + floor32(mem[_26008 + 446])] = mem[_26008 + floor32(mem[_26008 + 446]) + -(mem[_26008 + 446] % 32) + 510 len mem[_26008 + 446] % 32] or Mask(8 * -(mem[_26008 + 446] % 32) + 32, -(8 * -(mem[_26008 + 446] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_26008 + 446])])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len _26008 + -mem[64] + 546]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            _52338 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_52338] = return_data.size
                                            mem[_52338 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_52338 + 32]
                                    else:
                                        if not address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'ZERO_ADDRESS'
                                        mem[_26008 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_26008 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[_26008 + 257] = 40
                                        mem[_26008 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_26008 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_26008 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        mem[_26008 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_26008 + 329] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_26008 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_26008 + 446] = 36
                                        mem[64] = _26008 + 514
                                        mem[_26008 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _26008 + 478
                                        u = _26008 + 514
                                        s = 36
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_26008 + 546] = mem[_26008 + 538 len 4] or Mask(224, 32, mem[_26008 + 546])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26008 + 514 len 4] with:
                                                gas gas_remaining wei
                                               args mem[_26008 + 518]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            mem[64] = _26008 + ceil32(return_data.size) + 515
                                            mem[_26008 + 514] = return_data.size
                                            mem[_26008 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_26008 + 546]
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                        mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'IDENTICAL_ADDRESSES'
                                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                            mem[_26008 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                            mem[_26008 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_26008 + 257] = 40
                                            mem[_26008 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_26008 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[_26008 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                            mem[_26008 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                            mem[_26008 + 329] = 85
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_26008 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                            mem[_26008 + 446] = 36
                                            mem[64] = _26008 + 514
                                            mem[_26008 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                            t = _26008 + 478
                                            u = mem[64]
                                            s = mem[_26008 + 446]
                                            while s >= 32:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_26008 + 446])] = mem[_26008 + floor32(mem[_26008 + 446]) + -(mem[_26008 + 446] % 32) + 510 len mem[_26008 + 446] % 32] or Mask(8 * -(mem[_26008 + 446] % 32) + 32, -(8 * -(mem[_26008 + 446] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_26008 + 446])])
                                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len _26008 + -mem[64] + 546]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    if mem[96] != 32:
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                                    else:
                                                        require mem[96] >= 32
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                            else:
                                                _52340 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_52340] = return_data.size
                                                mem[_52340 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    if return_data.size != 32:
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                                    else:
                                                        require return_data.size >= 32
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = mem[_52340 + 32]
                                        else:
                                            if not address(cd[((32 * idx) + cd[4] + 36)]):
                                                revert with 0, 'ZERO_ADDRESS'
                                            mem[_26008 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_26008 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                            mem[_26008 + 257] = 40
                                            mem[_26008 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_26008 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[_26008 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            mem[_26008 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                            mem[_26008 + 329] = 85
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_26008 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                            mem[_26008 + 446] = 36
                                            mem[64] = _26008 + 514
                                            mem[_26008 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                            t = _26008 + 478
                                            u = _26008 + 514
                                            s = 36
                                            while s >= 32:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s - 32
                                                continue 
                                            mem[_26008 + 546] = mem[_26008 + 538 len 4] or Mask(224, 32, mem[_26008 + 546])
                                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26008 + 514 len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[_26008 + 518]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    if mem[96] != 32:
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                                    else:
                                                        require mem[96] >= 32
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                            else:
                                                mem[64] = _26008 + ceil32(return_data.size) + 515
                                                mem[_26008 + 514] = return_data.size
                                                mem[_26008 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    if return_data.size != 32:
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                                    else:
                                                        require return_data.size >= 32
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = mem[_26008 + 546]
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[128]
                                        mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'IDENTICAL_ADDRESSES'
                                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                            mem[_26008 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                            mem[_26008 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_26008 + 257] = 40
                                            mem[_26008 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_26008 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[_26008 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                            mem[_26008 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                            mem[_26008 + 329] = 85
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_26008 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                            mem[_26008 + 446] = 36
                                            mem[64] = _26008 + 514
                                            mem[_26008 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                            t = _26008 + 478
                                            u = _26008 + 514
                                            s = 36
                                            while s >= 32:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s - 32
                                                continue 
                                            mem[_26008 + 546] = mem[_26008 + 538 len 4] or Mask(224, 32, mem[_26008 + 546])
                                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26008 + 514 len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[_26008 + 518]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    if mem[96] != 32:
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                                    else:
                                                        require mem[96] >= 32
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                            else:
                                                mem[64] = _26008 + ceil32(return_data.size) + 515
                                                mem[_26008 + 514] = return_data.size
                                                mem[_26008 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    if return_data.size != 32:
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                                    else:
                                                        require return_data.size >= 32
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = mem[_26008 + 546]
                                        else:
                                            if not address(cd[((32 * idx) + cd[4] + 36)]):
                                                revert with 0, 'ZERO_ADDRESS'
                                            mem[_26008 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_26008 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                            mem[_26008 + 257] = 40
                                            mem[_26008 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_26008 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[_26008 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            mem[_26008 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                            mem[_26008 + 329] = 85
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_26008 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                            mem[_26008 + 446] = 36
                                            mem[64] = _26008 + 514
                                            mem[_26008 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                            t = _26008 + 478
                                            u = mem[64]
                                            s = mem[_26008 + 446]
                                            while s >= 32:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_26008 + 446])] = mem[_26008 + floor32(mem[_26008 + 446]) + -(mem[_26008 + 446] % 32) + 510 len mem[_26008 + 446] % 32] or Mask(8 * -(mem[_26008 + 446] % 32) + 32, -(8 * -(mem[_26008 + 446] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_26008 + 446])])
                                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len _26008 + -mem[64] + 546]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    if mem[96] != 32:
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                                    else:
                                                        require mem[96] >= 32
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                            else:
                                                _52343 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_52343] = return_data.size
                                                mem[_52343 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    if return_data.size != 32:
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                                    else:
                                                        require return_data.size >= 32
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = mem[_52343 + 32]
                            else:
                                mem[_26008 + 257] = return_data.size
                                mem[_26008 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[_26008 + 289]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_26008 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26008 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26008 + ceil32(return_data.size) + 258] = 40
                                    mem[_26008 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26008 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26008 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_26008 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26008 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26008 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26008 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _26008 + ceil32(return_data.size) + 515
                                    mem[_26008 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_26008 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26008 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26008 + ceil32(return_data.size) + 258] = 40
                                    mem[_26008 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26008 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26008 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_26008 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26008 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26008 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26008 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _26008 + ceil32(return_data.size) + 515
                                    mem[_26008 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _26008 + ceil32(return_data.size) + 479
                                u = _26008 + ceil32(return_data.size) + 515
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_26008 + ceil32(return_data.size) + 547] = mem[_26008 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_26008 + ceil32(return_data.size) + 547])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26008 + ceil32(return_data.size) + 515 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_26008 + ceil32(return_data.size) + 519]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _26008 + (2 * ceil32(return_data.size)) + 516
                                    mem[_26008 + ceil32(return_data.size) + 515] = return_data.size
                                    mem[_26008 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_26008 + ceil32(return_data.size) + 547]
                        else:
                            if not address(cd[((32 * idx) + cd[4] + 36)]):
                                revert with 0, 'ZERO_ADDRESS'
                            _26015 = mem[64]
                            mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 52] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
                            _26016 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _26018 = sha3(mem[_26016 + 32 len mem[_26016]])
                            mem[_26015 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_26015 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[_26015 + 125] = _26018
                            mem[_26015 + 157] = cd[((32 * idx) + cd[68] + 36)]
                            mem[_26015 + 72] = 85
                            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                            staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26018, cd[((32 * idx) + cd[68] + 36)]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_26015 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26018, cd[((32 * idx) + cd[68] + 36)]))
                            mem[_26015 + 189] = 36
                            mem[64] = _26015 + 257
                            mem[_26015 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26018, cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _26015 + 221
                            u = _26015 + 257
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_26015 + 289] = mem[_26015 + 281 len 4] or Mask(224, 32, mem[_26015 + 289])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26015 + 257 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_26015 + 261]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[128]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_26015 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26015 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26015 + 257] = 40
                                    mem[_26015 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26015 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26015 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_26015 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26015 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26015 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26015 + 446] = 36
                                    mem[64] = _26015 + 514
                                    mem[_26015 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_26015 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26015 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26015 + 257] = 40
                                    mem[_26015 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26015 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26015 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_26015 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26015 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26015 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26015 + 446] = 36
                                    mem[64] = _26015 + 514
                                    mem[_26015 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _26015 + 478
                                u = _26015 + 514
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_26015 + 546] = mem[_26015 + 538 len 4] or Mask(224, 32, mem[_26015 + 546])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26015 + 514 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_26015 + 518]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _26015 + ceil32(return_data.size) + 515
                                    mem[_26015 + 514] = return_data.size
                                    mem[_26015 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_26015 + 546]
                            else:
                                mem[_26015 + 257] = return_data.size
                                mem[_26015 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[_26015 + 289]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_26015 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26015 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26015 + ceil32(return_data.size) + 258] = 40
                                    mem[_26015 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26015 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26015 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_26015 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26015 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26015 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26015 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _26015 + ceil32(return_data.size) + 515
                                    mem[_26015 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_26015 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26015 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26015 + ceil32(return_data.size) + 258] = 40
                                    mem[_26015 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26015 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26015 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_26015 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26015 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26015 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26015 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _26015 + ceil32(return_data.size) + 515
                                    mem[_26015 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _26015 + ceil32(return_data.size) + 479
                                u = _26015 + ceil32(return_data.size) + 515
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_26015 + ceil32(return_data.size) + 547] = mem[_26015 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_26015 + ceil32(return_data.size) + 547])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26015 + ceil32(return_data.size) + 515 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_26015 + ceil32(return_data.size) + 519]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _26015 + (2 * ceil32(return_data.size)) + 516
                                    mem[_26015 + ceil32(return_data.size) + 515] = return_data.size
                                    mem[_26015 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_26015 + ceil32(return_data.size) + 547]
                        mem[(32 * (4 * idx) + 4) + 128] = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
    else:
        mem[128 len 32 * (4 * ('cd', 4).length) + 2] = code.data[2093 len 32 * (4 * ('cd', 4).length) + 2]
        mem[(32 * (4 * ('cd', 4).length) + 2) + 160] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
        mem[(32 * (4 * ('cd', 4).length) + 2) + 180] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
        mem[(32 * (4 * ('cd', 4).length) + 2) + 128] = 40
        mem[(32 * (4 * ('cd', 4).length) + 2) + 232] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[(32 * (4 * ('cd', 4).length) + 2) + 233] = 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3000000000000000000000000
        mem[(32 * (4 * ('cd', 4).length) + 2) + 253] = sha3(290074973475372282, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        mem[(32 * (4 * ('cd', 4).length) + 2) + 285] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
        mem[(32 * (4 * ('cd', 4).length) + 2) + 200] = 85
        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                gas gas_remaining wei
               args address(sha3(0, 1526410864014554874, sha3(290074973475372282, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * (4 * ('cd', 4).length) + 2) + 353] = address(sha3(0, 1526410864014554874, sha3(290074973475372282, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2))
        mem[(32 * (4 * ('cd', 4).length) + 2) + 317] = 36
        mem[64] = (32 * (4 * ('cd', 4).length) + 2) + 385
        mem[(32 * (4 * ('cd', 4).length) + 2) + 353 len 28] = address(sha3(0, 1526410864014554874, sha3(290074973475372282, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)) << 64
        mem[(32 * (4 * ('cd', 4).length) + 2) + 349 len 4] = unknown_0x70a08231(?????)
        mem[(32 * (4 * ('cd', 4).length) + 2) + 385] = unknown_0x70a08231(?????), address(sha3(0, 1526410864014554874, sha3(290074973475372282, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)) << 64
        mem[(32 * (4 * ('cd', 4).length) + 2) + 445 len 4] = 0
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
                gas gas_remaining wei
               args Mask(224, 0, unknown_0x70a08231(?????), address(sha3(0, 1526410864014554874, sha3(290074973475372282, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)) << 64), mem[(32 * (4 * ('cd', 4).length) + 2) + 417 len 4]
        if not return_data.size:
            if not ext_call.success:
                require 0 < (4 * ('cd', 4).length) + 2
                require 1 < (4 * ('cd', 4).length) + 2
                mem[160] = 0
                mem[128] = ext_call.return_data[0]
                idx = 0
                while idx < ('cd', 4).length:
                    require idx < ('cd', 36).length
                    require idx < ('cd', 68).length
                    require idx < ('cd', 4).length
                    if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 == address(cd[((32 * idx) + cd[4] + 36)]):
                        revert with 0, 'IDENTICAL_ADDRESSES'
                    if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 < address(cd[((32 * idx) + cd[4] + 36)]):
                        _26022 = mem[64]
                        mem[mem[64] + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
                        mem[mem[64] + 52] = address(cd[((32 * idx) + cd[4] + 36)])
                        _26023 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _26025 = sha3(mem[_26023 + 32 len mem[_26023]])
                        mem[_26022 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_26022 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[_26022 + 125] = _26025
                        mem[_26022 + 157] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_26022 + 72] = 85
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                gas gas_remaining wei
                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26025, cd[((32 * idx) + cd[68] + 36)]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_26022 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26025, cd[((32 * idx) + cd[68] + 36)]))
                        mem[_26022 + 189] = 36
                        mem[64] = _26022 + 257
                        mem[_26022 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26025, cd[((32 * idx) + cd[68] + 36)])) << 64
                        t = _26022 + 221
                        u = _26022 + 257
                        s = 36
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_26022 + 289] = mem[_26022 + 281 len 4] or Mask(224, 32, mem[_26022 + 289])
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26022 + 257 len 4] with:
                                gas gas_remaining wei
                               args mem[_26022 + 261]
                        if not return_data.size:
                            if not ext_call.success:
                                require (4 * idx) + 2 < mem[96]
                                require (4 * idx) + 3 < mem[96]
                                mem[(32 * (4 * idx) + 3) + 128] = 0
                            else:
                                if mem[96] != 32:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    require mem[96] >= 32
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = mem[128]
                            mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                revert with 0, 'IDENTICAL_ADDRESSES'
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                mem[_26022 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                mem[_26022 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_26022 + 257] = 40
                                mem[_26022 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_26022 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                mem[_26022 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                mem[_26022 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                mem[_26022 + 329] = 85
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_26022 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                mem[_26022 + 446] = 36
                                mem[64] = _26022 + 514
                                mem[_26022 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                            else:
                                if not address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'ZERO_ADDRESS'
                                mem[_26022 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_26022 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                mem[_26022 + 257] = 40
                                mem[_26022 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_26022 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                mem[_26022 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                mem[_26022 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                mem[_26022 + 329] = 85
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_26022 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                mem[_26022 + 446] = 36
                                mem[64] = _26022 + 514
                                mem[_26022 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _26022 + 478
                            u = _26022 + 514
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_26022 + 546] = mem[_26022 + 538 len 4] or Mask(224, 32, mem[_26022 + 546])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26022 + 514 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_26022 + 518]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 4 < mem[96]
                                    require (4 * idx) + 5 < mem[96]
                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                            else:
                                mem[64] = _26022 + ceil32(return_data.size) + 515
                                mem[_26022 + 514] = return_data.size
                                mem[_26022 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 4 < mem[96]
                                    require (4 * idx) + 5 < mem[96]
                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = mem[_26022 + 546]
                        else:
                            mem[_26022 + 257] = return_data.size
                            mem[_26022 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require (4 * idx) + 2 < mem[96]
                                require (4 * idx) + 3 < mem[96]
                                mem[(32 * (4 * idx) + 3) + 128] = 0
                            else:
                                if return_data.size != 32:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    require return_data.size >= 32
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = mem[_26022 + 289]
                            mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                revert with 0, 'IDENTICAL_ADDRESSES'
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                mem[_26022 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                mem[_26022 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_26022 + ceil32(return_data.size) + 258] = 40
                                mem[_26022 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_26022 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                mem[_26022 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                mem[_26022 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                mem[_26022 + ceil32(return_data.size) + 330] = 85
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_26022 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                mem[_26022 + ceil32(return_data.size) + 447] = 36
                                mem[64] = _26022 + ceil32(return_data.size) + 515
                                mem[_26022 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                            else:
                                if not address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'ZERO_ADDRESS'
                                mem[_26022 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_26022 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                mem[_26022 + ceil32(return_data.size) + 258] = 40
                                mem[_26022 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_26022 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                mem[_26022 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                mem[_26022 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                mem[_26022 + ceil32(return_data.size) + 330] = 85
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_26022 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                mem[_26022 + ceil32(return_data.size) + 447] = 36
                                mem[64] = _26022 + ceil32(return_data.size) + 515
                                mem[_26022 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _26022 + ceil32(return_data.size) + 479
                            u = _26022 + ceil32(return_data.size) + 515
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_26022 + ceil32(return_data.size) + 547] = mem[_26022 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_26022 + ceil32(return_data.size) + 547])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26022 + ceil32(return_data.size) + 515 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_26022 + ceil32(return_data.size) + 519]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 4 < mem[96]
                                    require (4 * idx) + 5 < mem[96]
                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                            else:
                                mem[64] = _26022 + (2 * ceil32(return_data.size)) + 516
                                mem[_26022 + ceil32(return_data.size) + 515] = return_data.size
                                mem[_26022 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 4 < mem[96]
                                    require (4 * idx) + 5 < mem[96]
                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = mem[_26022 + ceil32(return_data.size) + 547]
                    else:
                        if not address(cd[((32 * idx) + cd[4] + 36)]):
                            revert with 0, 'ZERO_ADDRESS'
                        _26029 = mem[64]
                        mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 52] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
                        _26030 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _26032 = sha3(mem[_26030 + 32 len mem[_26030]])
                        mem[_26029 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_26029 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[_26029 + 125] = _26032
                        mem[_26029 + 157] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_26029 + 72] = 85
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                gas gas_remaining wei
                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26032, cd[((32 * idx) + cd[68] + 36)]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_26029 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26032, cd[((32 * idx) + cd[68] + 36)]))
                        mem[_26029 + 189] = 36
                        mem[64] = _26029 + 257
                        mem[_26029 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26032, cd[((32 * idx) + cd[68] + 36)])) << 64
                        t = _26029 + 221
                        u = _26029 + 257
                        s = 36
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_26029 + 289] = mem[_26029 + 281 len 4] or Mask(224, 32, mem[_26029 + 289])
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26029 + 257 len 4] with:
                                gas gas_remaining wei
                               args mem[_26029 + 261]
                        if not return_data.size:
                            if not ext_call.success:
                                require (4 * idx) + 2 < mem[96]
                                require (4 * idx) + 3 < mem[96]
                                mem[(32 * (4 * idx) + 3) + 128] = 0
                            else:
                                if mem[96] != 32:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    require mem[96] >= 32
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = mem[128]
                            mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                revert with 0, 'IDENTICAL_ADDRESSES'
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                mem[_26029 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                mem[_26029 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_26029 + 257] = 40
                                mem[_26029 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_26029 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                mem[_26029 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                mem[_26029 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                mem[_26029 + 329] = 85
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_26029 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                mem[_26029 + 446] = 36
                                mem[64] = _26029 + 514
                                mem[_26029 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                            else:
                                if not address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'ZERO_ADDRESS'
                                mem[_26029 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_26029 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                mem[_26029 + 257] = 40
                                mem[_26029 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_26029 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                mem[_26029 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                mem[_26029 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                mem[_26029 + 329] = 85
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_26029 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                mem[_26029 + 446] = 36
                                mem[64] = _26029 + 514
                                mem[_26029 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _26029 + 478
                            u = _26029 + 514
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_26029 + 546] = mem[_26029 + 538 len 4] or Mask(224, 32, mem[_26029 + 546])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26029 + 514 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_26029 + 518]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 4 < mem[96]
                                    require (4 * idx) + 5 < mem[96]
                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                            else:
                                mem[64] = _26029 + ceil32(return_data.size) + 515
                                mem[_26029 + 514] = return_data.size
                                mem[_26029 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 4 < mem[96]
                                    require (4 * idx) + 5 < mem[96]
                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = mem[_26029 + 546]
                        else:
                            mem[_26029 + 257] = return_data.size
                            mem[_26029 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require (4 * idx) + 2 < mem[96]
                                require (4 * idx) + 3 < mem[96]
                                mem[(32 * (4 * idx) + 3) + 128] = 0
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_26029 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26029 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26029 + ceil32(return_data.size) + 258] = 40
                                    mem[_26029 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26029 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26029 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_26029 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26029 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26029 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26029 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _26029 + ceil32(return_data.size) + 515
                                    mem[_26029 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                    t = _26029 + ceil32(return_data.size) + 479
                                    u = _26029 + ceil32(return_data.size) + 515
                                    s = 36
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_26029 + ceil32(return_data.size) + 547] = mem[_26029 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_26029 + ceil32(return_data.size) + 547])
                                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26029 + ceil32(return_data.size) + 515 len 4] with:
                                            gas gas_remaining wei
                                           args mem[_26029 + ceil32(return_data.size) + 519]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if mem[96] != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require mem[96] >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                    else:
                                        mem[64] = _26029 + (2 * ceil32(return_data.size)) + 516
                                        mem[_26029 + ceil32(return_data.size) + 515] = return_data.size
                                        mem[_26029 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if return_data.size != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require return_data.size >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[_26029 + ceil32(return_data.size) + 547]
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_26029 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26029 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26029 + ceil32(return_data.size) + 258] = 40
                                    mem[_26029 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26029 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26029 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_26029 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26029 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26029 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26029 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _26029 + ceil32(return_data.size) + 515
                                    mem[_26029 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                    t = _26029 + ceil32(return_data.size) + 479
                                    u = mem[64]
                                    s = mem[_26029 + ceil32(return_data.size) + 447]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[mem[64] + floor32(mem[_26029 + ceil32(return_data.size) + 447])] = mem[_26029 + ceil32(return_data.size) + floor32(mem[_26029 + ceil32(return_data.size) + 447]) + -(mem[_26029 + ceil32(return_data.size) + 447] % 32) + 511 len mem[_26029 + ceil32(return_data.size) + 447] % 32] or Mask(8 * -(mem[_26029 + ceil32(return_data.size) + 447] % 32) + 32, -(8 * -(mem[_26029 + ceil32(return_data.size) + 447] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_26029 + ceil32(return_data.size) + 447])])
                                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _26029 + ceil32(return_data.size) + -mem[64] + 547]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if mem[96] != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require mem[96] >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                    else:
                                        _52381 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_52381] = return_data.size
                                        mem[_52381 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if return_data.size != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require return_data.size >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[_52381 + 32]
                            else:
                                if return_data.size != 32:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    require return_data.size >= 32
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = mem[_26029 + 289]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_26029 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26029 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26029 + ceil32(return_data.size) + 258] = 40
                                    mem[_26029 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26029 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26029 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_26029 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26029 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26029 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26029 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _26029 + ceil32(return_data.size) + 515
                                    mem[_26029 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_26029 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26029 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26029 + ceil32(return_data.size) + 258] = 40
                                    mem[_26029 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26029 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26029 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_26029 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26029 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26029 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26029 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _26029 + ceil32(return_data.size) + 515
                                    mem[_26029 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _26029 + ceil32(return_data.size) + 479
                                u = _26029 + ceil32(return_data.size) + 515
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_26029 + ceil32(return_data.size) + 547] = mem[_26029 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_26029 + ceil32(return_data.size) + 547])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26029 + ceil32(return_data.size) + 515 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_26029 + ceil32(return_data.size) + 519]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _26029 + (2 * ceil32(return_data.size)) + 516
                                    mem[_26029 + ceil32(return_data.size) + 515] = return_data.size
                                    mem[_26029 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_26029 + ceil32(return_data.size) + 547]
                    mem[(32 * (4 * idx) + 4) + 128] = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
            else:
                if (4 * ('cd', 4).length) + 2 != 32:
                    require 0 < (4 * ('cd', 4).length) + 2
                    require 1 < (4 * ('cd', 4).length) + 2
                    mem[160] = 0
                    mem[128] = ext_call.return_data[0]
                    idx = 0
                    while idx < ('cd', 4).length:
                        require idx < ('cd', 36).length
                        require idx < ('cd', 68).length
                        require idx < ('cd', 4).length
                        if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 == address(cd[((32 * idx) + cd[4] + 36)]):
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 < address(cd[((32 * idx) + cd[4] + 36)]):
                            _26036 = mem[64]
                            mem[mem[64] + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
                            mem[mem[64] + 52] = address(cd[((32 * idx) + cd[4] + 36)])
                            _26037 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _26039 = sha3(mem[_26037 + 32 len mem[_26037]])
                            mem[_26036 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_26036 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[_26036 + 125] = _26039
                            mem[_26036 + 157] = cd[((32 * idx) + cd[68] + 36)]
                            mem[_26036 + 72] = 85
                            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                            staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26039, cd[((32 * idx) + cd[68] + 36)]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_26036 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26039, cd[((32 * idx) + cd[68] + 36)]))
                            mem[_26036 + 189] = 36
                            mem[64] = _26036 + 257
                            mem[_26036 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26039, cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _26036 + 221
                            u = _26036 + 257
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_26036 + 289] = mem[_26036 + 281 len 4] or Mask(224, 32, mem[_26036 + 289])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26036 + 257 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_26036 + 261]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[128]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_26036 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26036 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26036 + 257] = 40
                                    mem[_26036 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26036 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26036 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_26036 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26036 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26036 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26036 + 446] = 36
                                    mem[64] = _26036 + 514
                                    mem[_26036 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_26036 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26036 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26036 + 257] = 40
                                    mem[_26036 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26036 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26036 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_26036 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26036 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26036 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26036 + 446] = 36
                                    mem[64] = _26036 + 514
                                    mem[_26036 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _26036 + 478
                                u = _26036 + 514
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_26036 + 546] = mem[_26036 + 538 len 4] or Mask(224, 32, mem[_26036 + 546])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26036 + 514 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_26036 + 518]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _26036 + ceil32(return_data.size) + 515
                                    mem[_26036 + 514] = return_data.size
                                    mem[_26036 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_26036 + 546]
                            else:
                                mem[_26036 + 257] = return_data.size
                                mem[_26036 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[_26036 + 289]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_26036 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26036 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26036 + ceil32(return_data.size) + 258] = 40
                                    mem[_26036 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26036 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26036 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_26036 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26036 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26036 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26036 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _26036 + ceil32(return_data.size) + 515
                                    mem[_26036 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_26036 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26036 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26036 + ceil32(return_data.size) + 258] = 40
                                    mem[_26036 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26036 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26036 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_26036 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26036 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26036 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26036 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _26036 + ceil32(return_data.size) + 515
                                    mem[_26036 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _26036 + ceil32(return_data.size) + 479
                                u = _26036 + ceil32(return_data.size) + 515
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_26036 + ceil32(return_data.size) + 547] = mem[_26036 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_26036 + ceil32(return_data.size) + 547])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26036 + ceil32(return_data.size) + 515 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_26036 + ceil32(return_data.size) + 519]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _26036 + (2 * ceil32(return_data.size)) + 516
                                    mem[_26036 + ceil32(return_data.size) + 515] = return_data.size
                                    mem[_26036 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_26036 + ceil32(return_data.size) + 547]
                        else:
                            if not address(cd[((32 * idx) + cd[4] + 36)]):
                                revert with 0, 'ZERO_ADDRESS'
                            _26043 = mem[64]
                            mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 52] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
                            _26044 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _26046 = sha3(mem[_26044 + 32 len mem[_26044]])
                            mem[_26043 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_26043 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[_26043 + 125] = _26046
                            mem[_26043 + 157] = cd[((32 * idx) + cd[68] + 36)]
                            mem[_26043 + 72] = 85
                            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                            staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26046, cd[((32 * idx) + cd[68] + 36)]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_26043 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26046, cd[((32 * idx) + cd[68] + 36)]))
                            mem[_26043 + 189] = 36
                            mem[64] = _26043 + 257
                            mem[_26043 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26046, cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _26043 + 221
                            u = _26043 + 257
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_26043 + 289] = mem[_26043 + 281 len 4] or Mask(224, 32, mem[_26043 + 289])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26043 + 257 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_26043 + 261]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[128]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_26043 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26043 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26043 + 257] = 40
                                    mem[_26043 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26043 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26043 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_26043 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26043 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26043 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26043 + 446] = 36
                                    mem[64] = _26043 + 514
                                    mem[_26043 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_26043 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26043 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26043 + 257] = 40
                                    mem[_26043 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26043 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26043 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_26043 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26043 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26043 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26043 + 446] = 36
                                    mem[64] = _26043 + 514
                                    mem[_26043 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _26043 + 478
                                u = _26043 + 514
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_26043 + 546] = mem[_26043 + 538 len 4] or Mask(224, 32, mem[_26043 + 546])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26043 + 514 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_26043 + 518]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _26043 + ceil32(return_data.size) + 515
                                    mem[_26043 + 514] = return_data.size
                                    mem[_26043 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_26043 + 546]
                            else:
                                mem[_26043 + 257] = return_data.size
                                mem[_26043 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                    mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                        mem[_26043 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[_26043 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_26043 + ceil32(return_data.size) + 258] = 40
                                        mem[_26043 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_26043 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_26043 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                        mem[_26043 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_26043 + ceil32(return_data.size) + 330] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_26043 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_26043 + ceil32(return_data.size) + 447] = 36
                                        mem[64] = _26043 + ceil32(return_data.size) + 515
                                        mem[_26043 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                    else:
                                        if not address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'ZERO_ADDRESS'
                                        mem[_26043 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_26043 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[_26043 + ceil32(return_data.size) + 258] = 40
                                        mem[_26043 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_26043 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_26043 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        mem[_26043 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_26043 + ceil32(return_data.size) + 330] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_26043 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_26043 + ceil32(return_data.size) + 447] = 36
                                        mem[64] = _26043 + ceil32(return_data.size) + 515
                                        mem[_26043 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                    t = _26043 + ceil32(return_data.size) + 479
                                    u = _26043 + ceil32(return_data.size) + 515
                                    s = 36
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_26043 + ceil32(return_data.size) + 547] = mem[_26043 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_26043 + ceil32(return_data.size) + 547])
                                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26043 + ceil32(return_data.size) + 515 len 4] with:
                                            gas gas_remaining wei
                                           args mem[_26043 + ceil32(return_data.size) + 519]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if mem[96] != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require mem[96] >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                    else:
                                        mem[64] = _26043 + (2 * ceil32(return_data.size)) + 516
                                        mem[_26043 + ceil32(return_data.size) + 515] = return_data.size
                                        mem[_26043 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if return_data.size != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require return_data.size >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[_26043 + ceil32(return_data.size) + 547]
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                        mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'IDENTICAL_ADDRESSES'
                                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                            mem[_26043 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                            mem[_26043 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_26043 + ceil32(return_data.size) + 258] = 40
                                            mem[_26043 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_26043 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[_26043 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                            mem[_26043 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                            mem[_26043 + ceil32(return_data.size) + 330] = 85
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_26043 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                            mem[_26043 + ceil32(return_data.size) + 447] = 36
                                            mem[64] = _26043 + ceil32(return_data.size) + 515
                                            mem[_26043 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                        else:
                                            if not address(cd[((32 * idx) + cd[4] + 36)]):
                                                revert with 0, 'ZERO_ADDRESS'
                                            mem[_26043 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_26043 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                            mem[_26043 + ceil32(return_data.size) + 258] = 40
                                            mem[_26043 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_26043 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[_26043 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            mem[_26043 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                            mem[_26043 + ceil32(return_data.size) + 330] = 85
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_26043 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                            mem[_26043 + ceil32(return_data.size) + 447] = 36
                                            mem[64] = _26043 + ceil32(return_data.size) + 515
                                            mem[_26043 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _26043 + ceil32(return_data.size) + 479
                                        u = _26043 + ceil32(return_data.size) + 515
                                        s = 36
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_26043 + ceil32(return_data.size) + 547] = mem[_26043 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_26043 + ceil32(return_data.size) + 547])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26043 + ceil32(return_data.size) + 515 len 4] with:
                                                gas gas_remaining wei
                                               args mem[_26043 + ceil32(return_data.size) + 519]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            mem[64] = _26043 + (2 * ceil32(return_data.size)) + 516
                                            mem[_26043 + ceil32(return_data.size) + 515] = return_data.size
                                            mem[_26043 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_26043 + ceil32(return_data.size) + 547]
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[_26043 + 289]
                                        mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'IDENTICAL_ADDRESSES'
                                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                            mem[_26043 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                            mem[_26043 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_26043 + ceil32(return_data.size) + 258] = 40
                                            mem[_26043 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_26043 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[_26043 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                            mem[_26043 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                            mem[_26043 + ceil32(return_data.size) + 330] = 85
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_26043 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                            mem[_26043 + ceil32(return_data.size) + 447] = 36
                                            mem[64] = _26043 + ceil32(return_data.size) + 515
                                            mem[_26043 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                            t = _26043 + ceil32(return_data.size) + 479
                                            u = mem[64]
                                            s = mem[_26043 + ceil32(return_data.size) + 447]
                                            while s >= 32:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_26043 + ceil32(return_data.size) + 447])] = mem[_26043 + ceil32(return_data.size) + floor32(mem[_26043 + ceil32(return_data.size) + 447]) + -(mem[_26043 + ceil32(return_data.size) + 447] % 32) + 511 len mem[_26043 + ceil32(return_data.size) + 447] % 32] or Mask(8 * -(mem[_26043 + ceil32(return_data.size) + 447] % 32) + 32, -(8 * -(mem[_26043 + ceil32(return_data.size) + 447] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_26043 + ceil32(return_data.size) + 447])])
                                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len _26043 + ceil32(return_data.size) + -mem[64] + 547]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    if mem[96] != 32:
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                                    else:
                                                        require mem[96] >= 32
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                            else:
                                                _52408 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_52408] = return_data.size
                                                mem[_52408 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    if return_data.size != 32:
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                                    else:
                                                        require return_data.size >= 32
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = mem[_52408 + 32]
                                        else:
                                            if not address(cd[((32 * idx) + cd[4] + 36)]):
                                                revert with 0, 'ZERO_ADDRESS'
                                            mem[_26043 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_26043 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                            mem[_26043 + ceil32(return_data.size) + 258] = 40
                                            mem[_26043 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_26043 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[_26043 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            mem[_26043 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                            mem[_26043 + ceil32(return_data.size) + 330] = 85
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_26043 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                            mem[_26043 + ceil32(return_data.size) + 447] = 36
                                            mem[64] = _26043 + ceil32(return_data.size) + 515
                                            mem[_26043 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                            t = _26043 + ceil32(return_data.size) + 479
                                            u = _26043 + ceil32(return_data.size) + 515
                                            s = 36
                                            while s >= 32:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s - 32
                                                continue 
                                            mem[_26043 + ceil32(return_data.size) + 547] = mem[_26043 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_26043 + ceil32(return_data.size) + 547])
                                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26043 + ceil32(return_data.size) + 515 len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[_26043 + ceil32(return_data.size) + 519]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    if mem[96] != 32:
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                                    else:
                                                        require mem[96] >= 32
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                            else:
                                                mem[64] = _26043 + (2 * ceil32(return_data.size)) + 516
                                                mem[_26043 + ceil32(return_data.size) + 515] = return_data.size
                                                mem[_26043 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    if return_data.size != 32:
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                                    else:
                                                        require return_data.size >= 32
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = mem[_26043 + ceil32(return_data.size) + 547]
                        mem[(32 * (4 * idx) + 4) + 128] = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                else:
                    require (4 * ('cd', 4).length) + 2 >= 32
                    require 0 < (4 * ('cd', 4).length) + 2
                    require 1 < (4 * ('cd', 4).length) + 2
                    mem[160] = code.data[2093 len 32]
                    mem[128] = ext_call.return_data[0]
                    idx = 0
                    while idx < ('cd', 4).length:
                        require idx < ('cd', 36).length
                        require idx < ('cd', 68).length
                        require idx < ('cd', 4).length
                        if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 == address(cd[((32 * idx) + cd[4] + 36)]):
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 < address(cd[((32 * idx) + cd[4] + 36)]):
                            _26050 = mem[64]
                            mem[mem[64] + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
                            mem[mem[64] + 52] = address(cd[((32 * idx) + cd[4] + 36)])
                            _26051 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _26053 = sha3(mem[_26051 + 32 len mem[_26051]])
                            mem[_26050 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_26050 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[_26050 + 125] = _26053
                            mem[_26050 + 157] = cd[((32 * idx) + cd[68] + 36)]
                            mem[_26050 + 72] = 85
                            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                            staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26053, cd[((32 * idx) + cd[68] + 36)]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_26050 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26053, cd[((32 * idx) + cd[68] + 36)]))
                            mem[_26050 + 189] = 36
                            mem[64] = _26050 + 257
                            mem[_26050 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26053, cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _26050 + 221
                            u = _26050 + 257
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_26050 + 289] = mem[_26050 + 281 len 4] or Mask(224, 32, mem[_26050 + 289])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26050 + 257 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_26050 + 261]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[128]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_26050 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26050 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26050 + 257] = 40
                                    mem[_26050 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26050 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26050 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_26050 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26050 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26050 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26050 + 446] = 36
                                    mem[64] = _26050 + 514
                                    mem[_26050 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_26050 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26050 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26050 + 257] = 40
                                    mem[_26050 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26050 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26050 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_26050 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26050 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26050 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26050 + 446] = 36
                                    mem[64] = _26050 + 514
                                    mem[_26050 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _26050 + 478
                                u = _26050 + 514
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_26050 + 546] = mem[_26050 + 538 len 4] or Mask(224, 32, mem[_26050 + 546])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26050 + 514 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_26050 + 518]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _26050 + ceil32(return_data.size) + 515
                                    mem[_26050 + 514] = return_data.size
                                    mem[_26050 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_26050 + 546]
                            else:
                                mem[_26050 + 257] = return_data.size
                                mem[_26050 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[_26050 + 289]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_26050 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26050 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26050 + ceil32(return_data.size) + 258] = 40
                                    mem[_26050 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26050 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26050 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_26050 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26050 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26050 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26050 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _26050 + ceil32(return_data.size) + 515
                                    mem[_26050 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_26050 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26050 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26050 + ceil32(return_data.size) + 258] = 40
                                    mem[_26050 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26050 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26050 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_26050 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26050 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26050 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26050 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _26050 + ceil32(return_data.size) + 515
                                    mem[_26050 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _26050 + ceil32(return_data.size) + 479
                                u = _26050 + ceil32(return_data.size) + 515
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_26050 + ceil32(return_data.size) + 547] = mem[_26050 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_26050 + ceil32(return_data.size) + 547])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26050 + ceil32(return_data.size) + 515 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_26050 + ceil32(return_data.size) + 519]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _26050 + (2 * ceil32(return_data.size)) + 516
                                    mem[_26050 + ceil32(return_data.size) + 515] = return_data.size
                                    mem[_26050 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_26050 + ceil32(return_data.size) + 547]
                        else:
                            if not address(cd[((32 * idx) + cd[4] + 36)]):
                                revert with 0, 'ZERO_ADDRESS'
                            _26057 = mem[64]
                            mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 52] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
                            _26058 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _26060 = sha3(mem[_26058 + 32 len mem[_26058]])
                            mem[_26057 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_26057 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[_26057 + 125] = _26060
                            mem[_26057 + 157] = cd[((32 * idx) + cd[68] + 36)]
                            mem[_26057 + 72] = 85
                            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                            staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26060, cd[((32 * idx) + cd[68] + 36)]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_26057 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26060, cd[((32 * idx) + cd[68] + 36)]))
                            mem[_26057 + 189] = 36
                            mem[64] = _26057 + 257
                            mem[_26057 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26060, cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _26057 + 221
                            u = _26057 + 257
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_26057 + 289] = mem[_26057 + 281 len 4] or Mask(224, 32, mem[_26057 + 289])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26057 + 257 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_26057 + 261]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[128]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_26057 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26057 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26057 + 257] = 40
                                    mem[_26057 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26057 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26057 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_26057 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26057 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26057 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26057 + 446] = 36
                                    mem[64] = _26057 + 514
                                    mem[_26057 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_26057 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26057 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26057 + 257] = 40
                                    mem[_26057 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26057 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26057 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_26057 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26057 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26057 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26057 + 446] = 36
                                    mem[64] = _26057 + 514
                                    mem[_26057 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _26057 + 478
                                u = _26057 + 514
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_26057 + 546] = mem[_26057 + 538 len 4] or Mask(224, 32, mem[_26057 + 546])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26057 + 514 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_26057 + 518]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _26057 + ceil32(return_data.size) + 515
                                    mem[_26057 + 514] = return_data.size
                                    mem[_26057 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_26057 + 546]
                            else:
                                mem[_26057 + 257] = return_data.size
                                mem[_26057 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[_26057 + 289]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_26057 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26057 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26057 + ceil32(return_data.size) + 258] = 40
                                    mem[_26057 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26057 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26057 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_26057 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26057 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26057 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26057 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _26057 + ceil32(return_data.size) + 515
                                    mem[_26057 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_26057 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26057 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26057 + ceil32(return_data.size) + 258] = 40
                                    mem[_26057 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26057 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26057 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_26057 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26057 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26057 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26057 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _26057 + ceil32(return_data.size) + 515
                                    mem[_26057 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _26057 + ceil32(return_data.size) + 479
                                u = _26057 + ceil32(return_data.size) + 515
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_26057 + ceil32(return_data.size) + 547] = mem[_26057 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_26057 + ceil32(return_data.size) + 547])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26057 + ceil32(return_data.size) + 515 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_26057 + ceil32(return_data.size) + 519]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _26057 + (2 * ceil32(return_data.size)) + 516
                                    mem[_26057 + ceil32(return_data.size) + 515] = return_data.size
                                    mem[_26057 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_26057 + ceil32(return_data.size) + 547]
                        mem[(32 * (4 * idx) + 4) + 128] = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
        else:
            mem[64] = (32 * (4 * ('cd', 4).length) + 2) + ceil32(return_data.size) + 386
            mem[(32 * (4 * ('cd', 4).length) + 2) + 385] = return_data.size
            mem[(32 * (4 * ('cd', 4).length) + 2) + 417 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require 0 < (4 * ('cd', 4).length) + 2
                require 1 < (4 * ('cd', 4).length) + 2
                mem[160] = 0
                mem[128] = ext_call.return_data[0]
                idx = 0
                while idx < ('cd', 4).length:
                    require idx < ('cd', 36).length
                    require idx < ('cd', 68).length
                    require idx < ('cd', 4).length
                    if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 == address(cd[((32 * idx) + cd[4] + 36)]):
                        revert with 0, 'IDENTICAL_ADDRESSES'
                    if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 >= address(cd[((32 * idx) + cd[4] + 36)]):
                        if not address(cd[((32 * idx) + cd[4] + 36)]):
                            revert with 0, 'ZERO_ADDRESS'
                        _26071 = mem[64]
                        mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 52] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
                        _26072 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _26074 = sha3(mem[_26072 + 32 len mem[_26072]])
                        mem[_26071 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_26071 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[_26071 + 125] = _26074
                        mem[_26071 + 157] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_26071 + 72] = 85
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                gas gas_remaining wei
                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26074, cd[((32 * idx) + cd[68] + 36)]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_26071 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26074, cd[((32 * idx) + cd[68] + 36)]))
                        mem[_26071 + 189] = 36
                        mem[64] = _26071 + 257
                        mem[_26071 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26074, cd[((32 * idx) + cd[68] + 36)])) << 64
                        t = _26071 + 221
                        u = _26071 + 257
                        s = 36
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_26071 + 289] = mem[_26071 + 281 len 4] or Mask(224, 32, mem[_26071 + 289])
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26071 + 257 len 4] with:
                                gas gas_remaining wei
                               args mem[_26071 + 261]
                        if not return_data.size:
                            if not ext_call.success:
                                require (4 * idx) + 2 < mem[96]
                                require (4 * idx) + 3 < mem[96]
                                mem[(32 * (4 * idx) + 3) + 128] = 0
                            else:
                                if mem[96] != 32:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    require mem[96] >= 32
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = mem[128]
                            mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                revert with 0, 'IDENTICAL_ADDRESSES'
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                mem[_26071 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                mem[_26071 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_26071 + 257] = 40
                                mem[_26071 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_26071 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                mem[_26071 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                mem[_26071 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                mem[_26071 + 329] = 85
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_26071 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                mem[_26071 + 446] = 36
                                mem[64] = _26071 + 514
                                mem[_26071 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                            else:
                                if not address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'ZERO_ADDRESS'
                                mem[_26071 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_26071 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                mem[_26071 + 257] = 40
                                mem[_26071 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_26071 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                mem[_26071 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                mem[_26071 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                mem[_26071 + 329] = 85
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_26071 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                mem[_26071 + 446] = 36
                                mem[64] = _26071 + 514
                                mem[_26071 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _26071 + 478
                            u = _26071 + 514
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_26071 + 546] = mem[_26071 + 538 len 4] or Mask(224, 32, mem[_26071 + 546])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26071 + 514 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_26071 + 518]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 4 < mem[96]
                                    require (4 * idx) + 5 < mem[96]
                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                            else:
                                mem[64] = _26071 + ceil32(return_data.size) + 515
                                mem[_26071 + 514] = return_data.size
                                mem[_26071 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 4 < mem[96]
                                    require (4 * idx) + 5 < mem[96]
                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = mem[_26071 + 546]
                        else:
                            mem[_26071 + 257] = return_data.size
                            mem[_26071 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require (4 * idx) + 2 < mem[96]
                                require (4 * idx) + 3 < mem[96]
                                mem[(32 * (4 * idx) + 3) + 128] = 0
                            else:
                                if return_data.size != 32:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    require return_data.size >= 32
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = mem[_26071 + 289]
                            mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                revert with 0, 'IDENTICAL_ADDRESSES'
                            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                mem[_26071 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                mem[_26071 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_26071 + ceil32(return_data.size) + 258] = 40
                                mem[_26071 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_26071 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                mem[_26071 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                mem[_26071 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                mem[_26071 + ceil32(return_data.size) + 330] = 85
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_26071 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                mem[_26071 + ceil32(return_data.size) + 447] = 36
                                mem[64] = _26071 + ceil32(return_data.size) + 515
                                mem[_26071 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                            else:
                                if not address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'ZERO_ADDRESS'
                                mem[_26071 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[_26071 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                mem[_26071 + ceil32(return_data.size) + 258] = 40
                                mem[_26071 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_26071 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                mem[_26071 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                mem[_26071 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                mem[_26071 + ceil32(return_data.size) + 330] = 85
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_26071 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                mem[_26071 + ceil32(return_data.size) + 447] = 36
                                mem[64] = _26071 + ceil32(return_data.size) + 515
                                mem[_26071 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _26071 + ceil32(return_data.size) + 479
                            u = _26071 + ceil32(return_data.size) + 515
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_26071 + ceil32(return_data.size) + 547] = mem[_26071 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_26071 + ceil32(return_data.size) + 547])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26071 + ceil32(return_data.size) + 515 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_26071 + ceil32(return_data.size) + 519]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 4 < mem[96]
                                    require (4 * idx) + 5 < mem[96]
                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                            else:
                                mem[64] = _26071 + (2 * ceil32(return_data.size)) + 516
                                mem[_26071 + ceil32(return_data.size) + 515] = return_data.size
                                mem[_26071 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 4 < mem[96]
                                    require (4 * idx) + 5 < mem[96]
                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = mem[_26071 + ceil32(return_data.size) + 547]
                    else:
                        _26064 = mem[64]
                        mem[mem[64] + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
                        mem[mem[64] + 52] = address(cd[((32 * idx) + cd[4] + 36)])
                        _26065 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _26067 = sha3(mem[_26065 + 32 len mem[_26065]])
                        mem[_26064 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_26064 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[_26064 + 125] = _26067
                        mem[_26064 + 157] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_26064 + 72] = 85
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                gas gas_remaining wei
                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26067, cd[((32 * idx) + cd[68] + 36)]))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[_26064 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26067, cd[((32 * idx) + cd[68] + 36)]))
                        mem[_26064 + 189] = 36
                        mem[64] = _26064 + 257
                        mem[_26064 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26067, cd[((32 * idx) + cd[68] + 36)])) << 64
                        t = _26064 + 221
                        u = mem[64]
                        s = mem[_26064 + 189]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_26064 + 189])] = mem[_26064 + floor32(mem[_26064 + 189]) + -(mem[_26064 + 189] % 32) + 253 len mem[_26064 + 189] % 32] or Mask(8 * -(mem[_26064 + 189] % 32) + 32, -(8 * -(mem[_26064 + 189] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_26064 + 189])])
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _26064 + -mem[64] + 289]
                        if not return_data.size:
                            if not ext_call.success:
                                require (4 * idx) + 2 < mem[96]
                                require (4 * idx) + 3 < mem[96]
                                mem[(32 * (4 * idx) + 3) + 128] = 0
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    _40218 = mem[64]
                                    mem[mem[64] + 32] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[mem[64] + 52] = address(cd[((32 * idx) + cd[4] + 36)])
                                    _40219 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _40221 = sha3(mem[_40219 + 32 len mem[_40219]])
                                    mem[_40218 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_40218 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_40218 + 125] = _40221
                                    mem[_40218 + 157] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_40218 + 72] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _40221, cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_40218 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _40221, cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_40218 + 189] = 36
                                    mem[64] = _40218 + 257
                                    mem[_40218 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _40221, cd[((32 * idx) + cd[68] + 36)])) << 64
                                    t = _40218 + 221
                                    u = _40218 + 257
                                    s = 36
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_40218 + 289] = mem[_40218 + 281 len 4] or Mask(224, 32, mem[_40218 + 289])
                                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_40218 + 257 len 4] with:
                                            gas gas_remaining wei
                                           args mem[_40218 + 261]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if mem[96] != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require mem[96] >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                    else:
                                        mem[64] = _40218 + ceil32(return_data.size) + 258
                                        mem[_40218 + 257] = return_data.size
                                        mem[_40218 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if return_data.size != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require return_data.size >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[_40218 + 289]
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    _40225 = mem[64]
                                    mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[mem[64] + 52] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    _40226 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _40228 = sha3(mem[_40226 + 32 len mem[_40226]])
                                    mem[_40225 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_40225 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_40225 + 125] = _40228
                                    mem[_40225 + 157] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_40225 + 72] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _40228, cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_40225 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _40228, cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_40225 + 189] = 36
                                    mem[64] = _40225 + 257
                                    mem[_40225 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _40228, cd[((32 * idx) + cd[68] + 36)])) << 64
                                    t = _40225 + 221
                                    u = _40225 + 257
                                    s = 36
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_40225 + 289] = mem[_40225 + 281 len 4] or Mask(224, 32, mem[_40225 + 289])
                                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_40225 + 257 len 4] with:
                                            gas gas_remaining wei
                                           args mem[_40225 + 261]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if mem[96] != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require mem[96] >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                    else:
                                        mem[64] = _40225 + ceil32(return_data.size) + 258
                                        mem[_40225 + 257] = return_data.size
                                        mem[_40225 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if return_data.size != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require return_data.size >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[_40225 + 289]
                            else:
                                if mem[96] != 32:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                    mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                        _41134 = mem[64]
                                        mem[mem[64] + 32] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[mem[64] + 52] = address(cd[((32 * idx) + cd[4] + 36)])
                                        _41135 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _41137 = sha3(mem[_41135 + 32 len mem[_41135]])
                                        mem[_41134 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_41134 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_41134 + 125] = _41137
                                        mem[_41134 + 157] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_41134 + 72] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _41137, cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_41134 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _41137, cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_41134 + 189] = 36
                                        mem[64] = _41134 + 257
                                        mem[_41134 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _41137, cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _41134 + 221
                                        u = _41134 + 257
                                        s = 36
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_41134 + 289] = mem[_41134 + 281 len 4] or Mask(224, 32, mem[_41134 + 289])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_41134 + 257 len 4] with:
                                                gas gas_remaining wei
                                               args mem[_41134 + 261]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            mem[64] = _41134 + ceil32(return_data.size) + 258
                                            mem[_41134 + 257] = return_data.size
                                            mem[_41134 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_41134 + 289]
                                    else:
                                        if not address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'ZERO_ADDRESS'
                                        _41141 = mem[64]
                                        mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[mem[64] + 52] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        _41142 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _41144 = sha3(mem[_41142 + 32 len mem[_41142]])
                                        mem[_41141 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_41141 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_41141 + 125] = _41144
                                        mem[_41141 + 157] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_41141 + 72] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _41144, cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_41141 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _41144, cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_41141 + 189] = 36
                                        mem[64] = _41141 + 257
                                        mem[_41141 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _41144, cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _41141 + 221
                                        u = _41141 + 257
                                        s = 36
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_41141 + 289] = mem[_41141 + 281 len 4] or Mask(224, 32, mem[_41141 + 289])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_41141 + 257 len 4] with:
                                                gas gas_remaining wei
                                               args mem[_41141 + 261]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            mem[64] = _41141 + ceil32(return_data.size) + 258
                                            mem[_41141 + 257] = return_data.size
                                            mem[_41141 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_41141 + 289]
                                else:
                                    require mem[96] >= 32
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = mem[128]
                                    mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                        _42022 = mem[64]
                                        mem[mem[64] + 32] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[mem[64] + 52] = address(cd[((32 * idx) + cd[4] + 36)])
                                        _42023 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _42025 = sha3(mem[_42023 + 32 len mem[_42023]])
                                        mem[_42022 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_42022 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_42022 + 125] = _42025
                                        mem[_42022 + 157] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_42022 + 72] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _42025, cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_42022 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _42025, cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_42022 + 189] = 36
                                        mem[64] = _42022 + 257
                                        mem[_42022 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _42025, cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _42022 + 221
                                        u = _42022 + 257
                                        s = 36
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_42022 + 289] = mem[_42022 + 281 len 4] or Mask(224, 32, mem[_42022 + 289])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_42022 + 257 len 4] with:
                                                gas gas_remaining wei
                                               args mem[_42022 + 261]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            mem[64] = _42022 + ceil32(return_data.size) + 258
                                            mem[_42022 + 257] = return_data.size
                                            mem[_42022 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_42022 + 289]
                                    else:
                                        if not address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'ZERO_ADDRESS'
                                        _42029 = mem[64]
                                        mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[mem[64] + 52] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        _42030 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _42032 = sha3(mem[_42030 + 32 len mem[_42030]])
                                        mem[_42029 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_42029 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_42029 + 125] = _42032
                                        mem[_42029 + 157] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_42029 + 72] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _42032, cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_42029 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _42032, cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_42029 + 189] = 36
                                        mem[64] = _42029 + 257
                                        mem[_42029 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _42032, cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _42029 + 221
                                        u = _42029 + 257
                                        s = 36
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_42029 + 289] = mem[_42029 + 281 len 4] or Mask(224, 32, mem[_42029 + 289])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_42029 + 257 len 4] with:
                                                gas gas_remaining wei
                                               args mem[_42029 + 261]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            mem[64] = _42029 + ceil32(return_data.size) + 258
                                            mem[_42029 + 257] = return_data.size
                                            mem[_42029 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_42029 + 289]
                        else:
                            _38820 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_38820] = return_data.size
                            mem[_38820 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require (4 * idx) + 2 < mem[96]
                                require (4 * idx) + 3 < mem[96]
                                mem[(32 * (4 * idx) + 3) + 128] = 0
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    _40234 = mem[64]
                                    mem[mem[64] + 32] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[mem[64] + 52] = address(cd[((32 * idx) + cd[4] + 36)])
                                    _40235 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _40237 = sha3(mem[_40235 + 32 len mem[_40235]])
                                    mem[_40234 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_40234 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_40234 + 125] = _40237
                                    mem[_40234 + 157] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_40234 + 72] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _40237, cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_40234 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _40237, cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_40234 + 189] = 36
                                    mem[64] = _40234 + 257
                                    mem[_40234 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _40237, cd[((32 * idx) + cd[68] + 36)])) << 64
                                    t = _40234 + 221
                                    u = _40234 + 257
                                    s = 36
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_40234 + 289] = mem[_40234 + 281 len 4] or Mask(224, 32, mem[_40234 + 289])
                                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_40234 + 257 len 4] with:
                                            gas gas_remaining wei
                                           args mem[_40234 + 261]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if mem[96] != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require mem[96] >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                    else:
                                        mem[64] = _40234 + ceil32(return_data.size) + 258
                                        mem[_40234 + 257] = return_data.size
                                        mem[_40234 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if return_data.size != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require return_data.size >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[_40234 + 289]
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    _40241 = mem[64]
                                    mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[mem[64] + 52] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    _40242 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _40244 = sha3(mem[_40242 + 32 len mem[_40242]])
                                    mem[_40241 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_40241 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_40241 + 125] = _40244
                                    mem[_40241 + 157] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_40241 + 72] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _40244, cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_40241 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _40244, cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_40241 + 189] = 36
                                    mem[64] = _40241 + 257
                                    mem[_40241 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _40244, cd[((32 * idx) + cd[68] + 36)])) << 64
                                    t = _40241 + 221
                                    u = _40241 + 257
                                    s = 36
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_40241 + 289] = mem[_40241 + 281 len 4] or Mask(224, 32, mem[_40241 + 289])
                                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_40241 + 257 len 4] with:
                                            gas gas_remaining wei
                                           args mem[_40241 + 261]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if mem[96] != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require mem[96] >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                    else:
                                        mem[64] = _40241 + ceil32(return_data.size) + 258
                                        mem[_40241 + 257] = return_data.size
                                        mem[_40241 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if return_data.size != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require return_data.size >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[_40241 + 289]
                            else:
                                if return_data.size != 32:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                    mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                        _41154 = mem[64]
                                        mem[mem[64] + 32] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[mem[64] + 52] = address(cd[((32 * idx) + cd[4] + 36)])
                                        _41155 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _41157 = sha3(mem[_41155 + 32 len mem[_41155]])
                                        mem[_41154 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_41154 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_41154 + 125] = _41157
                                        mem[_41154 + 157] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_41154 + 72] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _41157, cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_41154 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _41157, cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_41154 + 189] = 36
                                        mem[64] = _41154 + 257
                                        mem[_41154 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _41157, cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _41154 + 221
                                        u = _41154 + 257
                                        s = 36
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_41154 + 289] = mem[_41154 + 281 len 4] or Mask(224, 32, mem[_41154 + 289])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_41154 + 257 len 4] with:
                                                gas gas_remaining wei
                                               args mem[_41154 + 261]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            mem[64] = _41154 + ceil32(return_data.size) + 258
                                            mem[_41154 + 257] = return_data.size
                                            mem[_41154 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_41154 + 289]
                                    else:
                                        if not address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'ZERO_ADDRESS'
                                        _41161 = mem[64]
                                        mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[mem[64] + 52] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        _41162 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _41164 = sha3(mem[_41162 + 32 len mem[_41162]])
                                        mem[_41161 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_41161 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_41161 + 125] = _41164
                                        mem[_41161 + 157] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_41161 + 72] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _41164, cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_41161 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _41164, cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_41161 + 189] = 36
                                        mem[64] = _41161 + 257
                                        mem[_41161 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _41164, cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _41161 + 221
                                        u = _41161 + 257
                                        s = 36
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_41161 + 289] = mem[_41161 + 281 len 4] or Mask(224, 32, mem[_41161 + 289])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_41161 + 257 len 4] with:
                                                gas gas_remaining wei
                                               args mem[_41161 + 261]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            mem[64] = _41161 + ceil32(return_data.size) + 258
                                            mem[_41161 + 257] = return_data.size
                                            mem[_41161 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_41161 + 289]
                                else:
                                    require return_data.size >= 32
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = mem[_38820 + 32]
                                    mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                        _42040 = mem[64]
                                        mem[mem[64] + 32] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[mem[64] + 52] = address(cd[((32 * idx) + cd[4] + 36)])
                                        _42041 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _42043 = sha3(mem[_42041 + 32 len mem[_42041]])
                                        mem[_42040 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_42040 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_42040 + 125] = _42043
                                        mem[_42040 + 157] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_42040 + 72] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _42043, cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_42040 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _42043, cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_42040 + 189] = 36
                                        mem[64] = _42040 + 257
                                        mem[_42040 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _42043, cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _42040 + 221
                                        u = _42040 + 257
                                        s = 36
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_42040 + 289] = mem[_42040 + 281 len 4] or Mask(224, 32, mem[_42040 + 289])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_42040 + 257 len 4] with:
                                                gas gas_remaining wei
                                               args mem[_42040 + 261]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            mem[64] = _42040 + ceil32(return_data.size) + 258
                                            mem[_42040 + 257] = return_data.size
                                            mem[_42040 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_42040 + 289]
                                    else:
                                        if not address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'ZERO_ADDRESS'
                                        _42047 = mem[64]
                                        mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[mem[64] + 52] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        _42048 = mem[64]
                                        mem[mem[64]] = 40
                                        mem[64] = mem[64] + 72
                                        _42050 = sha3(mem[_42048 + 32 len mem[_42048]])
                                        mem[_42047 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_42047 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_42047 + 125] = _42050
                                        mem[_42047 + 157] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_42047 + 72] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _42050, cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_42047 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _42050, cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_42047 + 189] = 36
                                        mem[64] = _42047 + 257
                                        mem[_42047 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _42050, cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _42047 + 221
                                        u = _42047 + 257
                                        s = 36
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_42047 + 289] = mem[_42047 + 281 len 4] or Mask(224, 32, mem[_42047 + 289])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_42047 + 257 len 4] with:
                                                gas gas_remaining wei
                                               args mem[_42047 + 261]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            mem[64] = _42047 + ceil32(return_data.size) + 258
                                            mem[_42047 + 257] = return_data.size
                                            mem[_42047 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_42047 + 289]
                    mem[(32 * (4 * idx) + 4) + 128] = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
            else:
                if return_data.size != 32:
                    require 0 < (4 * ('cd', 4).length) + 2
                    require 1 < (4 * ('cd', 4).length) + 2
                    mem[160] = 0
                    mem[128] = ext_call.return_data[0]
                    idx = 0
                    while idx < ('cd', 4).length:
                        require idx < ('cd', 36).length
                        require idx < ('cd', 68).length
                        require idx < ('cd', 4).length
                        if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 == address(cd[((32 * idx) + cd[4] + 36)]):
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 < address(cd[((32 * idx) + cd[4] + 36)]):
                            _26078 = mem[64]
                            mem[mem[64] + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
                            mem[mem[64] + 52] = address(cd[((32 * idx) + cd[4] + 36)])
                            _26079 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _26081 = sha3(mem[_26079 + 32 len mem[_26079]])
                            mem[_26078 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_26078 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[_26078 + 125] = _26081
                            mem[_26078 + 157] = cd[((32 * idx) + cd[68] + 36)]
                            mem[_26078 + 72] = 85
                            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                            staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26081, cd[((32 * idx) + cd[68] + 36)]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_26078 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26081, cd[((32 * idx) + cd[68] + 36)]))
                            mem[_26078 + 189] = 36
                            mem[64] = _26078 + 257
                            mem[_26078 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26081, cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _26078 + 221
                            u = _26078 + 257
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_26078 + 289] = mem[_26078 + 281 len 4] or Mask(224, 32, mem[_26078 + 289])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26078 + 257 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_26078 + 261]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[128]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_26078 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26078 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26078 + 257] = 40
                                    mem[_26078 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26078 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26078 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_26078 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26078 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26078 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26078 + 446] = 36
                                    mem[64] = _26078 + 514
                                    mem[_26078 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_26078 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26078 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26078 + 257] = 40
                                    mem[_26078 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26078 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26078 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_26078 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26078 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26078 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26078 + 446] = 36
                                    mem[64] = _26078 + 514
                                    mem[_26078 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _26078 + 478
                                u = _26078 + 514
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_26078 + 546] = mem[_26078 + 538 len 4] or Mask(224, 32, mem[_26078 + 546])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26078 + 514 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_26078 + 518]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _26078 + ceil32(return_data.size) + 515
                                    mem[_26078 + 514] = return_data.size
                                    mem[_26078 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_26078 + 546]
                            else:
                                mem[_26078 + 257] = return_data.size
                                mem[_26078 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[_26078 + 289]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_26078 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26078 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26078 + ceil32(return_data.size) + 258] = 40
                                    mem[_26078 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26078 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26078 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_26078 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26078 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26078 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26078 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _26078 + ceil32(return_data.size) + 515
                                    mem[_26078 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_26078 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26078 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26078 + ceil32(return_data.size) + 258] = 40
                                    mem[_26078 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26078 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26078 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_26078 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26078 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26078 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26078 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _26078 + ceil32(return_data.size) + 515
                                    mem[_26078 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _26078 + ceil32(return_data.size) + 479
                                u = _26078 + ceil32(return_data.size) + 515
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_26078 + ceil32(return_data.size) + 547] = mem[_26078 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_26078 + ceil32(return_data.size) + 547])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26078 + ceil32(return_data.size) + 515 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_26078 + ceil32(return_data.size) + 519]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _26078 + (2 * ceil32(return_data.size)) + 516
                                    mem[_26078 + ceil32(return_data.size) + 515] = return_data.size
                                    mem[_26078 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_26078 + ceil32(return_data.size) + 547]
                        else:
                            if not address(cd[((32 * idx) + cd[4] + 36)]):
                                revert with 0, 'ZERO_ADDRESS'
                            _26085 = mem[64]
                            mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 52] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
                            _26086 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _26088 = sha3(mem[_26086 + 32 len mem[_26086]])
                            mem[_26085 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_26085 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[_26085 + 125] = _26088
                            mem[_26085 + 157] = cd[((32 * idx) + cd[68] + 36)]
                            mem[_26085 + 72] = 85
                            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                            staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26088, cd[((32 * idx) + cd[68] + 36)]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_26085 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26088, cd[((32 * idx) + cd[68] + 36)]))
                            mem[_26085 + 189] = 36
                            mem[64] = _26085 + 257
                            mem[_26085 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26088, cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _26085 + 221
                            u = _26085 + 257
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_26085 + 289] = mem[_26085 + 281 len 4] or Mask(224, 32, mem[_26085 + 289])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26085 + 257 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_26085 + 261]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[128]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_26085 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26085 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26085 + 257] = 40
                                    mem[_26085 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26085 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26085 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_26085 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26085 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26085 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26085 + 446] = 36
                                    mem[64] = _26085 + 514
                                    mem[_26085 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_26085 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26085 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26085 + 257] = 40
                                    mem[_26085 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26085 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26085 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_26085 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26085 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26085 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26085 + 446] = 36
                                    mem[64] = _26085 + 514
                                    mem[_26085 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _26085 + 478
                                u = _26085 + 514
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_26085 + 546] = mem[_26085 + 538 len 4] or Mask(224, 32, mem[_26085 + 546])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26085 + 514 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_26085 + 518]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _26085 + ceil32(return_data.size) + 515
                                    mem[_26085 + 514] = return_data.size
                                    mem[_26085 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_26085 + 546]
                            else:
                                mem[_26085 + 257] = return_data.size
                                mem[_26085 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[_26085 + 289]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_26085 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26085 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26085 + ceil32(return_data.size) + 258] = 40
                                    mem[_26085 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26085 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26085 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_26085 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26085 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26085 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26085 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _26085 + ceil32(return_data.size) + 515
                                    mem[_26085 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_26085 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26085 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26085 + ceil32(return_data.size) + 258] = 40
                                    mem[_26085 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26085 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26085 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_26085 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26085 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26085 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26085 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _26085 + ceil32(return_data.size) + 515
                                    mem[_26085 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _26085 + ceil32(return_data.size) + 479
                                u = _26085 + ceil32(return_data.size) + 515
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_26085 + ceil32(return_data.size) + 547] = mem[_26085 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_26085 + ceil32(return_data.size) + 547])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26085 + ceil32(return_data.size) + 515 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_26085 + ceil32(return_data.size) + 519]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _26085 + (2 * ceil32(return_data.size)) + 516
                                    mem[_26085 + ceil32(return_data.size) + 515] = return_data.size
                                    mem[_26085 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_26085 + ceil32(return_data.size) + 547]
                        mem[(32 * (4 * idx) + 4) + 128] = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                else:
                    require return_data.size >= 32
                    require 0 < (4 * ('cd', 4).length) + 2
                    require 1 < (4 * ('cd', 4).length) + 2
                    mem[160] = mem[(32 * (4 * ('cd', 4).length) + 2) + 417 len 28], 0
                    mem[128] = ext_call.return_data[0]
                    idx = 0
                    while idx < ('cd', 4).length:
                        require idx < ('cd', 36).length
                        require idx < ('cd', 68).length
                        require idx < ('cd', 4).length
                        if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 == address(cd[((32 * idx) + cd[4] + 36)]):
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if 0x4068da6c83afcfa0e13ba15a6696662335d5b75 < address(cd[((32 * idx) + cd[4] + 36)]):
                            _26092 = mem[64]
                            mem[mem[64] + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
                            mem[mem[64] + 52] = address(cd[((32 * idx) + cd[4] + 36)])
                            _26093 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _26095 = sha3(mem[_26093 + 32 len mem[_26093]])
                            mem[_26092 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_26092 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[_26092 + 125] = _26095
                            mem[_26092 + 157] = cd[((32 * idx) + cd[68] + 36)]
                            mem[_26092 + 72] = 85
                            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                            staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26095, cd[((32 * idx) + cd[68] + 36)]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_26092 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26095, cd[((32 * idx) + cd[68] + 36)]))
                            mem[_26092 + 189] = 36
                            mem[64] = _26092 + 257
                            mem[_26092 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26095, cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _26092 + 221
                            u = _26092 + 257
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_26092 + 289] = mem[_26092 + 281 len 4] or Mask(224, 32, mem[_26092 + 289])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26092 + 257 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_26092 + 261]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[128]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_26092 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26092 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26092 + 257] = 40
                                    mem[_26092 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26092 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26092 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_26092 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26092 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26092 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26092 + 446] = 36
                                    mem[64] = _26092 + 514
                                    mem[_26092 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_26092 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26092 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26092 + 257] = 40
                                    mem[_26092 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26092 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26092 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_26092 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26092 + 329] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26092 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26092 + 446] = 36
                                    mem[64] = _26092 + 514
                                    mem[_26092 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _26092 + 478
                                u = _26092 + 514
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_26092 + 546] = mem[_26092 + 538 len 4] or Mask(224, 32, mem[_26092 + 546])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26092 + 514 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_26092 + 518]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _26092 + ceil32(return_data.size) + 515
                                    mem[_26092 + 514] = return_data.size
                                    mem[_26092 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_26092 + 546]
                            else:
                                mem[_26092 + 257] = return_data.size
                                mem[_26092 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[_26092 + 289]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_26092 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26092 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26092 + ceil32(return_data.size) + 258] = 40
                                    mem[_26092 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26092 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26092 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_26092 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26092 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26092 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26092 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _26092 + ceil32(return_data.size) + 515
                                    mem[_26092 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_26092 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26092 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26092 + ceil32(return_data.size) + 258] = 40
                                    mem[_26092 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26092 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26092 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_26092 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26092 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26092 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26092 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _26092 + ceil32(return_data.size) + 515
                                    mem[_26092 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _26092 + ceil32(return_data.size) + 479
                                u = _26092 + ceil32(return_data.size) + 515
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_26092 + ceil32(return_data.size) + 547] = mem[_26092 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_26092 + ceil32(return_data.size) + 547])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26092 + ceil32(return_data.size) + 515 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_26092 + ceil32(return_data.size) + 519]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _26092 + (2 * ceil32(return_data.size)) + 516
                                    mem[_26092 + ceil32(return_data.size) + 515] = return_data.size
                                    mem[_26092 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_26092 + ceil32(return_data.size) + 547]
                        else:
                            if not address(cd[((32 * idx) + cd[4] + 36)]):
                                revert with 0, 'ZERO_ADDRESS'
                            _26099 = mem[64]
                            mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 52] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75000000000000000000000000
                            _26100 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _26102 = sha3(mem[_26100 + 32 len mem[_26100]])
                            mem[_26099 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_26099 + 105] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[_26099 + 125] = _26102
                            mem[_26099 + 157] = cd[((32 * idx) + cd[68] + 36)]
                            mem[_26099 + 72] = 85
                            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                            staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26102, cd[((32 * idx) + cd[68] + 36)]))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_26099 + 225] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26102, cd[((32 * idx) + cd[68] + 36)]))
                            mem[_26099 + 189] = 36
                            mem[64] = _26099 + 257
                            mem[_26099 + 221] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), _26102, cd[((32 * idx) + cd[68] + 36)])) << 64
                            t = _26099 + 221
                            u = _26099 + 257
                            s = 36
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_26099 + 289] = mem[_26099 + 281 len 4] or Mask(224, 32, mem[_26099 + 289])
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26099 + 257 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_26099 + 261]
                            if not return_data.size:
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                    mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'IDENTICAL_ADDRESSES'
                                    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                        mem[_26099 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[_26099 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_26099 + 257] = 40
                                        mem[_26099 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_26099 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_26099 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                        mem[_26099 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_26099 + 329] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_26099 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_26099 + 446] = 36
                                        mem[64] = _26099 + 514
                                        mem[_26099 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                    else:
                                        if not address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'ZERO_ADDRESS'
                                        mem[_26099 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                        mem[_26099 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                        mem[_26099 + 257] = 40
                                        mem[_26099 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_26099 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[_26099 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        mem[_26099 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                        mem[_26099 + 329] = 85
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_26099 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                        mem[_26099 + 446] = 36
                                        mem[64] = _26099 + 514
                                        mem[_26099 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                    t = _26099 + 478
                                    u = _26099 + 514
                                    s = 36
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_26099 + 546] = mem[_26099 + 538 len 4] or Mask(224, 32, mem[_26099 + 546])
                                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26099 + 514 len 4] with:
                                            gas gas_remaining wei
                                           args mem[_26099 + 518]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if mem[96] != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require mem[96] >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                    else:
                                        mem[64] = _26099 + ceil32(return_data.size) + 515
                                        mem[_26099 + 514] = return_data.size
                                        mem[_26099 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            if return_data.size != 32:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                require return_data.size >= 32
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = mem[_26099 + 546]
                                else:
                                    if mem[96] != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                        mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'IDENTICAL_ADDRESSES'
                                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                            mem[_26099 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                            mem[_26099 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_26099 + 257] = 40
                                            mem[_26099 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_26099 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[_26099 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                            mem[_26099 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                            mem[_26099 + 329] = 85
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_26099 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                            mem[_26099 + 446] = 36
                                            mem[64] = _26099 + 514
                                            mem[_26099 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                            t = _26099 + 478
                                            u = _26099 + 514
                                            s = 36
                                            while s >= 32:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s - 32
                                                continue 
                                            mem[_26099 + 546] = mem[_26099 + 538 len 4] or Mask(224, 32, mem[_26099 + 546])
                                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26099 + 514 len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[_26099 + 518]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    if mem[96] != 32:
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                                    else:
                                                        require mem[96] >= 32
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                            else:
                                                mem[64] = _26099 + ceil32(return_data.size) + 515
                                                mem[_26099 + 514] = return_data.size
                                                mem[_26099 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    if return_data.size != 32:
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                                    else:
                                                        require return_data.size >= 32
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = mem[_26099 + 546]
                                        else:
                                            if not address(cd[((32 * idx) + cd[4] + 36)]):
                                                revert with 0, 'ZERO_ADDRESS'
                                            mem[_26099 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_26099 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                            mem[_26099 + 257] = 40
                                            mem[_26099 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_26099 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[_26099 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            mem[_26099 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                            mem[_26099 + 329] = 85
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_26099 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                            mem[_26099 + 446] = 36
                                            mem[64] = _26099 + 514
                                            mem[_26099 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                            t = _26099 + 478
                                            u = mem[64]
                                            s = mem[_26099 + 446]
                                            while s >= 32:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s - 32
                                                continue 
                                            mem[mem[64] + floor32(mem[_26099 + 446])] = mem[_26099 + floor32(mem[_26099 + 446]) + -(mem[_26099 + 446] % 32) + 510 len mem[_26099 + 446] % 32] or Mask(8 * -(mem[_26099 + 446] % 32) + 32, -(8 * -(mem[_26099 + 446] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_26099 + 446])])
                                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len _26099 + -mem[64] + 546]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    if mem[96] != 32:
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                                    else:
                                                        require mem[96] >= 32
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                            else:
                                                _52497 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_52497] = return_data.size
                                                mem[_52497 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    if return_data.size != 32:
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                                    else:
                                                        require return_data.size >= 32
                                                        require (4 * idx) + 4 < mem[96]
                                                        require (4 * idx) + 5 < mem[96]
                                                        mem[(32 * (4 * idx) + 5) + 128] = mem[_52497 + 32]
                                    else:
                                        require mem[96] >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[128]
                                        mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                            revert with 0, 'IDENTICAL_ADDRESSES'
                                        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                            mem[_26099 + 289] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                            mem[_26099 + 309] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_26099 + 257] = 40
                                            mem[_26099 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_26099 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[_26099 + 382] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                            mem[_26099 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                            mem[_26099 + 329] = 85
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_26099 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                            mem[_26099 + 446] = 36
                                            mem[64] = _26099 + 514
                                            mem[_26099 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                        else:
                                            if not address(cd[((32 * idx) + cd[4] + 36)]):
                                                revert with 0, 'ZERO_ADDRESS'
                                            mem[_26099 + 289] = address(cd[((32 * idx) + cd[4] + 36)])
                                            mem[_26099 + 309] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                            mem[_26099 + 257] = 40
                                            mem[_26099 + 361] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_26099 + 362] = address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[_26099 + 382] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            mem[_26099 + 414] = cd[((32 * idx) + cd[68] + 36)]
                                            mem[_26099 + 329] = 85
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_26099 + 482] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                            mem[_26099 + 446] = 36
                                            mem[64] = _26099 + 514
                                            mem[_26099 + 478] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                        t = _26099 + 478
                                        u = _26099 + 514
                                        s = 36
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_26099 + 546] = mem[_26099 + 538 len 4] or Mask(224, 32, mem[_26099 + 546])
                                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26099 + 514 len 4] with:
                                                gas gas_remaining wei
                                               args mem[_26099 + 518]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if mem[96] != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require mem[96] >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                        else:
                                            mem[64] = _26099 + ceil32(return_data.size) + 515
                                            mem[_26099 + 514] = return_data.size
                                            mem[_26099 + 546 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                require (4 * idx) + 4 < mem[96]
                                                require (4 * idx) + 5 < mem[96]
                                                mem[(32 * (4 * idx) + 5) + 128] = 0
                                            else:
                                                if return_data.size != 32:
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = 0
                                                else:
                                                    require return_data.size >= 32
                                                    require (4 * idx) + 4 < mem[96]
                                                    require (4 * idx) + 5 < mem[96]
                                                    mem[(32 * (4 * idx) + 5) + 128] = mem[_26099 + 546]
                            else:
                                mem[_26099 + 257] = return_data.size
                                mem[_26099 + 289 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require (4 * idx) + 2 < mem[96]
                                    require (4 * idx) + 3 < mem[96]
                                    mem[(32 * (4 * idx) + 3) + 128] = 0
                                else:
                                    if return_data.size != 32:
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = 0
                                    else:
                                        require return_data.size >= 32
                                        require (4 * idx) + 2 < mem[96]
                                        require (4 * idx) + 3 < mem[96]
                                        mem[(32 * (4 * idx) + 3) + 128] = mem[_26099 + 289]
                                mem[(32 * (4 * idx) + 2) + 128] = ext_call.return_data[0]
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(cd[((32 * idx) + cd[4] + 36)]):
                                    revert with 0, 'IDENTICAL_ADDRESSES'
                                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < address(cd[((32 * idx) + cd[4] + 36)]):
                                    mem[_26099 + ceil32(return_data.size) + 290] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26099 + ceil32(return_data.size) + 310] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26099 + ceil32(return_data.size) + 258] = 40
                                    mem[_26099 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26099 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26099 + ceil32(return_data.size) + 383] = sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)]))
                                    mem[_26099 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26099 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26099 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26099 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _26099 + ceil32(return_data.size) + 515
                                    mem[_26099 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(2431441379194500172, address(cd[((32 * idx) + cd[4] + 36)])), cd[((32 * idx) + cd[68] + 36)])) << 64
                                else:
                                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                                        revert with 0, 'ZERO_ADDRESS'
                                    mem[_26099 + ceil32(return_data.size) + 290] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_26099 + ceil32(return_data.size) + 310] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83000000000000000000000000
                                    mem[_26099 + ceil32(return_data.size) + 258] = 40
                                    mem[_26099 + ceil32(return_data.size) + 362] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_26099 + ceil32(return_data.size) + 363] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[_26099 + ceil32(return_data.size) + 383] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    mem[_26099 + ceil32(return_data.size) + 415] = cd[((32 * idx) + cd[68] + 36)]
                                    mem[_26099 + ceil32(return_data.size) + 330] = 85
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_26099 + ceil32(return_data.size) + 483] = address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)]))
                                    mem[_26099 + ceil32(return_data.size) + 447] = 36
                                    mem[64] = _26099 + ceil32(return_data.size) + 515
                                    mem[_26099 + ceil32(return_data.size) + 479] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or address(sha3(0, address(cd[((32 * idx) + cd[36] + 36)]), sha3(address(cd[((32 * idx) + cd[4] + 36)]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), cd[((32 * idx) + cd[68] + 36)])) << 64
                                t = _26099 + ceil32(return_data.size) + 479
                                u = _26099 + ceil32(return_data.size) + 515
                                s = 36
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_26099 + ceil32(return_data.size) + 547] = mem[_26099 + ceil32(return_data.size) + 539 len 4] or Mask(224, 32, mem[_26099 + ceil32(return_data.size) + 547])
                                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[_26099 + ceil32(return_data.size) + 515 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_26099 + ceil32(return_data.size) + 519]
                                if not return_data.size:
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if mem[96] != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require mem[96] >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[128]
                                else:
                                    mem[64] = _26099 + (2 * ceil32(return_data.size)) + 516
                                    mem[_26099 + ceil32(return_data.size) + 515] = return_data.size
                                    mem[_26099 + ceil32(return_data.size) + 547 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        require (4 * idx) + 4 < mem[96]
                                        require (4 * idx) + 5 < mem[96]
                                        mem[(32 * (4 * idx) + 5) + 128] = 0
                                    else:
                                        if return_data.size != 32:
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = 0
                                        else:
                                            require return_data.size >= 32
                                            require (4 * idx) + 4 < mem[96]
                                            require (4 * idx) + 5 < mem[96]
                                            mem[(32 * (4 * idx) + 5) + 128] = mem[_26099 + ceil32(return_data.size) + 547]
                        mem[(32 * (4 * idx) + 4) + 128] = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
