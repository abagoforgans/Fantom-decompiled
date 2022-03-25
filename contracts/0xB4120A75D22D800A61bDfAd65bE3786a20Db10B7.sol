contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor99;

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

function sub_9f1118de(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    mem[64] = 160
    idx = 0
    s = cd[36] + 4
    t = 96
    while idx < 2:
        require cd[36] + cd[s] + 35 < calldata.size
        require cd[(cd[36] + cd[s] + 4)] <= test266151307()
        _5 = mem[64]
        require mem[64] + ceil32(cd[(cd[36] + cd[s] + 4)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[36] + cd[s] + 4)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 4)]) + 32
        mem[_5] = cd[(cd[36] + cd[s] + 4)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 4)] + 36 <= calldata.size
        mem[_5 + 32 len cd[(cd[36] + cd[s] + 4)]] = call.data[cd[36] + cd[s] + 36 len cd[(cd[36] + cd[s] + 4)]]
        mem[cd[(cd[36] + cd[s] + 4)] + _5 + 32] = 0
        mem[t] = _5
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = address(cd[4])
    mem[32] = 2
    s = 0
    idx = 96
    while 160 > idx:
        _13 = mem[idx]
        _14 = mem[mem[idx]]
        mem[0] = s + sha3(mem[0], 2)
        stor2[mem[0]][s] = (2 * _14) + 1
        u = sha3(s + sha3(mem[0], 2))
        t = _13 + 32
        while _13 + _14 + 32 > t:
            stor[u] = mem[t]
            u = u + 1
            t = t + 32
            continue 
        t = sha3(s + sha3(mem[0], 2)) + (Mask(251, 0, _14 + 31) >> 5)
        while sha3(s + sha3(mem[0], 2)) + (stor2[mem[0]][s].length + 31 / 32) > t:
            stor[t] = 0
            t = t + 1
            continue 
        s = s + 1
        idx = idx + 32
        continue 
    idx = s
    while sha3(address(cd[4]), 2) + 2 > idx:
        stor[idx] = 0
        if 31 < stor[idx].length:
            mem[0] = idx
            s = sha3(idx)
            while sha3(idx) + (stor[idx].length + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
        idx = idx + 1
        continue 
}

function getLatestTimestamp(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 96
    s = 96
    idx = 2
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[0] = arg1
    mem[32] = 2
    mem[64] = 224
    s = 160
    idx = 0
    while idx < 2:
        _6 = mem[64]
        mem[64] = mem[64] + ceil32(stor2[address(arg1)][idx].length) + 32
        mem[_6] = stor2[address(arg1)][idx].length
        mem[0] = idx + sha3(address(arg1), 2)
        mem[_6 + 32] = stor2[address(arg1)][idx]
        t = _6 + 32
        u = sha3(mem[0])
        while _6 + stor2[address(arg1)][idx].length > t:
            mem[t + 32] = uint256(stor1[u])
            t = t + 32
            u = u + 1
            continue 
        mem[s] = _6
        s = s + 32
        idx = idx + 1
        continue 
    _7 = mem[64]
    mem[64] = mem[64] + 96
    mem[_7] = 0
    mem[_7 + 32] = 0
    mem[_7 + 64] = 0
    _8 = mem[160]
    _9 = mem[192]
    mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 64
    _12 = mem[_8]
    mem[mem[64] + 68] = mem[_8]
    mem[mem[64] + 100 len ceil32(_12)] = mem[_8 + 32 len ceil32(_12)]
    if ceil32(_12) <= _12:
        mem[mem[64] + 36] = ceil32(_12) + 96
        _59 = mem[_9]
        mem[ceil32(_12) + mem[64] + 100] = mem[_9]
        mem[ceil32(_12) + mem[64] + 132 len ceil32(_59)] = mem[_9 + 32 len ceil32(_59)]
        if ceil32(_59) <= _59:
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).getReferenceData(string rg1, string rg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(_12) + 96, mem[mem[64] + 68 len ceil32(_59) + ceil32(_12) + 64]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _109 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _113 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_113] = mem[_109]
            mem[_113 + 32] = mem[_109 + 32]
            mem[_113 + 64] = mem[_109 + 64]
            _124 = mem[_113 + 64]
            mem[mem[64]] = mem[_113 + 32]
            return mem[mem[64]], _124
        mem[ceil32(_12) + mem[64] + _59 + 132] = 0
        require ext_code.size(address(stor1.length))
        staticcall address(stor1.length).getReferenceData(string rg1, string rg2) with:
                gas gas_remaining wei
               args 64, ceil32(_12) + 96, mem[mem[64] + 68 len ceil32(_59) + ceil32(_12) + 64]
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _111 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _115 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        mem[_115] = mem[_111]
        mem[_115 + 32] = mem[_111 + 32]
        mem[_115 + 64] = mem[_111 + 64]
        _135 = mem[_115 + 64]
        mem[mem[64]] = mem[_115 + 32]
        return mem[mem[64]], _135
    mem[mem[64] + _12 + 100] = 0
    mem[mem[64] + 36] = ceil32(_12) + 96
    _60 = mem[_9]
    mem[ceil32(_12) + mem[64] + 100] = mem[_9]
    mem[ceil32(_12) + mem[64] + 132 len ceil32(_60)] = mem[_9 + 32 len ceil32(_60)]
    if ceil32(_60) <= _60:
        require ext_code.size(address(stor1.length))
        staticcall address(stor1.length).getReferenceData(string rg1, string rg2) with:
                gas gas_remaining wei
               args 64, ceil32(_12) + 96, mem[mem[64] + 68 len _12 + 32], 0, mem[mem[64] + _12 + 132 len ceil32(_60) + ceil32(_12) - _12]
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _110 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _114 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        mem[_114] = mem[_110]
        mem[_114 + 32] = mem[_110 + 32]
        mem[_114 + 64] = mem[_110 + 64]
        _129 = mem[_114 + 64]
        mem[mem[64]] = mem[_114 + 32]
        return mem[mem[64]], _129
    mem[ceil32(_12) + mem[64] + _60 + 132] = 0
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).getReferenceData(string rg1, string rg2) with:
            gas gas_remaining wei
           args 64, ceil32(_12) + 96, mem[mem[64] + 68 len _12 + 32], 0, mem[mem[64] + _12 + 132 len ceil32(_60) + ceil32(_12) - _12]
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _112 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _116 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_116] = mem[_112]
    mem[_116 + 32] = mem[_112 + 32]
    mem[_116 + 64] = mem[_112 + 64]
    _138 = mem[_116 + 64]
    mem[mem[64]] = mem[_116 + 32]
    return mem[mem[64]], _138
}

function getPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 96
    s = 96
    idx = 2
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[0] = arg1
    mem[32] = 2
    mem[64] = 224
    s = 160
    idx = 0
    while idx < 2:
        _6 = mem[64]
        mem[64] = mem[64] + ceil32(stor2[address(arg1)][idx].length) + 32
        mem[_6] = stor2[address(arg1)][idx].length
        mem[0] = idx + sha3(address(arg1), 2)
        mem[_6 + 32] = stor2[address(arg1)][idx]
        t = _6 + 32
        u = sha3(mem[0])
        while _6 + stor2[address(arg1)][idx].length > t:
            mem[t + 32] = uint256(stor1[u])
            t = t + 32
            u = u + 1
            continue 
        mem[s] = _6
        s = s + 32
        idx = idx + 1
        continue 
    _7 = mem[64]
    mem[64] = mem[64] + 96
    mem[_7] = 0
    mem[_7 + 32] = 0
    mem[_7 + 64] = 0
    _8 = mem[160]
    _9 = mem[192]
    mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 64
    _12 = mem[_8]
    mem[mem[64] + 68] = mem[_8]
    mem[mem[64] + 100 len ceil32(_12)] = mem[_8 + 32 len ceil32(_12)]
    if ceil32(_12) <= _12:
        mem[mem[64] + 36] = ceil32(_12) + 96
        _55 = mem[_9]
        mem[ceil32(_12) + mem[64] + 100] = mem[_9]
        mem[ceil32(_12) + mem[64] + 132 len ceil32(_55)] = mem[_9 + 32 len ceil32(_55)]
        if ceil32(_55) <= _55:
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).getReferenceData(string rg1, string rg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(_12) + 96, mem[mem[64] + 68 len ceil32(_55) + ceil32(_12) + 64]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _101 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _105 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_105] = mem[_101]
            mem[_105 + 32] = mem[_101 + 32]
            mem[_105 + 64] = mem[_101 + 64]
            mem[mem[64]] = mem[_105]
        else:
            mem[ceil32(_12) + mem[64] + _55 + 132] = 0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).getReferenceData(string rg1, string rg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(_12) + 96, mem[mem[64] + 68 len ceil32(_55) + ceil32(_12) + 64]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _103 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _107 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_107] = mem[_103]
            mem[_107 + 32] = mem[_103 + 32]
            mem[_107 + 64] = mem[_103 + 64]
            mem[mem[64]] = mem[_107]
    else:
        mem[mem[64] + _12 + 100] = 0
        mem[mem[64] + 36] = ceil32(_12) + 96
        _56 = mem[_9]
        mem[ceil32(_12) + mem[64] + 100] = mem[_9]
        mem[ceil32(_12) + mem[64] + 132 len ceil32(_56)] = mem[_9 + 32 len ceil32(_56)]
        if ceil32(_56) <= _56:
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).getReferenceData(string rg1, string rg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(_12) + 96, mem[mem[64] + 68 len _12 + 32], 0, mem[mem[64] + _12 + 132 len ceil32(_56) + ceil32(_12) - _12]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _102 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _106 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_106] = mem[_102]
            mem[_106 + 32] = mem[_102 + 32]
            mem[_106 + 64] = mem[_102 + 64]
            mem[mem[64]] = mem[_106]
        else:
            mem[ceil32(_12) + mem[64] + _56 + 132] = 0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).getReferenceData(string rg1, string rg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(_12) + 96, mem[mem[64] + 68 len _12 + 32], 0, mem[mem[64] + _12 + 132 len ceil32(_56) + ceil32(_12) - _12]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _104 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _108 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            mem[_108] = mem[_104]
            mem[_108 + 32] = mem[_104 + 32]
            mem[_108 + 64] = mem[_104 + 64]
            mem[mem[64]] = mem[_108]
    return memory
      from mem[64]
       len 32
}



}
