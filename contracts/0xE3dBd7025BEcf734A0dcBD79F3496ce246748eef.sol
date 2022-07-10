contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_f8eb68c1(?) payable {
    require ext_code.size(0x452590b8aa292b963a9d0f2b5e71bc7c927859b3)
    staticcall 0x452590b8aa292b963a9d0f2b5e71bc7c927859b3.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0x452590b8aa292b963a9d0f2b5e71bc7c927859b3)
    staticcall 0x452590b8aa292b963a9d0f2b5e71bc7c927859b3.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x452590b8aa292b963a9d0f2b5e71bc7c927859b3)
    staticcall 0x452590b8aa292b963a9d0f2b5e71bc7c927859b3.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == 0x85dec8c4b2680793661bca91a8f129607571863d:
        if Mask(112, 0, ext_call.return_data[0]) > 0x1999999999999999999999999999:
            revert with 0, 17
        if Mask(112, 0, 10 * Mask(112, 0, ext_call.return_data[0])) > 0xe38e38e38e38e38e38e38e38e38:
            revert with 0, 17
        if ext_call.return_data[12 len 20] == 0x85dec8c4b2680793661bca91a8f129607571863d:
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            return Mask(112, 0, Mask(112, 0, 18 * Mask(112, 0, 10 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[32]))
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 18
        return Mask(112, 0, Mask(112, 0, 18 * Mask(112, 0, 10 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, ext_call.return_data[0]))
    if Mask(112, 0, ext_call.return_data[32]) > 0x1999999999999999999999999999:
        revert with 0, 17
    if Mask(112, 0, 10 * Mask(112, 0, ext_call.return_data[32])) > 0xe38e38e38e38e38e38e38e38e38:
        revert with 0, 17
    if ext_call.return_data[12 len 20] == 0x85dec8c4b2680793661bca91a8f129607571863d:
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        return Mask(112, 0, Mask(112, 0, 18 * Mask(112, 0, 10 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[32]))
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 18
    return Mask(112, 0, Mask(112, 0, 18 * Mask(112, 0, 10 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, ext_call.return_data[0]))
}

function sub_f360506c(?) payable {
    require ext_code.size(0x452590b8aa292b963a9d0f2b5e71bc7c927859b3)
    staticcall 0x452590b8aa292b963a9d0f2b5e71bc7c927859b3.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0x452590b8aa292b963a9d0f2b5e71bc7c927859b3)
    staticcall 0x452590b8aa292b963a9d0f2b5e71bc7c927859b3.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x452590b8aa292b963a9d0f2b5e71bc7c927859b3)
    staticcall 0x452590b8aa292b963a9d0f2b5e71bc7c927859b3.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == 0x85dec8c4b2680793661bca91a8f129607571863d:
        if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827:
            revert with 0, 17
        if ext_call.return_data[12 len 20] == 0x85dec8c4b2680793661bca91a8f129607571863d:
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            require ext_code.size(0x7924f76918769fcdcf854c2fdf5d5538dcd7401a)
            staticcall 0x7924f76918769fcdcf854c2fdf5d5538dcd7401a.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0x7924f76918769fcdcf854c2fdf5d5538dcd7401a)
            staticcall 0x7924f76918769fcdcf854c2fdf5d5538dcd7401a.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0x7924f76918769fcdcf854c2fdf5d5538dcd7401a)
            staticcall 0x7924f76918769fcdcf854c2fdf5d5538dcd7401a.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                    if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827628530:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827:
                        revert with 0, 17
                    if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32])):
                        revert with 0, 18
                    if not Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32])):
                        revert with 0, 18
                    return (Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32])))
                if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827628530:
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827:
                    revert with 0, 17
                if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0])):
                    revert with 0, 18
                if not Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32])):
                    revert with 0, 18
                return (Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32])))
            if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827628530:
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827:
                    revert with 0, 17
                if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32])):
                    revert with 0, 18
                if not Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32])):
                    revert with 0, 18
                return (Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32])))
            if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827628530:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827:
                revert with 0, 17
            if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 18
            if not Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 18
            return (Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[32])))
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 18
        require ext_code.size(0x7924f76918769fcdcf854c2fdf5d5538dcd7401a)
        staticcall 0x7924f76918769fcdcf854c2fdf5d5538dcd7401a.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0x7924f76918769fcdcf854c2fdf5d5538dcd7401a)
        staticcall 0x7924f76918769fcdcf854c2fdf5d5538dcd7401a.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0x7924f76918769fcdcf854c2fdf5d5538dcd7401a)
        staticcall 0x7924f76918769fcdcf854c2fdf5d5538dcd7401a.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
            if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827628530:
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827:
                    revert with 0, 17
                if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32])):
                    revert with 0, 18
                if not Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0])):
                    revert with 0, 18
                return (Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0])))
            if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827628530:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827:
                revert with 0, 17
            if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 18
            if not Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 18
            return (Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0])))
        if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
            if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827628530:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827:
                revert with 0, 17
            if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 18
            if not Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 18
            return (Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0])))
        if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827628530:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827:
            revert with 0, 17
        if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 18
        if not Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 18
        return (Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0])))
    if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827:
        revert with 0, 17
    if ext_call.return_data[12 len 20] == 0x85dec8c4b2680793661bca91a8f129607571863d:
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        require ext_code.size(0x7924f76918769fcdcf854c2fdf5d5538dcd7401a)
        staticcall 0x7924f76918769fcdcf854c2fdf5d5538dcd7401a.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0x7924f76918769fcdcf854c2fdf5d5538dcd7401a)
        staticcall 0x7924f76918769fcdcf854c2fdf5d5538dcd7401a.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0x7924f76918769fcdcf854c2fdf5d5538dcd7401a)
        staticcall 0x7924f76918769fcdcf854c2fdf5d5538dcd7401a.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
            if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827628530:
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827:
                    revert with 0, 17
                if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32])):
                    revert with 0, 18
                if not Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32])):
                    revert with 0, 18
                return (Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32])))
            if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827628530:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827:
                revert with 0, 17
            if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 18
            if not Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 18
            return (Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32])))
        if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
            if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827628530:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827:
                revert with 0, 17
            if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 18
            if not Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 18
            return (Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32])))
        if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827628530:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827:
            revert with 0, 17
        if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 18
        if not Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 18
        return (Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32])))
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 18
    require ext_code.size(0x7924f76918769fcdcf854c2fdf5d5538dcd7401a)
    staticcall 0x7924f76918769fcdcf854c2fdf5d5538dcd7401a.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0x7924f76918769fcdcf854c2fdf5d5538dcd7401a)
    staticcall 0x7924f76918769fcdcf854c2fdf5d5538dcd7401a.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x7924f76918769fcdcf854c2fdf5d5538dcd7401a)
    staticcall 0x7924f76918769fcdcf854c2fdf5d5538dcd7401a.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
        if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
            if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827628530:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827:
                revert with 0, 17
            if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 18
            if not Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 18
            return (Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])))
        if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827628530:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827:
            revert with 0, 17
        if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 18
        if not Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 18
        return (Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])))
    if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
        if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827628530:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827:
            revert with 0, 17
        if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 18
        if not Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 18
        return (Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) / Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])))
    if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827628530:
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827:
        revert with 0, 17
    if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0])):
        revert with 0, 18
    if not Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])):
        revert with 0, 18
    return (Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) / Mask(112, 0, Mask(112, 0, 10^18 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])))
}

function sell() payable {
    require ext_code.size(0x452590b8aa292b963a9d0f2b5e71bc7c927859b3)
    staticcall 0x452590b8aa292b963a9d0f2b5e71bc7c927859b3.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0x452590b8aa292b963a9d0f2b5e71bc7c927859b3)
    staticcall 0x452590b8aa292b963a9d0f2b5e71bc7c927859b3.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x452590b8aa292b963a9d0f2b5e71bc7c927859b3)
    staticcall 0x452590b8aa292b963a9d0f2b5e71bc7c927859b3.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == 0x85dec8c4b2680793661bca91a8f129607571863d:
        if ext_call.return_data[12 len 20] == 0x85dec8c4b2680793661bca91a8f129607571863d:
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            require ext_code.size(0x7924f76918769fcdcf854c2fdf5d5538dcd7401a)
            staticcall 0x7924f76918769fcdcf854c2fdf5d5538dcd7401a.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0x7924f76918769fcdcf854c2fdf5d5538dcd7401a)
            staticcall 0x7924f76918769fcdcf854c2fdf5d5538dcd7401a.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0x7924f76918769fcdcf854c2fdf5d5538dcd7401a)
            staticcall 0x7924f76918769fcdcf854c2fdf5d5538dcd7401a.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                    if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827628530:
                        revert with 0, 17
                    if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32])):
                        revert with 0, 18
                    if Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) and Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) > -1 / Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])):
                        revert with 0, 17
                    return (Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))))
                if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827628530:
                    revert with 0, 17
                if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0])):
                    revert with 0, 18
                if Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) and Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) > -1 / Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])):
                    revert with 0, 17
                return (Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))))
            if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827628530:
                    revert with 0, 17
                if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32])):
                    revert with 0, 18
                if Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) and Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) > -1 / Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])):
                    revert with 0, 17
                return (Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))))
            if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827628530:
                revert with 0, 17
            if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 18
            if Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) and Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) > -1 / Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 17
            return (Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))))
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 18
        require ext_code.size(0x7924f76918769fcdcf854c2fdf5d5538dcd7401a)
        staticcall 0x7924f76918769fcdcf854c2fdf5d5538dcd7401a.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0x7924f76918769fcdcf854c2fdf5d5538dcd7401a)
        staticcall 0x7924f76918769fcdcf854c2fdf5d5538dcd7401a.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0x7924f76918769fcdcf854c2fdf5d5538dcd7401a)
        staticcall 0x7924f76918769fcdcf854c2fdf5d5538dcd7401a.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
            if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827628530:
                    revert with 0, 17
                if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32])):
                    revert with 0, 18
                if Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0])) and Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) > -1 / Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0])):
                    revert with 0, 17
                return (Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))))
            if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827628530:
                revert with 0, 17
            if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 18
            if Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0])) and Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) > -1 / Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 17
            return (Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))))
        if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
            if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827628530:
                revert with 0, 17
            if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 18
            if Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0])) and Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) > -1 / Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 17
            return (Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))))
        if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827628530:
            revert with 0, 17
        if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 18
        if Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0])) and Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) > -1 / Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 17
        return (Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))))
    if ext_call.return_data[12 len 20] == 0x85dec8c4b2680793661bca91a8f129607571863d:
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        require ext_code.size(0x7924f76918769fcdcf854c2fdf5d5538dcd7401a)
        staticcall 0x7924f76918769fcdcf854c2fdf5d5538dcd7401a.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0x7924f76918769fcdcf854c2fdf5d5538dcd7401a)
        staticcall 0x7924f76918769fcdcf854c2fdf5d5538dcd7401a.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0x7924f76918769fcdcf854c2fdf5d5538dcd7401a)
        staticcall 0x7924f76918769fcdcf854c2fdf5d5538dcd7401a.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
            if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827628530:
                    revert with 0, 17
                if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32])):
                    revert with 0, 18
                if Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) and Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) > -1 / Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])):
                    revert with 0, 17
                return (Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))))
            if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827628530:
                revert with 0, 17
            if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 18
            if Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) and Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) > -1 / Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 17
            return (Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))))
        if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
            if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827628530:
                revert with 0, 17
            if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 18
            if Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) and Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) > -1 / Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 17
            return (Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))))
        if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827628530:
            revert with 0, 17
        if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 18
        if Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) and Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) > -1 / Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 17
        return (Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))))
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 18
    require ext_code.size(0x7924f76918769fcdcf854c2fdf5d5538dcd7401a)
    staticcall 0x7924f76918769fcdcf854c2fdf5d5538dcd7401a.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0x7924f76918769fcdcf854c2fdf5d5538dcd7401a)
    staticcall 0x7924f76918769fcdcf854c2fdf5d5538dcd7401a.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x7924f76918769fcdcf854c2fdf5d5538dcd7401a)
    staticcall 0x7924f76918769fcdcf854c2fdf5d5538dcd7401a.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
        if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
            if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827628530:
                revert with 0, 17
            if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 18
            if Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) and Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) > -1 / Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 17
            return (Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))))
        if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827628530:
            revert with 0, 17
        if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 18
        if Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) and Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) > -1 / Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 17
        return (Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))))
    if ext_call.return_data[12 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
        if Mask(112, 0, ext_call.return_data[32]) > 5192296858534827628530:
            revert with 0, 17
        if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 18
        if Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) and Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))) > -1 / Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 17
        return (Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[32]))))
    if Mask(112, 0, ext_call.return_data[0]) > 5192296858534827628530:
        revert with 0, 17
    if not Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0])):
        revert with 0, 18
    if Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) and Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))) > -1 / Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])):
        revert with 0, 17
    return (Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 10^12 * Mask(112, 0, ext_call.return_data[0]))))
}



}
