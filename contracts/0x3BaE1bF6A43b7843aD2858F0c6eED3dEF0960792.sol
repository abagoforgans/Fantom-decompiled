contract main {




// =====================  Runtime code  =====================


mapping of struct stor90909012999857140622417080374671856515688564136957639390032885430481714942748;
mapping of struct stor90909012999857140622417080374671856515688564136957639390032885430481714942749;
array of address stor90909012999857140622417080374671856515688564136957639390032885430481714942750;
address storC8FC;

function _fallback() payable {
    revert
}

function diamondCut(address arg1, uint8 arg2, bytes4[][] arg3, address arg4, bytes arg5) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if storC8FC != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibDiamond: Must be contract owner'
    if arg1.length > test266151307():
        revert with 0, 65
    if (32 * arg1.length) + 128 < 96 or (32 * arg1.length) + 128 > test266151307():
        revert with 0, 65
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size + -arg1 + -cd[s] - 36 >= 96
        _1242 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require cd[(arg1 + cd[s] + 36)] == address(cd[(arg1 + cd[s] + 36)])
        mem[_1242] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] < 3
        mem[_1242 + 32] = cd[(arg1 + cd[s] + 68)]
        require cd[(arg1 + cd[s] + 100)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 67 < calldata.size
        if cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)] > test266151307():
            revert with 0, 65
        _1277 = mem[64]
        if mem[64] + (32 * cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]) + 32 < mem[64] or mem[64] + (32 * cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + (32 * cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]) + 32
        mem[_1277] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]
        require calldata.size >= arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + (32 * cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]) + 68
        u = 0
        v = arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 68
        w = _1277 + 32
        while u < cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]:
            require cd[v] == Mask(32, 224, cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_1242 + 64] = _1277
        mem[t] = _1242
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _1241 = mem[64]
    mem[64] = mem[64] + ceil32(arg3.length) + 32
    mem[_1241] = arg3.length
    mem[_1241 + 32 len arg3.length] = arg3[all]
    mem[_1241 + arg3.length + 32] = 0
    _2478 = mem[96]
    idx = 0
    while idx < _2478:
        if idx >= mem[96]:
            revert with 0, 50
        if mem[mem[(32 * idx) + 128] + 32] > 2:
            revert with 0, 33
        if not mem[mem[(32 * idx) + 128] + 32]:
            if idx >= mem[96]:
                revert with 0, 50
            _2491 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 0, 50
            _2497 = mem[mem[(32 * idx) + 128] + 64]
            if mem[mem[mem[(32 * idx) + 128] + 64]] <= 0:
                revert with 0, 'LibDiamondCut: No selectors in facet to cut'
            if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                revert with 0, 'LibDiamondCut: Add facet can't be address(0)'
            mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
            mem[32] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131d
            _2518 = sha3(mem[0], 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131d)
            if uint16(storC8FC[mem[0]].field_0):
                _3715 = mem[_2497]
                s = 0
                t = uint256(stor[sha3(mem[0 len 64])])
                while s < _3715:
                    if s >= mem[_2497]:
                        revert with 0, 50
                    _3735 = mem[(32 * s) + _2497 + 32]
                    if address(storC8FC[Mask(32, 224, mem[(32 * s) + _2497 + 32])].field_0):
                        revert with 0, 'LibDiamondCut: Can't add function that already exists'
                    uint256(storC8FC[address(_2491)].field_0)++
                    uint256(storC8FC[address(_2491)][Mask(253, 0, storC8FC[address(_2491)].field_3)].field_0) = uint32(mem[(32 * s) + _2497 + 32]) >> 224 * 256^(4 * storC8FC[address(_2491)].field_0 % 8) or !(test266151307() * 256^(4 * storC8FC[address(_2491)].field_0 % 8)) and uint256(storC8FC[address(_2491)][Mask(253, 0, storC8FC[address(_2491)].field_3)].field_0)
                    mem[0] = Mask(32, 224, mem[(32 * s) + _2497 + 32])
                    mem[32] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131c
                    address(storC8FC[Mask(32, 224, _3735)].field_0) = address(_2491)
                    uint16(storC8FC[Mask(32, 224, _3735)].field_160) = uint16(t)
                    if uint16(t) == 65535:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = uint16(t) + 1
                    continue 
                if _3715 == -1:
                    revert with 0, 17
                s = _3715 + 1
                continue 
            _2522 = mem[64]
            mem[64] = mem[64] + 96
            mem[_2522] = 36
            mem[_2522 + 32 len 36] = 0x654c69624469616d6f6e644375743a204e657720666163657420686173206e6f20636f64
            if not ext_code.size(_2491):
                _2532 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 36
                idx = 0
                while idx < 36:
                    mem[idx + _2532 + 68] = mem[idx + _2522 + 32]
                    idx = idx + 32
                    continue 
                mem[_2532 + 104] = 0
                revert with memory
                  from mem[64]
                   len _2532 + -mem[64] + 132
            mem[32] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131d
            uint16(storC8FC[address(_2491)].field_256) = uint16(storC8FC.length)
            storC8FC.length++
            mem[0] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131e
            address(storC8FC[storC8FC.length]) = address(_2491)
            _3716 = mem[_2497]
            s = 0
            t = uint256(stor[_2518])
            while s < _3716:
                if s >= mem[_2497]:
                    revert with 0, 50
                _3737 = mem[(32 * s) + _2497 + 32]
                if address(storC8FC[Mask(32, 224, mem[(32 * s) + _2497 + 32])].field_0):
                    revert with 0, 'LibDiamondCut: Can't add function that already exists'
                uint256(storC8FC[address(_2491)].field_0)++
                uint256(storC8FC[address(_2491)][Mask(253, 0, storC8FC[address(_2491)].field_3)].field_0) = uint32(mem[(32 * s) + _2497 + 32]) >> 224 * 256^(4 * storC8FC[address(_2491)].field_0 % 8) or !(test266151307() * 256^(4 * storC8FC[address(_2491)].field_0 % 8)) and uint256(storC8FC[address(_2491)][Mask(253, 0, storC8FC[address(_2491)].field_3)].field_0)
                mem[0] = Mask(32, 224, mem[(32 * s) + _2497 + 32])
                mem[32] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131c
                address(storC8FC[Mask(32, 224, _3737)].field_0) = address(_2491)
                uint16(storC8FC[Mask(32, 224, _3737)].field_160) = uint16(t)
                if uint16(t) == 65535:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = uint16(t) + 1
                continue 
        else:
            if mem[mem[(32 * idx) + 128] + 32] > 2:
                revert with 0, 33
            if mem[mem[(32 * idx) + 128] + 32] != 1:
                if mem[mem[(32 * idx) + 128] + 32] > 2:
                    revert with 0, 33
                if mem[mem[(32 * idx) + 128] + 32] != 2:
                    revert with 0, 'LibDiamondCut: Incorrect FacetCutAction'
                if idx >= mem[96]:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                _2514 = mem[mem[(32 * idx) + 128] + 64]
                if mem[mem[mem[(32 * idx) + 128] + 64]] <= 0:
                    revert with 0, 'LibDiamondCut: No selectors in facet to cut'
                if mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'LibDiamondCut: Remove facet address must be address(0)'
                _3712 = mem[mem[mem[(32 * idx) + 128] + 64]]
                s = 0
                while s < _3712:
                    if s >= mem[_2514]:
                        revert with 0, 50
                    _3729 = mem[(32 * s) + _2514 + 32]
                    _3730 = sha3(Mask(32, 224, mem[(32 * s) + _2514 + 32]), 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131c)
                    if not address(storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_0):
                        revert with 0, 'LibDiamondCut: Can't remove function that doesn't exist'
                    if this.address == address(storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_0):
                        revert with 0, 'LibDiamondCut: Can't remove immutable function'
                    _3762 = sha3(address(storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_0), 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131d)
                    if uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_0)].field_0) < 1:
                        revert with 0, 17
                    if uint16(storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_160) != uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_0)].field_0) - 1:
                        if uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_0)].field_0) - 1 >= uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_0)].field_0):
                            revert with 0, 50
                        if uint16(storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_160) >= uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_0)].field_0):
                            revert with 0, 50
                        uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_0)][storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_163 % 8192].field_0) = !(test266151307() * 256^(4 * storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_160 % 8)) and uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_0)][storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_163 % 8192].field_0)
                        Mask(96, 0, storC8FC[uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_0)][0.125 / uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_0)].field_0) - 1].field_0) / 256^(4 * uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_0)].field_0) - 1 % 8) << 224].field_160) = uint16(storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_160)
                    if not uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_0)].field_0):
                        revert with 0, 49
                    uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_0)][0.125 / uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_0)].field_0) - 1].field_0) = !(test266151307() * 256^(4 * uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_0)].field_0) - 1 % 8)) and uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_0)][0.125 / uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_0)].field_0) - 1].field_0)
                    uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2514 + 32])].field_0)].field_0)--
                    mem[0] = Mask(32, 224, mem[(32 * s) + _2514 + 32])
                    mem[32] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131c
                    Mask(176, 0, storC8FC[Mask(32, 224, _3729)].field_0) = 0
                    if not uint256(stor[_3762]) - 1:
                        if storC8FC.length < 1:
                            revert with 0, 17
                        if storC8FC.length - 1 != uint16(storC8FC[address(stor[_3730])].field_256):
                            if storC8FC.length - 1 >= storC8FC.length:
                                revert with 0, 50
                            if uint16(storC8FC[address(stor[_3730])].field_256) >= storC8FC.length:
                                revert with 0, 50
                            address(storC8FC[uint16(storC8FC[address(stor[_3730])].field_256)]) = address(storC8FC[storC8FC.length])
                            uint16(storC8FC[address(storC8FC[storC8FC.length])].field_256) = uint16(storC8FC[address(stor[_3730])].field_256)
                        if not storC8FC.length:
                            revert with 0, 49
                        address(storC8FC[storC8FC.length]) = 0
                        storC8FC.length--
                        mem[0] = address(stor[_3730])
                        mem[32] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131d
                        uint16(storC8FC[address(stor[_3730])].field_256) = 0
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
            else:
                if idx >= mem[96]:
                    revert with 0, 50
                _2499 = mem[mem[(32 * idx) + 128]]
                if idx >= mem[96]:
                    revert with 0, 50
                _2505 = mem[mem[(32 * idx) + 128] + 64]
                if mem[mem[mem[(32 * idx) + 128] + 64]] <= 0:
                    revert with 0, 'LibDiamondCut: No selectors in facet to cut'
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'LibDiamondCut: Add facet can't be address(0)'
                mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
                mem[32] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131d
                _2525 = sha3(mem[0], 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131d)
                if uint16(storC8FC[mem[0]].field_0):
                    _3713 = mem[_2505]
                    s = 0
                    t = uint256(stor[sha3(mem[0 len 64])])
                    while s < _3713:
                        if s >= mem[_2505]:
                            revert with 0, 50
                        _3731 = mem[(32 * s) + _2505 + 32]
                        if address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0) == address(_2499):
                            revert with 0, 'LibDiamondCut: Can't replace function with same function'
                        if not address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0):
                            revert with 0, 'LibDiamondCut: Can't remove function that doesn't exist'
                        if this.address == address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0):
                            revert with 0, 'LibDiamondCut: Can't remove immutable function'
                        if uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0) < 1:
                            revert with 0, 17
                        if uint16(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_160) != uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0) - 1:
                            if uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0) - 1 >= uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0):
                                revert with 0, 50
                            if uint16(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_160) >= uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0):
                                revert with 0, 50
                            uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)][storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_163 % 8192].field_0) = !(test266151307() * 256^(4 * storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_160 % 8)) and uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)][storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_163 % 8192].field_0)
                            Mask(96, 0, storC8FC[uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)][0.125 / uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0) - 1].field_0) / 256^(4 * uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0) - 1 % 8) << 224].field_160) = uint16(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_160)
                        if not uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0):
                            revert with 0, 49
                        uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)][0.125 / uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0) - 1].field_0) = !(test266151307() * 256^(4 * uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0) - 1 % 8)) and uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)][0.125 / uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0) - 1].field_0)
                        uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0)--
                        Mask(176, 0, storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0) = 0
                        if not uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0) - 1:
                            if storC8FC.length < 1:
                                revert with 0, 17
                            if storC8FC.length - 1 != uint16(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_256):
                                if storC8FC.length - 1 >= storC8FC.length:
                                    revert with 0, 50
                                if uint16(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_256) >= storC8FC.length:
                                    revert with 0, 50
                                address(storC8FC[uint16(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_256)]) = address(storC8FC[storC8FC.length])
                                uint16(storC8FC[address(storC8FC[storC8FC.length])].field_256) = uint16(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_256)
                            if not storC8FC.length:
                                revert with 0, 49
                            address(storC8FC[storC8FC.length]) = 0
                            storC8FC.length--
                            uint16(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_256) = 0
                        uint16(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_160) = uint16(t)
                        uint256(storC8FC[address(_2499)].field_0)++
                        uint256(storC8FC[address(_2499)][Mask(253, 0, storC8FC[address(_2499)].field_3)].field_0) = uint32(mem[(32 * s) + _2505 + 32]) >> 224 * 256^(4 * storC8FC[address(_2499)].field_0 % 8) or !(test266151307() * 256^(4 * storC8FC[address(_2499)].field_0 % 8)) and uint256(storC8FC[address(_2499)][Mask(253, 0, storC8FC[address(_2499)].field_3)].field_0)
                        mem[0] = Mask(32, 224, mem[(32 * s) + _2505 + 32])
                        mem[32] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131c
                        address(storC8FC[Mask(32, 224, _3731)].field_0) = address(_2499)
                        if uint16(t) == 65535:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = uint16(t) + 1
                        continue 
                else:
                    _2530 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2530] = 36
                    mem[_2530 + 32 len 36] = 0x654c69624469616d6f6e644375743a204e657720666163657420686173206e6f20636f64
                    if not ext_code.size(_2499):
                        _2550 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 36
                        idx = 0
                        while idx < 36:
                            mem[idx + _2550 + 68] = mem[idx + _2530 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2550 + 104] = 0
                        revert with memory
                          from mem[64]
                           len _2550 + -mem[64] + 132
                    mem[32] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131d
                    uint16(storC8FC[address(_2499)].field_256) = uint16(storC8FC.length)
                    storC8FC.length++
                    mem[0] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131e
                    address(storC8FC[storC8FC.length]) = address(_2499)
                    _3714 = mem[_2505]
                    s = 0
                    t = uint256(stor[_2525])
                    while s < _3714:
                        if s >= mem[_2505]:
                            revert with 0, 50
                        _3733 = mem[(32 * s) + _2505 + 32]
                        if address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0) == address(_2499):
                            revert with 0, 'LibDiamondCut: Can't replace function with same function'
                        if not address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0):
                            revert with 0, 'LibDiamondCut: Can't remove function that doesn't exist'
                        if this.address == address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0):
                            revert with 0, 'LibDiamondCut: Can't remove immutable function'
                        if uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0) < 1:
                            revert with 0, 17
                        if uint16(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_160) != uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0) - 1:
                            if uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0) - 1 >= uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0):
                                revert with 0, 50
                            if uint16(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_160) >= uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0):
                                revert with 0, 50
                            uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)][storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_163 % 8192].field_0) = !(test266151307() * 256^(4 * storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_160 % 8)) and uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)][storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_163 % 8192].field_0)
                            Mask(96, 0, storC8FC[uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)][0.125 / uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0) - 1].field_0) / 256^(4 * uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0) - 1 % 8) << 224].field_160) = uint16(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_160)
                        if not uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0):
                            revert with 0, 49
                        uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)][0.125 / uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0) - 1].field_0) = !(test266151307() * 256^(4 * uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0) - 1 % 8)) and uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)][0.125 / uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0) - 1].field_0)
                        uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0)--
                        Mask(176, 0, storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0) = 0
                        if not uint256(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_0) - 1:
                            if storC8FC.length < 1:
                                revert with 0, 17
                            if storC8FC.length - 1 != uint16(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_256):
                                if storC8FC.length - 1 >= storC8FC.length:
                                    revert with 0, 50
                                if uint16(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_256) >= storC8FC.length:
                                    revert with 0, 50
                                address(storC8FC[uint16(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_256)]) = address(storC8FC[storC8FC.length])
                                uint16(storC8FC[address(storC8FC[storC8FC.length])].field_256) = uint16(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_256)
                            if not storC8FC.length:
                                revert with 0, 49
                            address(storC8FC[storC8FC.length]) = 0
                            storC8FC.length--
                            uint16(storC8FC[address(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_0)].field_256) = 0
                        uint16(storC8FC[Mask(32, 224, mem[(32 * s) + _2505 + 32])].field_160) = uint16(t)
                        uint256(storC8FC[address(_2499)].field_0)++
                        uint256(storC8FC[address(_2499)][Mask(253, 0, storC8FC[address(_2499)].field_3)].field_0) = uint32(mem[(32 * s) + _2505 + 32]) >> 224 * 256^(4 * storC8FC[address(_2499)].field_0 % 8) or !(test266151307() * 256^(4 * storC8FC[address(_2499)].field_0 % 8)) and uint256(storC8FC[address(_2499)][Mask(253, 0, storC8FC[address(_2499)].field_3)].field_0)
                        mem[0] = Mask(32, 224, mem[(32 * s) + _2505 + 32])
                        mem[32] = 0xc8fcad8db84d3cc18b4c41d551ea0ee66dd599cde068d998e57d5e09332c131c
                        address(storC8FC[Mask(32, 224, _3733)].field_0) = address(_2499)
                        if uint16(t) == 65535:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = uint16(t) + 1
                        continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _2479 = mem[64]
    mem[mem[64]] = 96
    _2481 = mem[96]
    mem[mem[64] + 96] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 128
    u = mem[64] + 128
    while idx < _2481:
        mem[u] = t + -_2479 - 128
        _3717 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        if mem[_3717 + 32] >= 3:
            revert with 0, 33
        mem[t + 32] = mem[_3717 + 32]
        _3727 = mem[_3717 + 64]
        mem[t + 64] = 96
        _3728 = mem[_3727]
        mem[t + 96] = mem[_3727]
        w = t + 128
        v = 0
        x = _3727 + 32
        while v < _3728:
            mem[w] = Mask(32, 224, mem[x])
            w = w + 32
            v = v + 1
            x = x + 32
            continue 
        idx = idx + 1
        s = s + 32
        t = t + (32 * _3728) + 128
        u = u + 32
        continue 
    mem[_2479 + 32] = address(arg2)
    mem[_2479 + 64] = t - _2479
    _3749 = mem[_1241]
    mem[t] = mem[_1241]
    mem[t + 32 len ceil32(_3749)] = mem[_1241 + 32 len ceil32(_3749)]
    if ceil32(_3749) <= _3749:
        emit DiamondCut(address rg1, uint8 rg2, bytes4[][] rg3, address rg4, bytes rg5):
                        mem[mem[64] len ceil32(_3749) + t + -mem[64] + 32],
        if not address(arg2):
            if mem[_1241]:
                revert with 0, 'LibDiamondCut: _init is address(0) but_calldata is not empty'
        if mem[_1241] <= 0:
            revert with 0, 'LibDiamondCut: _calldata is empty but _init is not address(0)'
        if this.address == address(arg2):
            _4909 = mem[_1241]
            mem[mem[64] len ceil32(mem[_1241])] = mem[_1241 + 32 len ceil32(mem[_1241])]
            if ceil32(_4909) <= _4909:
                delegate address(arg2).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _4909 - 4]
                if not return_data.size:
                    if delegate.return_code:
                    if not mem[96]:
                        revert with 0, 'LibDiamondCut: _init function reverted'
                    _5936 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5936] = 20
                    mem[_5936 + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                    if mem[96] % 32 != 4:
                        _5999 = mem[64]
                        mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                        mem[mem[64] + 52] = 'UnexpectedReturndata' << 96
                        _6944 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        mem[_5999 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5999 + 76] = 32
                        _7008 = mem[_6944]
                        mem[_5999 + 108] = mem[_6944]
                        mem[_5999 + 140 len ceil32(_7008)] = mem[_6944 + 32 len ceil32(_7008)]
                        if ceil32(_7008) > _7008:
                            mem[_7008 + _5999 + 140] = 0
                        revert with 0, 32, mem[_5999 + 108 len ceil32(_7008) + 32]
                    if Mask(32, 224, mem[128]) != 0x8c379a000000000000000000000000000000000000000000000000000000000:
                        _6032 = mem[64]
                        mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                        mem[mem[64] + 52] = 0x4e6f4572726f7253656c6563746f720000000000000000000000000000000000
                        _6946 = mem[64]
                        mem[mem[64]] = 35
                        mem[64] = mem[64] + 67
                        mem[_6032 + 67] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6032 + 71] = 32
                        _7010 = mem[_6946]
                        mem[_6032 + 103] = mem[_6946]
                        mem[_6032 + 135 len ceil32(_7010)] = mem[_6946 + 32 len ceil32(_7010)]
                        if ceil32(_7010) > _7010:
                            mem[_7010 + _6032 + 135] = 0
                        revert with 0, 32, mem[_6032 + 103 len ceil32(_7010) + 32]
                    _6033 = mem[64]
                    mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                    mem[mem[64] + 52] = 0
                    _6912 = mem[164]
                    mem[mem[64] + 52 len ceil32(mem[164])] = mem[196 len ceil32(mem[164])]
                    if ceil32(_6912) <= _6912:
                        _7713 = mem[64]
                        mem[mem[64]] = _6912 + 20
                        mem[64] = _6912 + mem[64] + 52
                        mem[_6912 + _6033 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6912 + _6033 + 56] = 32
                        _7905 = mem[_7713]
                        mem[_6912 + _6033 + 88] = mem[_7713]
                        mem[_6912 + _6033 + 120 len ceil32(_7905)] = mem[_7713 + 32 len ceil32(_7905)]
                        if ceil32(_7905) > _7905:
                            mem[_7905 + _6912 + _6033 + 120] = 0
                        revert with 0, 32, mem[_6912 + _6033 + 88 len ceil32(_7905) + 32]
                    mem[_6912 + mem[64] + 52] = 0
                    _7714 = mem[64]
                    mem[mem[64]] = _6912 + _6033 + -mem[64] + 20
                    mem[64] = _6912 + _6033 + 52
                    mem[_6912 + _6033 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6912 + _6033 + 56] = 32
                    _7906 = mem[_7714]
                    mem[_6912 + _6033 + 88] = mem[_7714]
                    mem[_6912 + _6033 + 120 len ceil32(_7906)] = mem[_7714 + 32 len ceil32(_7906)]
                    if ceil32(_7906) > _7906:
                        mem[_7906 + _6912 + _6033 + 120] = 0
                    revert with 0, 32, mem[_6912 + _6033 + 88 len ceil32(_7906) + 32]
                _5907 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_5907] = return_data.size
                mem[_5907 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                if not return_data.size:
                    revert with 0, 'LibDiamondCut: _init function reverted'
                _5938 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5938] = 20
                mem[_5938 + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                if return_data.size % 32 != 4:
                    _6001 = mem[64]
                    mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                    mem[mem[64] + 52] = 'UnexpectedReturndata' << 96
                    _6948 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    mem[_6001 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6001 + 76] = 32
                    _7014 = mem[_6948]
                    mem[_6001 + 108] = mem[_6948]
                    mem[_6001 + 140 len ceil32(_7014)] = mem[_6948 + 32 len ceil32(_7014)]
                    if ceil32(_7014) > _7014:
                        mem[_7014 + _6001 + 140] = 0
                    revert with 0, 32, mem[_6001 + 108 len ceil32(_7014) + 32]
                if Mask(32, 224, mem[_5907 + 32]) != 0x8c379a000000000000000000000000000000000000000000000000000000000:
                    _6035 = mem[64]
                    mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                    mem[mem[64] + 52] = 0x4e6f4572726f7253656c6563746f720000000000000000000000000000000000
                    _6950 = mem[64]
                    mem[mem[64]] = 35
                    mem[64] = mem[64] + 67
                    mem[_6035 + 67] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6035 + 71] = 32
                    _7016 = mem[_6950]
                    mem[_6035 + 103] = mem[_6950]
                    mem[_6035 + 135 len ceil32(_7016)] = mem[_6950 + 32 len ceil32(_7016)]
                    if ceil32(_7016) > _7016:
                        mem[_7016 + _6035 + 135] = 0
                    revert with 0, 32, mem[_6035 + 103 len ceil32(_7016) + 32]
                _6036 = mem[64]
                mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                mem[mem[64] + 52] = 0
                _6914 = mem[_5907 + 68]
                mem[mem[64] + 52 len ceil32(mem[_5907 + 68])] = mem[_5907 + 100 len ceil32(mem[_5907 + 68])]
                if ceil32(_6914) <= _6914:
                    _7717 = mem[64]
                    mem[mem[64]] = _6914 + 20
                    mem[64] = _6914 + mem[64] + 52
                    mem[_6914 + _6036 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6914 + _6036 + 56] = 32
                    _7909 = mem[_7717]
                    mem[_6914 + _6036 + 88] = mem[_7717]
                    mem[_6914 + _6036 + 120 len ceil32(_7909)] = mem[_7717 + 32 len ceil32(_7909)]
                    if ceil32(_7909) > _7909:
                        mem[_7909 + _6914 + _6036 + 120] = 0
                    revert with 0, 32, mem[_6914 + _6036 + 88 len ceil32(_7909) + 32]
                mem[_6914 + mem[64] + 52] = 0
                _7718 = mem[64]
                mem[mem[64]] = _6914 + _6036 + -mem[64] + 20
                mem[64] = _6914 + _6036 + 52
                mem[_6914 + _6036 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6914 + _6036 + 56] = 32
                _7910 = mem[_7718]
                mem[_6914 + _6036 + 88] = mem[_7718]
                mem[_6914 + _6036 + 120 len ceil32(_7910)] = mem[_7718 + 32 len ceil32(_7910)]
                if ceil32(_7910) > _7910:
                    mem[_7910 + _6914 + _6036 + 120] = 0
                revert with 0, 32, mem[_6914 + _6036 + 88 len ceil32(_7910) + 32]
            mem[_4909 + mem[64]] = 0
            delegate address(arg2).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _4909 - 4]
            if not return_data.size:
                if delegate.return_code:
                if not mem[96]:
                    revert with 0, 'LibDiamondCut: _init function reverted'
                _5940 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5940] = 20
                mem[_5940 + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                if mem[96] % 32 != 4:
                    _6003 = mem[64]
                    mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                    mem[mem[64] + 52] = 'UnexpectedReturndata' << 96
                    _6952 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    mem[_6003 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6003 + 76] = 32
                    _7020 = mem[_6952]
                    mem[_6003 + 108] = mem[_6952]
                    mem[_6003 + 140 len ceil32(_7020)] = mem[_6952 + 32 len ceil32(_7020)]
                    if ceil32(_7020) > _7020:
                        mem[_7020 + _6003 + 140] = 0
                    revert with 0, 32, mem[_6003 + 108 len ceil32(_7020) + 32]
                if Mask(32, 224, mem[128]) != 0x8c379a000000000000000000000000000000000000000000000000000000000:
                    _6038 = mem[64]
                    mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                    mem[mem[64] + 52] = 0x4e6f4572726f7253656c6563746f720000000000000000000000000000000000
                    _6954 = mem[64]
                    mem[mem[64]] = 35
                    mem[64] = mem[64] + 67
                    mem[_6038 + 67] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6038 + 71] = 32
                    _7022 = mem[_6954]
                    mem[_6038 + 103] = mem[_6954]
                    mem[_6038 + 135 len ceil32(_7022)] = mem[_6954 + 32 len ceil32(_7022)]
                    if ceil32(_7022) > _7022:
                        mem[_7022 + _6038 + 135] = 0
                    revert with 0, 32, mem[_6038 + 103 len ceil32(_7022) + 32]
                _6039 = mem[64]
                mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                mem[mem[64] + 52] = 0
                _6916 = mem[164]
                mem[mem[64] + 52 len ceil32(mem[164])] = mem[196 len ceil32(mem[164])]
                if ceil32(_6916) <= _6916:
                    _7721 = mem[64]
                    mem[mem[64]] = _6916 + 20
                    mem[64] = _6916 + mem[64] + 52
                    mem[_6916 + _6039 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6916 + _6039 + 56] = 32
                    _7913 = mem[_7721]
                    mem[_6916 + _6039 + 88] = mem[_7721]
                    mem[_6916 + _6039 + 120 len ceil32(_7913)] = mem[_7721 + 32 len ceil32(_7913)]
                    if ceil32(_7913) > _7913:
                        mem[_7913 + _6916 + _6039 + 120] = 0
                    revert with 0, 32, mem[_6916 + _6039 + 88 len ceil32(_7913) + 32]
                mem[_6916 + mem[64] + 52] = 0
                _7722 = mem[64]
                mem[mem[64]] = _6916 + _6039 + -mem[64] + 20
                mem[64] = _6916 + _6039 + 52
                mem[_6916 + _6039 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6916 + _6039 + 56] = 32
                _7914 = mem[_7722]
                mem[_6916 + _6039 + 88] = mem[_7722]
                mem[_6916 + _6039 + 120 len ceil32(_7914)] = mem[_7722 + 32 len ceil32(_7914)]
                if ceil32(_7914) > _7914:
                    mem[_7914 + _6916 + _6039 + 120] = 0
                revert with 0, 32, mem[_6916 + _6039 + 88 len ceil32(_7914) + 32]
            _5908 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_5908] = return_data.size
            mem[_5908 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
            if not return_data.size:
                revert with 0, 'LibDiamondCut: _init function reverted'
            _5942 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5942] = 20
            mem[_5942 + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
            if return_data.size % 32 != 4:
                _6005 = mem[64]
                mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                mem[mem[64] + 52] = 'UnexpectedReturndata' << 96
                _6956 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                mem[_6005 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6005 + 76] = 32
                _7026 = mem[_6956]
                mem[_6005 + 108] = mem[_6956]
                mem[_6005 + 140 len ceil32(_7026)] = mem[_6956 + 32 len ceil32(_7026)]
                if ceil32(_7026) > _7026:
                    mem[_7026 + _6005 + 140] = 0
                revert with 0, 32, mem[_6005 + 108 len ceil32(_7026) + 32]
            if Mask(32, 224, mem[_5908 + 32]) != 0x8c379a000000000000000000000000000000000000000000000000000000000:
                _6041 = mem[64]
                mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                mem[mem[64] + 52] = 0x4e6f4572726f7253656c6563746f720000000000000000000000000000000000
                _6958 = mem[64]
                mem[mem[64]] = 35
                mem[64] = mem[64] + 67
                mem[_6041 + 67] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6041 + 71] = 32
                _7028 = mem[_6958]
                mem[_6041 + 103] = mem[_6958]
                mem[_6041 + 135 len ceil32(_7028)] = mem[_6958 + 32 len ceil32(_7028)]
                if ceil32(_7028) > _7028:
                    mem[_7028 + _6041 + 135] = 0
                revert with 0, 32, mem[_6041 + 103 len ceil32(_7028) + 32]
            _6042 = mem[64]
            mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
            mem[mem[64] + 52] = 0
            _6918 = mem[_5908 + 68]
            mem[mem[64] + 52 len ceil32(mem[_5908 + 68])] = mem[_5908 + 100 len ceil32(mem[_5908 + 68])]
            if ceil32(_6918) <= _6918:
                _7725 = mem[64]
                mem[mem[64]] = _6918 + 20
                mem[64] = _6918 + mem[64] + 52
                mem[_6918 + _6042 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6918 + _6042 + 56] = 32
                _7917 = mem[_7725]
                mem[_6918 + _6042 + 88] = mem[_7725]
                mem[_6918 + _6042 + 120 len ceil32(_7917)] = mem[_7725 + 32 len ceil32(_7917)]
                if ceil32(_7917) > _7917:
                    mem[_7917 + _6918 + _6042 + 120] = 0
                revert with 0, 32, mem[_6918 + _6042 + 88 len ceil32(_7917) + 32]
            mem[_6918 + mem[64] + 52] = 0
            _7726 = mem[64]
            mem[mem[64]] = _6918 + 20
            mem[64] = _6918 + mem[64] + 52
            mem[_6918 + _6042 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6918 + _6042 + 56] = 32
            _7918 = mem[_7726]
            mem[_6918 + _6042 + 88] = mem[_7726]
            mem[_6918 + _6042 + 120 len ceil32(_7918)] = mem[_7726 + 32 len ceil32(_7918)]
            if ceil32(_7918) > _7918:
                mem[_7918 + _6918 + _6042 + 120] = 0
            revert with 0, 32, mem[_6918 + _6042 + 88 len ceil32(_7918) + 32]
        _4906 = mem[64]
        mem[64] = mem[64] + 96
        mem[_4906] = 40
        mem[_4906 + 32 len 40] = 0xfe4c69624469616d6f6e644375743a205f696e6974206164647265737320686173206e6f20636f64
        if not ext_code.size(arg2):
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 40
            mem[mem[64] + 68 len 64] = 0xfe4c69624469616d6f6e644375743a205f696e6974206164647265737320686173206e6f20636f64, mem[_4906 + 72 len 24]
            revert with 0, 32, 40, mem[mem[64] + 68 len 40], 0
        _4917 = mem[64]
        _4920 = mem[_1241]
        mem[mem[64] len ceil32(mem[_1241])] = mem[_1241 + 32 len ceil32(mem[_1241])]
        if ceil32(_4920) <= _4920:
            delegate address(arg2).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _4920 - 4]
            if not return_data.size:
                if delegate.return_code:
                if not mem[96]:
                    revert with 0, 'LibDiamondCut: _init function reverted'
                _5944 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5944] = 20
                mem[_5944 + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                if mem[96] % 32 != 4:
                    _6007 = mem[64]
                    mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                    mem[mem[64] + 52] = 'UnexpectedReturndata' << 96
                    _6960 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    mem[_6007 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6007 + 76] = 32
                    _7032 = mem[_6960]
                    mem[_6007 + 108] = mem[_6960]
                    mem[_6007 + 140 len ceil32(_7032)] = mem[_6960 + 32 len ceil32(_7032)]
                    if ceil32(_7032) > _7032:
                        mem[_7032 + _6007 + 140] = 0
                    revert with 0, 32, mem[_6007 + 108 len ceil32(_7032) + 32]
                if Mask(32, 224, mem[128]) != 0x8c379a000000000000000000000000000000000000000000000000000000000:
                    _6044 = mem[64]
                    mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                    mem[mem[64] + 52] = 0x4e6f4572726f7253656c6563746f720000000000000000000000000000000000
                    _6962 = mem[64]
                    mem[mem[64]] = 35
                    mem[64] = mem[64] + 67
                    mem[_6044 + 67] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6044 + 71] = 32
                    _7034 = mem[_6962]
                    mem[_6044 + 103] = mem[_6962]
                    mem[_6044 + 135 len ceil32(_7034)] = mem[_6962 + 32 len ceil32(_7034)]
                    if ceil32(_7034) > _7034:
                        mem[_7034 + _6044 + 135] = 0
                    revert with 0, 32, mem[_6044 + 103 len ceil32(_7034) + 32]
                _6045 = mem[64]
                mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                mem[mem[64] + 52] = 0
                _6920 = mem[164]
                mem[mem[64] + 52 len ceil32(mem[164])] = mem[196 len ceil32(mem[164])]
                if ceil32(_6920) <= _6920:
                    _7729 = mem[64]
                    mem[mem[64]] = _6920 + 20
                    mem[64] = _6920 + mem[64] + 52
                    mem[_6920 + _6045 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6920 + _6045 + 56] = 32
                    _7921 = mem[_7729]
                    mem[_6920 + _6045 + 88] = mem[_7729]
                    mem[_6920 + _6045 + 120 len ceil32(_7921)] = mem[_7729 + 32 len ceil32(_7921)]
                    if ceil32(_7921) > _7921:
                        mem[_7921 + _6920 + _6045 + 120] = 0
                    revert with 0, 32, mem[_6920 + _6045 + 88 len ceil32(_7921) + 32]
                mem[_6920 + mem[64] + 52] = 0
                _7730 = mem[64]
                mem[mem[64]] = _6920 + 20
                mem[64] = _6920 + mem[64] + 52
                mem[_6920 + _6045 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6920 + _6045 + 56] = 32
                _7922 = mem[_7730]
                mem[_6920 + _6045 + 88] = mem[_7730]
                mem[_6920 + _6045 + 120 len ceil32(_7922)] = mem[_7730 + 32 len ceil32(_7922)]
                if ceil32(_7922) > _7922:
                    mem[_7922 + _6920 + _6045 + 120] = 0
                revert with 0, 32, mem[_6920 + _6045 + 88 len ceil32(_7922) + 32]
            _5909 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_5909] = return_data.size
            mem[_5909 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
            if not return_data.size:
                revert with 0, 'LibDiamondCut: _init function reverted'
            _5946 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5946] = 20
            mem[_5946 + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
            if return_data.size % 32 != 4:
                _6009 = mem[64]
                mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                mem[mem[64] + 52] = 'UnexpectedReturndata' << 96
                _6964 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                mem[_6009 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6009 + 76] = 32
                _7038 = mem[_6964]
                mem[_6009 + 108] = mem[_6964]
                mem[_6009 + 140 len ceil32(_7038)] = mem[_6964 + 32 len ceil32(_7038)]
                if ceil32(_7038) > _7038:
                    mem[_7038 + _6009 + 140] = 0
                revert with 0, 32, mem[_6009 + 108 len ceil32(_7038) + 32]
            if Mask(32, 224, mem[_5909 + 32]) != 0x8c379a000000000000000000000000000000000000000000000000000000000:
                _6047 = mem[64]
                mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                mem[mem[64] + 52] = 0x4e6f4572726f7253656c6563746f720000000000000000000000000000000000
                _6966 = mem[64]
                mem[mem[64]] = 35
                mem[64] = mem[64] + 67
                mem[_6047 + 67] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6047 + 71] = 32
                _7040 = mem[_6966]
                mem[_6047 + 103] = mem[_6966]
                mem[_6047 + 135 len ceil32(_7040)] = mem[_6966 + 32 len ceil32(_7040)]
                if ceil32(_7040) > _7040:
                    mem[_7040 + _6047 + 135] = 0
                revert with 0, 32, mem[_6047 + 103 len ceil32(_7040) + 32]
            _6048 = mem[64]
            mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
            mem[mem[64] + 52] = 0
            _6922 = mem[_5909 + 68]
            mem[mem[64] + 52 len ceil32(mem[_5909 + 68])] = mem[_5909 + 100 len ceil32(mem[_5909 + 68])]
            if ceil32(_6922) <= _6922:
                _7733 = mem[64]
                mem[mem[64]] = _6922 + 20
                mem[64] = _6922 + mem[64] + 52
                mem[_6922 + _6048 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6922 + _6048 + 56] = 32
                _7925 = mem[_7733]
                mem[_6922 + _6048 + 88] = mem[_7733]
                mem[_6922 + _6048 + 120 len ceil32(_7925)] = mem[_7733 + 32 len ceil32(_7925)]
                if ceil32(_7925) > _7925:
                    mem[_7925 + _6922 + _6048 + 120] = 0
                revert with 0, 32, mem[_6922 + _6048 + 88 len ceil32(_7925) + 32]
            mem[_6922 + mem[64] + 52] = 0
            _7734 = mem[64]
            mem[mem[64]] = _6922 + 20
            mem[64] = _6922 + mem[64] + 52
            mem[_6922 + _6048 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6922 + _6048 + 56] = 32
            _7926 = mem[_7734]
            mem[_6922 + _6048 + 88] = mem[_7734]
            mem[_6922 + _6048 + 120 len ceil32(_7926)] = mem[_7734 + 32 len ceil32(_7926)]
            if ceil32(_7926) > _7926:
                mem[_7926 + _6922 + _6048 + 120] = 0
            revert with 0, 32, mem[_6922 + _6048 + 88 len ceil32(_7926) + 32]
        mem[_4920 + mem[64]] = 0
        delegate address(arg2).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _4920 + _4917 + -mem[64] - 4]
        if not return_data.size:
            if delegate.return_code:
            if not mem[96]:
                revert with 0, 'LibDiamondCut: _init function reverted'
            _5948 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5948] = 20
            mem[_5948 + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
            if mem[96] % 32 != 4:
                _6011 = mem[64]
                mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                mem[mem[64] + 52] = 'UnexpectedReturndata' << 96
                _6968 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                mem[_6011 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6011 + 76] = 32
                _7044 = mem[_6968]
                mem[_6011 + 108] = mem[_6968]
                mem[_6011 + 140 len ceil32(_7044)] = mem[_6968 + 32 len ceil32(_7044)]
                if ceil32(_7044) > _7044:
                    mem[_7044 + _6011 + 140] = 0
                revert with 0, 32, mem[_6011 + 108 len ceil32(_7044) + 32]
            if Mask(32, 224, mem[128]) != 0x8c379a000000000000000000000000000000000000000000000000000000000:
                _6050 = mem[64]
                mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                mem[mem[64] + 52] = 0x4e6f4572726f7253656c6563746f720000000000000000000000000000000000
                _6970 = mem[64]
                mem[mem[64]] = 35
                mem[64] = mem[64] + 67
                mem[_6050 + 67] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6050 + 71] = 32
                _7046 = mem[_6970]
                mem[_6050 + 103] = mem[_6970]
                mem[_6050 + 135 len ceil32(_7046)] = mem[_6970 + 32 len ceil32(_7046)]
                if ceil32(_7046) > _7046:
                    mem[_7046 + _6050 + 135] = 0
                revert with 0, 32, mem[_6050 + 103 len ceil32(_7046) + 32]
            _6051 = mem[64]
            mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
            mem[mem[64] + 52] = 0
            _6924 = mem[164]
            mem[mem[64] + 52 len ceil32(mem[164])] = mem[196 len ceil32(mem[164])]
            if ceil32(_6924) <= _6924:
                _7737 = mem[64]
                mem[mem[64]] = _6924 + 20
                mem[64] = _6924 + mem[64] + 52
                mem[_6924 + _6051 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6924 + _6051 + 56] = 32
                _7929 = mem[_7737]
                mem[_6924 + _6051 + 88] = mem[_7737]
                mem[_6924 + _6051 + 120 len ceil32(_7929)] = mem[_7737 + 32 len ceil32(_7929)]
                if ceil32(_7929) > _7929:
                    mem[_7929 + _6924 + _6051 + 120] = 0
                revert with 0, 32, mem[_6924 + _6051 + 88 len ceil32(_7929) + 32]
            mem[_6924 + mem[64] + 52] = 0
            _7738 = mem[64]
            mem[mem[64]] = _6924 + 20
            mem[64] = _6924 + mem[64] + 52
            mem[_6924 + _6051 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6924 + _6051 + 56] = 32
            _7930 = mem[_7738]
            mem[_6924 + _6051 + 88] = mem[_7738]
            mem[_6924 + _6051 + 120 len ceil32(_7930)] = mem[_7738 + 32 len ceil32(_7930)]
            if ceil32(_7930) > _7930:
                mem[_7930 + _6924 + _6051 + 120] = 0
            revert with 0, 32, mem[_6924 + _6051 + 88 len ceil32(_7930) + 32]
        _5910 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_5910] = return_data.size
        mem[_5910 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
        if not return_data.size:
            revert with 0, 'LibDiamondCut: _init function reverted'
        _5950 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5950] = 20
        mem[_5950 + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
        if return_data.size % 32 != 4:
            _6013 = mem[64]
            mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
            mem[mem[64] + 52] = 'UnexpectedReturndata' << 96
            _6972 = mem[64]
            mem[mem[64]] = 40
            mem[64] = mem[64] + 72
            mem[_6013 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6013 + 76] = 32
            _7050 = mem[_6972]
            mem[_6013 + 108] = mem[_6972]
            mem[_6013 + 140 len ceil32(_7050)] = mem[_6972 + 32 len ceil32(_7050)]
            if ceil32(_7050) > _7050:
                mem[_7050 + _6013 + 140] = 0
            revert with 0, 32, mem[_6013 + 108 len ceil32(_7050) + 32]
        if Mask(32, 224, mem[_5910 + 32]) != 0x8c379a000000000000000000000000000000000000000000000000000000000:
            _6053 = mem[64]
            mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
            mem[mem[64] + 52] = 0x4e6f4572726f7253656c6563746f720000000000000000000000000000000000
            _6974 = mem[64]
            mem[mem[64]] = 35
            mem[64] = mem[64] + 67
            mem[_6053 + 67] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6053 + 71] = 32
            _7052 = mem[_6974]
            mem[_6053 + 103] = mem[_6974]
            mem[_6053 + 135 len ceil32(_7052)] = mem[_6974 + 32 len ceil32(_7052)]
            if ceil32(_7052) > _7052:
                mem[_7052 + _6053 + 135] = 0
            revert with 0, 32, mem[_6053 + 103 len ceil32(_7052) + 32]
        _6054 = mem[64]
        mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
        mem[mem[64] + 52] = 0
        _6926 = mem[_5910 + 68]
        mem[mem[64] + 52 len ceil32(mem[_5910 + 68])] = mem[_5910 + 100 len ceil32(mem[_5910 + 68])]
        if ceil32(_6926) <= _6926:
            _7741 = mem[64]
            mem[mem[64]] = _6926 + 20
            mem[64] = _6926 + mem[64] + 52
            mem[_6926 + _6054 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6926 + _6054 + 56] = 32
            _7933 = mem[_7741]
            mem[_6926 + _6054 + 88] = mem[_7741]
            mem[_6926 + _6054 + 120 len ceil32(_7933)] = mem[_7741 + 32 len ceil32(_7933)]
            if ceil32(_7933) > _7933:
                mem[_7933 + _6926 + _6054 + 120] = 0
            revert with 0, 32, mem[_6926 + _6054 + 88 len ceil32(_7933) + 32]
        mem[_6926 + mem[64] + 52] = 0
        _7742 = mem[64]
        mem[mem[64]] = _6926 + 20
        mem[64] = _6926 + mem[64] + 52
        mem[_6926 + _6054 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_6926 + _6054 + 56] = 32
        _7934 = mem[_7742]
        mem[_6926 + _6054 + 88] = mem[_7742]
        mem[_6926 + _6054 + 120 len ceil32(_7934)] = mem[_7742 + 32 len ceil32(_7934)]
        if ceil32(_7934) > _7934:
            mem[_7934 + _6926 + _6054 + 120] = 0
        revert with 0, 32, mem[_6926 + _6054 + 88 len ceil32(_7934) + 32]
    mem[_3749 + t + 32] = 0
    emit DiamondCut(address rg1, uint8 rg2, bytes4[][] rg3, address rg4, bytes rg5):
                    mem[mem[64] len ceil32(_3749) + t + -mem[64] + 32],
    if not address(arg2):
        if mem[_1241]:
            revert with 0, 'LibDiamondCut: _init is address(0) but_calldata is not empty'
    if mem[_1241] <= 0:
        revert with 0, 'LibDiamondCut: _calldata is empty but _init is not address(0)'
    if this.address == address(arg2):
        _4907 = mem[64]
        _4912 = mem[_1241]
        mem[mem[64] len ceil32(mem[_1241])] = mem[_1241 + 32 len ceil32(mem[_1241])]
        if ceil32(_4912) <= _4912:
            delegate address(arg2).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _4912 - 4]
            if not return_data.size:
                if delegate.return_code:
                if not mem[96]:
                    revert with 0, 'LibDiamondCut: _init function reverted'
                _5952 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5952] = 20
                mem[_5952 + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                if mem[96] % 32 != 4:
                    _6015 = mem[64]
                    mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                    mem[mem[64] + 52] = 'UnexpectedReturndata' << 96
                    _6976 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    mem[_6015 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6015 + 76] = 32
                    _7056 = mem[_6976]
                    mem[_6015 + 108] = mem[_6976]
                    mem[_6015 + 140 len ceil32(_7056)] = mem[_6976 + 32 len ceil32(_7056)]
                    if ceil32(_7056) > _7056:
                        mem[_7056 + _6015 + 140] = 0
                    revert with 0, 32, mem[_6015 + 108 len ceil32(_7056) + 32]
                if Mask(32, 224, mem[128]) != 0x8c379a000000000000000000000000000000000000000000000000000000000:
                    _6056 = mem[64]
                    mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                    mem[mem[64] + 52] = 0x4e6f4572726f7253656c6563746f720000000000000000000000000000000000
                    _6978 = mem[64]
                    mem[mem[64]] = 35
                    mem[64] = mem[64] + 67
                    mem[_6056 + 67] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6056 + 71] = 32
                    _7058 = mem[_6978]
                    mem[_6056 + 103] = mem[_6978]
                    mem[_6056 + 135 len ceil32(_7058)] = mem[_6978 + 32 len ceil32(_7058)]
                    if ceil32(_7058) > _7058:
                        mem[_7058 + _6056 + 135] = 0
                    revert with 0, 32, mem[_6056 + 103 len ceil32(_7058) + 32]
                _6057 = mem[64]
                mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                mem[mem[64] + 52] = 0
                _6928 = mem[164]
                mem[mem[64] + 52 len ceil32(mem[164])] = mem[196 len ceil32(mem[164])]
                if ceil32(_6928) <= _6928:
                    _7745 = mem[64]
                    mem[mem[64]] = _6928 + 20
                    mem[64] = _6928 + mem[64] + 52
                    mem[_6928 + _6057 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6928 + _6057 + 56] = 32
                    _7937 = mem[_7745]
                    mem[_6928 + _6057 + 88] = mem[_7745]
                    mem[_6928 + _6057 + 120 len ceil32(_7937)] = mem[_7745 + 32 len ceil32(_7937)]
                    if ceil32(_7937) > _7937:
                        mem[_7937 + _6928 + _6057 + 120] = 0
                    revert with 0, 32, mem[_6928 + _6057 + 88 len ceil32(_7937) + 32]
                mem[_6928 + mem[64] + 52] = 0
                _7746 = mem[64]
                mem[mem[64]] = _6928 + _6057 + -mem[64] + 20
                mem[64] = _6928 + _6057 + 52
                mem[_6928 + _6057 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6928 + _6057 + 56] = 32
                _7938 = mem[_7746]
                mem[_6928 + _6057 + 88] = mem[_7746]
                mem[_6928 + _6057 + 120 len ceil32(_7938)] = mem[_7746 + 32 len ceil32(_7938)]
                if ceil32(_7938) > _7938:
                    mem[_7938 + _6928 + _6057 + 120] = 0
                revert with 0, 32, mem[_6928 + _6057 + 88 len ceil32(_7938) + 32]
            _5913 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_5913] = return_data.size
            mem[_5913 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
            if not return_data.size:
                revert with 0, 'LibDiamondCut: _init function reverted'
            _5954 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5954] = 20
            mem[_5954 + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
            if return_data.size % 32 != 4:
                _6017 = mem[64]
                mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                mem[mem[64] + 52] = 'UnexpectedReturndata' << 96
                _6980 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                mem[_6017 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6017 + 76] = 32
                _7062 = mem[_6980]
                mem[_6017 + 108] = mem[_6980]
                mem[_6017 + 140 len ceil32(_7062)] = mem[_6980 + 32 len ceil32(_7062)]
                if ceil32(_7062) > _7062:
                    mem[_7062 + _6017 + 140] = 0
                revert with 0, 32, mem[_6017 + 108 len ceil32(_7062) + 32]
            if Mask(32, 224, mem[_5913 + 32]) != 0x8c379a000000000000000000000000000000000000000000000000000000000:
                _6059 = mem[64]
                mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                mem[mem[64] + 52] = 0x4e6f4572726f7253656c6563746f720000000000000000000000000000000000
                _6982 = mem[64]
                mem[mem[64]] = 35
                mem[64] = mem[64] + 67
                mem[_6059 + 67] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6059 + 71] = 32
                _7064 = mem[_6982]
                mem[_6059 + 103] = mem[_6982]
                mem[_6059 + 135 len ceil32(_7064)] = mem[_6982 + 32 len ceil32(_7064)]
                if ceil32(_7064) > _7064:
                    mem[_7064 + _6059 + 135] = 0
                revert with 0, 32, mem[_6059 + 103 len ceil32(_7064) + 32]
            _6060 = mem[64]
            mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
            mem[mem[64] + 52] = 0
            _6930 = mem[_5913 + 68]
            mem[mem[64] + 52 len ceil32(mem[_5913 + 68])] = mem[_5913 + 100 len ceil32(mem[_5913 + 68])]
            if ceil32(_6930) <= _6930:
                _7749 = mem[64]
                mem[mem[64]] = _6930 + 20
                mem[64] = _6930 + mem[64] + 52
                mem[_6930 + _6060 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6930 + _6060 + 56] = 32
                _7941 = mem[_7749]
                mem[_6930 + _6060 + 88] = mem[_7749]
                mem[_6930 + _6060 + 120 len ceil32(_7941)] = mem[_7749 + 32 len ceil32(_7941)]
                if ceil32(_7941) > _7941:
                    mem[_7941 + _6930 + _6060 + 120] = 0
                revert with 0, 32, mem[_6930 + _6060 + 88 len ceil32(_7941) + 32]
            mem[_6930 + mem[64] + 52] = 0
            _7750 = mem[64]
            mem[mem[64]] = _6930 + 20
            mem[64] = _6930 + mem[64] + 52
            mem[_6930 + _6060 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6930 + _6060 + 56] = 32
            _7942 = mem[_7750]
            mem[_6930 + _6060 + 88] = mem[_7750]
            mem[_6930 + _6060 + 120 len ceil32(_7942)] = mem[_7750 + 32 len ceil32(_7942)]
            if ceil32(_7942) > _7942:
                mem[_7942 + _6930 + _6060 + 120] = 0
            revert with 0, 32, mem[_6930 + _6060 + 88 len ceil32(_7942) + 32]
        mem[_4912 + mem[64]] = 0
        delegate address(arg2).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _4912 + _4907 + -mem[64] - 4]
        if not return_data.size:
            if delegate.return_code:
            if not mem[96]:
                revert with 0, 'LibDiamondCut: _init function reverted'
            _5956 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5956] = 20
            mem[_5956 + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
            if mem[96] % 32 != 4:
                _6019 = mem[64]
                mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                mem[mem[64] + 52] = 'UnexpectedReturndata' << 96
                _6984 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                mem[_6019 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6019 + 76] = 32
                _7068 = mem[_6984]
                mem[_6019 + 108] = mem[_6984]
                mem[_6019 + 140 len ceil32(_7068)] = mem[_6984 + 32 len ceil32(_7068)]
                if ceil32(_7068) > _7068:
                    mem[_7068 + _6019 + 140] = 0
                revert with 0, 32, mem[_6019 + 108 len ceil32(_7068) + 32]
            if Mask(32, 224, mem[128]) != 0x8c379a000000000000000000000000000000000000000000000000000000000:
                _6062 = mem[64]
                mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                mem[mem[64] + 52] = 0x4e6f4572726f7253656c6563746f720000000000000000000000000000000000
                _6986 = mem[64]
                mem[mem[64]] = 35
                mem[64] = mem[64] + 67
                mem[_6062 + 67] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6062 + 71] = 32
                _7070 = mem[_6986]
                mem[_6062 + 103] = mem[_6986]
                mem[_6062 + 135 len ceil32(_7070)] = mem[_6986 + 32 len ceil32(_7070)]
                if ceil32(_7070) > _7070:
                    mem[_7070 + _6062 + 135] = 0
                revert with 0, 32, mem[_6062 + 103 len ceil32(_7070) + 32]
            _6063 = mem[64]
            mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
            mem[mem[64] + 52] = 0
            _6932 = mem[164]
            mem[mem[64] + 52 len ceil32(mem[164])] = mem[196 len ceil32(mem[164])]
            if ceil32(_6932) <= _6932:
                _7753 = mem[64]
                mem[mem[64]] = _6932 + 20
                mem[64] = _6932 + mem[64] + 52
                mem[_6932 + _6063 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6932 + _6063 + 56] = 32
                _7945 = mem[_7753]
                mem[_6932 + _6063 + 88] = mem[_7753]
                mem[_6932 + _6063 + 120 len ceil32(_7945)] = mem[_7753 + 32 len ceil32(_7945)]
                if ceil32(_7945) > _7945:
                    mem[_7945 + _6932 + _6063 + 120] = 0
                revert with 0, 32, mem[_6932 + _6063 + 88 len ceil32(_7945) + 32]
            mem[_6932 + mem[64] + 52] = 0
            _7754 = mem[64]
            mem[mem[64]] = _6932 + 20
            mem[64] = _6932 + mem[64] + 52
            mem[_6932 + _6063 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6932 + _6063 + 56] = 32
            _7946 = mem[_7754]
            mem[_6932 + _6063 + 88] = mem[_7754]
            mem[_6932 + _6063 + 120 len ceil32(_7946)] = mem[_7754 + 32 len ceil32(_7946)]
            if ceil32(_7946) > _7946:
                mem[_7946 + _6932 + _6063 + 120] = 0
            revert with 0, 32, mem[_6932 + _6063 + 88 len ceil32(_7946) + 32]
        _5914 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_5914] = return_data.size
        mem[_5914 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
        if not return_data.size:
            revert with 0, 'LibDiamondCut: _init function reverted'
        _5958 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5958] = 20
        mem[_5958 + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
        if return_data.size % 32 != 4:
            _6021 = mem[64]
            mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
            mem[mem[64] + 52] = 'UnexpectedReturndata' << 96
            _6988 = mem[64]
            mem[mem[64]] = 40
            mem[64] = mem[64] + 72
            mem[_6021 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6021 + 76] = 32
            _7074 = mem[_6988]
            mem[_6021 + 108] = mem[_6988]
            mem[_6021 + 140 len ceil32(_7074)] = mem[_6988 + 32 len ceil32(_7074)]
            if ceil32(_7074) > _7074:
                mem[_7074 + _6021 + 140] = 0
            revert with 0, 32, mem[_6021 + 108 len ceil32(_7074) + 32]
        if Mask(32, 224, mem[_5914 + 32]) != 0x8c379a000000000000000000000000000000000000000000000000000000000:
            _6065 = mem[64]
            mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
            mem[mem[64] + 52] = 0x4e6f4572726f7253656c6563746f720000000000000000000000000000000000
            _6990 = mem[64]
            mem[mem[64]] = 35
            mem[64] = mem[64] + 67
            mem[_6065 + 67] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6065 + 71] = 32
            _7076 = mem[_6990]
            mem[_6065 + 103] = mem[_6990]
            mem[_6065 + 135 len ceil32(_7076)] = mem[_6990 + 32 len ceil32(_7076)]
            if ceil32(_7076) > _7076:
                mem[_7076 + _6065 + 135] = 0
            revert with 0, 32, mem[_6065 + 103 len ceil32(_7076) + 32]
        _6066 = mem[64]
        mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
        mem[mem[64] + 52] = 0
        _6934 = mem[_5914 + 68]
        mem[mem[64] + 52 len ceil32(mem[_5914 + 68])] = mem[_5914 + 100 len ceil32(mem[_5914 + 68])]
        if ceil32(_6934) <= _6934:
            _7757 = mem[64]
            mem[mem[64]] = _6934 + 20
            mem[64] = _6934 + mem[64] + 52
            mem[_6934 + _6066 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6934 + _6066 + 56] = 32
            _7949 = mem[_7757]
            mem[_6934 + _6066 + 88] = mem[_7757]
            mem[_6934 + _6066 + 120 len ceil32(_7949)] = mem[_7757 + 32 len ceil32(_7949)]
            if ceil32(_7949) > _7949:
                mem[_7949 + _6934 + _6066 + 120] = 0
            revert with 0, 32, mem[_6934 + _6066 + 88 len ceil32(_7949) + 32]
        mem[_6934 + mem[64] + 52] = 0
        _7758 = mem[64]
        mem[mem[64]] = _6934 + _6066 + -mem[64] + 20
        mem[64] = _6934 + _6066 + 52
        mem[_6934 + _6066 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_6934 + _6066 + 56] = 32
        _7950 = mem[_7758]
        mem[_6934 + _6066 + 88] = mem[_7758]
        mem[_6934 + _6066 + 120 len ceil32(_7950)] = mem[_7758 + 32 len ceil32(_7950)]
        if ceil32(_7950) > _7950:
            mem[_7950 + _6934 + _6066 + 120] = 0
        revert with 0, 32, mem[_6934 + _6066 + 88 len ceil32(_7950) + 32]
    _4908 = mem[64]
    mem[64] = mem[64] + 96
    mem[_4908] = 40
    mem[_4908 + 32 len 40] = 0xfe4c69624469616d6f6e644375743a205f696e6974206164647265737320686173206e6f20636f64
    if not ext_code.size(arg2):
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 40
        mem[mem[64] + 68 len 64] = 0xfe4c69624469616d6f6e644375743a205f696e6974206164647265737320686173206e6f20636f64, mem[_4908 + 72 len 24]
        revert with 0, 32, 40, mem[mem[64] + 68 len 40], 0
    _4918 = mem[64]
    _4923 = mem[_1241]
    mem[mem[64] len ceil32(mem[_1241])] = mem[_1241 + 32 len ceil32(mem[_1241])]
    if ceil32(_4923) <= _4923:
        delegate address(arg2).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _4923 - 4]
        if not return_data.size:
            if delegate.return_code:
            if not mem[96]:
                revert with 0, 'LibDiamondCut: _init function reverted'
            _5960 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5960] = 20
            mem[_5960 + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
            if mem[96] % 32 != 4:
                _6023 = mem[64]
                mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                mem[mem[64] + 52] = 'UnexpectedReturndata' << 96
                _6992 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                mem[_6023 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6023 + 76] = 32
                _7080 = mem[_6992]
                mem[_6023 + 108] = mem[_6992]
                mem[_6023 + 140 len ceil32(_7080)] = mem[_6992 + 32 len ceil32(_7080)]
                if ceil32(_7080) > _7080:
                    mem[_7080 + _6023 + 140] = 0
                revert with 0, 32, mem[_6023 + 108 len ceil32(_7080) + 32]
            if Mask(32, 224, mem[128]) != 0x8c379a000000000000000000000000000000000000000000000000000000000:
                _6068 = mem[64]
                mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
                mem[mem[64] + 52] = 0x4e6f4572726f7253656c6563746f720000000000000000000000000000000000
                _6994 = mem[64]
                mem[mem[64]] = 35
                mem[64] = mem[64] + 67
                mem[_6068 + 67] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6068 + 71] = 32
                _7082 = mem[_6994]
                mem[_6068 + 103] = mem[_6994]
                mem[_6068 + 135 len ceil32(_7082)] = mem[_6994 + 32 len ceil32(_7082)]
                if ceil32(_7082) > _7082:
                    mem[_7082 + _6068 + 135] = 0
                revert with 0, 32, mem[_6068 + 103 len ceil32(_7082) + 32]
            _6069 = mem[64]
            mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
            mem[mem[64] + 52] = 0
            _6936 = mem[164]
            mem[mem[64] + 52 len ceil32(mem[164])] = mem[196 len ceil32(mem[164])]
            if ceil32(_6936) <= _6936:
                _7761 = mem[64]
                mem[mem[64]] = _6936 + 20
                mem[64] = _6936 + mem[64] + 52
                mem[_6936 + _6069 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6936 + _6069 + 56] = 32
                _7953 = mem[_7761]
                mem[_6936 + _6069 + 88] = mem[_7761]
                mem[_6936 + _6069 + 120 len ceil32(_7953)] = mem[_7761 + 32 len ceil32(_7953)]
                if ceil32(_7953) > _7953:
                    mem[_7953 + _6936 + _6069 + 120] = 0
                revert with 0, 32, mem[_6936 + _6069 + 88 len ceil32(_7953) + 32]
            mem[_6936 + mem[64] + 52] = 0
            _7762 = mem[64]
            mem[mem[64]] = _6936 + _6069 + -mem[64] + 20
            mem[64] = _6936 + _6069 + 52
            mem[_6936 + _6069 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6936 + _6069 + 56] = 32
            _7954 = mem[_7762]
            mem[_6936 + _6069 + 88] = mem[_7762]
            mem[_6936 + _6069 + 120 len ceil32(_7954)] = mem[_7762 + 32 len ceil32(_7954)]
            if ceil32(_7954) > _7954:
                mem[_7954 + _6936 + _6069 + 120] = 0
            revert with 0, 32, mem[_6936 + _6069 + 88 len ceil32(_7954) + 32]
        _5915 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_5915] = return_data.size
        mem[_5915 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
        if not return_data.size:
            revert with 0, 'LibDiamondCut: _init function reverted'
        _5962 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5962] = 20
        mem[_5962 + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
        if return_data.size % 32 != 4:
            _6025 = mem[64]
            mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
            mem[mem[64] + 52] = 'UnexpectedReturndata' << 96
            _6996 = mem[64]
            mem[mem[64]] = 40
            mem[64] = mem[64] + 72
            mem[_6025 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6025 + 76] = 32
            _7086 = mem[_6996]
            mem[_6025 + 108] = mem[_6996]
            mem[_6025 + 140 len ceil32(_7086)] = mem[_6996 + 32 len ceil32(_7086)]
            if ceil32(_7086) > _7086:
                mem[_7086 + _6025 + 140] = 0
            revert with 0, 32, mem[_6025 + 108 len ceil32(_7086) + 32]
        if Mask(32, 224, mem[_5915 + 32]) != 0x8c379a000000000000000000000000000000000000000000000000000000000:
            _6071 = mem[64]
            mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
            mem[mem[64] + 52] = 0x4e6f4572726f7253656c6563746f720000000000000000000000000000000000
            _6998 = mem[64]
            mem[mem[64]] = 35
            mem[64] = mem[64] + 67
            mem[_6071 + 67] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6071 + 71] = 32
            _7088 = mem[_6998]
            mem[_6071 + 103] = mem[_6998]
            mem[_6071 + 135 len ceil32(_7088)] = mem[_6998 + 32 len ceil32(_7088)]
            if ceil32(_7088) > _7088:
                mem[_7088 + _6071 + 135] = 0
            revert with 0, 32, mem[_6071 + 103 len ceil32(_7088) + 32]
        _6072 = mem[64]
        mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
        mem[mem[64] + 52] = 0
        _6938 = mem[_5915 + 68]
        mem[mem[64] + 52 len ceil32(mem[_5915 + 68])] = mem[_5915 + 100 len ceil32(mem[_5915 + 68])]
        if ceil32(_6938) <= _6938:
            _7765 = mem[64]
            mem[mem[64]] = _6938 + 20
            mem[64] = _6938 + mem[64] + 52
            mem[_6938 + _6072 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6938 + _6072 + 56] = 32
            _7957 = mem[_7765]
            mem[_6938 + _6072 + 88] = mem[_7765]
            mem[_6938 + _6072 + 120 len ceil32(_7957)] = mem[_7765 + 32 len ceil32(_7957)]
            if ceil32(_7957) > _7957:
                mem[_7957 + _6938 + _6072 + 120] = 0
            revert with 0, 32, mem[_6938 + _6072 + 88 len ceil32(_7957) + 32]
        mem[_6938 + mem[64] + 52] = 0
        _7766 = mem[64]
        mem[mem[64]] = _6938 + 20
        mem[64] = _6938 + mem[64] + 52
        mem[_6938 + _6072 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_6938 + _6072 + 56] = 32
        _7958 = mem[_7766]
        mem[_6938 + _6072 + 88] = mem[_7766]
        mem[_6938 + _6072 + 120 len ceil32(_7958)] = mem[_7766 + 32 len ceil32(_7958)]
        if ceil32(_7958) > _7958:
            mem[_7958 + _6938 + _6072 + 120] = 0
        revert with 0, 32, mem[_6938 + _6072 + 88 len ceil32(_7958) + 32]
    mem[_4923 + mem[64]] = 0
    delegate address(arg2).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _4923 + _4918 + -mem[64] - 4]
    if not return_data.size:
        if delegate.return_code:
        if not mem[96]:
            revert with 0, 'LibDiamondCut: _init function reverted'
        _5964 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5964] = 20
        mem[_5964 + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
        if mem[96] % 32 != 4:
            _6027 = mem[64]
            mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
            mem[mem[64] + 52] = 'UnexpectedReturndata' << 96
            _7000 = mem[64]
            mem[mem[64]] = 40
            mem[64] = mem[64] + 72
            mem[_6027 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6027 + 76] = 32
            _7092 = mem[_7000]
            mem[_6027 + 108] = mem[_7000]
            mem[_6027 + 140 len ceil32(_7092)] = mem[_7000 + 32 len ceil32(_7092)]
            if ceil32(_7092) > _7092:
                mem[_7092 + _6027 + 140] = 0
            revert with 0, 32, mem[_6027 + 108 len ceil32(_7092) + 32]
        if Mask(32, 224, mem[128]) != 0x8c379a000000000000000000000000000000000000000000000000000000000:
            _6074 = mem[64]
            mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
            mem[mem[64] + 52] = 0x4e6f4572726f7253656c6563746f720000000000000000000000000000000000
            _7002 = mem[64]
            mem[mem[64]] = 35
            mem[64] = mem[64] + 67
            mem[_6074 + 67] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6074 + 71] = 32
            _7094 = mem[_7002]
            mem[_6074 + 103] = mem[_7002]
            mem[_6074 + 135 len ceil32(_7094)] = mem[_7002 + 32 len ceil32(_7094)]
            if ceil32(_7094) > _7094:
                mem[_7094 + _6074 + 135] = 0
            revert with 0, 32, mem[_6074 + 103 len ceil32(_7094) + 32]
        _6075 = mem[64]
        mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
        mem[mem[64] + 52] = 0
        _6940 = mem[164]
        mem[mem[64] + 52 len ceil32(mem[164])] = mem[196 len ceil32(mem[164])]
        if ceil32(_6940) <= _6940:
            _7769 = mem[64]
            mem[mem[64]] = _6940 + 20
            mem[64] = _6940 + mem[64] + 52
            mem[_6940 + _6075 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6940 + _6075 + 56] = 32
            _7961 = mem[_7769]
            mem[_6940 + _6075 + 88] = mem[_7769]
            mem[_6940 + _6075 + 120 len ceil32(_7961)] = mem[_7769 + 32 len ceil32(_7961)]
            if ceil32(_7961) > _7961:
                mem[_7961 + _6940 + _6075 + 120] = 0
            revert with 0, 32, mem[_6940 + _6075 + 88 len ceil32(_7961) + 32]
        mem[_6940 + mem[64] + 52] = 0
        _7770 = mem[64]
        mem[mem[64]] = _6940 + 20
        mem[64] = _6940 + mem[64] + 52
        mem[_6940 + _6075 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_6940 + _6075 + 56] = 32
        _7962 = mem[_7770]
        mem[_6940 + _6075 + 88] = mem[_7770]
        mem[_6940 + _6075 + 120 len ceil32(_7962)] = mem[_7770 + 32 len ceil32(_7962)]
        if ceil32(_7962) > _7962:
            mem[_7962 + _6940 + _6075 + 120] = 0
        revert with 0, 32, mem[_6940 + _6075 + 88 len ceil32(_7962) + 32]
    _5916 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size) + 1
    mem[_5916] = return_data.size
    mem[_5916 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if delegate.return_code:
    if not return_data.size:
        revert with 0, 'LibDiamondCut: _init function reverted'
    _5966 = mem[64]
    mem[64] = mem[64] + 64
    mem[_5966] = 20
    mem[_5966 + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
    if return_data.size % 32 != 4:
        _6029 = mem[64]
        mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
        mem[mem[64] + 52] = 'UnexpectedReturndata' << 96
        _7004 = mem[64]
        mem[mem[64]] = 40
        mem[64] = mem[64] + 72
        mem[_6029 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_6029 + 76] = 32
        _7098 = mem[_7004]
        mem[_6029 + 108] = mem[_7004]
        mem[_6029 + 140 len ceil32(_7098)] = mem[_7004 + 32 len ceil32(_7098)]
        if ceil32(_7098) > _7098:
            mem[_7098 + _6029 + 140] = 0
        revert with 0, 32, mem[_6029 + 108 len ceil32(_7098) + 32]
    if Mask(32, 224, mem[_5916 + 32]) != 0x8c379a000000000000000000000000000000000000000000000000000000000:
        _6077 = mem[64]
        mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
        mem[mem[64] + 52] = 0x4e6f4572726f7253656c6563746f720000000000000000000000000000000000
        _7006 = mem[64]
        mem[mem[64]] = 35
        mem[64] = mem[64] + 67
        mem[_6077 + 67] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_6077 + 71] = 32
        _7100 = mem[_7006]
        mem[_6077 + 103] = mem[_7006]
        mem[_6077 + 135 len ceil32(_7100)] = mem[_7006 + 32 len ceil32(_7100)]
        if ceil32(_7100) > _7100:
            mem[_7100 + _6077 + 135] = 0
        revert with 0, 32, mem[_6077 + 103 len ceil32(_7100) + 32]
    _6078 = mem[64]
    mem[mem[64] + 32] = 0x4c69624469616d6f6e644375743a5f696e69743a000000000000000000000000
    mem[mem[64] + 52] = 0
    _6942 = mem[_5916 + 68]
    mem[mem[64] + 52 len ceil32(mem[_5916 + 68])] = mem[_5916 + 100 len ceil32(mem[_5916 + 68])]
    if ceil32(_6942) <= _6942:
        _7773 = mem[64]
        mem[mem[64]] = _6942 + 20
        mem[64] = _6942 + mem[64] + 52
        mem[_6942 + _6078 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_6942 + _6078 + 56] = 32
        _7965 = mem[_7773]
        mem[_6942 + _6078 + 88] = mem[_7773]
        mem[_6942 + _6078 + 120 len ceil32(_7965)] = mem[_7773 + 32 len ceil32(_7965)]
        if ceil32(_7965) > _7965:
            mem[_7965 + _6942 + _6078 + 120] = 0
        revert with 0, 32, mem[_6942 + _6078 + 88 len ceil32(_7965) + 32]
    mem[_6942 + mem[64] + 52] = 0
    _7774 = mem[64]
    mem[mem[64]] = _6942 + _6078 + -mem[64] + 20
    mem[64] = _6942 + _6078 + 52
    mem[_6942 + _6078 + 52] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_6942 + _6078 + 56] = 32
    _7966 = mem[_7774]
    mem[_6942 + _6078 + 88] = mem[_7774]
    mem[_6942 + _6078 + 120 len ceil32(_7966)] = mem[_7774 + 32 len ceil32(_7966)]
    if ceil32(_7966) > _7966:
        mem[_7966 + _6942 + _6078 + 120] = 0
    revert with 0, 32, mem[_6942 + _6078 + 88 len ceil32(_7966) + 32]
}



}
