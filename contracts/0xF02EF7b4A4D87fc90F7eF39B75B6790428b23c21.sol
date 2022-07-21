contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_fd6dbb94(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        s = 0
        s = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(stor0)
            staticcall stor0.userCollateralShare(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _42 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _44 = mem[_42]
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(stor0)
            staticcall stor0.userBorrowPart(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _50 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _52 = mem[_50]
            if not _44:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_50]
                s = _44
                continue 
            if mem[_50] <= 100 * 10^18:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = 0
            else:
                if mem[_50] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not _44:
                    revert with 0, 18
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = 10^18 * mem[_50] / _44
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _52
            s = _44
            continue 
    else:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        s = 0
        s = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(stor0)
            staticcall stor0.userCollateralShare(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _43 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _45 = mem[_43]
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(stor0)
            staticcall stor0.userBorrowPart(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _51 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _53 = mem[_51]
            if not _45:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_51]
                s = _45
                continue 
            if mem[_51] <= 100 * 10^18:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = 0
            else:
                if mem[_51] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not _45:
                    revert with 0, 18
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = 10^18 * mem[_51] / _45
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _53
            s = _45
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
