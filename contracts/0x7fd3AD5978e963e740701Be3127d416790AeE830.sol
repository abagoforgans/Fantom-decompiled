contract main {




// =====================  Runtime code  =====================


#
#  - sub_262a3350(?)
#  - sub_27940fae(?)
#  - sub_3ca1ed49(?)
#  - sub_c0e5466b(?)
#
address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_9fe0fc5d(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (160 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 160
        _20 = mem[64]
        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
        mem[64] = mem[64] + 160
        require cd[s] == address(cd[s])
        mem[_20] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_20 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == cd[(s + 64)]
        mem[_20 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == Mask(112, 0, cd[(s + 96)])
        mem[_20 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == Mask(112, 0, cd[(s + 128)])
        mem[_20 + 128] = cd[(s + 128)]
        mem[t] = _20
        idx = idx + 1
        s = s + 160
        t = t + 32
        continue 
    _38 = mem[96]
    idx = 0
    while idx < _38:
        _39 = mem[64]
        mem[64] = mem[64] + 160
        mem[_39] = 0
        mem[_39 + 32] = 0
        mem[_39 + 64] = 0
        mem[_39 + 96] = 0
        mem[_39 + 128] = 0
        require idx < mem[96]
        _41 = mem[(32 * idx) + 128]
        require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
        staticcall mem[mem[(32 * idx) + 128] + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _45 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_45] == mem[_45 + 18 len 14]
        require mem[_45 + 32] == mem[_45 + 50 len 14]
        require mem[_45 + 64] == mem[_45 + 92 len 4]
        if mem[_41 + 114 len 14] != mem[_45 + 18 len 14]:
            revert with 0, 'SpiderRouter: reserve0'
        if mem[_41 + 146 len 14] != mem[_45 + 50 len 14]:
            revert with 0, 'SpiderRouter: reserve1'
        _38 = mem[96]
        idx = idx + 1
        continue 
}

function getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SpiderRouter: INSUFFICIENT_INPUT_AMOUNT'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SpiderRouter: INSUFFICIENT_LIQUIDITY'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SpiderRouter: INSUFFICIENT_LIQUIDITY'
    if not arg4:
        if not arg3:
            if arg5:
                if arg5:
                    if arg2 * arg5 / arg5 != arg2:
                        revert with 0, 'ds-math-mul-overflow'
                    if arg2 * arg5 < arg2 * arg5:
                        revert with 0, 'ds-math-add-overflow'
                    if arg2 * arg5:
                        return (0 / arg2 * arg5)
        else:
            if arg3:
                if 0 / arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if arg5:
                    if arg5:
                        if arg2 * arg5 / arg5 != arg2:
                            revert with 0, 'ds-math-mul-overflow'
                        if arg2 * arg5 < arg2 * arg5:
                            revert with 0, 'ds-math-add-overflow'
                        if arg2 * arg5:
                            return (0 / arg2 * arg5)
    else:
        if arg4:
            if arg1 * arg4 / arg4 != arg1:
                revert with 0, 'ds-math-mul-overflow'
            if not arg3:
                if not arg5:
                    if arg1 * arg4 < 0:
                        revert with 0, 'ds-math-add-overflow'
                    if arg1 * arg4:
                        return (0 / arg1 * arg4)
                else:
                    if arg5:
                        if arg2 * arg5 / arg5 != arg2:
                            revert with 0, 'ds-math-mul-overflow'
                        if (arg2 * arg5) + (arg1 * arg4) < arg2 * arg5:
                            revert with 0, 'ds-math-add-overflow'
                        if (arg2 * arg5) + (arg1 * arg4):
                            return (0 / (arg2 * arg5) + (arg1 * arg4))
            else:
                if arg3:
                    if arg1 * arg4 * arg3 / arg3 != arg1 * arg4:
                        revert with 0, 'ds-math-mul-overflow'
                    if not arg5:
                        if arg1 * arg4 < 0:
                            revert with 0, 'ds-math-add-overflow'
                        if arg1 * arg4:
                            return (arg1 * arg4 * arg3 / arg1 * arg4)
                    else:
                        if arg5:
                            if arg2 * arg5 / arg5 != arg2:
                                revert with 0, 'ds-math-mul-overflow'
                            if (arg2 * arg5) + (arg1 * arg4) < arg2 * arg5:
                                revert with 0, 'ds-math-add-overflow'
                            if (arg2 * arg5) + (arg1 * arg4):
                                return (arg1 * arg4 * arg3 / (arg2 * arg5) + (arg1 * arg4))
    revert
}

function sub_656921c7(?) payable {
    require calldata.size - 4 >= 192
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == Mask(112, 0, arg4)
    require arg5 == Mask(112, 0, arg5)
    require arg6 == address(arg6)
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
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if address(arg6) != address(ext_call.return_data[0]):
        if ext_call.return_data[0] - ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'SpiderRouter: INSUFFICIENT_INPUT_AMOUNT'
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'SpiderRouter: INSUFFICIENT_LIQUIDITY'
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'SpiderRouter: INSUFFICIENT_LIQUIDITY'
        if not arg2:
            if not ext_call.return_data[18 len 14]:
                if arg3:
                    if arg3:
                        if ext_call.return_data[50 len 14] * arg3 / arg3 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[50 len 14] * arg3 < ext_call.return_data[50 len 14] * arg3:
                            revert with 0, 'ds-math-add-overflow'
                        if ext_call.return_data[50 len 14] * arg3:
                            return 0 / ext_call.return_data[50 len 14] * arg3, 0 / Mask(112, 0, ext_call.return_data[32]) * arg3, 0
            else:
                if ext_call.return_data[18 len 14]:
                    if 0 / ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if arg3:
                        if arg3:
                            if ext_call.return_data[50 len 14] * arg3 / arg3 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[50 len 14] * arg3 < ext_call.return_data[50 len 14] * arg3:
                                revert with 0, 'ds-math-add-overflow'
                            if ext_call.return_data[50 len 14] * arg3:
                                return 0 / ext_call.return_data[50 len 14] * arg3, 0 / Mask(112, 0, ext_call.return_data[32]) * arg3, 0
        else:
            if arg2:
                if (ext_call.return_data[0] * arg2) - (ext_call.return_data[50 len 14] * arg2) / arg2 != ext_call.return_data[0] - ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[18 len 14]:
                    if not arg3:
                        if (ext_call.return_data[0] * arg2) - (ext_call.return_data[50 len 14] * arg2) < 0:
                            revert with 0, 'ds-math-add-overflow'
                        if (ext_call.return_data[0] * arg2) - (ext_call.return_data[50 len 14] * arg2):
                            return 0 / (ext_call.return_data[0] * arg2) - (ext_call.return_data[50 len 14] * arg2), 
                                   0 / (ext_call.return_data[0] * arg2) - (Mask(112, 0, ext_call.return_data[32]) * arg2),
                                   0
                    else:
                        if arg3:
                            if ext_call.return_data[50 len 14] * arg3 / arg3 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (ext_call.return_data[50 len 14] * arg3) + (ext_call.return_data[0] * arg2) - (ext_call.return_data[50 len 14] * arg2) < ext_call.return_data[50 len 14] * arg3:
                                revert with 0, 'ds-math-add-overflow'
                            if (ext_call.return_data[50 len 14] * arg3) + (ext_call.return_data[0] * arg2) - (ext_call.return_data[50 len 14] * arg2):
                                return 0 / (ext_call.return_data[50 len 14] * arg3) + (ext_call.return_data[0] * arg2) - (ext_call.return_data[50 len 14] * arg2), 
                                       0 / (Mask(112, 0, ext_call.return_data[32]) * arg3) + (ext_call.return_data[0] * arg2) - (Mask(112, 0, ext_call.return_data[32]) * arg2),
                                       0
                else:
                    if ext_call.return_data[18 len 14]:
                        if (ext_call.return_data[0] * arg2 * ext_call.return_data[18 len 14]) - (ext_call.return_data[50 len 14] * arg2 * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (ext_call.return_data[0] * arg2) - (ext_call.return_data[50 len 14] * arg2):
                            revert with 0, 'ds-math-mul-overflow'
                        if not arg3:
                            if (ext_call.return_data[0] * arg2) - (ext_call.return_data[50 len 14] * arg2) < 0:
                                revert with 0, 'ds-math-add-overflow'
                            if (ext_call.return_data[0] * arg2) - (ext_call.return_data[50 len 14] * arg2):
                                return (ext_call.return_data[0] * arg2 * ext_call.return_data[18 len 14]) - (ext_call.return_data[50 len 14] * arg2 * ext_call.return_data[18 len 14]) / (ext_call.return_data[0] * arg2) - (ext_call.return_data[50 len 14] * arg2), 
                                       (ext_call.return_data[0] * arg2 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * arg2 * Mask(112, 0, ext_call.return_data[0])) / (ext_call.return_data[0] * arg2) - (Mask(112, 0, ext_call.return_data[32]) * arg2),
                                       0
                        else:
                            if arg3:
                                if ext_call.return_data[50 len 14] * arg3 / arg3 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (ext_call.return_data[50 len 14] * arg3) + (ext_call.return_data[0] * arg2) - (ext_call.return_data[50 len 14] * arg2) < ext_call.return_data[50 len 14] * arg3:
                                    revert with 0, 'ds-math-add-overflow'
                                if (ext_call.return_data[50 len 14] * arg3) + (ext_call.return_data[0] * arg2) - (ext_call.return_data[50 len 14] * arg2):
                                    return (ext_call.return_data[0] * arg2 * ext_call.return_data[18 len 14]) - (ext_call.return_data[50 len 14] * arg2 * ext_call.return_data[18 len 14]) / (ext_call.return_data[50 len 14] * arg3) + (ext_call.return_data[0] * arg2) - (ext_call.return_data[50 len 14] * arg2), 
                                           (ext_call.return_data[0] * arg2 * Mask(112, 0, ext_call.return_data[0])) - (Mask(112, 0, ext_call.return_data[32]) * arg2 * Mask(112, 0, ext_call.return_data[0])) / (Mask(112, 0, ext_call.return_data[32]) * arg3) + (ext_call.return_data[0] * arg2) - (Mask(112, 0, ext_call.return_data[32]) * arg2),
                                           0
    else:
        if ext_call.return_data[0] - ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'SpiderRouter: INSUFFICIENT_INPUT_AMOUNT'
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'SpiderRouter: INSUFFICIENT_LIQUIDITY'
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'SpiderRouter: INSUFFICIENT_LIQUIDITY'
        if not arg2:
            if not ext_call.return_data[50 len 14]:
                if arg3:
                    if arg3:
                        if ext_call.return_data[18 len 14] * arg3 / arg3 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[18 len 14] * arg3 < ext_call.return_data[18 len 14] * arg3:
                            revert with 0, 'ds-math-add-overflow'
                        if ext_call.return_data[18 len 14] * arg3:
                            return 0 / ext_call.return_data[18 len 14] * arg3, 0, 0 / Mask(112, 0, ext_call.return_data[0]) * arg3
            else:
                if ext_call.return_data[50 len 14]:
                    if 0 / ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if arg3:
                        if arg3:
                            if ext_call.return_data[18 len 14] * arg3 / arg3 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[18 len 14] * arg3 < ext_call.return_data[18 len 14] * arg3:
                                revert with 0, 'ds-math-add-overflow'
                            if ext_call.return_data[18 len 14] * arg3:
                                return 0 / ext_call.return_data[18 len 14] * arg3, 0, 0 / Mask(112, 0, ext_call.return_data[0]) * arg3
        else:
            if arg2:
                if (ext_call.return_data[0] * arg2) - (ext_call.return_data[18 len 14] * arg2) / arg2 != ext_call.return_data[0] - ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[50 len 14]:
                    if not arg3:
                        if (ext_call.return_data[0] * arg2) - (ext_call.return_data[18 len 14] * arg2) < 0:
                            revert with 0, 'ds-math-add-overflow'
                        if (ext_call.return_data[0] * arg2) - (ext_call.return_data[18 len 14] * arg2):
                            return 0 / (ext_call.return_data[0] * arg2) - (ext_call.return_data[18 len 14] * arg2), 
                                   0,
                                   0 / (ext_call.return_data[0] * arg2) - (Mask(112, 0, ext_call.return_data[0]) * arg2)
                    else:
                        if arg3:
                            if ext_call.return_data[18 len 14] * arg3 / arg3 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (ext_call.return_data[18 len 14] * arg3) + (ext_call.return_data[0] * arg2) - (ext_call.return_data[18 len 14] * arg2) < ext_call.return_data[18 len 14] * arg3:
                                revert with 0, 'ds-math-add-overflow'
                            if (ext_call.return_data[18 len 14] * arg3) + (ext_call.return_data[0] * arg2) - (ext_call.return_data[18 len 14] * arg2):
                                return 0 / (ext_call.return_data[18 len 14] * arg3) + (ext_call.return_data[0] * arg2) - (ext_call.return_data[18 len 14] * arg2), 
                                       0,
                                       0 / (Mask(112, 0, ext_call.return_data[0]) * arg3) + (ext_call.return_data[0] * arg2) - (Mask(112, 0, ext_call.return_data[0]) * arg2)
                else:
                    if ext_call.return_data[50 len 14]:
                        if (ext_call.return_data[0] * arg2 * ext_call.return_data[50 len 14]) - (ext_call.return_data[18 len 14] * arg2 * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (ext_call.return_data[0] * arg2) - (ext_call.return_data[18 len 14] * arg2):
                            revert with 0, 'ds-math-mul-overflow'
                        if not arg3:
                            if (ext_call.return_data[0] * arg2) - (ext_call.return_data[18 len 14] * arg2) < 0:
                                revert with 0, 'ds-math-add-overflow'
                            if (ext_call.return_data[0] * arg2) - (ext_call.return_data[18 len 14] * arg2):
                                return (ext_call.return_data[0] * arg2 * ext_call.return_data[50 len 14]) - (ext_call.return_data[18 len 14] * arg2 * ext_call.return_data[50 len 14]) / (ext_call.return_data[0] * arg2) - (ext_call.return_data[18 len 14] * arg2), 
                                       0,
                                       (ext_call.return_data[0] * arg2 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * arg2 * Mask(112, 0, ext_call.return_data[32])) / (ext_call.return_data[0] * arg2) - (Mask(112, 0, ext_call.return_data[0]) * arg2)
                        else:
                            if arg3:
                                if ext_call.return_data[18 len 14] * arg3 / arg3 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (ext_call.return_data[18 len 14] * arg3) + (ext_call.return_data[0] * arg2) - (ext_call.return_data[18 len 14] * arg2) < ext_call.return_data[18 len 14] * arg3:
                                    revert with 0, 'ds-math-add-overflow'
                                if (ext_call.return_data[18 len 14] * arg3) + (ext_call.return_data[0] * arg2) - (ext_call.return_data[18 len 14] * arg2):
                                    return (ext_call.return_data[0] * arg2 * ext_call.return_data[50 len 14]) - (ext_call.return_data[18 len 14] * arg2 * ext_call.return_data[50 len 14]) / (ext_call.return_data[18 len 14] * arg3) + (ext_call.return_data[0] * arg2) - (ext_call.return_data[18 len 14] * arg2), 
                                           0,
                                           (ext_call.return_data[0] * arg2 * Mask(112, 0, ext_call.return_data[32])) - (Mask(112, 0, ext_call.return_data[0]) * arg2 * Mask(112, 0, ext_call.return_data[32])) / (Mask(112, 0, ext_call.return_data[0]) * arg3) + (ext_call.return_data[0] * arg2) - (Mask(112, 0, ext_call.return_data[0]) * arg2)
    revert
}



}
