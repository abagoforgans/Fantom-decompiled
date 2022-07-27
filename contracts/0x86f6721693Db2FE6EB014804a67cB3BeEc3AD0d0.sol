contract main {




// =====================  Runtime code  =====================


#
#  - JustGo(address arg1, address arg2, address arg3, address arg4)
#
address stor0;
address WETHAddress;
mapping of uint8 stor2;

function WETH() {
    return WETHAddress
}

function _fallback() payable {
    revert
}

function setAdmin(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'only self can do.'
    stor2[address(arg1)] = uint8(arg2)
}

function getProfit(address arg1, address arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg3)
    staticcall arg3.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307() or ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        require ext_code.size(arg3)
        staticcall arg3.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _67 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _69 = mem[_67]
        require mem[_67] == mem[_67 + 31 len 1]
        mem[mem[64] + 4] = arg1
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _75 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _77 = mem[_75]
        require mem[_75] == mem[_75]
        if mem[_75] > -arg4 - 1:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = WETHAddress
        mem[mem[64] + 36] = arg3
        require ext_code.size(arg2)
        staticcall arg2.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args WETHAddress, arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _83 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _85 = mem[_83]
        require mem[_83] == mem[_83 + 12 len 20]
        if not mem[_83 + 12 len 20]:
            _89 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _5
            mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
            if ceil32(_5) <= _5:
                mem[mem[64] + 64] = address(_85)
                mem[mem[64] + 96] = 0
                return 128, _69 << 248, address(_85), 0, _5, mem[mem[64] + 160 len ceil32(_5)]
            mem[mem[64] + _5 + 160] = 0
            mem[mem[64] + 32] = uint8(_69)
            mem[_89 + 64] = address(_85)
            mem[_89 + 96] = 0
            return memory
              from mem[64]
               len _89 + ceil32(_5) + -mem[64] + 160
        require ext_code.size(mem[_83 + 12 len 20])
        staticcall mem[_83 + 12 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _92 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _96 = mem[_92]
        require mem[_92] == mem[_92 + 12 len 20]
        require ext_code.size(address(_85))
        staticcall address(_85).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _105 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _107 = mem[_105]
        require mem[_105] == mem[_105 + 18 len 14]
        _109 = mem[_105 + 32]
        require mem[_105 + 32] == mem[_105 + 50 len 14]
        require mem[_105 + 64] == mem[_105 + 92 len 4]
        if _77 + arg4 and 997 > -1 / _77 + arg4:
            revert with 'NH{q', 17
        if arg3 == address(_96):
            if (997 * _77) + (997 * arg4) and mem[_105 + 50 len 14] > -1 / (997 * _77) + (997 * arg4):
                revert with 'NH{q', 17
            if mem[_105 + 18 len 14] and 1000 > -1 / mem[_105 + 18 len 14]:
                revert with 'NH{q', 17
            if 1000 * mem[_105 + 18 len 14] > (-997 * _77) + (-997 * arg4) - 1:
                revert with 'NH{q', 17
            if not (1000 * mem[_105 + 18 len 14]) + (997 * _77) + (997 * arg4):
                revert with 'NH{q', 18
            _117 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _5
            mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
            if ceil32(_5) <= _5:
                mem[mem[64] + 64] = address(_85)
                mem[mem[64] + 96] = (997 * _77 * Mask(112, 0, _109)) + (997 * arg4 * Mask(112, 0, _109)) / (1000 * Mask(112, 0, _107)) + (997 * _77) + (997 * arg4)
                return Array(len=_5, data=mem[mem[64] + 160 len ceil32(_5)]), 
                       _69 << 248,
                       address(_85),
                       (997 * _77 * Mask(112, 0, _109)) + (997 * arg4 * Mask(112, 0, _109)) / (1000 * Mask(112, 0, _107)) + (997 * _77) + (997 * arg4)
            mem[mem[64] + _5 + 160] = 0
            mem[mem[64] + 32] = uint8(_69)
            mem[_117 + 64] = address(_85)
            mem[_117 + 96] = (997 * _77 * Mask(112, 0, _109)) + (997 * arg4 * Mask(112, 0, _109)) / (1000 * Mask(112, 0, _107)) + (997 * _77) + (997 * arg4)
            return memory
              from mem[64]
               len _117 + ceil32(_5) + -mem[64] + 160
        if (997 * _77) + (997 * arg4) and mem[_105 + 18 len 14] > -1 / (997 * _77) + (997 * arg4):
            revert with 'NH{q', 17
        if mem[_105 + 50 len 14] and 1000 > -1 / mem[_105 + 50 len 14]:
            revert with 'NH{q', 17
        if 1000 * mem[_105 + 50 len 14] > (-997 * _77) + (-997 * arg4) - 1:
            revert with 'NH{q', 17
        if not (1000 * mem[_105 + 50 len 14]) + (997 * _77) + (997 * arg4):
            revert with 'NH{q', 18
        _118 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _5
        mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            mem[mem[64] + 64] = address(_85)
            mem[mem[64] + 96] = (997 * _77 * Mask(112, 0, _107)) + (997 * arg4 * Mask(112, 0, _107)) / (1000 * Mask(112, 0, _109)) + (997 * _77) + (997 * arg4)
            return Array(len=_5, data=mem[mem[64] + 160 len ceil32(_5)]), 
                   _69 << 248,
                   address(_85),
                   (997 * _77 * Mask(112, 0, _107)) + (997 * arg4 * Mask(112, 0, _107)) / (1000 * Mask(112, 0, _109)) + (997 * _77) + (997 * arg4)
        mem[mem[64] + _5 + 160] = 0
        mem[mem[64] + 32] = uint8(_69)
        mem[_118 + 64] = address(_85)
        mem[_118 + 96] = (997 * _77 * Mask(112, 0, _107)) + (997 * arg4 * Mask(112, 0, _107)) / (1000 * Mask(112, 0, _109)) + (997 * _77) + (997 * arg4)
        return memory
          from mem[64]
           len _118 + ceil32(_5) + -mem[64] + 160
    mem[ceil32(return_data.size) + _5 + 128] = 0
    require ext_code.size(arg3)
    staticcall arg3.0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _68 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _70 = mem[_68]
    require mem[_68] == mem[_68 + 31 len 1]
    mem[mem[64] + 4] = arg1
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _76 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _78 = mem[_76]
    require mem[_76] == mem[_76]
    if mem[_76] > -arg4 - 1:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = WETHAddress
    mem[mem[64] + 36] = arg3
    require ext_code.size(arg2)
    staticcall arg2.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args WETHAddress, arg3
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _84 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _86 = mem[_84]
    require mem[_84] == mem[_84 + 12 len 20]
    if not mem[_84 + 12 len 20]:
        _93 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _5
        mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            mem[mem[64] + 64] = address(_86)
            mem[mem[64] + 96] = 0
            return 128, _70 << 248, address(_86), 0, _5, mem[mem[64] + 160 len ceil32(_5)]
        mem[mem[64] + _5 + 160] = 0
        mem[mem[64] + 32] = uint8(_70)
        mem[_93 + 64] = address(_86)
        mem[_93 + 96] = 0
        return memory
          from mem[64]
           len _93 + ceil32(_5) + -mem[64] + 160
    require ext_code.size(mem[_84 + 12 len 20])
    staticcall mem[_84 + 12 len 20].token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _94 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _98 = mem[_94]
    require mem[_94] == mem[_94 + 12 len 20]
    require ext_code.size(address(_86))
    staticcall address(_86).getReserves() with:
            gas gas_remaining wei
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _106 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _108 = mem[_106]
    require mem[_106] == mem[_106 + 18 len 14]
    _110 = mem[_106 + 32]
    require mem[_106 + 32] == mem[_106 + 50 len 14]
    require mem[_106 + 64] == mem[_106 + 92 len 4]
    if _78 + arg4 and 997 > -1 / _78 + arg4:
        revert with 'NH{q', 17
    if arg3 == address(_98):
        if (997 * _78) + (997 * arg4) and mem[_106 + 50 len 14] > -1 / (997 * _78) + (997 * arg4):
            revert with 'NH{q', 17
        if mem[_106 + 18 len 14] and 1000 > -1 / mem[_106 + 18 len 14]:
            revert with 'NH{q', 17
        if 1000 * mem[_106 + 18 len 14] > (-997 * _78) + (-997 * arg4) - 1:
            revert with 'NH{q', 17
        if not (1000 * mem[_106 + 18 len 14]) + (997 * _78) + (997 * arg4):
            revert with 'NH{q', 18
        _119 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _5
        mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            mem[mem[64] + 64] = address(_86)
            mem[mem[64] + 96] = (997 * _78 * Mask(112, 0, _110)) + (997 * arg4 * Mask(112, 0, _110)) / (1000 * Mask(112, 0, _108)) + (997 * _78) + (997 * arg4)
            return Array(len=_5, data=mem[mem[64] + 160 len ceil32(_5)]), 
                   _70 << 248,
                   address(_86),
                   (997 * _78 * Mask(112, 0, _110)) + (997 * arg4 * Mask(112, 0, _110)) / (1000 * Mask(112, 0, _108)) + (997 * _78) + (997 * arg4)
        mem[mem[64] + _5 + 160] = 0
        mem[mem[64] + 32] = uint8(_70)
        mem[_119 + 64] = address(_86)
        mem[_119 + 96] = (997 * _78 * Mask(112, 0, _110)) + (997 * arg4 * Mask(112, 0, _110)) / (1000 * Mask(112, 0, _108)) + (997 * _78) + (997 * arg4)
        return memory
          from mem[64]
           len _119 + ceil32(_5) + -mem[64] + 160
    if (997 * _78) + (997 * arg4) and mem[_106 + 18 len 14] > -1 / (997 * _78) + (997 * arg4):
        revert with 'NH{q', 17
    if mem[_106 + 50 len 14] and 1000 > -1 / mem[_106 + 50 len 14]:
        revert with 'NH{q', 17
    if 1000 * mem[_106 + 50 len 14] > (-997 * _78) + (-997 * arg4) - 1:
        revert with 'NH{q', 17
    if not (1000 * mem[_106 + 50 len 14]) + (997 * _78) + (997 * arg4):
        revert with 'NH{q', 18
    _120 = mem[64]
    mem[mem[64]] = 128
    mem[mem[64] + 128] = _5
    mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        mem[mem[64] + 64] = address(_86)
        mem[mem[64] + 96] = (997 * _78 * Mask(112, 0, _108)) + (997 * arg4 * Mask(112, 0, _108)) / (1000 * Mask(112, 0, _110)) + (997 * _78) + (997 * arg4)
        return Array(len=_5, data=mem[mem[64] + 160 len ceil32(_5)]), 
               _70 << 248,
               address(_86),
               (997 * _78 * Mask(112, 0, _108)) + (997 * arg4 * Mask(112, 0, _108)) / (1000 * Mask(112, 0, _110)) + (997 * _78) + (997 * arg4)
    mem[mem[64] + _5 + 160] = 0
    mem[mem[64] + 32] = uint8(_70)
    mem[_120 + 64] = address(_86)
    mem[_120 + 96] = (997 * _78 * Mask(112, 0, _108)) + (997 * arg4 * Mask(112, 0, _108)) / (1000 * Mask(112, 0, _110)) + (997 * _78) + (997 * arg4)
    return memory
      from mem[64]
       len _120 + ceil32(_5) + -mem[64] + 160
}



}
