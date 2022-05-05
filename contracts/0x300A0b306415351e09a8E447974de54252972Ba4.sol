contract main {




// =====================  Runtime code  =====================


#
#  - sub_95eb01e2(?)
#
function _fallback() payable {
    revert
}

function sortTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MdexSwapFactory: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'MdexSwapFactory: ZERO_ADDRESS'
        return address(arg1), arg2
    if not arg2:
        revert with 0, 'MdexSwapFactory: ZERO_ADDRESS'
    return address(arg2), arg1
}

function sub_30d03f51(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if address(arg2) == address(arg3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MdexSwapFactory: IDENTICAL_ADDRESSES'
    if address(arg2) < address(arg3):
        if not address(arg2):
            revert with 0, 'MdexSwapFactory: ZERO_ADDRESS'
        require ext_code.size(address(arg1))
        staticcall address(arg1).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), address(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if address(arg2) == address(arg2):
            return address(ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    else:
        if not address(arg3):
            revert with 0, 'MdexSwapFactory: ZERO_ADDRESS'
        require ext_code.size(address(arg1))
        staticcall address(arg1).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), address(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if address(arg2) == address(arg3):
            return address(ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    return address(ext_call.return_data[0]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
}

function getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MdexSwapFactory: INSUFFICIENT_INPUT_AMOUNT'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MdexSwapFactory: INSUFFICIENT_LIQUIDITY'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MdexSwapFactory: INSUFFICIENT_LIQUIDITY'
    if not arg1:
        if not arg2:
            revert with 'NH{q', 18
        if arg2 and 1000 > -1 / arg2:
            revert with 'NH{q', 17
        if not arg2:
            revert with 'NH{q', 18
        if 1000 * arg2 / arg2 != 1000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if 1000 * arg2 > -1:
            revert with 'NH{q', 17
        if 1000 * arg2 < 1000 * arg2:
            revert with 0, 'SafeMath: addition overflow'
        if not 1000 * arg2:
            revert with 'NH{q', 18
        return (0 / 1000 * arg2)
    if arg1 and 997 > -1 / arg1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if 997 * arg1 / arg1 != 997:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not 997 * arg1:
        if not arg2:
            if 0 > (-997 * arg1) - 1:
                revert with 'NH{q', 17
            if 997 * arg1 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not 997 * arg1:
                revert with 'NH{q', 18
            return (0 / 997 * arg1)
        if arg2 and 1000 > -1 / arg2:
            revert with 'NH{q', 17
        if not arg2:
            revert with 'NH{q', 18
        if 1000 * arg2 / arg2 != 1000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if 1000 * arg2 > (-997 * arg1) - 1:
            revert with 'NH{q', 17
        if (1000 * arg2) + (997 * arg1) < 1000 * arg2:
            revert with 0, 'SafeMath: addition overflow'
        if not (1000 * arg2) + (997 * arg1):
            revert with 'NH{q', 18
        return (0 / (1000 * arg2) + (997 * arg1))
    if 997 * arg1 and arg3 > -1 / 997 * arg1:
        revert with 'NH{q', 17
    if not 997 * arg1:
        revert with 'NH{q', 18
    if 997 * arg1 * arg3 / 997 * arg1 != arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not arg2:
        if 0 > (-997 * arg1) - 1:
            revert with 'NH{q', 17
        if 997 * arg1 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not 997 * arg1:
            revert with 'NH{q', 18
        return (997 * arg1 * arg3 / 997 * arg1)
    if arg2 and 1000 > -1 / arg2:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if 1000 * arg2 / arg2 != 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if 1000 * arg2 > (-997 * arg1) - 1:
        revert with 'NH{q', 17
    if (1000 * arg2) + (997 * arg1) < 1000 * arg2:
        revert with 0, 'SafeMath: addition overflow'
    if not (1000 * arg2) + (997 * arg1):
        revert with 'NH{q', 18
    return (997 * arg1 * arg3 / (1000 * arg2) + (997 * arg1))
}

function sub_28f8061b(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if arg3 < arg2:
        revert with 'NH{q', 17
    if arg3 - arg2 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg3 - arg2
    mem[64] = (32 * arg3 - arg2) + 128
    if not arg3 - arg2:
        idx = arg2
        while idx < arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _48 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_48] == mem[_48 + 12 len 20]
            require ext_code.size(mem[_48 + 12 len 20])
            staticcall mem[_48 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _64 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _66 = mem[_64]
            require mem[_64] == mem[_64 + 18 len 14]
            _72 = mem[_64 + 32]
            require mem[_64 + 32] == mem[_64 + 50 len 14]
            _74 = mem[_64 + 64]
            require mem[_64 + 64] == mem[_64 + 92 len 4]
            _76 = mem[64]
            mem[64] = mem[64] + 96
            mem[_76] = Mask(112, 0, _66)
            mem[_76 + 32] = Mask(112, 0, _72)
            mem[_76 + 64] = uint32(_74)
            if idx < arg2:
                revert with 'NH{q', 17
            if idx - arg2 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx - arg2) + 128] = _76
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _43 = mem[64]
        mem[mem[64]] = 32
        _44 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _44:
            _81 = mem[s]
            mem[t] = mem[mem[s] + 18 len 14]
            mem[t + 32] = mem[_81 + 50 len 14]
            mem[t + 64] = mem[_81 + 92 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _43 + (96 * _44) + -mem[64] + 64
    mem[64] = (32 * arg3 - arg2) + 224
    mem[(32 * arg3 - arg2) + 128] = 0
    mem[(32 * arg3 - arg2) + 160] = 0
    mem[(32 * arg3 - arg2) + 192] = 0
    mem[var41001] = (32 * arg3 - arg2) + 128
    s = var41001
    idx = var41002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * arg3 - arg2) + 128] = 0
        mem[(32 * arg3 - arg2) + 160] = 0
        mem[(32 * arg3 - arg2) + 192] = 0
        mem[s + 32] = (32 * arg3 - arg2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = arg2
    while idx < arg3:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _109 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_109] == mem[_109 + 12 len 20]
        require ext_code.size(mem[_109 + 12 len 20])
        staticcall mem[_109 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _118 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _119 = mem[_118]
        require mem[_118] == mem[_118 + 18 len 14]
        _120 = mem[_118 + 32]
        require mem[_118 + 32] == mem[_118 + 50 len 14]
        _121 = mem[_118 + 64]
        require mem[_118 + 64] == mem[_118 + 92 len 4]
        _122 = mem[64]
        mem[64] = mem[64] + 96
        mem[_122] = Mask(112, 0, _119)
        mem[_122 + 32] = Mask(112, 0, _120)
        mem[_122 + 64] = uint32(_121)
        if idx < arg2:
            revert with 'NH{q', 17
        if idx - arg2 >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx - arg2) + 128] = _122
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _106 = mem[64]
    mem[mem[64]] = 32
    _107 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _107:
        _124 = mem[s]
        mem[t] = mem[mem[s] + 18 len 14]
        mem[t + 32] = mem[_124 + 50 len 14]
        mem[t + 64] = mem[_124 + 92 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _106 + (96 * _107) + -mem[64] + 64
}



}
