contract main {




// =====================  Runtime code  =====================


#
#  - sub_03869fcb(?)
#  - sub_33853b46(?)
#  - sub_43360a69(?)
#  - sub_76f13d57(?)
#  - sub_860e3f64(?)
#  - sub_877daa59(?)
#
const sub_4591b9f6(?) = 0x4068da6c83afcfa0e13ba15a6696662335d5b75

const sub_470088f1(?) = 0x845e76a8691423fbc4ecb8dd77556cb61c09ee25

const sub_9220e978(?) = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83


address stor0;
mapping of struct sub_6c72d6ac;

function sub_6c72d6ac(?) payable {
    require calldata.size - 4 >= 32
    return sub_6c72d6ac[address(arg1)].field_512, 
           sub_6c72d6ac[address(arg1)].field_0,
           sub_6c72d6ac[address(arg1)].field_256,
           sub_6c72d6ac[address(arg1)].field_1280,
           sub_6c72d6ac[address(arg1)].field_768,
           sub_6c72d6ac[address(arg1)].field_1024
}

function _fallback() payable {
    revert
}

function sub_f29d0040(?) payable {
    require calldata.size - 4 >= 32
    if arg1 == 0x4068da6c83afcfa0e13ba15a6696662335d5b75:
        return 10^18
    require ext_code.size(stor0)
    staticcall stor0.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20]:
        require ext_code.size(stor0)
        staticcall stor0.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 == 0x4068da6c83afcfa0e13ba15a6696662335d5b75:
            revert with 0, 'ApeLibrary: IDENTICAL_ADDRESSES'
        if arg1 >= 0x4068da6c83afcfa0e13ba15a6696662335d5b75:
            if arg1 == 0x4068da6c83afcfa0e13ba15a6696662335d5b75:
                revert with 0, 'ApeLibrary: IDENTICAL_ADDRESSES'
            if arg1 < 0x4068da6c83afcfa0e13ba15a6696662335d5b75:
                if not arg1:
                    revert with 0, 'ApeLibrary: ZERO_ADDRESS'
            if arg1 == 0x4068da6c83afcfa0e13ba15a6696662335d5b75:
                revert with 0, 'ApeLibrary: IDENTICAL_ADDRESSES'
            if arg1 >= 0x4068da6c83afcfa0e13ba15a6696662335d5b75:
                require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(290074973475372282, arg1), 0xa5e6089ea250dac750e4867fc4ce7f2a864bd94446564351fe9329f378963974)))
                staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(290074973475372282, arg1), 0xa5e6089ea250dac750e4867fc4ce7f2a864bd94446564351fe9329f378963974)).getReserves() with:
                        gas gas_remaining wei
            else:
                if not arg1:
                    revert with 0, 'ApeLibrary: ZERO_ADDRESS'
                require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(arg1, 0x4068da6c83afcfa0e13ba15a6696662335d5b75), 0xa5e6089ea250dac750e4867fc4ce7f2a864bd94446564351fe9329f378963974)))
                staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(arg1, 0x4068da6c83afcfa0e13ba15a6696662335d5b75), 0xa5e6089ea250dac750e4867fc4ce7f2a864bd94446564351fe9329f378963974)).getReserves() with:
                        gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if arg1 == 0x4068da6c83afcfa0e13ba15a6696662335d5b75:
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 34, 0x774170654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[576 len 30]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 34, 0x774170654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[576 len 30]
                if 10^18 * ext_call.return_data[50 len 14] / 10^18 != ext_call.return_data[50 len 14]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if ext_call.return_data[18 len 14]:
                    return (10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
            else:
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 34, 0x774170654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[576 len 30]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 34, 0x774170654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[576 len 30]
                if 10^18 * ext_call.return_data[18 len 14] / 10^18 != ext_call.return_data[18 len 14]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if ext_call.return_data[50 len 14]:
                    return (10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        else:
            if not arg1:
                revert with 0, 'ApeLibrary: ZERO_ADDRESS'
            if arg1 == 0x4068da6c83afcfa0e13ba15a6696662335d5b75:
                revert with 0, 'ApeLibrary: IDENTICAL_ADDRESSES'
            if arg1 < 0x4068da6c83afcfa0e13ba15a6696662335d5b75:
                if not arg1:
                    revert with 0, 'ApeLibrary: ZERO_ADDRESS'
            if arg1 == 0x4068da6c83afcfa0e13ba15a6696662335d5b75:
                revert with 0, 'ApeLibrary: IDENTICAL_ADDRESSES'
            if arg1 >= 0x4068da6c83afcfa0e13ba15a6696662335d5b75:
                require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(290074973475372282, arg1), 0xa5e6089ea250dac750e4867fc4ce7f2a864bd94446564351fe9329f378963974)))
                staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(290074973475372282, arg1), 0xa5e6089ea250dac750e4867fc4ce7f2a864bd94446564351fe9329f378963974)).getReserves() with:
                        gas gas_remaining wei
            else:
                if not arg1:
                    revert with 0, 'ApeLibrary: ZERO_ADDRESS'
                require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(arg1, 0x4068da6c83afcfa0e13ba15a6696662335d5b75), 0xa5e6089ea250dac750e4867fc4ce7f2a864bd94446564351fe9329f378963974)))
                staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(arg1, 0x4068da6c83afcfa0e13ba15a6696662335d5b75), 0xa5e6089ea250dac750e4867fc4ce7f2a864bd94446564351fe9329f378963974)).getReserves() with:
                        gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if arg1 == arg1:
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 34, 0x774170654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[576 len 30]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 34, 0x774170654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[576 len 30]
                if 10^18 * ext_call.return_data[50 len 14] / 10^18 != ext_call.return_data[50 len 14]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if ext_call.return_data[18 len 14]:
                    return (10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
            else:
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 34, 0x774170654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[576 len 30]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 34, 0x774170654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[576 len 30]
                if 10^18 * ext_call.return_data[18 len 14] / 10^18 != ext_call.return_data[18 len 14]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if ext_call.return_data[50 len 14]:
                    return (10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            return 0
        require ext_code.size(stor0)
        staticcall stor0.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
            revert with 0, 'ApeLibrary: IDENTICAL_ADDRESSES'
        if arg1 >= 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
            if arg1 == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                revert with 0, 'ApeLibrary: IDENTICAL_ADDRESSES'
            if arg1 < 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                if not arg1:
                    revert with 0, 'ApeLibrary: ZERO_ADDRESS'
            if arg1 == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                revert with 0, 'ApeLibrary: IDENTICAL_ADDRESSES'
            if arg1 >= 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(2431441379194500172, arg1), 0xa5e6089ea250dac750e4867fc4ce7f2a864bd94446564351fe9329f378963974)))
                staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(2431441379194500172, arg1), 0xa5e6089ea250dac750e4867fc4ce7f2a864bd94446564351fe9329f378963974)).getReserves() with:
                        gas gas_remaining wei
            else:
                if not arg1:
                    revert with 0, 'ApeLibrary: ZERO_ADDRESS'
                require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(arg1, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), 0xa5e6089ea250dac750e4867fc4ce7f2a864bd94446564351fe9329f378963974)))
                staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(arg1, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), 0xa5e6089ea250dac750e4867fc4ce7f2a864bd94446564351fe9329f378963974)).getReserves() with:
                        gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if arg1 == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 34, 0x774170654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[576 len 30]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 34, 0x774170654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[576 len 30]
                if 10^18 * ext_call.return_data[50 len 14] / 10^18 != ext_call.return_data[50 len 14]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if ext_call.return_data[18 len 14]:
                    require ext_code.size(stor0)
                    staticcall stor0.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(290074973475372282, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), 0xa5e6089ea250dac750e4867fc4ce7f2a864bd94446564351fe9329f378963974)))
                    staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(290074973475372282, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), 0xa5e6089ea250dac750e4867fc4ce7f2a864bd94446564351fe9329f378963974)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'ApeLibrary: INSUFFICIENT_AMOUNT'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 34, 0x774170654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[954 len 30]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 34, 0x774170654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[954 len 30]
                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        if ext_call.return_data[50 len 14]:
                            return (0 / ext_call.return_data[50 len 14])
                    else:
                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[18 len 14]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[953 len 31]
                            if ext_call.return_data[50 len 14]:
                                return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
            else:
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 34, 0x774170654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[576 len 30]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 34, 0x774170654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[576 len 30]
                if 10^18 * ext_call.return_data[18 len 14] / 10^18 != ext_call.return_data[18 len 14]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if ext_call.return_data[50 len 14]:
                    require ext_code.size(stor0)
                    staticcall stor0.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(290074973475372282, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), 0xa5e6089ea250dac750e4867fc4ce7f2a864bd94446564351fe9329f378963974)))
                    staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(290074973475372282, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), 0xa5e6089ea250dac750e4867fc4ce7f2a864bd94446564351fe9329f378963974)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'ApeLibrary: INSUFFICIENT_AMOUNT'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 34, 0x774170654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[954 len 30]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 34, 0x774170654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[954 len 30]
                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        if ext_call.return_data[50 len 14]:
                            return (0 / ext_call.return_data[50 len 14])
                    else:
                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[18 len 14]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[953 len 31]
                            if ext_call.return_data[50 len 14]:
                                return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
        else:
            if not arg1:
                revert with 0, 'ApeLibrary: ZERO_ADDRESS'
            if arg1 == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                revert with 0, 'ApeLibrary: IDENTICAL_ADDRESSES'
            if arg1 < 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                if not arg1:
                    revert with 0, 'ApeLibrary: ZERO_ADDRESS'
            if arg1 == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                revert with 0, 'ApeLibrary: IDENTICAL_ADDRESSES'
            if arg1 >= 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(2431441379194500172, arg1), 0xa5e6089ea250dac750e4867fc4ce7f2a864bd94446564351fe9329f378963974)))
                staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(2431441379194500172, arg1), 0xa5e6089ea250dac750e4867fc4ce7f2a864bd94446564351fe9329f378963974)).getReserves() with:
                        gas gas_remaining wei
            else:
                if not arg1:
                    revert with 0, 'ApeLibrary: ZERO_ADDRESS'
                require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(arg1, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), 0xa5e6089ea250dac750e4867fc4ce7f2a864bd94446564351fe9329f378963974)))
                staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(arg1, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), 0xa5e6089ea250dac750e4867fc4ce7f2a864bd94446564351fe9329f378963974)).getReserves() with:
                        gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if arg1 == arg1:
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 34, 0x774170654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[576 len 30]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 34, 0x774170654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[576 len 30]
                if 10^18 * ext_call.return_data[50 len 14] / 10^18 != ext_call.return_data[50 len 14]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if ext_call.return_data[18 len 14]:
                    require ext_code.size(stor0)
                    staticcall stor0.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(290074973475372282, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), 0xa5e6089ea250dac750e4867fc4ce7f2a864bd94446564351fe9329f378963974)))
                    staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(290074973475372282, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), 0xa5e6089ea250dac750e4867fc4ce7f2a864bd94446564351fe9329f378963974)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'ApeLibrary: INSUFFICIENT_AMOUNT'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 34, 0x774170654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[954 len 30]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 34, 0x774170654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[954 len 30]
                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        if ext_call.return_data[50 len 14]:
                            return (0 / ext_call.return_data[50 len 14])
                    else:
                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[18 len 14]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[953 len 31]
                            if ext_call.return_data[50 len 14]:
                                return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
            else:
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 32, 34, 0x774170654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[576 len 30]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 32, 34, 0x774170654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[576 len 30]
                if 10^18 * ext_call.return_data[18 len 14] / 10^18 != ext_call.return_data[18 len 14]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[575 len 31]
                if ext_call.return_data[50 len 14]:
                    require ext_code.size(stor0)
                    staticcall stor0.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(290074973475372282, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), 0xa5e6089ea250dac750e4867fc4ce7f2a864bd94446564351fe9329f378963974)))
                    staticcall address(sha3(0, address(ext_call.return_data[0]), sha3(290074973475372282, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83), 0xa5e6089ea250dac750e4867fc4ce7f2a864bd94446564351fe9329f378963974)).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'ApeLibrary: INSUFFICIENT_AMOUNT'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 32, 34, 0x774170654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[954 len 30]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 32, 34, 0x774170654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[954 len 30]
                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        if ext_call.return_data[50 len 14]:
                            return (0 / ext_call.return_data[50 len 14])
                    else:
                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[18 len 14]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[953 len 31]
                            if ext_call.return_data[50 len 14]:
                                return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
    revert
}



}
