contract main {




// =====================  Runtime code  =====================


#
#  - sub_677808aa(?)
#
mapping of uint8 stor0;
mapping of struct sub_d0290656;
array of struct sub_ef3c4a05;
array of struct sub_0551f733;
array of struct sub_8c54baf0;
array of struct sub_0f4c5ccf;

function sub_0551f733(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < uint256(sub_0551f733[arg1].field_0)
    return uint256(sub_0551f733[arg1][arg2].field_0), 
           uint256(sub_0551f733[arg1][arg2].field_256),
           address(sub_0551f733[arg1][arg2].field_512),
           address(sub_0551f733[arg1][arg2].field_768),
           address(sub_0551f733[arg1][arg2].field_1024),
           address(sub_0551f733[arg1][arg2].field_1280),
           uint256(sub_0551f733[arg1][arg2].field_1536)
}

function sub_0f4c5ccf(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < uint256(sub_0f4c5ccf[arg1].field_0)
    return uint256(sub_0f4c5ccf[arg1][arg2].field_0), 
           uint256(sub_0f4c5ccf[arg1][arg2].field_256),
           address(sub_0f4c5ccf[arg1][arg2].field_512),
           address(sub_0f4c5ccf[arg1][arg2].field_768),
           address(sub_0f4c5ccf[arg1][arg2].field_1024),
           address(sub_0f4c5ccf[arg1][arg2].field_1280),
           uint256(sub_0f4c5ccf[arg1][arg2].field_1536)
}

function sub_8c54baf0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < uint256(sub_8c54baf0[arg1].field_0)
    return uint256(sub_8c54baf0[arg1][arg2].field_0), 
           uint256(sub_8c54baf0[arg1][arg2].field_256),
           address(sub_8c54baf0[arg1][arg2].field_512),
           address(sub_8c54baf0[arg1][arg2].field_768),
           address(sub_8c54baf0[arg1][arg2].field_1024),
           address(sub_8c54baf0[arg1][arg2].field_1280),
           uint256(sub_8c54baf0[arg1][arg2].field_1536)
}

function isController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[address(arg1)])
}

function sub_d0290656(?) payable {
    require calldata.size - 4 >= 32
    return uint256(sub_d0290656[arg1].field_0), 
           uint256(sub_d0290656[arg1].field_256),
           address(sub_d0290656[arg1].field_512),
           address(sub_d0290656[arg1].field_768),
           address(sub_d0290656[arg1].field_1024),
           address(sub_d0290656[arg1].field_1280),
           uint256(sub_d0290656[arg1].field_1536)
}

function sub_ef3c4a05(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < uint256(sub_ef3c4a05[arg1].field_0)
    return uint256(sub_ef3c4a05[arg1][arg2].field_0), 
           uint256(sub_ef3c4a05[arg1][arg2].field_256),
           address(sub_ef3c4a05[arg1][arg2].field_512),
           address(sub_ef3c4a05[arg1][arg2].field_768),
           address(sub_ef3c4a05[arg1][arg2].field_1024),
           address(sub_ef3c4a05[arg1][arg2].field_1280),
           uint256(sub_ef3c4a05[arg1][arg2].field_1536)
}

function _fallback() payable {
    revert
}

function relinquishControl() payable {
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[msg.sender] = 0
}

function addController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[address(arg1)] = 1
}

function sub_35d2a2fe(?) payable {
    require calldata.size - 4 >= 224
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if uint256(sub_d0290656[arg1][address(arg2)][address(arg3)][address(arg4)][address(arg5)][arg6].field_256):
        return 0
    uint256(sub_d0290656[arg1][address(arg2)][address(arg3)][address(arg4)][address(arg5)][arg6].field_0) = sha3(arg1, address(arg2), address(arg3), address(arg4), address(arg5), arg6)
    uint256(sub_d0290656[arg1][address(arg2)][address(arg3)][address(arg4)][address(arg5)][arg6].field_256) = arg1
    address(sub_d0290656[arg1][address(arg2)][address(arg3)][address(arg4)][address(arg5)][arg6].field_512) = address(arg2)
    address(sub_d0290656[arg1][address(arg2)][address(arg3)][address(arg4)][address(arg5)][arg6].field_768) = address(arg3)
    address(sub_d0290656[arg1][address(arg2)][address(arg3)][address(arg4)][address(arg5)][arg6].field_1024) = address(arg4)
    address(sub_d0290656[arg1][address(arg2)][address(arg3)][address(arg4)][address(arg5)][arg6].field_1280) = address(arg5)
    uint256(sub_d0290656[arg1][address(arg2)][address(arg3)][address(arg4)][address(arg5)][arg6].field_1536) = arg6
    uint256(sub_ef3c4a05[address(arg2)].field_0)++
    uint256(sub_ef3c4a05[address(arg2)][uint256(sub_ef3c4a05[address(arg2)].field_0)].field_0) = sha3(arg1, address(arg2), address(arg3), address(arg4), address(arg5), arg6)
    uint256(sub_ef3c4a05[address(arg2)][uint256(sub_ef3c4a05[address(arg2)].field_0)].field_256) = arg1
    address(sub_ef3c4a05[address(arg2)][uint256(sub_ef3c4a05[address(arg2)].field_0)].field_512) = address(arg2)
    address(sub_ef3c4a05[address(arg2)][uint256(sub_ef3c4a05[address(arg2)].field_0)].field_768) = address(arg3)
    address(sub_ef3c4a05[address(arg2)][uint256(sub_ef3c4a05[address(arg2)].field_0)].field_1024) = address(arg4)
    address(sub_ef3c4a05[address(arg2)][uint256(sub_ef3c4a05[address(arg2)].field_0)].field_1280) = address(arg5)
    uint256(sub_ef3c4a05[address(arg2)][uint256(sub_ef3c4a05[address(arg2)].field_0)].field_1536) = arg6
    uint256(sub_0551f733[address(arg3)].field_0)++
    uint256(sub_0551f733[address(arg3)][uint256(sub_0551f733[address(arg3)].field_0)].field_0) = sha3(arg1, address(arg2), address(arg3), address(arg4), address(arg5), arg6)
    uint256(sub_0551f733[address(arg3)][uint256(sub_0551f733[address(arg3)].field_0)].field_256) = arg1
    address(sub_0551f733[address(arg3)][uint256(sub_0551f733[address(arg3)].field_0)].field_512) = address(arg2)
    address(sub_0551f733[address(arg3)][uint256(sub_0551f733[address(arg3)].field_0)].field_768) = address(arg3)
    address(sub_0551f733[address(arg3)][uint256(sub_0551f733[address(arg3)].field_0)].field_1024) = address(arg4)
    address(sub_0551f733[address(arg3)][uint256(sub_0551f733[address(arg3)].field_0)].field_1280) = address(arg5)
    uint256(sub_0551f733[address(arg3)][uint256(sub_0551f733[address(arg3)].field_0)].field_1536) = arg6
    uint256(sub_8c54baf0[address(arg4)].field_0)++
    uint256(sub_8c54baf0[address(arg4)][uint256(sub_8c54baf0[address(arg4)].field_0)].field_0) = sha3(arg1, address(arg2), address(arg3), address(arg4), address(arg5), arg6)
    uint256(sub_8c54baf0[address(arg4)][uint256(sub_8c54baf0[address(arg4)].field_0)].field_256) = arg1
    address(sub_8c54baf0[address(arg4)][uint256(sub_8c54baf0[address(arg4)].field_0)].field_512) = address(arg2)
    address(sub_8c54baf0[address(arg4)][uint256(sub_8c54baf0[address(arg4)].field_0)].field_768) = address(arg3)
    address(sub_8c54baf0[address(arg4)][uint256(sub_8c54baf0[address(arg4)].field_0)].field_1024) = address(arg4)
    address(sub_8c54baf0[address(arg4)][uint256(sub_8c54baf0[address(arg4)].field_0)].field_1280) = address(arg5)
    uint256(sub_8c54baf0[address(arg4)][uint256(sub_8c54baf0[address(arg4)].field_0)].field_1536) = arg6
    uint256(sub_0f4c5ccf[address(arg5)].field_0)++
    uint256(sub_0f4c5ccf[address(arg5)][uint256(sub_0f4c5ccf[address(arg5)].field_0)].field_0) = sha3(arg1, address(arg2), address(arg3), address(arg4), address(arg5), arg6)
    uint256(sub_0f4c5ccf[address(arg5)][uint256(sub_0f4c5ccf[address(arg5)].field_0)].field_256) = arg1
    address(sub_0f4c5ccf[address(arg5)][uint256(sub_0f4c5ccf[address(arg5)].field_0)].field_512) = address(arg2)
    address(sub_0f4c5ccf[address(arg5)][uint256(sub_0f4c5ccf[address(arg5)].field_0)].field_768) = address(arg3)
    address(sub_0f4c5ccf[address(arg5)][uint256(sub_0f4c5ccf[address(arg5)].field_0)].field_1024) = address(arg4)
    address(sub_0f4c5ccf[address(arg5)][uint256(sub_0f4c5ccf[address(arg5)].field_0)].field_1280) = address(arg5)
    uint256(sub_0f4c5ccf[address(arg5)][uint256(sub_0f4c5ccf[address(arg5)].field_0)].field_1536) = arg6
    emit 0x3abf67e6: arg1, address(arg2), address(arg3), address(arg4), address(arg5), arg6, sha3(arg1, address(arg2), address(arg3), address(arg4), address(arg5), arg6), arg1, address(arg2), address(arg3), address(arg4), address(arg5), arg6, sha3(arg1, address(arg2), address(arg3), address(arg4), address(arg5), arg6)
    return 1
}

function sub_6d990d1a(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (224 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require calldata.size - s >= 224
        _83 = mem[64]
        if mem[64] + 224 > test266151307() or mem[64] + 224 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 224
        mem[_83] = cd[s]
        mem[_83 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_83 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == address(cd[(s + 96)])
        mem[_83 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == address(cd[(s + 128)])
        mem[_83 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == address(cd[(s + 160)])
        mem[_83 + 160] = cd[(s + 160)]
        mem[_83 + 192] = cd[(s + 192)]
        mem[t] = _83
        s = s + 224
        t = t + 32
        idx = idx + 1
        continue 
    _164 = mem[96]
    idx = 0
    s = 1
    while idx < _164:
        if not s:
            if idx == -1:
                revert with 0, 17
            _164 = mem[96]
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[96]:
            revert with 0, 50
        _167 = mem[(32 * idx) + 128]
        _170 = mem[mem[(32 * idx) + 128] + 64]
        _171 = mem[mem[(32 * idx) + 128] + 96]
        _172 = mem[mem[(32 * idx) + 128] + 128]
        _173 = mem[mem[(32 * idx) + 128] + 160]
        _174 = mem[mem[(32 * idx) + 128] + 192]
        _175 = mem[64]
        mem[mem[64] + 32] = mem[mem[(32 * idx) + 128] + 32]
        mem[mem[64] + 64] = address(_170)
        mem[mem[64] + 84] = address(_171)
        mem[mem[64] + 104] = address(_172)
        mem[mem[64] + 124] = address(_173)
        mem[mem[64] + 144] = _174
        _176 = mem[64]
        mem[mem[64]] = 144
        mem[64] = mem[64] + 176
        _178 = sha3(mem[_176 + 32 len mem[_176]])
        mem[0] = sha3(mem[_176 + 32 len mem[_176]])
        mem[32] = 1
        if uint256(sub_d0290656[mem[0]].field_256):
            if idx == -1:
                revert with 0, 17
            _164 = mem[96]
            idx = idx + 1
            s = 0
            continue 
        mem[_167] = _178
        mem[32] = 1
        uint256(sub_d0290656[_178].field_0) = _178
        uint256(sub_d0290656[_178].field_256) = mem[_167 + 32]
        address(sub_d0290656[_178].field_512) = mem[_167 + 76 len 20]
        address(sub_d0290656[_178].field_768) = mem[_167 + 108 len 20]
        address(sub_d0290656[_178].field_1024) = mem[_167 + 140 len 20]
        address(sub_d0290656[_178].field_1280) = mem[_167 + 172 len 20]
        uint256(sub_d0290656[_178].field_1536) = mem[_167 + 192]
        mem[0] = mem[_167 + 76 len 20]
        mem[32] = 2
        _189 = sha3(mem[0], 2)
        uint256(sub_ef3c4a05[mem[0]].field_0)++
        mem[0] = sha3(mem[0], 2)
        uint256(stor[(7 * uint256(stor[_189])) + sha3(mem[0])]) = _178
        uint256(stor[(7 * uint256(stor[_189])) + sha3(mem[0]) + 1]) = mem[_167 + 32]
        address(stor[(7 * uint256(stor[_189])) + sha3(mem[0]) + 2]) = mem[_167 + 76 len 20]
        address(stor[(7 * uint256(stor[_189])) + sha3(mem[0]) + 3]) = mem[_167 + 108 len 20]
        address(stor[(7 * uint256(stor[_189])) + sha3(mem[0]) + 4]) = mem[_167 + 140 len 20]
        address(stor[(7 * uint256(stor[_189])) + sha3(mem[0]) + 5]) = mem[_167 + 172 len 20]
        uint256(stor[(7 * uint256(stor[_189])) + sha3(mem[0]) + 6]) = mem[_167 + 192]
        mem[0] = mem[_167 + 108 len 20]
        mem[32] = 3
        _199 = sha3(mem[0], 3)
        uint256(sub_0551f733[mem[0]].field_0)++
        mem[0] = sha3(mem[0], 3)
        uint256(stor[(7 * uint256(stor[_199])) + sha3(mem[0])]) = _178
        uint256(stor[(7 * uint256(stor[_199])) + sha3(mem[0]) + 1]) = mem[_167 + 32]
        address(stor[(7 * uint256(stor[_199])) + sha3(mem[0]) + 2]) = mem[_167 + 76 len 20]
        address(stor[(7 * uint256(stor[_199])) + sha3(mem[0]) + 3]) = mem[_167 + 108 len 20]
        address(stor[(7 * uint256(stor[_199])) + sha3(mem[0]) + 4]) = mem[_167 + 140 len 20]
        address(stor[(7 * uint256(stor[_199])) + sha3(mem[0]) + 5]) = mem[_167 + 172 len 20]
        uint256(stor[(7 * uint256(stor[_199])) + sha3(mem[0]) + 6]) = mem[_167 + 192]
        mem[0] = mem[_167 + 140 len 20]
        mem[32] = 4
        _209 = sha3(mem[0], 4)
        uint256(sub_8c54baf0[mem[0]].field_0)++
        mem[0] = sha3(mem[0], 4)
        uint256(stor[(7 * uint256(stor[_209])) + sha3(mem[0])]) = _178
        uint256(stor[(7 * uint256(stor[_209])) + sha3(mem[0]) + 1]) = mem[_167 + 32]
        address(stor[(7 * uint256(stor[_209])) + sha3(mem[0]) + 2]) = mem[_167 + 76 len 20]
        address(stor[(7 * uint256(stor[_209])) + sha3(mem[0]) + 3]) = mem[_167 + 108 len 20]
        address(stor[(7 * uint256(stor[_209])) + sha3(mem[0]) + 4]) = mem[_167 + 140 len 20]
        address(stor[(7 * uint256(stor[_209])) + sha3(mem[0]) + 5]) = mem[_167 + 172 len 20]
        uint256(stor[(7 * uint256(stor[_209])) + sha3(mem[0]) + 6]) = mem[_167 + 192]
        mem[0] = mem[_167 + 172 len 20]
        mem[32] = 5
        _219 = sha3(mem[0], 5)
        uint256(sub_0f4c5ccf[mem[0]].field_0)++
        mem[0] = sha3(mem[0], 5)
        uint256(stor[(7 * uint256(stor[_219])) + sha3(mem[0])]) = _178
        uint256(stor[(7 * uint256(stor[_219])) + sha3(mem[0]) + 1]) = mem[_167 + 32]
        address(stor[(7 * uint256(stor[_219])) + sha3(mem[0]) + 2]) = mem[_167 + 76 len 20]
        address(stor[(7 * uint256(stor[_219])) + sha3(mem[0]) + 3]) = mem[_167 + 108 len 20]
        address(stor[(7 * uint256(stor[_219])) + sha3(mem[0]) + 4]) = mem[_167 + 140 len 20]
        address(stor[(7 * uint256(stor[_219])) + sha3(mem[0]) + 5]) = mem[_167 + 172 len 20]
        uint256(stor[(7 * uint256(stor[_219])) + sha3(mem[0]) + 6]) = mem[_167 + 192]
        _230 = mem[_167 + 64]
        _231 = mem[_167 + 96]
        _232 = mem[_167 + 128]
        _233 = mem[_167 + 160]
        _234 = mem[_167 + 192]
        mem[_175 + 176] = mem[_167 + 32]
        mem[_175 + 208] = address(_230)
        mem[_175 + 240] = address(_231)
        mem[_175 + 272] = address(_232)
        mem[_175 + 304] = address(_233)
        mem[_175 + 336] = _234
        mem[_175 + 368] = _178
        mem[_175 + 400] = mem[_167 + 32]
        mem[_175 + 432] = mem[_167 + 76 len 20]
        mem[_175 + 464] = mem[_167 + 108 len 20]
        mem[_175 + 496] = mem[_167 + 140 len 20]
        mem[_175 + 528] = mem[_167 + 172 len 20]
        mem[_175 + 560] = mem[_167 + 192]
        emit 0x3abf67e6: mem[_175 + 176], address(_230), address(_231), address(_232), address(_233), _234, _178, mem[_175 + 400 len 192], _178
        if idx == -1:
            revert with 0, 17
        _164 = mem[96]
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}



}
