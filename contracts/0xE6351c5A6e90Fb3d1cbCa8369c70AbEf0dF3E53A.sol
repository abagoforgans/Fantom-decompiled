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
    require cd[36] + 35 < calldata.size
    mem[64] = 160
    idx = 0
    s = cd[36] + 4
    t = 96
    while idx < 2:
        require cd[36] + cd[s] + 35 < calldata.size
        require cd[(cd[36] + cd[s] + 4)] <= test266151307()
        _5 = mem[64]
        require mem[64] + ceil32(cd[(cd[36] + cd[s] + 4)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[36] + cd[s] + 4)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 4)]) + 32
        mem[_5] = cd[(cd[36] + cd[s] + 4)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 4)] + 36 <= calldata.size
        mem[_5 + 32 len cd[(cd[36] + cd[s] + 4)]] = call.data[cd[36] + cd[s] + 36 len cd[(cd[36] + cd[s] + 4)]]
        mem[_5 + cd[(cd[36] + cd[s] + 4)] + 32] = 0
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
    if arg1 == 0xad84341756bf337f5a0164515b1f6f993d194e1f:
        return 1
    _7 = mem[64]
    mem[64] = mem[64] + 96
    mem[_7] = 0
    mem[_7 + 32] = 0
    mem[_7 + 64] = 0
    _10 = mem[160]
    _11 = mem[192]
    mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 64
    _13 = mem[_10]
    mem[mem[64] + 68] = mem[_10]
    mem[mem[64] + 100 len ceil32(_13)] = mem[_10 + 32 len ceil32(_13)]
    if ceil32(_13) <= _13:
        mem[mem[64] + 36] = ceil32(_13) + 96
        _57 = mem[_11]
        mem[mem[64] + ceil32(_13) + 100] = mem[_11]
        mem[mem[64] + ceil32(_13) + 132 len ceil32(_57)] = mem[_11 + 32 len ceil32(_57)]
        if ceil32(_57) <= _57:
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x65555bcc with:
                    gas gas_remaining wei
                   args 64, ceil32(_13) + 96, mem[mem[64] + 68 len ceil32(_13) + ceil32(_57) + 64]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _103 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _107 = mem[64]
            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
            mem[64] = mem[64] + 96
            require mem[_103] == mem[_103]
            mem[_107] = mem[_103]
            require mem[_103 + 32] == mem[_103 + 32]
            mem[_107 + 32] = mem[_103 + 32]
            require mem[_103 + 64] == mem[_103 + 64]
            mem[_107 + 64] = mem[_103 + 64]
            mem[mem[64]] = mem[_107]
        else:
            mem[mem[64] + ceil32(_13) + _57 + 132] = 0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x65555bcc with:
                    gas gas_remaining wei
                   args 64, ceil32(_13) + 96, mem[mem[64] + 68 len ceil32(_13) + ceil32(_57) + 64]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _105 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _109 = mem[64]
            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
            mem[64] = mem[64] + 96
            require mem[_105] == mem[_105]
            mem[_109] = mem[_105]
            require mem[_105 + 32] == mem[_105 + 32]
            mem[_109 + 32] = mem[_105 + 32]
            require mem[_105 + 64] == mem[_105 + 64]
            mem[_109 + 64] = mem[_105 + 64]
            mem[mem[64]] = mem[_109]
    else:
        mem[mem[64] + _13 + 100] = 0
        mem[mem[64] + 36] = ceil32(_13) + 96
        _58 = mem[_11]
        mem[mem[64] + ceil32(_13) + 100] = mem[_11]
        mem[mem[64] + ceil32(_13) + 132 len ceil32(_58)] = mem[_11 + 32 len ceil32(_58)]
        if ceil32(_58) <= _58:
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x65555bcc with:
                    gas gas_remaining wei
                   args 64, ceil32(_13) + 96, mem[mem[64] + 68 len _13 + 32], 0, mem[mem[64] + _13 + 132 len ceil32(_13) + ceil32(_58) - _13]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _104 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _108 = mem[64]
            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
            mem[64] = mem[64] + 96
            require mem[_104] == mem[_104]
            mem[_108] = mem[_104]
            require mem[_104 + 32] == mem[_104 + 32]
            mem[_108 + 32] = mem[_104 + 32]
            require mem[_104 + 64] == mem[_104 + 64]
            mem[_108 + 64] = mem[_104 + 64]
            mem[mem[64]] = mem[_108]
        else:
            mem[mem[64] + ceil32(_13) + _58 + 132] = 0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x65555bcc with:
                    gas gas_remaining wei
                   args 64, ceil32(_13) + 96, mem[mem[64] + 68 len _13 + 32], 0, mem[mem[64] + _13 + 132 len ceil32(_13) + ceil32(_58) - _13]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _106 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _110 = mem[64]
            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
            mem[64] = mem[64] + 96
            require mem[_106] == mem[_106]
            mem[_110] = mem[_106]
            require mem[_106 + 32] == mem[_106 + 32]
            mem[_110 + 32] = mem[_106 + 32]
            require mem[_106 + 64] == mem[_106 + 64]
            mem[_110 + 64] = mem[_106 + 64]
            mem[mem[64]] = mem[_110]
    return memory
      from mem[64]
       len 32
}



}
