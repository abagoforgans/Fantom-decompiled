contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of address stor1;
uint256 stor2;
uint256 stor3;
address stor4;
array of struct stor5;
mapping of uint256 stor7;
array of struct stor8;

function isController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function proxies(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return arg1
}

function sub_b8f27b91(?) {
    require calldata.size - 4 >= 32
    if not stor8.length:
        return 0
    if stor7[arg1] >= stor8.length:
        revert with 0, 50
    return (stor8[stor7[arg1]].field_0 == arg1)
}

function relinquishControl() {
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[msg.sender] = 0
}

function sub_c57e3fd8(?) {
    require calldata.size - 4 >= 32
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor3 = arg1
}

function updateListingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor2 = arg1
}

function addController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[address(arg1)] = 1
}

function withdrawFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    if stor1.length <= 0:
        revert with 0, 'no fees to withdraw'
    stor1.length = 0
    call arg1 with:
       value stor1.length wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ebd133da(?) {
    if stor8.length:
        mem[128] = uint256(stor8.field_0)
        idx = 128
        s = 0
        while (32 * stor8.length) + 96 > idx:
            mem[idx + 32] = stor8[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor8.length, data=mem[128 len 32 * stor8.length])
    mem[(32 * stor8.length) + 128] = 32
    mem[(32 * stor8.length) + 160] = stor8.length
    mem[(32 * stor8.length) + 192 len 32 * stor8.length] = mem[128 len 32 * stor8.length]
    return memory
      from (32 * stor8.length) + 128
       len (96 * stor8.length) + 64
}

function getOfferDetails(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor8.length:
        revert with 0, 'offer not registered'
    if stor7[arg1] >= stor8.length:
        revert with 0, 50
    if stor8[stor7[arg1]].field_0 != arg1:
        revert with 0, 'offer not registered'
    if not stor5[arg1].field_768:
        mem[(32 * stor5[arg1].field_768) + 384] = stor5[arg1].field_1024
        if stor5[arg1].field_1024:
            mem[(32 * stor5[arg1].field_768) + 416] = stor5[arg1][4].field_0
            idx = (32 * stor5[arg1].field_768) + 416
            s = 0
            while (32 * stor5[arg1].field_768) + (32 * stor5[arg1].field_1024) + 384 > idx:
                mem[idx + 32] = stor5[arg1][s + 4].field_256
                idx = idx + 32
                s = s + 1
                continue 
    else:
        mem[384] = address(stor5[arg1][3].field_0)
        idx = 384
        s = 0
        while (32 * stor5[arg1].field_768) + 352 > idx:
            mem[idx + 32] = address(stor5[arg1][s + 3].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor5[arg1].field_768) + 384] = stor5[arg1].field_1024
        if stor5[arg1].field_1024:
            mem[(32 * stor5[arg1].field_768) + 416] = stor5[arg1][4].field_0
            idx = (32 * stor5[arg1].field_768) + 416
            s = 0
            while (32 * stor5[arg1].field_768) + (32 * stor5[arg1].field_1024) + 384 > idx:
                mem[idx + 32] = stor5[arg1][s + 4].field_256
                idx = idx + 32
                s = s + 1
                continue 
            idx = 0
            s = 384
            t = (32 * stor5[arg1].field_768) + (32 * stor5[arg1].field_1024) + 640
            while idx < stor5[arg1].field_768:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(64 * stor5[arg1].field_768) + (32 * stor5[arg1].field_1024) + 640] = stor5[arg1].field_1024
            mem[(64 * stor5[arg1].field_768) + (32 * stor5[arg1].field_1024) + 672 len 32 * stor5[arg1].field_1024] = mem[(32 * stor5[arg1].field_768) + 416 len 32 * stor5[arg1].field_1024]
            return address(stor5[arg1].field_0), 
                   address(stor5[arg1].field_256),
                   stor5[arg1].field_512,
                   Array(len=stor5[arg1].field_768, data=mem[(32 * stor5[arg1].field_768) + (32 * stor5[arg1].field_1024) + 640 len 32 * stor5[arg1].field_768], stor5[arg1].field_1024, mem[(32 * stor5[arg1].field_768) + 416 len 32 * stor5[arg1].field_1024]),
                   (32 * stor5[arg1].field_768) + 224,
                   stor5[arg1].field_1536
    mem[(32 * stor5[arg1].field_768) + (32 * stor5[arg1].field_1024) + 416] = address(stor5[arg1].field_0)
    mem[(32 * stor5[arg1].field_768) + (32 * stor5[arg1].field_1024) + 448] = address(stor5[arg1].field_256)
    mem[(32 * stor5[arg1].field_768) + (32 * stor5[arg1].field_1024) + 480] = stor5[arg1].field_512
    mem[(32 * stor5[arg1].field_768) + (32 * stor5[arg1].field_1024) + 512] = 192
    mem[(32 * stor5[arg1].field_768) + (32 * stor5[arg1].field_1024) + 608] = stor5[arg1].field_768
    idx = 0
    s = 384
    t = (32 * stor5[arg1].field_768) + (32 * stor5[arg1].field_1024) + 640
    while idx < stor5[arg1].field_768:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * stor5[arg1].field_768) + (32 * stor5[arg1].field_1024) + 544] = (32 * stor5[arg1].field_768) + 224
    mem[(64 * stor5[arg1].field_768) + (32 * stor5[arg1].field_1024) + 640] = stor5[arg1].field_1024
    mem[(64 * stor5[arg1].field_768) + (32 * stor5[arg1].field_1024) + 672 len 32 * stor5[arg1].field_1024] = mem[(32 * stor5[arg1].field_768) + 416 len 32 * stor5[arg1].field_1024]
    mem[(32 * stor5[arg1].field_768) + (32 * stor5[arg1].field_1024) + 576] = stor5[arg1].field_1536
    return memory
      from (32 * stor5[arg1].field_768) + (32 * stor5[arg1].field_1024) + 416
       len (96 * stor5[arg1].field_768) + (32 * stor5[arg1].field_1024) + 256
}

function sub_667bfbac(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 6
    mem[64] = (32 * stor6[address(arg1)].field_0) + 128
    mem[96] = stor6[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor6[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 6)
        _26 = mem[64]
        mem[64] = mem[64] + 256
        mem[_26] = address(stor6[address(arg1)][idx].field_0)
        mem[_26 + 32] = address(stor6[address(arg1)][idx].field_256)
        mem[_26 + 64] = stor6[address(arg1)][idx].field_512
        _27 = mem[64]
        mem[64] = mem[64] + (32 * stor6[address(arg1)][idx].field_768) + 32
        mem[_27] = stor6[address(arg1)][idx].field_768
        if not stor6[address(arg1)][idx].field_768:
            mem[_26 + 96] = _27
            _29 = mem[64]
            mem[64] = mem[64] + (32 * stor6[address(arg1)][idx].field_1024) + 32
            mem[_29] = stor6[address(arg1)][idx].field_1024
            if stor6[address(arg1)][idx].field_1024:
                mem[0] = sha3(sha3(address(arg1), 6)) + (8 * idx) + 4
                mem[_29 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)) + (8 * idx) + 4)].field_0
                t = _29 + 32
                u = sha3(mem[0])
                while _29 + (32 * stor6[address(arg1)][idx].field_1024) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_26 + 128] = _29
        else:
            mem[0] = sha3(sha3(address(arg1), 6)) + (8 * idx) + 3
            mem[_27 + 32] = address(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)) + (8 * idx) + 3)].field_0)
            t = _27 + 32
            u = sha3(mem[0])
            while _27 + (32 * stor6[address(arg1)][idx].field_768) > t:
                mem[t + 32] = address(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_26 + 96] = _27
            _61 = mem[64]
            mem[64] = mem[64] + (32 * stor6[address(arg1)][idx].field_1024) + 32
            mem[_61] = stor6[address(arg1)][idx].field_1024
            if stor6[address(arg1)][idx].field_1024:
                mem[0] = sha3(sha3(address(arg1), 6)) + (8 * idx) + 4
                mem[_61 + 32] = stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)) + (8 * idx) + 4)].field_0
                t = _61 + 32
                u = sha3(mem[0])
                while _61 + (32 * stor6[address(arg1)][idx].field_1024) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_26 + 128] = _61
        mem[_26 + 160] = stor6[address(arg1)][idx].field_1280
        mem[_26 + 192] = stor6[address(arg1)][idx].field_1536
        mem[_26 + 224] = bool(uint8(stor6[address(arg1)][idx].field_1792))
        mem[s] = _26
        s = s + 32
        idx = idx + 1
        continue 
    _28 = mem[64]
    mem[mem[64]] = 32
    _31 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _31:
        mem[u] = t + -_28 - 64
        _47 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_47 + 44 len 20]
        mem[t + 64] = mem[_47 + 64]
        _52 = mem[_47 + 96]
        mem[t + 96] = 256
        _53 = mem[_52]
        mem[t + 256] = mem[_52]
        v = 0
        w = _52 + 32
        x = t + 288
        while v < _53:
            mem[x] = mem[w + 12 len 20]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        _64 = mem[_47 + 128]
        mem[t + 128] = (32 * _53) + 288
        _65 = mem[_64]
        mem[t + (32 * _53) + 288] = mem[_64]
        v = 0
        w = _64 + 32
        x = t + (32 * _53) + 320
        while v < _65:
            mem[x] = mem[w]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        mem[t + 160] = mem[_47 + 160]
        mem[t + 192] = mem[_47 + 192]
        mem[t + 224] = bool(mem[_47 + 224])
        idx = idx + 1
        s = s + 32
        t = t + (32 * _53) + (32 * _65) + 320
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_a0c59979(?) {
    require calldata.size - 4 >= 32
    if address(stor5[arg1].field_0) != msg.sender:
        revert with 0, 'not owner'
    if not stor8.length:
        revert with 0, 'offer not registered'
    if stor7[arg1] >= stor8.length:
        revert with 0, 50
    if stor8[stor7[arg1]].field_0 != arg1:
        revert with 0, 'offer not registered'
    if stor8.length:
        if stor7[arg1] >= stor8.length:
            revert with 0, 50
        if stor8[stor7[arg1]].field_0 == arg1:
            if stor8.length < 1:
                revert with 0, 17
            if stor8.length - 1 != stor7[arg1]:
                if stor8.length - 1 >= stor8.length:
                    revert with 0, 50
                stor7[stor8[stor8.length].field_0] = stor7[arg1]
                if stor7[arg1] >= stor8.length:
                    revert with 0, 50
                stor8[stor7[arg1]].field_0 = stor8[stor8.length].field_0
            stor7[arg1] = 0
            if stor8.length < 1:
                revert with 0, 17
            if stor8.length - 1 >= stor8.length:
                revert with 0, 50
            stor8[stor8.length].field_0 = 0
    address(stor5[arg1].field_0) = 0
    address(stor5[arg1].field_256) = 0
    stor5[arg1].field_512 = 0
    stor5[arg1].field_768 = 0
    idx = 0
    while stor5[arg1].field_768 > idx:
        stor5[arg1][idx + 3].field_0 = 0
        idx = idx + 1
        continue 
    stor5[arg1].field_1024 = 0
    idx = 0
    while stor5[arg1].field_1024 > idx:
        stor5[arg1][idx + 4].field_0 = 0
        idx = idx + 1
        continue 
    stor5[arg1].field_1280 = 0
    stor5[arg1].field_1536 = 0
    uint8(stor5[arg1].field_1792) = 0
    mem[0] = msg.sender
    idx = 0
    while idx < stor6[msg.sender].field_0:
        if idx >= stor6[msg.sender].field_0:
            revert with 0, 50
        if stor6[msg.sender][idx].field_512 != arg1:
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 6
            idx = idx + 1
            continue 
        if stor6[msg.sender].field_0 < 1:
            revert with 0, 17
        if stor6[msg.sender].field_0 - 1 >= stor6[msg.sender].field_0:
            revert with 0, 50
        if idx >= stor6[address(msg.sender)].field_0:
            revert with 0, 50
        address(stor6[address(msg.sender)][idx].field_0) = address(stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_0)
        address(stor6[address(msg.sender)][idx].field_256) = address(stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_256)
        stor6[address(msg.sender)][idx].field_512 = stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_512
        stor6[address(msg.sender)][idx].field_768 = stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_768
        mem[0] = (8 * idx) + sha3(sha3(address(msg.sender), 6)) + 3
        if not stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_768:
            s = sha3(mem[0])
            while sha3((8 * idx) + sha3(sha3(address(msg.sender), 6)) + 3) + stor6[address(msg.sender)][idx].field_768 > s:
                stor[s] = 0
                mem[0] = msg.sender
                mem[32] = 6
                s = s + 1
                continue 
            stor6[address(msg.sender)][idx].field_1024 = stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1024
            mem[0] = (8 * idx) + sha3(sha3(address(msg.sender), 6)) + 4
            if not stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1024:
                s = sha3(mem[0])
                while sha3((8 * idx) + sha3(sha3(address(msg.sender), 6)) + 4) + stor6[address(msg.sender)][idx].field_1024 > s:
                    stor[s] = 0
                    mem[0] = msg.sender
                    mem[32] = 6
                    s = s + 1
                    continue 
            else:
                mem[0] = (8 * stor6[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 6)) + 4
                t = sha3((8 * idx) + sha3(sha3(address(msg.sender), 6)) + 4)
                s = sha3(mem[0])
                while sha3((8 * stor6[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 6)) + 4) + stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1024 > s:
                    stor[t] = stor[s]
                    mem[0] = msg.sender
                    mem[32] = 6
                    t = t + 1
                    s = s + 1
                    continue 
                s = sha3((8 * idx) + sha3(sha3(address(msg.sender), 6)) + 4) + sha3((8 * stor6[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 6)) + 4) + stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1024 - sha3(mem[0])
                while sha3((8 * idx) + sha3(sha3(address(msg.sender), 6)) + 4) + stor6[address(msg.sender)][idx].field_1024 > s:
                    stor[s] = 0
                    mem[0] = msg.sender
                    mem[32] = 6
                    s = s + 1
                    continue 
            stor6[address(msg.sender)][idx].field_1280 = stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1280
            stor6[address(msg.sender)][idx].field_1536 = stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1536
            uint8(stor6[address(msg.sender)][idx].field_1792) = uint8(bool(uint8(stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1792)))
            if not stor6[msg.sender].field_0:
                revert with 0, 49
            address(stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_0) = 0
            address(stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_256) = 0
            stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_512 = 0
            stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_768 = 0
            mem[0] = (8 * stor6[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 6)) + 3
            s = sha3(mem[0])
            while sha3((8 * stor6[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 6)) + 3) + stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_768 > s:
                stor[s] = 0
                mem[0] = msg.sender
                mem[32] = 6
                s = s + 1
                continue 
            stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1024 = 0
            mem[0] = (8 * stor6[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 6)) + 4
            s = sha3(mem[0])
            while sha3((8 * stor6[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 6)) + 4) + stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1024 > s:
                stor[s] = 0
                mem[0] = msg.sender
                mem[32] = 6
                s = s + 1
                continue 
            stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1280 = 0
            stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1536 = 0
            uint8(stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1792) = 0
            stor6[msg.sender].field_0--
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 6
            idx = idx + 1
            continue 
        mem[0] = (8 * stor6[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 6)) + 3
        t = sha3((8 * idx) + sha3(sha3(address(msg.sender), 6)) + 3)
        s = sha3(mem[0])
        while sha3((8 * stor6[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 6)) + 3) + stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_768 > s:
            stor[t] = stor[s]
            mem[0] = msg.sender
            mem[32] = 6
            t = t + 1
            s = s + 1
            continue 
        s = sha3((8 * idx) + sha3(sha3(address(msg.sender), 6)) + 3) + sha3((8 * stor6[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 6)) + 3) + stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_768 - sha3(mem[0])
        while sha3((8 * idx) + sha3(sha3(address(msg.sender), 6)) + 3) + stor6[address(msg.sender)][idx].field_768 > s:
            stor[s] = 0
            mem[0] = msg.sender
            mem[32] = 6
            s = s + 1
            continue 
        stor6[address(msg.sender)][idx].field_1024 = stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1024
        mem[0] = (8 * idx) + sha3(sha3(address(msg.sender), 6)) + 4
        if not stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1024:
            s = sha3(mem[0])
            while sha3((8 * idx) + sha3(sha3(address(msg.sender), 6)) + 4) + stor6[address(msg.sender)][idx].field_1024 > s:
                stor[s] = 0
                mem[0] = msg.sender
                mem[32] = 6
                s = s + 1
                continue 
            stor6[address(msg.sender)][idx].field_1280 = stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1280
            stor6[address(msg.sender)][idx].field_1536 = stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1536
            uint8(stor6[address(msg.sender)][idx].field_1792) = uint8(bool(uint8(stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1792)))
            if not stor6[msg.sender].field_0:
                revert with 0, 49
            address(stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_0) = 0
            address(stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_256) = 0
            stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_512 = 0
            stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_768 = 0
            mem[0] = (8 * stor6[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 6)) + 3
            s = sha3(mem[0])
            while sha3((8 * stor6[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 6)) + 3) + stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_768 > s:
                stor[s] = 0
                mem[0] = msg.sender
                mem[32] = 6
                s = s + 1
                continue 
            stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1024 = 0
            mem[0] = (8 * stor6[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 6)) + 4
            s = sha3(mem[0])
            while sha3((8 * stor6[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 6)) + 4) + stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1024 > s:
                stor[s] = 0
                mem[0] = msg.sender
                mem[32] = 6
                s = s + 1
                continue 
            stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1280 = 0
            stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1536 = 0
            uint8(stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1792) = 0
            stor6[msg.sender].field_0--
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 6
            idx = idx + 1
            continue 
        mem[0] = (8 * stor6[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 6)) + 4
        t = sha3((8 * idx) + sha3(sha3(address(msg.sender), 6)) + 4)
        s = sha3(mem[0])
        while sha3((8 * stor6[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 6)) + 4) + stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1024 > s:
            stor[t] = stor[s]
            mem[0] = msg.sender
            mem[32] = 6
            t = t + 1
            s = s + 1
            continue 
        s = sha3((8 * idx) + sha3(sha3(address(msg.sender), 6)) + 4) + sha3((8 * stor6[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 6)) + 4) + stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1024 - sha3(mem[0])
        while sha3((8 * idx) + sha3(sha3(address(msg.sender), 6)) + 4) + stor6[address(msg.sender)][idx].field_1024 > s:
            stor[s] = 0
            mem[0] = msg.sender
            mem[32] = 6
            s = s + 1
            continue 
        stor6[address(msg.sender)][idx].field_1280 = stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1280
        stor6[address(msg.sender)][idx].field_1536 = stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1536
        uint8(stor6[address(msg.sender)][idx].field_1792) = uint8(bool(uint8(stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1792)))
        if not stor6[msg.sender].field_0:
            revert with 0, 49
        address(stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_0) = 0
        address(stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_256) = 0
        stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_512 = 0
        stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_768 = 0
        mem[0] = (8 * stor6[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 6)) + 3
        s = sha3(mem[0])
        while sha3((8 * stor6[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 6)) + 3) + stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_768 > s:
            stor[s] = 0
            mem[0] = msg.sender
            mem[32] = 6
            s = s + 1
            continue 
        stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1024 = 0
        mem[0] = (8 * stor6[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 6)) + 4
        s = sha3(mem[0])
        while sha3((8 * stor6[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 6)) + 4) + stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1024 > s:
            stor[s] = 0
            mem[0] = msg.sender
            mem[32] = 6
            s = s + 1
            continue 
        stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1280 = 0
        stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1536 = 0
        uint8(stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1792) = 0
        stor6[msg.sender].field_0--
        if sha3((8 * stor6[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 6)) + 4) + stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1024 == -1:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 6
        s = sha3((8 * stor6[msg.sender].field_0 - 1) + sha3(sha3(msg.sender, 6)) + 4) + stor6[msg.sender][stor6[msg.sender].field_0 - 1].field_1024 + 1
        continue 
    if not uint8(stor5[arg1].field_1792):
        call msg.sender with:
           value stor5[arg1].field_1280 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x6fe9d303: arg1
    return 1
}

function sub_b5ded0bb(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 68).length) + 128 < 96 or (32 * ('cd', 68).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    t = 128
    idx = 0
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 100).length) + 160 < 128 or (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
    require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
    idx = 0
    s = cd[100] + 36
    t = (32 * ('cd', 68).length) + 160
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not stor8.length:
        if ('cd', 100).length > ('cd', 68).length:
            revert with 0, 'too many gems'
        if msg.value < stor2:
            revert with 0, 'insufficient listing fee'
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 164] = msg.sender
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 196] = cd[36]
        require ext_code.size(stor4)
        staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, cd[36]
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != 1:
            revert with 0, 'insufficient gem balance'
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 164] = cd[36]
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).tokenType(uint256 arg1) with:
                gas gas_remaining wei
               args cd[36]
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] < 3
        if ext_call.return_data[0] > 2:
            revert with 0, 33
        if ext_call.return_data[0] != 2:
            revert with 0, 'invalid token type'
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 164] = msg.sender
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 196] = cd[36]
        require ext_code.size(stor4)
        staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, cd[36]
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 1:
            revert with 0, 'insufficient gem balance'
        mem[64] = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 160] = msg.sender
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 192] = address(cd[4])
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 224] = cd[36]
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 256] = 96
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 288] = (32 * ('cd', 68).length) + 128
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 320] = stor2
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 352] = cd[132]
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 384] = 0
        address(stor5[cd[36]].field_0) = msg.sender
        address(stor5[cd[36]].field_256) = address(cd[4])
        stor5[cd[36]].field_512 = cd[36]
        stor5[cd[36]].field_768 = ('cd', 68).length
        if not ('cd', 68).length:
            idx = 0
            while stor5[cd[36]].field_768 > idx:
                stor5[cd[36]][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            stor5[cd[36]].field_1024 = ('cd', 100).length
            if not ('cd', 100).length:
                idx = 0
                while stor5[cd[36]].field_1024 > idx:
                    stor5[cd[36]][idx + 4].field_0 = 0
                    idx = idx + 1
                    continue 
                stor5[cd[36]].field_1280 = stor2
                stor5[cd[36]].field_1536 = cd[132]
                uint8(stor5[cd[36]].field_1792) = 0
                if stor8.length:
                    if stor7[cd[36]] >= stor8.length:
                        revert with 0, 50
                    if stor8[stor7[cd[36]]].field_0 == cd[36]:
                        revert with 0, 'UInt256Set: key already exists in the set.'
                stor8.length++
                stor8[stor8.length].field_0 = cd[36]
                if stor8.length < 1:
                    revert with 0, 17
                stor7[cd[36]] = stor8.length - 1
                stor6[msg.sender].field_0++
                address(stor6[msg.sender][stor6[msg.sender].field_0].field_0) = msg.sender
                address(stor6[msg.sender][stor6[msg.sender].field_0].field_256) = address(cd[4])
                stor6[msg.sender][stor6[msg.sender].field_0].field_512 = cd[36]
                stor6[msg.sender][stor6[msg.sender].field_0].field_768 = ('cd', 68).length
                if not ('cd', 68).length:
                    idx = 0
                    while stor6[msg.sender][stor6[msg.sender].field_0].field_768 > idx:
                        stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor6[msg.sender][stor6[msg.sender].field_0].field_1024 = ('cd', 100).length
                    if not ('cd', 100).length:
                        idx = 0
                        while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                            stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                        stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                        uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                        idx = 0
                        s = 128
                        t = mem[64] + 256
                        while idx < ('cd', 68).length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 160] = (32 * ('cd', 68).length) + 256
                        mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[(32 * ('cd', 68).length) + 128]
                        mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                        var119001 = mem[(32 * ('cd', 68).length) + 128]
                    else:
                        s = 0
                        idx = (32 * ('cd', 68).length) + 160
                        while (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 > idx:
                            stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                        while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                            stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                        stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                        uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                        idx = 0
                        s = 128
                        t = mem[64] + 256
                        while idx < ('cd', 68).length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 160] = (32 * ('cd', 68).length) + 256
                        mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[(32 * ('cd', 68).length) + 128]
                        mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                else:
                    s = 0
                    idx = 128
                    while (32 * ('cd', 68).length) + 128 > idx:
                        address(stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0) = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
                    while stor6[msg.sender][stor6[msg.sender].field_0].field_768 > idx:
                        stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor6[msg.sender][stor6[msg.sender].field_0].field_1024 = ('cd', 100).length
                    if not ('cd', 100).length:
                        idx = 0
                        while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                            stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * ('cd', 68).length) + 160
                        while (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 > idx:
                            stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                        while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                            stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                            idx = idx + 1
                            continue 
                    stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                    stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                    uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                    idx = 0
                    s = 128
                    t = mem[64] + 256
                    while idx < ('cd', 68).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 160] = (32 * ('cd', 68).length) + 256
                    mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[(32 * ('cd', 68).length) + 128]
                    mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
            else:
                s = 0
                idx = (32 * ('cd', 68).length) + 160
                while (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 > idx:
                    stor5[cd[36]][s + 4].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                while stor5[cd[36]].field_1024 > idx:
                    stor5[cd[36]][idx + 4].field_0 = 0
                    idx = idx + 1
                    continue 
                stor5[cd[36]].field_1280 = stor2
                stor5[cd[36]].field_1536 = cd[132]
                uint8(stor5[cd[36]].field_1792) = 0
                if stor8.length:
                    if stor7[cd[36]] >= stor8.length:
                        revert with 0, 50
                    if stor8[stor7[cd[36]]].field_0 == cd[36]:
                        revert with 0, 'UInt256Set: key already exists in the set.'
                stor8.length++
                stor8[stor8.length].field_0 = cd[36]
                if stor8.length < 1:
                    revert with 0, 17
                stor7[cd[36]] = stor8.length - 1
                stor6[msg.sender].field_0++
                address(stor6[msg.sender][stor6[msg.sender].field_0].field_0) = msg.sender
                address(stor6[msg.sender][stor6[msg.sender].field_0].field_256) = address(cd[4])
                stor6[msg.sender][stor6[msg.sender].field_0].field_512 = cd[36]
                stor6[msg.sender][stor6[msg.sender].field_0].field_768 = ('cd', 68).length
                if not ('cd', 68).length:
                    idx = 0
                    while stor6[msg.sender][stor6[msg.sender].field_0].field_768 > idx:
                        stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 128
                    while (32 * ('cd', 68).length) + 128 > idx:
                        address(stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0) = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
                    while stor6[msg.sender][stor6[msg.sender].field_0].field_768 > idx:
                        stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0 = 0
                        idx = idx + 1
                        continue 
                stor6[msg.sender][stor6[msg.sender].field_0].field_1024 = ('cd', 100).length
                if not ('cd', 100).length:
                    idx = 0
                    while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                        stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * ('cd', 68).length) + 160
                    while (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 > idx:
                        stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                    while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                        stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                        idx = idx + 1
                        continue 
                stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                idx = 0
                s = 128
                t = mem[64] + 256
                while idx < ('cd', 68).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 160] = (32 * ('cd', 68).length) + 256
                mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
            emit 0xf2ea5bab: mem[mem[64] len 160], (32 * ('cd', 68).length) + 256, cd[132], mem[mem[64] + 224 len (32 * ('cd', 68).length) + (32 * mem[(32 * ('cd', 68).length) + 128]) + 64]
        else:
            s = 0
            idx = 128
            while (32 * ('cd', 68).length) + 128 > idx:
                address(stor5[cd[36]][s + 3].field_0) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
            while stor5[cd[36]].field_768 > idx:
                stor5[cd[36]][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            stor5[cd[36]].field_1024 = ('cd', 100).length
            if not ('cd', 100).length:
                idx = 0
                while stor5[cd[36]].field_1024 > idx:
                    stor5[cd[36]][idx + 4].field_0 = 0
                    idx = idx + 1
                    continue 
                stor5[cd[36]].field_1280 = stor2
                stor5[cd[36]].field_1536 = cd[132]
                uint8(stor5[cd[36]].field_1792) = 0
                if not stor8.length:
                    stor8.length++
                    stor8[stor8.length].field_0 = cd[36]
                    if stor8.length < 1:
                        revert with 0, 17
                    stor7[cd[36]] = stor8.length - 1
                    stor6[msg.sender].field_0++
                    address(stor6[msg.sender][stor6[msg.sender].field_0].field_0) = msg.sender
                    address(stor6[msg.sender][stor6[msg.sender].field_0].field_256) = address(cd[4])
                    stor6[msg.sender][stor6[msg.sender].field_0].field_512 = cd[36]
                    stor6[msg.sender][stor6[msg.sender].field_0].field_768 = ('cd', 68).length
                    if not ('cd', 68).length:
                        idx = 0
                        while stor6[msg.sender][stor6[msg.sender].field_0].field_768 > idx:
                            stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = 128
                        while (32 * ('cd', 68).length) + 128 > idx:
                            address(stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0) = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
                        while stor6[msg.sender][stor6[msg.sender].field_0].field_768 > idx:
                            stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0 = 0
                            idx = idx + 1
                            continue 
                    stor6[msg.sender][stor6[msg.sender].field_0].field_1024 = ('cd', 100).length
                    if not ('cd', 100).length:
                        idx = 0
                        while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                            stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * ('cd', 68).length) + 160
                        while (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 > idx:
                            stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                        while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                            stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                            idx = idx + 1
                            continue 
                    stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                    stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                    uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                    idx = 0
                    s = 128
                    t = mem[64] + 256
                    while idx < ('cd', 68).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 160] = (32 * ('cd', 68).length) + 256
                    mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[(32 * ('cd', 68).length) + 128]
                    mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                    emit 0xf2ea5bab: mem[mem[64] len 160], (32 * ('cd', 68).length) + 256, cd[132], mem[mem[64] + 224 len (32 * ('cd', 68).length) + (32 * mem[(32 * ('cd', 68).length) + 128]) + 64]
                else:
                    if stor7[cd[36]] >= stor8.length:
                        revert with 0, 50
                    if stor8[stor7[cd[36]]].field_0 == cd[36]:
                        revert with 0, 'UInt256Set: key already exists in the set.'
                    stor8.length++
                    stor8[stor8.length].field_0 = cd[36]
                    if stor8.length < 1:
                        revert with 0, 17
                    stor7[cd[36]] = stor8.length - 1
                    stor6[msg.sender].field_0++
                    address(stor6[msg.sender][stor6[msg.sender].field_0].field_0) = msg.sender
                    address(stor6[msg.sender][stor6[msg.sender].field_0].field_256) = address(cd[4])
                    stor6[msg.sender][stor6[msg.sender].field_0].field_512 = cd[36]
                    stor6[msg.sender][stor6[msg.sender].field_0].field_768 = ('cd', 68).length
                    if not ('cd', 68).length:
                        idx = 0
                        while stor6[msg.sender][stor6[msg.sender].field_0].field_768 > idx:
                            stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor6[msg.sender][stor6[msg.sender].field_0].field_1024 = ('cd', 100).length
                        if not ('cd', 100).length:
                            idx = 0
                            while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                                stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                            uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                            idx = 0
                            s = 128
                            t = mem[64] + 256
                            while idx < ('cd', 68).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 160] = (32 * ('cd', 68).length) + 256
                            mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[(32 * ('cd', 68).length) + 128]
                            mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                            emit 0xf2ea5bab: mem[mem[64] len 160], (32 * ('cd', 68).length) + 256, cd[132], mem[mem[64] + 224 len (32 * ('cd', 68).length) + (32 * mem[(32 * ('cd', 68).length) + 128]) + 64]
                        else:
                            s = 0
                            idx = (32 * ('cd', 68).length) + 160
                            while (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 > idx:
                                stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                            while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                                stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                            uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                            idx = 0
                            s = 128
                            t = mem[64] + 256
                            while idx < ('cd', 68).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 576] = (32 * ('cd', 68).length) + 256
                            mem[(64 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 672] = mem[(32 * ('cd', 68).length) + 128]
                            mem[(64 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 704 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 608] = cd[132]
                            emit 0xf2ea5bab: mem[mem[64] len (64 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 68).length) + 128]) + -mem[64] + 704]
                    else:
                        s = 0
                        idx = 128
                        while (32 * ('cd', 68).length) + 128 > idx:
                            address(stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0) = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
                        while stor6[msg.sender][stor6[msg.sender].field_0].field_768 > idx:
                            stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor6[msg.sender][stor6[msg.sender].field_0].field_1024 = ('cd', 100).length
                        if not ('cd', 100).length:
                            idx = 0
                            while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                                stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = (32 * ('cd', 68).length) + 160
                            while (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 > idx:
                                stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                            while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                                stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                                idx = idx + 1
                                continue 
                        stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                        stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                        uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                        idx = 0
                        s = 128
                        t = mem[64] + 256
                        while idx < ('cd', 68).length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 160] = (32 * ('cd', 68).length) + 256
                        mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[(32 * ('cd', 68).length) + 128]
                        mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                        emit 0xf2ea5bab: mem[mem[64] len 160], (32 * ('cd', 68).length) + 256, cd[132], mem[mem[64] + 224 len (32 * ('cd', 68).length) + (32 * mem[(32 * ('cd', 68).length) + 128]) + 64]
            else:
                s = 0
                idx = (32 * ('cd', 68).length) + 160
                while (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 > idx:
                    stor5[cd[36]][s + 4].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                while stor5[cd[36]].field_1024 > idx:
                    stor5[cd[36]][idx + 4].field_0 = 0
                    idx = idx + 1
                    continue 
                stor5[cd[36]].field_1280 = stor2
                stor5[cd[36]].field_1536 = cd[132]
                uint8(stor5[cd[36]].field_1792) = 0
                if stor8.length:
                    if stor7[cd[36]] >= stor8.length:
                        revert with 0, 50
                    if stor8[stor7[cd[36]]].field_0 == cd[36]:
                        revert with 0, 'UInt256Set: key already exists in the set.'
                stor8.length++
                stor8[stor8.length].field_0 = cd[36]
                if stor8.length < 1:
                    revert with 0, 17
                stor7[cd[36]] = stor8.length - 1
                stor6[msg.sender].field_0++
                address(stor6[msg.sender][stor6[msg.sender].field_0].field_0) = msg.sender
                address(stor6[msg.sender][stor6[msg.sender].field_0].field_256) = address(cd[4])
                stor6[msg.sender][stor6[msg.sender].field_0].field_512 = cd[36]
                stor6[msg.sender][stor6[msg.sender].field_0].field_768 = ('cd', 68).length
                if not ('cd', 68).length:
                    idx = 0
                    while stor6[msg.sender][stor6[msg.sender].field_0].field_768 > idx:
                        stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 128
                    while (32 * ('cd', 68).length) + 128 > idx:
                        address(stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0) = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
                    while stor6[msg.sender][stor6[msg.sender].field_0].field_768 > idx:
                        stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0 = 0
                        idx = idx + 1
                        continue 
                stor6[msg.sender][stor6[msg.sender].field_0].field_1024 = ('cd', 100).length
                if not ('cd', 100).length:
                    idx = 0
                    while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                        stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * ('cd', 68).length) + 160
                    while (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 > idx:
                        stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                    while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                        stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                        idx = idx + 1
                        continue 
                stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                idx = 0
                s = 128
                t = mem[64] + 256
                while idx < ('cd', 68).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 160] = (32 * ('cd', 68).length) + 256
                mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                emit 0xf2ea5bab: mem[mem[64] len 160], (32 * ('cd', 68).length) + 256, cd[132], mem[mem[64] + 224 len (32 * ('cd', 68).length) + (32 * mem[(32 * ('cd', 68).length) + 128]) + 64]
    else:
        if stor7[cd[36]] >= stor8.length:
            revert with 0, 50
        if stor8[stor7[cd[36]]].field_0 == cd[36]:
            revert with 0, 'gem already registered'
        if ('cd', 100).length > ('cd', 68).length:
            revert with 0, 'too many gems'
        if msg.value < stor2:
            revert with 0, 'insufficient listing fee'
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 164] = msg.sender
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 196] = cd[36]
        require ext_code.size(stor4)
        staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, cd[36]
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != 1:
            revert with 0, 'insufficient gem balance'
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 164] = cd[36]
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).tokenType(uint256 arg1) with:
                gas gas_remaining wei
               args cd[36]
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] < 3
        if ext_call.return_data[0] > 2:
            revert with 0, 33
        if ext_call.return_data[0] != 2:
            revert with 0, 'invalid token type'
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 164] = msg.sender
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 196] = cd[36]
        require ext_code.size(stor4)
        staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, cd[36]
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 1:
            revert with 0, 'insufficient gem balance'
        mem[64] = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 160] = msg.sender
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 192] = address(cd[4])
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 224] = cd[36]
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 256] = 96
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 288] = (32 * ('cd', 68).length) + 128
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 320] = stor2
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 352] = cd[132]
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 384] = 0
        address(stor5[cd[36]].field_0) = msg.sender
        address(stor5[cd[36]].field_256) = address(cd[4])
        stor5[cd[36]].field_512 = cd[36]
        stor5[cd[36]].field_768 = ('cd', 68).length
        if not ('cd', 68).length:
            idx = 0
            while stor5[cd[36]].field_768 > idx:
                stor5[cd[36]][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            stor5[cd[36]].field_1024 = ('cd', 100).length
            if not ('cd', 100).length:
                idx = 0
                while stor5[cd[36]].field_1024 > idx:
                    stor5[cd[36]][idx + 4].field_0 = 0
                    idx = idx + 1
                    continue 
                stor5[cd[36]].field_1280 = stor2
                stor5[cd[36]].field_1536 = cd[132]
                uint8(stor5[cd[36]].field_1792) = 0
                if not stor8.length:
                    stor8.length++
                    stor8[stor8.length].field_0 = cd[36]
                    if stor8.length < 1:
                        revert with 0, 17
                    stor7[cd[36]] = stor8.length - 1
                    stor6[msg.sender].field_0++
                    address(stor6[msg.sender][stor6[msg.sender].field_0].field_0) = msg.sender
                    address(stor6[msg.sender][stor6[msg.sender].field_0].field_256) = address(cd[4])
                    stor6[msg.sender][stor6[msg.sender].field_0].field_512 = cd[36]
                    stor6[msg.sender][stor6[msg.sender].field_0].field_768 = ('cd', 68).length
                    if not ('cd', 68).length:
                        idx = 0
                        while stor6[msg.sender][stor6[msg.sender].field_0].field_768 > idx:
                            stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor6[msg.sender][stor6[msg.sender].field_0].field_1024 = ('cd', 100).length
                        if not ('cd', 100).length:
                            idx = 0
                            while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                                stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                            uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                            idx = 0
                            s = 128
                            t = mem[64] + 256
                            while idx < ('cd', 68).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 160] = (32 * ('cd', 68).length) + 256
                            mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[(32 * ('cd', 68).length) + 128]
                            mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                            var119001 = mem[(32 * ('cd', 68).length) + 128]
                            emit 0xf2ea5bab: mem[mem[64] len 160], (32 * ('cd', 68).length) + 256, cd[132], mem[mem[64] + 224 len (32 * ('cd', 68).length) + (32 * mem[(32 * ('cd', 68).length) + 128]) + 64]
                        else:
                            s = 0
                            idx = (32 * ('cd', 68).length) + 160
                            while (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 > idx:
                                stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                            while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                                stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                            uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                            idx = 0
                            s = 128
                            t = mem[64] + 256
                            while idx < ('cd', 68).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 576] = (32 * ('cd', 68).length) + 256
                            mem[(64 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 672] = mem[(32 * ('cd', 68).length) + 128]
                            mem[(64 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 704 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 608] = cd[132]
                            emit 0xf2ea5bab: mem[mem[64] len (64 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 68).length) + 128]) + -mem[64] + 704]
                    else:
                        s = 0
                        idx = 128
                        while (32 * ('cd', 68).length) + 128 > idx:
                            address(stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0) = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
                        while stor6[msg.sender][stor6[msg.sender].field_0].field_768 > idx:
                            stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor6[msg.sender][stor6[msg.sender].field_0].field_1024 = ('cd', 100).length
                        if not ('cd', 100).length:
                            idx = 0
                            while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                                stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                            uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                            idx = 0
                            s = 128
                            t = mem[64] + 256
                            while idx < ('cd', 68).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 160] = (32 * ('cd', 68).length) + 256
                            mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[(32 * ('cd', 68).length) + 128]
                            mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                            emit 0xf2ea5bab: mem[mem[64] len 160], (32 * ('cd', 68).length) + 256, cd[132], mem[mem[64] + 224 len (32 * ('cd', 68).length) + (32 * mem[(32 * ('cd', 68).length) + 128]) + 64]
                        else:
                            s = 0
                            idx = (32 * ('cd', 68).length) + 160
                            while (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 > idx:
                                stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                            while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                                stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                            uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                            idx = 0
                            s = 128
                            t = mem[64] + 256
                            while idx < ('cd', 68).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 576] = (32 * ('cd', 68).length) + 256
                            mem[(64 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 672] = mem[(32 * ('cd', 68).length) + 128]
                            mem[(64 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 704 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 608] = cd[132]
                            emit 0xf2ea5bab: mem[mem[64] len (64 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 68).length) + 128]) + -mem[64] + 704]
                else:
                    if stor7[cd[36]] >= stor8.length:
                        revert with 0, 50
                    if stor8[stor7[cd[36]]].field_0 == cd[36]:
                        revert with 0, 'UInt256Set: key already exists in the set.'
                    stor8.length++
                    stor8[stor8.length].field_0 = cd[36]
                    if stor8.length < 1:
                        revert with 0, 17
                    stor7[cd[36]] = stor8.length - 1
                    stor6[msg.sender].field_0++
                    address(stor6[msg.sender][stor6[msg.sender].field_0].field_0) = msg.sender
                    address(stor6[msg.sender][stor6[msg.sender].field_0].field_256) = address(cd[4])
                    stor6[msg.sender][stor6[msg.sender].field_0].field_512 = cd[36]
                    stor6[msg.sender][stor6[msg.sender].field_0].field_768 = ('cd', 68).length
                    if not ('cd', 68).length:
                        idx = 0
                        while stor6[msg.sender][stor6[msg.sender].field_0].field_768 > idx:
                            stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor6[msg.sender][stor6[msg.sender].field_0].field_1024 = ('cd', 100).length
                        if not ('cd', 100).length:
                            idx = 0
                            while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                                stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                            uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                            idx = 0
                            s = 128
                            t = mem[64] + 256
                            while idx < ('cd', 68).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 160] = (32 * ('cd', 68).length) + 256
                            mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[(32 * ('cd', 68).length) + 128]
                            mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                            var119001 = mem[(32 * ('cd', 68).length) + 128]
                        else:
                            s = 0
                            idx = (32 * ('cd', 68).length) + 160
                            while (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 > idx:
                                stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                            while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                                stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                            uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                            idx = 0
                            s = 128
                            t = mem[64] + 256
                            while idx < ('cd', 68).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 160] = (32 * ('cd', 68).length) + 256
                            mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[(32 * ('cd', 68).length) + 128]
                            mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                        emit 0xf2ea5bab: mem[mem[64] len 160], (32 * ('cd', 68).length) + 256, cd[132], mem[mem[64] + 224 len (32 * ('cd', 68).length) + (32 * mem[(32 * ('cd', 68).length) + 128]) + 64]
                    else:
                        s = 0
                        idx = 128
                        while (32 * ('cd', 68).length) + 128 > idx:
                            address(stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0) = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
                        while stor6[msg.sender][stor6[msg.sender].field_0].field_768 > idx:
                            stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor6[msg.sender][stor6[msg.sender].field_0].field_1024 = ('cd', 100).length
                        if not ('cd', 100).length:
                            idx = 0
                            while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                                stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                            uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                            idx = 0
                            s = 128
                            t = mem[64] + 256
                            while idx < ('cd', 68).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 160] = (32 * ('cd', 68).length) + 256
                            mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[(32 * ('cd', 68).length) + 128]
                            mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                            emit 0xf2ea5bab: mem[mem[64] len 160], (32 * ('cd', 68).length) + 256, cd[132], mem[mem[64] + 224 len (32 * ('cd', 68).length) + (32 * mem[(32 * ('cd', 68).length) + 128]) + 64]
                        else:
                            s = 0
                            idx = (32 * ('cd', 68).length) + 160
                            while (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 > idx:
                                stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                            while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                                stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                            uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                            idx = 0
                            s = 128
                            t = mem[64] + 256
                            while idx < ('cd', 68).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 576] = (32 * ('cd', 68).length) + 256
                            mem[(64 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 672] = mem[(32 * ('cd', 68).length) + 128]
                            mem[(64 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 704 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 608] = cd[132]
                            emit 0xf2ea5bab: mem[mem[64] len (64 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 68).length) + 128]) + -mem[64] + 704]
            else:
                s = 0
                idx = (32 * ('cd', 68).length) + 160
                while (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 > idx:
                    stor5[cd[36]][s + 4].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                while stor5[cd[36]].field_1024 > idx:
                    stor5[cd[36]][idx + 4].field_0 = 0
                    idx = idx + 1
                    continue 
                stor5[cd[36]].field_1280 = stor2
                stor5[cd[36]].field_1536 = cd[132]
                uint8(stor5[cd[36]].field_1792) = 0
                if not stor8.length:
                    stor8.length++
                    stor8[stor8.length].field_0 = cd[36]
                    if stor8.length < 1:
                        revert with 0, 17
                    stor7[cd[36]] = stor8.length - 1
                    stor6[msg.sender].field_0++
                    address(stor6[msg.sender][stor6[msg.sender].field_0].field_0) = msg.sender
                    address(stor6[msg.sender][stor6[msg.sender].field_0].field_256) = address(cd[4])
                    stor6[msg.sender][stor6[msg.sender].field_0].field_512 = cd[36]
                    stor6[msg.sender][stor6[msg.sender].field_0].field_768 = ('cd', 68).length
                    if not ('cd', 68).length:
                        idx = 0
                        while stor6[msg.sender][stor6[msg.sender].field_0].field_768 > idx:
                            stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = 128
                        while (32 * ('cd', 68).length) + 128 > idx:
                            address(stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0) = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
                        while stor6[msg.sender][stor6[msg.sender].field_0].field_768 > idx:
                            stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0 = 0
                            idx = idx + 1
                            continue 
                    stor6[msg.sender][stor6[msg.sender].field_0].field_1024 = ('cd', 100).length
                    if not ('cd', 100).length:
                        idx = 0
                        while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                            stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * ('cd', 68).length) + 160
                        while (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 > idx:
                            stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                        while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                            stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                            idx = idx + 1
                            continue 
                    stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                    stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                    uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                    idx = 0
                    s = 128
                    t = mem[64] + 256
                    while idx < ('cd', 68).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 160] = (32 * ('cd', 68).length) + 256
                    mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[(32 * ('cd', 68).length) + 128]
                    mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                    emit 0xf2ea5bab: mem[mem[64] len 160], (32 * ('cd', 68).length) + 256, cd[132], mem[mem[64] + 224 len (32 * ('cd', 68).length) + (32 * mem[(32 * ('cd', 68).length) + 128]) + 64]
                else:
                    if stor7[cd[36]] >= stor8.length:
                        revert with 0, 50
                    if stor8[stor7[cd[36]]].field_0 == cd[36]:
                        revert with 0, 'UInt256Set: key already exists in the set.'
                    stor8.length++
                    stor8[stor8.length].field_0 = cd[36]
                    if stor8.length < 1:
                        revert with 0, 17
                    stor7[cd[36]] = stor8.length - 1
                    stor6[msg.sender].field_0++
                    address(stor6[msg.sender][stor6[msg.sender].field_0].field_0) = msg.sender
                    address(stor6[msg.sender][stor6[msg.sender].field_0].field_256) = address(cd[4])
                    stor6[msg.sender][stor6[msg.sender].field_0].field_512 = cd[36]
                    stor6[msg.sender][stor6[msg.sender].field_0].field_768 = ('cd', 68).length
                    if not ('cd', 68).length:
                        idx = 0
                        while stor6[msg.sender][stor6[msg.sender].field_0].field_768 > idx:
                            stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor6[msg.sender][stor6[msg.sender].field_0].field_1024 = ('cd', 100).length
                        if not ('cd', 100).length:
                            idx = 0
                            while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                                stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                            uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                            idx = 0
                            s = 128
                            t = mem[64] + 256
                            while idx < ('cd', 68).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 576] = (32 * ('cd', 68).length) + 256
                            mem[(64 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 672] = mem[(32 * ('cd', 68).length) + 128]
                            mem[(64 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 704 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 608] = cd[132]
                            emit 0xf2ea5bab: mem[mem[64] len (64 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 68).length) + 128]) + -mem[64] + 704]
                        else:
                            s = 0
                            idx = (32 * ('cd', 68).length) + 160
                            while (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 > idx:
                                stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                            while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                                stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                            uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                            idx = 0
                            s = 128
                            t = mem[64] + 256
                            while idx < ('cd', 68).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 160] = (32 * ('cd', 68).length) + 256
                            mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[(32 * ('cd', 68).length) + 128]
                            mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                            emit 0xf2ea5bab: mem[mem[64] len 160], (32 * ('cd', 68).length) + 256, cd[132], mem[mem[64] + 224 len (32 * ('cd', 68).length) + (32 * mem[(32 * ('cd', 68).length) + 128]) + 64]
                    else:
                        s = 0
                        idx = 128
                        while (32 * ('cd', 68).length) + 128 > idx:
                            address(stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0) = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
                        while stor6[msg.sender][stor6[msg.sender].field_0].field_768 > idx:
                            stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor6[msg.sender][stor6[msg.sender].field_0].field_1024 = ('cd', 100).length
                        if not ('cd', 100).length:
                            idx = 0
                            while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                                stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = (32 * ('cd', 68).length) + 160
                            while (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 > idx:
                                stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                            while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                                stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                                idx = idx + 1
                                continue 
                        stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                        stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                        uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                        idx = 0
                        s = 128
                        t = mem[64] + 256
                        while idx < ('cd', 68).length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 160] = (32 * ('cd', 68).length) + 256
                        mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[(32 * ('cd', 68).length) + 128]
                        mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                        emit 0xf2ea5bab: mem[mem[64] len 160], (32 * ('cd', 68).length) + 256, cd[132], mem[mem[64] + 224 len (32 * ('cd', 68).length) + (32 * mem[(32 * ('cd', 68).length) + 128]) + 64]
        else:
            s = 0
            idx = 128
            while (32 * ('cd', 68).length) + 128 > idx:
                address(stor5[cd[36]][s + 3].field_0) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
            while stor5[cd[36]].field_768 > idx:
                stor5[cd[36]][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            stor5[cd[36]].field_1024 = ('cd', 100).length
            if not ('cd', 100).length:
                idx = 0
                while stor5[cd[36]].field_1024 > idx:
                    stor5[cd[36]][idx + 4].field_0 = 0
                    idx = idx + 1
                    continue 
                stor5[cd[36]].field_1280 = stor2
                stor5[cd[36]].field_1536 = cd[132]
                uint8(stor5[cd[36]].field_1792) = 0
                if not stor8.length:
                    stor8.length++
                    stor8[stor8.length].field_0 = cd[36]
                    if stor8.length < 1:
                        revert with 0, 17
                    stor7[cd[36]] = stor8.length - 1
                    stor6[msg.sender].field_0++
                    address(stor6[msg.sender][stor6[msg.sender].field_0].field_0) = msg.sender
                    address(stor6[msg.sender][stor6[msg.sender].field_0].field_256) = address(cd[4])
                    stor6[msg.sender][stor6[msg.sender].field_0].field_512 = cd[36]
                    stor6[msg.sender][stor6[msg.sender].field_0].field_768 = ('cd', 68).length
                    if not ('cd', 68).length:
                        idx = 0
                        while stor6[msg.sender][stor6[msg.sender].field_0].field_768 > idx:
                            stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor6[msg.sender][stor6[msg.sender].field_0].field_1024 = ('cd', 100).length
                        if not ('cd', 100).length:
                            idx = 0
                            while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                                stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                            uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                            idx = 0
                            s = 128
                            t = mem[64] + 256
                            while idx < ('cd', 68).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 160] = (32 * ('cd', 68).length) + 256
                            mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[(32 * ('cd', 68).length) + 128]
                            mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                            emit 0xf2ea5bab: mem[mem[64] len 160], (32 * ('cd', 68).length) + 256, cd[132], mem[mem[64] + 224 len (32 * ('cd', 68).length) + (32 * mem[(32 * ('cd', 68).length) + 128]) + 64]
                        else:
                            s = 0
                            idx = (32 * ('cd', 68).length) + 160
                            while (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 > idx:
                                stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                            while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                                stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                            uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                            idx = 0
                            s = 128
                            t = mem[64] + 256
                            while idx < ('cd', 68).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 576] = (32 * ('cd', 68).length) + 256
                            mem[(64 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 672] = mem[(32 * ('cd', 68).length) + 128]
                            mem[(64 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 704 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 608] = cd[132]
                            emit 0xf2ea5bab: mem[mem[64] len (64 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 68).length) + 128]) + -mem[64] + 704]
                    else:
                        s = 0
                        idx = 128
                        while (32 * ('cd', 68).length) + 128 > idx:
                            address(stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0) = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
                        while stor6[msg.sender][stor6[msg.sender].field_0].field_768 > idx:
                            stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor6[msg.sender][stor6[msg.sender].field_0].field_1024 = ('cd', 100).length
                        if not ('cd', 100).length:
                            idx = 0
                            while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                                stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = (32 * ('cd', 68).length) + 160
                            while (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 > idx:
                                stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                            while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                                stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                                idx = idx + 1
                                continue 
                        stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                        stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                        uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                        idx = 0
                        s = 128
                        t = mem[64] + 256
                        while idx < ('cd', 68).length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 160] = (32 * ('cd', 68).length) + 256
                        mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[(32 * ('cd', 68).length) + 128]
                        mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                        emit 0xf2ea5bab: mem[mem[64] len 160], (32 * ('cd', 68).length) + 256, cd[132], mem[mem[64] + 224 len (32 * ('cd', 68).length) + (32 * mem[(32 * ('cd', 68).length) + 128]) + 64]
                else:
                    if stor7[cd[36]] >= stor8.length:
                        revert with 0, 50
                    if stor8[stor7[cd[36]]].field_0 == cd[36]:
                        revert with 0, 'UInt256Set: key already exists in the set.'
                    stor8.length++
                    stor8[stor8.length].field_0 = cd[36]
                    if stor8.length < 1:
                        revert with 0, 17
                    stor7[cd[36]] = stor8.length - 1
                    stor6[msg.sender].field_0++
                    address(stor6[msg.sender][stor6[msg.sender].field_0].field_0) = msg.sender
                    address(stor6[msg.sender][stor6[msg.sender].field_0].field_256) = address(cd[4])
                    stor6[msg.sender][stor6[msg.sender].field_0].field_512 = cd[36]
                    stor6[msg.sender][stor6[msg.sender].field_0].field_768 = ('cd', 68).length
                    if not ('cd', 68).length:
                        idx = 0
                        while stor6[msg.sender][stor6[msg.sender].field_0].field_768 > idx:
                            stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor6[msg.sender][stor6[msg.sender].field_0].field_1024 = ('cd', 100).length
                        if not ('cd', 100).length:
                            idx = 0
                            while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                                stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = (32 * ('cd', 68).length) + 160
                            while (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 > idx:
                                stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                            while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                                stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                                idx = idx + 1
                                continue 
                        stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                        stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                        uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                        idx = 0
                        s = 128
                        t = mem[64] + 256
                        while idx < ('cd', 68).length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 160] = (32 * ('cd', 68).length) + 256
                        mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[(32 * ('cd', 68).length) + 128]
                        mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                        emit 0xf2ea5bab: mem[mem[64] len 160], (32 * ('cd', 68).length) + 256, cd[132], mem[mem[64] + 224 len (32 * ('cd', 68).length) + (32 * mem[(32 * ('cd', 68).length) + 128]) + 64]
                    else:
                        s = 0
                        idx = 128
                        while (32 * ('cd', 68).length) + 128 > idx:
                            address(stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0) = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
                        while stor6[msg.sender][stor6[msg.sender].field_0].field_768 > idx:
                            stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor6[msg.sender][stor6[msg.sender].field_0].field_1024 = ('cd', 100).length
                        if not ('cd', 100).length:
                            idx = 0
                            while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                                stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                            uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                            idx = 0
                            s = 128
                            t = mem[64] + 256
                            while idx < ('cd', 68).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 576] = (32 * ('cd', 68).length) + 256
                            mem[(64 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 672] = mem[(32 * ('cd', 68).length) + 128]
                            mem[(64 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 704 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 608] = cd[132]
                            emit 0xf2ea5bab: mem[mem[64] len (64 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 68).length) + 128]) + -mem[64] + 704]
                        else:
                            s = 0
                            idx = (32 * ('cd', 68).length) + 160
                            while (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 > idx:
                                stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                            while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                                stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                            stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                            uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                            idx = 0
                            s = 128
                            t = mem[64] + 256
                            while idx < ('cd', 68).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 160] = (32 * ('cd', 68).length) + 256
                            mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[(32 * ('cd', 68).length) + 128]
                            mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                            emit 0xf2ea5bab: mem[mem[64] len 160], (32 * ('cd', 68).length) + 256, cd[132], mem[mem[64] + 224 len (32 * ('cd', 68).length) + (32 * mem[(32 * ('cd', 68).length) + 128]) + 64]
            else:
                s = 0
                idx = (32 * ('cd', 68).length) + 160
                while (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 > idx:
                    stor5[cd[36]][s + 4].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                while stor5[cd[36]].field_1024 > idx:
                    stor5[cd[36]][idx + 4].field_0 = 0
                    idx = idx + 1
                    continue 
                stor5[cd[36]].field_1280 = stor2
                stor5[cd[36]].field_1536 = cd[132]
                uint8(stor5[cd[36]].field_1792) = 0
                if stor8.length:
                    if stor7[cd[36]] >= stor8.length:
                        revert with 0, 50
                    if stor8[stor7[cd[36]]].field_0 == cd[36]:
                        revert with 0, 'UInt256Set: key already exists in the set.'
                stor8.length++
                stor8[stor8.length].field_0 = cd[36]
                if stor8.length < 1:
                    revert with 0, 17
                stor7[cd[36]] = stor8.length - 1
                stor6[msg.sender].field_0++
                address(stor6[msg.sender][stor6[msg.sender].field_0].field_0) = msg.sender
                address(stor6[msg.sender][stor6[msg.sender].field_0].field_256) = address(cd[4])
                stor6[msg.sender][stor6[msg.sender].field_0].field_512 = cd[36]
                stor6[msg.sender][stor6[msg.sender].field_0].field_768 = ('cd', 68).length
                if not ('cd', 68).length:
                    idx = 0
                    while stor6[msg.sender][stor6[msg.sender].field_0].field_768 > idx:
                        stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 128
                    while (32 * ('cd', 68).length) + 128 > idx:
                        address(stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0) = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
                    while stor6[msg.sender][stor6[msg.sender].field_0].field_768 > idx:
                        stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 3)].field_0 = 0
                        idx = idx + 1
                        continue 
                stor6[msg.sender][stor6[msg.sender].field_0].field_1024 = ('cd', 100).length
                if not ('cd', 100).length:
                    idx = 0
                    while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                        stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * ('cd', 68).length) + 160
                    while (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 > idx:
                        stor[s + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                    while stor6[msg.sender][stor6[msg.sender].field_0].field_1024 > idx:
                        stor[idx + sha3((8 * stor6[msg.sender].field_0) + ('map', 'msg.sender', ('name', 'stor6', 6)) + 4)].field_0 = 0
                        idx = idx + 1
                        continue 
                stor6[msg.sender][stor6[msg.sender].field_0].field_1280 = stor2
                stor6[msg.sender][stor6[msg.sender].field_0].field_1536 = cd[132]
                uint8(stor6[msg.sender][stor6[msg.sender].field_0].field_1792) = 0
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 416] = msg.sender
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 448] = cd[36]
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 544] = 224
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 640] = ('cd', 68).length
                idx = 0
                s = 128
                t = mem[64] + 256
                while idx < ('cd', 68).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 160] = (32 * ('cd', 68).length) + 256
                mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * mem[(32 * ('cd', 68).length) + 128]] = mem[(32 * ('cd', 68).length) + 160 len 32 * mem[(32 * ('cd', 68).length) + 128]]
                emit 0xf2ea5bab: mem[mem[64] len 160], (32 * ('cd', 68).length) + 256, cd[132], mem[mem[64] + 224 len (32 * ('cd', 68).length) + (32 * mem[(32 * ('cd', 68).length) + 128]) + 64]
    return cd[36]
}

function sub_31983366(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 128 < 96 or (32 * ('cd', 36).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not stor8.length:
        revert with 0, 'offer not registered'
    if stor7[cd[4]] >= stor8.length:
        revert with 0, 50
    if stor8[stor7[cd[4]]].field_0 != cd[4]:
        revert with 0, 'offer not registered'
    if ('cd', 36).length > stor5[cd[4]].field_1024:
        revert with 0, 'too many gems'
    if msg.value < stor3:
        revert with 0, 'insufficient accept fee'
    mem[0] = cd[4]
    mem[32] = 5
    mem[(32 * ('cd', 36).length) + 128] = address(stor5[cd[4]].field_0)
    mem[(32 * ('cd', 36).length) + 160] = address(stor5[cd[4]].field_256)
    mem[(32 * ('cd', 36).length) + 192] = stor5[cd[4]].field_512
    mem[(32 * ('cd', 36).length) + 384] = stor5[cd[4]].field_768
    if not stor5[cd[4]].field_768:
        mem[(32 * ('cd', 36).length) + 224] = (32 * ('cd', 36).length) + 384
        mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + 416] = stor5[cd[4]].field_1024
        if not stor5[cd[4]].field_1024:
            mem[(32 * ('cd', 36).length) + 256] = (32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + 416
            mem[(32 * ('cd', 36).length) + 288] = stor5[cd[4]].field_1280
            mem[(32 * ('cd', 36).length) + 320] = stor5[cd[4]].field_1536
            mem[(32 * ('cd', 36).length) + 352] = bool(uint8(stor5[cd[4]].field_1792))
            if ('cd', 36).length > test266151307():
                revert with 0, 65
            mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448] = ('cd', 36).length
            mem[64] = (64 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 480
            if not ('cd', 36).length:
                idx = 0
                while idx < stor5[cd[4]].field_768:
                    if idx >= mem[mem[(32 * ('cd', 36).length) + 224]]:
                        revert with 0, 50
                    _536 = mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 224] + 32]
                    if mem[mem[(32 * ('cd', 36).length) + 256]] <= idx:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _556 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _556
                        require ext_code.size(stor4)
                        staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args msg.sender, _556
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _583 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_583] < 1:
                            revert with 0, 'insufficient gem balance'
                        mem[mem[64] + 4] = _556
                        require ext_code.size(address(_536))
                        staticcall address(_536).tokenType(uint256 arg1) with:
                                gas gas_remaining wei
                               args _556
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _631 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_631] < 3
                        if mem[_631] > 2:
                            revert with 0, 33
                        if mem[_631] != 2:
                            revert with 0, 'invalid token type'
                    else:
                        if idx >= mem[mem[(32 * ('cd', 36).length) + 256]]:
                            revert with 0, 50
                        _548 = mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 256] + 32]
                        if idx >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 256] + 32]:
                            mem[(32 * idx) + 128] = mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 256] + 32]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _548
                            require ext_code.size(stor4)
                            staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, _548
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _587 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_587] < 1:
                                revert with 0, 'insufficient gem balance'
                            mem[mem[64] + 4] = _548
                            require ext_code.size(address(_536))
                            staticcall address(_536).tokenType(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _548
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _634 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_634] < 3
                            if mem[_634] > 2:
                                revert with 0, 33
                            if mem[_634] != 2:
                                revert with 0, 'invalid token type'
                        else:
                            _561 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _561
                            require ext_code.size(stor4)
                            staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, _561
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _588 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_588] < 1:
                                revert with 0, 'insufficient gem balance'
                            mem[mem[64] + 4] = _561
                            require ext_code.size(address(_536))
                            staticcall address(_536).tokenType(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _561
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _635 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_635] < 3
                            if mem[_635] > 2:
                                revert with 0, 33
                            if mem[_635] != 2:
                                revert with 0, 'invalid token type'
                    if idx >= mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 480] = 1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _527 = mem[(32 * ('cd', 36).length) + 192]
                mem[mem[64] + 4] = mem[(32 * ('cd', 36).length) + 140 len 20]
                mem[mem[64] + 36] = _527
                require ext_code.size(stor4)
                staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], _527
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _550 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_550]:
                    call msg.sender with:
                       value stor3 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        return 0
                _570 = mem[(32 * ('cd', 36).length) + 128]
                mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(_570)
                mem[mem[64] + 68] = 160
                _582 = mem[96]
                mem[mem[64] + 164] = mem[96]
                mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 100] = (32 * mem[96]) + 192
                _770 = mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448]
                mem[mem[64] + (32 * mem[96]) + 196] = mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448]
                mem[mem[64] + (32 * mem[96]) + 228 len 32 * _770] = mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 480 len 32 * _770]
                mem[mem[64] + 132] = (32 * mem[96]) + (32 * _770) + 224
                mem[mem[64] + (32 * mem[96]) + (32 * _770) + 228] = 0
                require ext_code.size(stor4)
                call stor4.safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(_570), 160, mem[mem[64] + 100], (32 * _582) + (32 * _770) + 224, mem[mem[64] + 164 len (32 * _582) + (32 * _770) + 64], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1417 = mem[(32 * ('cd', 36).length) + 192]
                mem[mem[64] + 4] = mem[(32 * ('cd', 36).length) + 140 len 20]
                mem[mem[64] + 68] = _1417
                mem[mem[64] + 100] = 1
                mem[mem[64] + 132] = 160
                mem[mem[64] + 164] = 0
                require ext_code.size(stor4)
                call stor4.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, _1417, 1, 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor8.length:
                    mem[32] = 5
                    address(stor5[cd[4]].field_0) = 0
                    address(stor5[cd[4]].field_256) = 0
                    stor5[cd[4]].field_512 = 0
                    stor5[cd[4]].field_768 = 0
                    idx = 0
                    while stor5[cd[4]].field_768 > idx:
                        stor5[cd[4]][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor5[cd[4]].field_1024 = 0
                    mem[0] = sha3(cd[4], 5) + 4
                    idx = 0
                    while stor5[cd[4]].field_1024 > idx:
                        stor5[cd[4]][idx + 4].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor5[cd[4]].field_1280 = 0
                    stor5[cd[4]].field_1536 = 0
                    uint8(stor5[cd[4]].field_1792) = 0
                    if stor3 > !stor2:
                        revert with 0, 17
                    if stor1.length > !(stor3 + stor2):
                        revert with 0, 17
                    stor1.length = stor1.length + stor3 + stor2
                    mem[mem[64]] = cd[4]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = 96
                    _2549 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    var92001 = _2549
                    emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _2549) + 32]
                else:
                    if stor7[cd[4]] >= stor8.length:
                        revert with 0, 50
                    if stor8[stor7[cd[4]]].field_0 != cd[4]:
                        mem[32] = 5
                        address(stor5[cd[4]].field_0) = 0
                        address(stor5[cd[4]].field_256) = 0
                        stor5[cd[4]].field_512 = 0
                        stor5[cd[4]].field_768 = 0
                        idx = 0
                        while stor5[cd[4]].field_768 > idx:
                            stor5[cd[4]][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor5[cd[4]].field_1024 = 0
                        mem[0] = sha3(cd[4], 5) + 4
                        idx = 0
                        while stor5[cd[4]].field_1024 > idx:
                            stor5[cd[4]][idx + 4].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor5[cd[4]].field_1280 = 0
                        stor5[cd[4]].field_1536 = 0
                        uint8(stor5[cd[4]].field_1792) = 0
                        if stor3 > !stor2:
                            revert with 0, 17
                        if stor1.length > !(stor3 + stor2):
                            revert with 0, 17
                        stor1.length = stor1.length + stor3 + stor2
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = 96
                        _2548 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        var92001 = _2548
                        emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _2548) + 32]
                    else:
                        if stor8.length < 1:
                            revert with 0, 17
                        if stor8.length - 1 == stor7[cd[4]]:
                            stor7[cd[4]] = 0
                            if stor8.length < 1:
                                revert with 0, 17
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor8[stor8.length].field_0 = 0
                            mem[32] = 5
                            address(stor5[cd[4]].field_0) = 0
                            address(stor5[cd[4]].field_256) = 0
                            stor5[cd[4]].field_512 = 0
                            stor5[cd[4]].field_768 = 0
                            idx = 0
                            while stor5[cd[4]].field_768 > idx:
                                stor5[cd[4]][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1024 = 0
                            mem[0] = sha3(cd[4], 5) + 4
                            idx = 0
                            while stor5[cd[4]].field_1024 > idx:
                                stor5[cd[4]][idx + 4].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1280 = 0
                            stor5[cd[4]].field_1536 = 0
                            uint8(stor5[cd[4]].field_1792) = 0
                            if stor3 > !stor2:
                                revert with 0, 17
                            if stor1.length > !(stor3 + stor2):
                                revert with 0, 17
                            stor1.length = stor1.length + stor3 + stor2
                            mem[mem[64]] = cd[4]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = 96
                            _2546 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _2546) + 32]
                        else:
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor7[stor8[stor8.length].field_0] = stor7[cd[4]]
                            if stor7[cd[4]] >= stor8.length:
                                revert with 0, 50
                            stor8[stor7[cd[4]]].field_0 = stor8[stor8.length].field_0
                            stor7[cd[4]] = 0
                            if stor8.length < 1:
                                revert with 0, 17
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor8[stor8.length].field_0 = 0
                            mem[32] = 5
                            address(stor5[cd[4]].field_0) = 0
                            address(stor5[cd[4]].field_256) = 0
                            stor5[cd[4]].field_512 = 0
                            stor5[cd[4]].field_768 = 0
                            idx = 0
                            while stor5[cd[4]].field_768 > idx:
                                stor5[cd[4]][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1024 = 0
                            mem[0] = sha3(cd[4], 5) + 4
                            idx = 0
                            while stor5[cd[4]].field_1024 > idx:
                                stor5[cd[4]][idx + 4].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1280 = 0
                            stor5[cd[4]].field_1536 = 0
                            uint8(stor5[cd[4]].field_1792) = 0
                            if stor3 > !stor2:
                                revert with 0, 17
                            if stor1.length > !(stor3 + stor2):
                                revert with 0, 17
                            stor1.length = stor1.length + stor3 + stor2
                            mem[mem[64]] = cd[4]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = 96
                            _2547 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _2547) + 32]
            else:
                mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 480 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                idx = 0
                while idx < stor5[cd[4]].field_768:
                    if idx >= mem[mem[(32 * ('cd', 36).length) + 224]]:
                        revert with 0, 50
                    _539 = mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 224] + 32]
                    if mem[mem[(32 * ('cd', 36).length) + 256]] <= idx:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _559 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _559
                        require ext_code.size(stor4)
                        staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args msg.sender, _559
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _585 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_585] < 1:
                            revert with 0, 'insufficient gem balance'
                        mem[mem[64] + 4] = _559
                        require ext_code.size(address(_539))
                        staticcall address(_539).tokenType(uint256 arg1) with:
                                gas gas_remaining wei
                               args _559
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _633 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_633] < 3
                        if mem[_633] > 2:
                            revert with 0, 33
                        if mem[_633] != 2:
                            revert with 0, 'invalid token type'
                    else:
                        if idx >= mem[mem[(32 * ('cd', 36).length) + 256]]:
                            revert with 0, 50
                        _549 = mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 256] + 32]
                        if idx >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 256] + 32]:
                            mem[(32 * idx) + 128] = mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 256] + 32]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _549
                            require ext_code.size(stor4)
                            staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, _549
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _590 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_590] < 1:
                                revert with 0, 'insufficient gem balance'
                            mem[mem[64] + 4] = _549
                            require ext_code.size(address(_539))
                            staticcall address(_539).tokenType(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _549
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _636 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_636] < 3
                            if mem[_636] > 2:
                                revert with 0, 33
                            if mem[_636] != 2:
                                revert with 0, 'invalid token type'
                        else:
                            _564 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _564
                            require ext_code.size(stor4)
                            staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, _564
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _591 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_591] < 1:
                                revert with 0, 'insufficient gem balance'
                            mem[mem[64] + 4] = _564
                            require ext_code.size(address(_539))
                            staticcall address(_539).tokenType(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _564
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _637 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_637] < 3
                            if mem[_637] > 2:
                                revert with 0, 33
                            if mem[_637] != 2:
                                revert with 0, 'invalid token type'
                    if idx >= mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 480] = 1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _532 = mem[(32 * ('cd', 36).length) + 192]
                mem[mem[64] + 4] = mem[(32 * ('cd', 36).length) + 140 len 20]
                mem[mem[64] + 36] = _532
                require ext_code.size(stor4)
                staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], _532
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _552 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_552]:
                    call msg.sender with:
                       value stor3 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        return 0
                _574 = mem[(32 * ('cd', 36).length) + 128]
                mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(_574)
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 100] = (32 * mem[96]) + 192
                _771 = mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448]
                mem[mem[64] + (32 * mem[96]) + 196] = mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448]
                mem[mem[64] + (32 * mem[96]) + 228 len 32 * _771] = mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 480 len 32 * _771]
                mem[mem[64] + 132] = (32 * mem[96]) + (32 * _771) + 224
                mem[mem[64] + (32 * mem[96]) + (32 * _771) + 228] = 0
                require ext_code.size(stor4)
                call stor4.safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(_574), 160, (32 * mem[96]) + 192, (32 * mem[96]) + (32 * _771) + 224, mem[96], mem[mem[64] + 196 len (32 * mem[96]) + (32 * _771) + 32], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1420 = mem[(32 * ('cd', 36).length) + 192]
                mem[mem[64] + 4] = mem[(32 * ('cd', 36).length) + 140 len 20]
                mem[mem[64] + 68] = _1420
                mem[mem[64] + 100] = 1
                mem[mem[64] + 132] = 160
                mem[mem[64] + 164] = 0
                require ext_code.size(stor4)
                call stor4.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, _1420, 1, 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor8.length:
                    mem[32] = 5
                    address(stor5[cd[4]].field_0) = 0
                    address(stor5[cd[4]].field_256) = 0
                    stor5[cd[4]].field_512 = 0
                    stor5[cd[4]].field_768 = 0
                    idx = 0
                    while stor5[cd[4]].field_768 > idx:
                        stor5[cd[4]][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor5[cd[4]].field_1024 = 0
                    mem[0] = sha3(cd[4], 5) + 4
                    idx = 0
                    while stor5[cd[4]].field_1024 > idx:
                        stor5[cd[4]][idx + 4].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor5[cd[4]].field_1280 = 0
                    stor5[cd[4]].field_1536 = 0
                    uint8(stor5[cd[4]].field_1792) = 0
                    if stor3 > !stor2:
                        revert with 0, 17
                    if stor1.length > !(stor3 + stor2):
                        revert with 0, 17
                    stor1.length = stor1.length + stor3 + stor2
                    mem[mem[64]] = cd[4]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = 96
                    _2553 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    var93001 = _2553
                    emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _2553) + 32]
                else:
                    if stor7[cd[4]] >= stor8.length:
                        revert with 0, 50
                    if stor8[stor7[cd[4]]].field_0 != cd[4]:
                        mem[32] = 5
                        address(stor5[cd[4]].field_0) = 0
                        address(stor5[cd[4]].field_256) = 0
                        stor5[cd[4]].field_512 = 0
                        stor5[cd[4]].field_768 = 0
                        idx = 0
                        while stor5[cd[4]].field_768 > idx:
                            stor5[cd[4]][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor5[cd[4]].field_1024 = 0
                        mem[0] = sha3(cd[4], 5) + 4
                        idx = 0
                        while stor5[cd[4]].field_1024 > idx:
                            stor5[cd[4]][idx + 4].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor5[cd[4]].field_1280 = 0
                        stor5[cd[4]].field_1536 = 0
                        uint8(stor5[cd[4]].field_1792) = 0
                        if stor3 > !stor2:
                            revert with 0, 17
                        if stor1.length > !(stor3 + stor2):
                            revert with 0, 17
                        stor1.length = stor1.length + stor3 + stor2
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = 96
                        _2552 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        var93001 = _2552
                        emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _2552) + 32]
                    else:
                        if stor8.length < 1:
                            revert with 0, 17
                        if stor8.length - 1 == stor7[cd[4]]:
                            stor7[cd[4]] = 0
                            if stor8.length < 1:
                                revert with 0, 17
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor8[stor8.length].field_0 = 0
                            mem[32] = 5
                            address(stor5[cd[4]].field_0) = 0
                            address(stor5[cd[4]].field_256) = 0
                            stor5[cd[4]].field_512 = 0
                            stor5[cd[4]].field_768 = 0
                            idx = 0
                            while stor5[cd[4]].field_768 > idx:
                                stor5[cd[4]][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1024 = 0
                            mem[0] = sha3(cd[4], 5) + 4
                            idx = 0
                            while stor5[cd[4]].field_1024 > idx:
                                stor5[cd[4]][idx + 4].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1280 = 0
                            stor5[cd[4]].field_1536 = 0
                            uint8(stor5[cd[4]].field_1792) = 0
                            if stor3 > !stor2:
                                revert with 0, 17
                            if stor1.length > !(stor3 + stor2):
                                revert with 0, 17
                            stor1.length = stor1.length + stor3 + stor2
                            mem[mem[64]] = cd[4]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = 96
                            _2550 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _2550) + 32]
                        else:
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor7[stor8[stor8.length].field_0] = stor7[cd[4]]
                            if stor7[cd[4]] >= stor8.length:
                                revert with 0, 50
                            stor8[stor7[cd[4]]].field_0 = stor8[stor8.length].field_0
                            stor7[cd[4]] = 0
                            if stor8.length < 1:
                                revert with 0, 17
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor8[stor8.length].field_0 = 0
                            mem[32] = 5
                            address(stor5[cd[4]].field_0) = 0
                            address(stor5[cd[4]].field_256) = 0
                            stor5[cd[4]].field_512 = 0
                            stor5[cd[4]].field_768 = 0
                            idx = 0
                            while stor5[cd[4]].field_768 > idx:
                                stor5[cd[4]][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1024 = 0
                            mem[0] = sha3(cd[4], 5) + 4
                            idx = 0
                            while stor5[cd[4]].field_1024 > idx:
                                stor5[cd[4]][idx + 4].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1280 = 0
                            stor5[cd[4]].field_1536 = 0
                            uint8(stor5[cd[4]].field_1792) = 0
                            if stor3 > !stor2:
                                revert with 0, 17
                            if stor1.length > !(stor3 + stor2):
                                revert with 0, 17
                            stor1.length = stor1.length + stor3 + stor2
                            mem[mem[64]] = cd[4]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = 96
                            _2551 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _2551) + 32]
        else:
            mem[0] = sha3(cd[4], 5) + 4
            mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + 448] = stor5[cd[4]][4].field_0
            idx = (32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + 448
            s = 0
            while (32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 416 > idx:
                mem[idx + 32] = stor5[cd[4]][s + 4].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[(32 * ('cd', 36).length) + 256] = (32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + 416
            mem[(32 * ('cd', 36).length) + 288] = stor5[cd[4]].field_1280
            mem[(32 * ('cd', 36).length) + 320] = stor5[cd[4]].field_1536
            mem[(32 * ('cd', 36).length) + 352] = bool(uint8(stor5[cd[4]].field_1792))
            if ('cd', 36).length > test266151307():
                revert with 0, 65
            mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448] = ('cd', 36).length
            mem[64] = (64 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 480
            if not ('cd', 36).length:
                idx = 0
                while idx < stor5[cd[4]].field_768:
                    if idx >= mem[mem[(32 * ('cd', 36).length) + 224]]:
                        revert with 0, 50
                    _1386 = mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 224] + 32]
                    if mem[mem[(32 * ('cd', 36).length) + 256]] <= idx:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1432 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1432
                        require ext_code.size(stor4)
                        staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args msg.sender, _1432
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1489 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1489] < 1:
                            revert with 0, 'insufficient gem balance'
                        mem[mem[64] + 4] = _1432
                        require ext_code.size(address(_1386))
                        staticcall address(_1386).tokenType(uint256 arg1) with:
                                gas gas_remaining wei
                               args _1432
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1597 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1597] < 3
                        if mem[_1597] > 2:
                            revert with 0, 33
                        if mem[_1597] != 2:
                            revert with 0, 'invalid token type'
                    else:
                        if idx >= mem[mem[(32 * ('cd', 36).length) + 256]]:
                            revert with 0, 50
                        _1412 = mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 256] + 32]
                        if idx >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 256] + 32]:
                            mem[(32 * idx) + 128] = mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 256] + 32]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1412
                            require ext_code.size(stor4)
                            staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, _1412
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1499 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1499] < 1:
                                revert with 0, 'insufficient gem balance'
                            mem[mem[64] + 4] = _1412
                            require ext_code.size(address(_1386))
                            staticcall address(_1386).tokenType(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _1412
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1606 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1606] < 3
                            if mem[_1606] > 2:
                                revert with 0, 33
                            if mem[_1606] != 2:
                                revert with 0, 'invalid token type'
                        else:
                            _1445 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1445
                            require ext_code.size(stor4)
                            staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, _1445
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1500 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1500] < 1:
                                revert with 0, 'insufficient gem balance'
                            mem[mem[64] + 4] = _1445
                            require ext_code.size(address(_1386))
                            staticcall address(_1386).tokenType(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _1445
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1607 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1607] < 3
                            if mem[_1607] > 2:
                                revert with 0, 33
                            if mem[_1607] != 2:
                                revert with 0, 'invalid token type'
                    if idx >= mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 480] = 1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _1367 = mem[(32 * ('cd', 36).length) + 192]
                mem[mem[64] + 4] = mem[(32 * ('cd', 36).length) + 140 len 20]
                mem[mem[64] + 36] = _1367
                require ext_code.size(stor4)
                staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], _1367
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1422 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1422]:
                    call msg.sender with:
                       value stor3 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        return 0
                _1464 = mem[(32 * ('cd', 36).length) + 128]
                mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(_1464)
                mem[mem[64] + 68] = 160
                _1488 = mem[96]
                mem[mem[64] + 164] = mem[96]
                mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 100] = (32 * mem[96]) + 192
                _1946 = mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448]
                mem[mem[64] + (32 * mem[96]) + 196] = mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448]
                mem[mem[64] + (32 * mem[96]) + 228 len 32 * _1946] = mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 480 len 32 * _1946]
                mem[mem[64] + 132] = (32 * mem[96]) + (32 * _1946) + 224
                mem[mem[64] + (32 * mem[96]) + (32 * _1946) + 228] = 0
                require ext_code.size(stor4)
                call stor4.safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(_1464), 160, mem[mem[64] + 100], (32 * _1488) + (32 * _1946) + 224, mem[mem[64] + 164 len (32 * _1488) + (32 * _1946) + 64], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2491 = mem[(32 * ('cd', 36).length) + 192]
                mem[mem[64] + 4] = mem[(32 * ('cd', 36).length) + 140 len 20]
                mem[mem[64] + 68] = _2491
                mem[mem[64] + 100] = 1
                mem[mem[64] + 132] = 160
                mem[mem[64] + 164] = 0
                require ext_code.size(stor4)
                call stor4.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, _2491, 1, 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor8.length:
                    mem[32] = 5
                    address(stor5[cd[4]].field_0) = 0
                    address(stor5[cd[4]].field_256) = 0
                    stor5[cd[4]].field_512 = 0
                    stor5[cd[4]].field_768 = 0
                    idx = 0
                    while stor5[cd[4]].field_768 > idx:
                        stor5[cd[4]][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor5[cd[4]].field_1024 = 0
                    mem[0] = sha3(cd[4], 5) + 4
                    idx = 0
                    while stor5[cd[4]].field_1024 > idx:
                        stor5[cd[4]][idx + 4].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor5[cd[4]].field_1280 = 0
                    stor5[cd[4]].field_1536 = 0
                    uint8(stor5[cd[4]].field_1792) = 0
                    if stor3 > !stor2:
                        revert with 0, 17
                    if stor1.length > !(stor3 + stor2):
                        revert with 0, 17
                    stor1.length = stor1.length + stor3 + stor2
                    mem[mem[64]] = cd[4]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = 96
                    _3233 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    var96001 = _3233
                    emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _3233) + 32]
                else:
                    if stor7[cd[4]] >= stor8.length:
                        revert with 0, 50
                    if stor8[stor7[cd[4]]].field_0 != cd[4]:
                        mem[32] = 5
                        address(stor5[cd[4]].field_0) = 0
                        address(stor5[cd[4]].field_256) = 0
                        stor5[cd[4]].field_512 = 0
                        stor5[cd[4]].field_768 = 0
                        idx = 0
                        while stor5[cd[4]].field_768 > idx:
                            stor5[cd[4]][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor5[cd[4]].field_1024 = 0
                        mem[0] = sha3(cd[4], 5) + 4
                        idx = 0
                        while stor5[cd[4]].field_1024 > idx:
                            stor5[cd[4]][idx + 4].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor5[cd[4]].field_1280 = 0
                        stor5[cd[4]].field_1536 = 0
                        uint8(stor5[cd[4]].field_1792) = 0
                        if stor3 > !stor2:
                            revert with 0, 17
                        if stor1.length > !(stor3 + stor2):
                            revert with 0, 17
                        stor1.length = stor1.length + stor3 + stor2
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = 96
                        _3232 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        var96001 = _3232
                        emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _3232) + 32]
                    else:
                        if stor8.length < 1:
                            revert with 0, 17
                        if stor8.length - 1 == stor7[cd[4]]:
                            stor7[cd[4]] = 0
                            if stor8.length < 1:
                                revert with 0, 17
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor8[stor8.length].field_0 = 0
                            mem[32] = 5
                            address(stor5[cd[4]].field_0) = 0
                            address(stor5[cd[4]].field_256) = 0
                            stor5[cd[4]].field_512 = 0
                            stor5[cd[4]].field_768 = 0
                            idx = 0
                            while stor5[cd[4]].field_768 > idx:
                                stor5[cd[4]][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1024 = 0
                            mem[0] = sha3(cd[4], 5) + 4
                            idx = 0
                            while stor5[cd[4]].field_1024 > idx:
                                stor5[cd[4]][idx + 4].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1280 = 0
                            stor5[cd[4]].field_1536 = 0
                            uint8(stor5[cd[4]].field_1792) = 0
                            if stor3 > !stor2:
                                revert with 0, 17
                            if stor1.length > !(stor3 + stor2):
                                revert with 0, 17
                            stor1.length = stor1.length + stor3 + stor2
                            mem[mem[64]] = cd[4]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = 96
                            _3230 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _3230) + 32]
                        else:
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor7[stor8[stor8.length].field_0] = stor7[cd[4]]
                            if stor7[cd[4]] >= stor8.length:
                                revert with 0, 50
                            stor8[stor7[cd[4]]].field_0 = stor8[stor8.length].field_0
                            stor7[cd[4]] = 0
                            if stor8.length < 1:
                                revert with 0, 17
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor8[stor8.length].field_0 = 0
                            mem[32] = 5
                            address(stor5[cd[4]].field_0) = 0
                            address(stor5[cd[4]].field_256) = 0
                            stor5[cd[4]].field_512 = 0
                            stor5[cd[4]].field_768 = 0
                            idx = 0
                            while stor5[cd[4]].field_768 > idx:
                                stor5[cd[4]][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1024 = 0
                            mem[0] = sha3(cd[4], 5) + 4
                            idx = 0
                            while stor5[cd[4]].field_1024 > idx:
                                stor5[cd[4]][idx + 4].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1280 = 0
                            stor5[cd[4]].field_1536 = 0
                            uint8(stor5[cd[4]].field_1792) = 0
                            if stor3 > !stor2:
                                revert with 0, 17
                            if stor1.length > !(stor3 + stor2):
                                revert with 0, 17
                            stor1.length = stor1.length + stor3 + stor2
                            mem[mem[64]] = cd[4]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = 96
                            _3231 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _3231) + 32]
            else:
                mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 480 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                idx = 0
                while idx < stor5[cd[4]].field_768:
                    if idx >= mem[mem[(32 * ('cd', 36).length) + 224]]:
                        revert with 0, 50
                    _1389 = mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 224] + 32]
                    if mem[mem[(32 * ('cd', 36).length) + 256]] <= idx:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1435 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1435
                        require ext_code.size(stor4)
                        staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args msg.sender, _1435
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1491 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1491] < 1:
                            revert with 0, 'insufficient gem balance'
                        mem[mem[64] + 4] = _1435
                        require ext_code.size(address(_1389))
                        staticcall address(_1389).tokenType(uint256 arg1) with:
                                gas gas_remaining wei
                               args _1435
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1599 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1599] < 3
                        if mem[_1599] > 2:
                            revert with 0, 33
                        if mem[_1599] != 2:
                            revert with 0, 'invalid token type'
                    else:
                        if idx >= mem[mem[(32 * ('cd', 36).length) + 256]]:
                            revert with 0, 50
                        _1413 = mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 256] + 32]
                        if idx >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 256] + 32]:
                            mem[(32 * idx) + 128] = mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 256] + 32]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1413
                            require ext_code.size(stor4)
                            staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, _1413
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1502 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1502] < 1:
                                revert with 0, 'insufficient gem balance'
                            mem[mem[64] + 4] = _1413
                            require ext_code.size(address(_1389))
                            staticcall address(_1389).tokenType(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _1413
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1608 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1608] < 3
                            if mem[_1608] > 2:
                                revert with 0, 33
                            if mem[_1608] != 2:
                                revert with 0, 'invalid token type'
                        else:
                            _1448 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1448
                            require ext_code.size(stor4)
                            staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, _1448
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1503 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1503] < 1:
                                revert with 0, 'insufficient gem balance'
                            mem[mem[64] + 4] = _1448
                            require ext_code.size(address(_1389))
                            staticcall address(_1389).tokenType(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _1448
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1609 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1609] < 3
                            if mem[_1609] > 2:
                                revert with 0, 33
                            if mem[_1609] != 2:
                                revert with 0, 'invalid token type'
                    if idx >= mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 480] = 1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _1372 = mem[(32 * ('cd', 36).length) + 192]
                mem[mem[64] + 4] = mem[(32 * ('cd', 36).length) + 140 len 20]
                mem[mem[64] + 36] = _1372
                require ext_code.size(stor4)
                staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], _1372
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1424 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1424]:
                    call msg.sender with:
                       value stor3 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        return 0
                _1468 = mem[(32 * ('cd', 36).length) + 128]
                mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(_1468)
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 100] = (32 * mem[96]) + 192
                _1947 = mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448]
                mem[mem[64] + (32 * mem[96]) + 196] = mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448]
                mem[mem[64] + (32 * mem[96]) + 228 len 32 * _1947] = mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 480 len 32 * _1947]
                mem[mem[64] + 132] = (32 * mem[96]) + (32 * _1947) + 224
                mem[mem[64] + (32 * mem[96]) + (32 * _1947) + 228] = 0
                require ext_code.size(stor4)
                call stor4.safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(_1468), 160, (32 * mem[96]) + 192, (32 * mem[96]) + (32 * _1947) + 224, mem[96], mem[mem[64] + 196 len (32 * mem[96]) + (32 * _1947) + 32], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2494 = mem[(32 * ('cd', 36).length) + 192]
                mem[mem[64] + 4] = mem[(32 * ('cd', 36).length) + 140 len 20]
                mem[mem[64] + 68] = _2494
                mem[mem[64] + 100] = 1
                mem[mem[64] + 132] = 160
                mem[mem[64] + 164] = 0
                require ext_code.size(stor4)
                call stor4.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, _2494, 1, 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor8.length:
                    mem[32] = 5
                    address(stor5[cd[4]].field_0) = 0
                    address(stor5[cd[4]].field_256) = 0
                    stor5[cd[4]].field_512 = 0
                    stor5[cd[4]].field_768 = 0
                    idx = 0
                    while stor5[cd[4]].field_768 > idx:
                        stor5[cd[4]][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor5[cd[4]].field_1024 = 0
                    mem[0] = sha3(cd[4], 5) + 4
                    idx = 0
                    while stor5[cd[4]].field_1024 > idx:
                        stor5[cd[4]][idx + 4].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor5[cd[4]].field_1280 = 0
                    stor5[cd[4]].field_1536 = 0
                    uint8(stor5[cd[4]].field_1792) = 0
                    if stor3 > !stor2:
                        revert with 0, 17
                    if stor1.length > !(stor3 + stor2):
                        revert with 0, 17
                    stor1.length = stor1.length + stor3 + stor2
                    mem[mem[64]] = cd[4]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = 96
                    _3237 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    var97001 = _3237
                    emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _3237) + 32]
                else:
                    if stor7[cd[4]] >= stor8.length:
                        revert with 0, 50
                    if stor8[stor7[cd[4]]].field_0 != cd[4]:
                        mem[32] = 5
                        address(stor5[cd[4]].field_0) = 0
                        address(stor5[cd[4]].field_256) = 0
                        stor5[cd[4]].field_512 = 0
                        stor5[cd[4]].field_768 = 0
                        idx = 0
                        while stor5[cd[4]].field_768 > idx:
                            stor5[cd[4]][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor5[cd[4]].field_1024 = 0
                        mem[0] = sha3(cd[4], 5) + 4
                        idx = 0
                        while stor5[cd[4]].field_1024 > idx:
                            stor5[cd[4]][idx + 4].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor5[cd[4]].field_1280 = 0
                        stor5[cd[4]].field_1536 = 0
                        uint8(stor5[cd[4]].field_1792) = 0
                        if stor3 > !stor2:
                            revert with 0, 17
                        if stor1.length > !(stor3 + stor2):
                            revert with 0, 17
                        stor1.length = stor1.length + stor3 + stor2
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = 96
                        _3236 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        var97001 = _3236
                        emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _3236) + 32]
                    else:
                        if stor8.length < 1:
                            revert with 0, 17
                        if stor8.length - 1 == stor7[cd[4]]:
                            stor7[cd[4]] = 0
                            if stor8.length < 1:
                                revert with 0, 17
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor8[stor8.length].field_0 = 0
                            mem[32] = 5
                            address(stor5[cd[4]].field_0) = 0
                            address(stor5[cd[4]].field_256) = 0
                            stor5[cd[4]].field_512 = 0
                            stor5[cd[4]].field_768 = 0
                            idx = 0
                            while stor5[cd[4]].field_768 > idx:
                                stor5[cd[4]][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1024 = 0
                            mem[0] = sha3(cd[4], 5) + 4
                            idx = 0
                            while stor5[cd[4]].field_1024 > idx:
                                stor5[cd[4]][idx + 4].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1280 = 0
                            stor5[cd[4]].field_1536 = 0
                            uint8(stor5[cd[4]].field_1792) = 0
                            if stor3 > !stor2:
                                revert with 0, 17
                            if stor1.length > !(stor3 + stor2):
                                revert with 0, 17
                            stor1.length = stor1.length + stor3 + stor2
                            mem[mem[64]] = cd[4]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = 96
                            _3234 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _3234) + 32]
                        else:
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor7[stor8[stor8.length].field_0] = stor7[cd[4]]
                            if stor7[cd[4]] >= stor8.length:
                                revert with 0, 50
                            stor8[stor7[cd[4]]].field_0 = stor8[stor8.length].field_0
                            stor7[cd[4]] = 0
                            if stor8.length < 1:
                                revert with 0, 17
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor8[stor8.length].field_0 = 0
                            mem[32] = 5
                            address(stor5[cd[4]].field_0) = 0
                            address(stor5[cd[4]].field_256) = 0
                            stor5[cd[4]].field_512 = 0
                            stor5[cd[4]].field_768 = 0
                            idx = 0
                            while stor5[cd[4]].field_768 > idx:
                                stor5[cd[4]][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1024 = 0
                            mem[0] = sha3(cd[4], 5) + 4
                            idx = 0
                            while stor5[cd[4]].field_1024 > idx:
                                stor5[cd[4]][idx + 4].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1280 = 0
                            stor5[cd[4]].field_1536 = 0
                            uint8(stor5[cd[4]].field_1792) = 0
                            if stor3 > !stor2:
                                revert with 0, 17
                            if stor1.length > !(stor3 + stor2):
                                revert with 0, 17
                            stor1.length = stor1.length + stor3 + stor2
                            mem[mem[64]] = cd[4]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = 96
                            _3235 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _3235) + 32]
    else:
        mem[0] = sha3(cd[4], 5) + 3
        mem[(32 * ('cd', 36).length) + 416] = address(stor5[cd[4]][3].field_0)
        idx = (32 * ('cd', 36).length) + 416
        s = 0
        while (32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + 384 > idx:
            mem[idx + 32] = address(stor5[cd[4]][s + 3].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * ('cd', 36).length) + 224] = (32 * ('cd', 36).length) + 384
        mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + 416] = stor5[cd[4]].field_1024
        if not stor5[cd[4]].field_1024:
            mem[(32 * ('cd', 36).length) + 256] = (32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + 416
            mem[(32 * ('cd', 36).length) + 288] = stor5[cd[4]].field_1280
            mem[(32 * ('cd', 36).length) + 320] = stor5[cd[4]].field_1536
            mem[(32 * ('cd', 36).length) + 352] = bool(uint8(stor5[cd[4]].field_1792))
            if ('cd', 36).length > test266151307():
                revert with 0, 65
            mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448] = ('cd', 36).length
            mem[64] = (64 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 480
            if not ('cd', 36).length:
                idx = 0
                while idx < stor5[cd[4]].field_768:
                    if idx >= mem[mem[(32 * ('cd', 36).length) + 224]]:
                        revert with 0, 50
                    _1392 = mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 224] + 32]
                    if mem[mem[(32 * ('cd', 36).length) + 256]] <= idx:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1438 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1438
                        require ext_code.size(stor4)
                        staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args msg.sender, _1438
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1493 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1493] < 1:
                            revert with 0, 'insufficient gem balance'
                        mem[mem[64] + 4] = _1438
                        require ext_code.size(address(_1392))
                        staticcall address(_1392).tokenType(uint256 arg1) with:
                                gas gas_remaining wei
                               args _1438
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1601 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1601] < 3
                        if mem[_1601] > 2:
                            revert with 0, 33
                        if mem[_1601] != 2:
                            revert with 0, 'invalid token type'
                    else:
                        if idx >= mem[mem[(32 * ('cd', 36).length) + 256]]:
                            revert with 0, 50
                        _1414 = mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 256] + 32]
                        if idx >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 256] + 32]:
                            mem[(32 * idx) + 128] = mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 256] + 32]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1414
                            require ext_code.size(stor4)
                            staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, _1414
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1505 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1505] < 1:
                                revert with 0, 'insufficient gem balance'
                            mem[mem[64] + 4] = _1414
                            require ext_code.size(address(_1392))
                            staticcall address(_1392).tokenType(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _1414
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1610 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1610] < 3
                            if mem[_1610] > 2:
                                revert with 0, 33
                            if mem[_1610] != 2:
                                revert with 0, 'invalid token type'
                        else:
                            _1451 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1451
                            require ext_code.size(stor4)
                            staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, _1451
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1506 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1506] < 1:
                                revert with 0, 'insufficient gem balance'
                            mem[mem[64] + 4] = _1451
                            require ext_code.size(address(_1392))
                            staticcall address(_1392).tokenType(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _1451
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1611 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1611] < 3
                            if mem[_1611] > 2:
                                revert with 0, 33
                            if mem[_1611] != 2:
                                revert with 0, 'invalid token type'
                    if idx >= mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 480] = 1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _1377 = mem[(32 * ('cd', 36).length) + 192]
                mem[mem[64] + 4] = mem[(32 * ('cd', 36).length) + 140 len 20]
                mem[mem[64] + 36] = _1377
                require ext_code.size(stor4)
                staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], _1377
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1426 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1426]:
                    call msg.sender with:
                       value stor3 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        return 0
                _1472 = mem[(32 * ('cd', 36).length) + 128]
                mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(_1472)
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 100] = (32 * mem[96]) + 192
                _1948 = mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448]
                mem[mem[64] + (32 * mem[96]) + 196] = mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448]
                mem[mem[64] + (32 * mem[96]) + 228 len 32 * _1948] = mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 480 len 32 * _1948]
                mem[mem[64] + 132] = (32 * mem[96]) + (32 * _1948) + 224
                mem[mem[64] + (32 * mem[96]) + (32 * _1948) + 228] = 0
                require ext_code.size(stor4)
                call stor4.safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(_1472), 160, (32 * mem[96]) + 192, (32 * mem[96]) + (32 * _1948) + 224, mem[96], mem[mem[64] + 196 len (32 * mem[96]) + (32 * _1948) + 32], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2497 = mem[(32 * ('cd', 36).length) + 192]
                mem[mem[64] + 4] = mem[(32 * ('cd', 36).length) + 140 len 20]
                mem[mem[64] + 68] = _2497
                mem[mem[64] + 100] = 1
                mem[mem[64] + 132] = 160
                mem[mem[64] + 164] = 0
                require ext_code.size(stor4)
                call stor4.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, _2497, 1, 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor8.length:
                    mem[32] = 5
                    address(stor5[cd[4]].field_0) = 0
                    address(stor5[cd[4]].field_256) = 0
                    stor5[cd[4]].field_512 = 0
                    stor5[cd[4]].field_768 = 0
                    idx = 0
                    while stor5[cd[4]].field_768 > idx:
                        stor5[cd[4]][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor5[cd[4]].field_1024 = 0
                    mem[0] = sha3(cd[4], 5) + 4
                    idx = 0
                    while stor5[cd[4]].field_1024 > idx:
                        stor5[cd[4]][idx + 4].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor5[cd[4]].field_1280 = 0
                    stor5[cd[4]].field_1536 = 0
                    uint8(stor5[cd[4]].field_1792) = 0
                    if stor3 > !stor2:
                        revert with 0, 17
                    if stor1.length > !(stor3 + stor2):
                        revert with 0, 17
                    stor1.length = stor1.length + stor3 + stor2
                    mem[mem[64]] = cd[4]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = 96
                    _3241 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    var96001 = _3241
                    emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _3241) + 32]
                else:
                    if stor7[cd[4]] >= stor8.length:
                        revert with 0, 50
                    if stor8[stor7[cd[4]]].field_0 != cd[4]:
                        mem[32] = 5
                        address(stor5[cd[4]].field_0) = 0
                        address(stor5[cd[4]].field_256) = 0
                        stor5[cd[4]].field_512 = 0
                        stor5[cd[4]].field_768 = 0
                        idx = 0
                        while stor5[cd[4]].field_768 > idx:
                            stor5[cd[4]][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor5[cd[4]].field_1024 = 0
                        mem[0] = sha3(cd[4], 5) + 4
                        idx = 0
                        while stor5[cd[4]].field_1024 > idx:
                            stor5[cd[4]][idx + 4].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor5[cd[4]].field_1280 = 0
                        stor5[cd[4]].field_1536 = 0
                        uint8(stor5[cd[4]].field_1792) = 0
                        if stor3 > !stor2:
                            revert with 0, 17
                        if stor1.length > !(stor3 + stor2):
                            revert with 0, 17
                        stor1.length = stor1.length + stor3 + stor2
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = 96
                        _3240 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        var96001 = _3240
                        emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _3240) + 32]
                    else:
                        if stor8.length < 1:
                            revert with 0, 17
                        if stor8.length - 1 == stor7[cd[4]]:
                            stor7[cd[4]] = 0
                            if stor8.length < 1:
                                revert with 0, 17
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor8[stor8.length].field_0 = 0
                            mem[32] = 5
                            address(stor5[cd[4]].field_0) = 0
                            address(stor5[cd[4]].field_256) = 0
                            stor5[cd[4]].field_512 = 0
                            stor5[cd[4]].field_768 = 0
                            idx = 0
                            while stor5[cd[4]].field_768 > idx:
                                stor5[cd[4]][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1024 = 0
                            mem[0] = sha3(cd[4], 5) + 4
                            idx = 0
                            while stor5[cd[4]].field_1024 > idx:
                                stor5[cd[4]][idx + 4].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1280 = 0
                            stor5[cd[4]].field_1536 = 0
                            uint8(stor5[cd[4]].field_1792) = 0
                            if stor3 > !stor2:
                                revert with 0, 17
                            if stor1.length > !(stor3 + stor2):
                                revert with 0, 17
                            stor1.length = stor1.length + stor3 + stor2
                            mem[mem[64]] = cd[4]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = 96
                            _3238 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _3238) + 32]
                        else:
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor7[stor8[stor8.length].field_0] = stor7[cd[4]]
                            if stor7[cd[4]] >= stor8.length:
                                revert with 0, 50
                            stor8[stor7[cd[4]]].field_0 = stor8[stor8.length].field_0
                            stor7[cd[4]] = 0
                            if stor8.length < 1:
                                revert with 0, 17
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor8[stor8.length].field_0 = 0
                            mem[32] = 5
                            address(stor5[cd[4]].field_0) = 0
                            address(stor5[cd[4]].field_256) = 0
                            stor5[cd[4]].field_512 = 0
                            stor5[cd[4]].field_768 = 0
                            idx = 0
                            while stor5[cd[4]].field_768 > idx:
                                stor5[cd[4]][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1024 = 0
                            mem[0] = sha3(cd[4], 5) + 4
                            idx = 0
                            while stor5[cd[4]].field_1024 > idx:
                                stor5[cd[4]][idx + 4].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1280 = 0
                            stor5[cd[4]].field_1536 = 0
                            uint8(stor5[cd[4]].field_1792) = 0
                            if stor3 > !stor2:
                                revert with 0, 17
                            if stor1.length > !(stor3 + stor2):
                                revert with 0, 17
                            stor1.length = stor1.length + stor3 + stor2
                            mem[mem[64]] = cd[4]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = 96
                            _3239 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _3239) + 32]
            else:
                mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 480 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                idx = 0
                while idx < stor5[cd[4]].field_768:
                    if idx >= mem[mem[(32 * ('cd', 36).length) + 224]]:
                        revert with 0, 50
                    _1395 = mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 224] + 32]
                    if mem[mem[(32 * ('cd', 36).length) + 256]] <= idx:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1441 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1441
                        require ext_code.size(stor4)
                        staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args msg.sender, _1441
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1495 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1495] < 1:
                            revert with 0, 'insufficient gem balance'
                        mem[mem[64] + 4] = _1441
                        require ext_code.size(address(_1395))
                        staticcall address(_1395).tokenType(uint256 arg1) with:
                                gas gas_remaining wei
                               args _1441
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1603 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1603] < 3
                        if mem[_1603] > 2:
                            revert with 0, 33
                        if mem[_1603] != 2:
                            revert with 0, 'invalid token type'
                    else:
                        if idx >= mem[mem[(32 * ('cd', 36).length) + 256]]:
                            revert with 0, 50
                        _1415 = mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 256] + 32]
                        if idx >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 256] + 32]:
                            mem[(32 * idx) + 128] = mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 256] + 32]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1415
                            require ext_code.size(stor4)
                            staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, _1415
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1508 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1508] < 1:
                                revert with 0, 'insufficient gem balance'
                            mem[mem[64] + 4] = _1415
                            require ext_code.size(address(_1395))
                            staticcall address(_1395).tokenType(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _1415
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1612 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1612] < 3
                            if mem[_1612] > 2:
                                revert with 0, 33
                            if mem[_1612] != 2:
                                revert with 0, 'invalid token type'
                        else:
                            _1454 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1454
                            require ext_code.size(stor4)
                            staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, _1454
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1509 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1509] < 1:
                                revert with 0, 'insufficient gem balance'
                            mem[mem[64] + 4] = _1454
                            require ext_code.size(address(_1395))
                            staticcall address(_1395).tokenType(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _1454
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1613 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1613] < 3
                            if mem[_1613] > 2:
                                revert with 0, 33
                            if mem[_1613] != 2:
                                revert with 0, 'invalid token type'
                    if idx >= mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 480] = 1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _1382 = mem[(32 * ('cd', 36).length) + 192]
                mem[mem[64] + 4] = mem[(32 * ('cd', 36).length) + 140 len 20]
                mem[mem[64] + 36] = _1382
                require ext_code.size(stor4)
                staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], _1382
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1428 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_1428]:
                    call msg.sender with:
                       value stor3 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        return 0
                _1476 = mem[(32 * ('cd', 36).length) + 128]
                mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(_1476)
                mem[mem[64] + 68] = 160
                _1494 = mem[96]
                mem[mem[64] + 164] = mem[96]
                mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 100] = (32 * mem[96]) + 192
                _1949 = mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448]
                mem[mem[64] + (32 * mem[96]) + 196] = mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448]
                mem[mem[64] + (32 * mem[96]) + 228 len 32 * _1949] = mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 480 len 32 * _1949]
                mem[mem[64] + 132] = (32 * mem[96]) + (32 * _1949) + 224
                mem[mem[64] + (32 * mem[96]) + (32 * _1949) + 228] = 0
                require ext_code.size(stor4)
                call stor4.safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(_1476), 160, mem[mem[64] + 100 len (32 * _1494) + (32 * _1949) + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2500 = mem[(32 * ('cd', 36).length) + 192]
                mem[mem[64] + 4] = mem[(32 * ('cd', 36).length) + 140 len 20]
                mem[mem[64] + 68] = _2500
                mem[mem[64] + 100] = 1
                mem[mem[64] + 132] = 160
                mem[mem[64] + 164] = 0
                require ext_code.size(stor4)
                call stor4.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, _2500, 1, 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor8.length:
                    mem[32] = 5
                    address(stor5[cd[4]].field_0) = 0
                    address(stor5[cd[4]].field_256) = 0
                    stor5[cd[4]].field_512 = 0
                    stor5[cd[4]].field_768 = 0
                    idx = 0
                    while stor5[cd[4]].field_768 > idx:
                        stor5[cd[4]][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor5[cd[4]].field_1024 = 0
                    mem[0] = sha3(cd[4], 5) + 4
                    idx = 0
                    while stor5[cd[4]].field_1024 > idx:
                        stor5[cd[4]][idx + 4].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor5[cd[4]].field_1280 = 0
                    stor5[cd[4]].field_1536 = 0
                    uint8(stor5[cd[4]].field_1792) = 0
                    if stor3 > !stor2:
                        revert with 0, 17
                    if stor1.length > !(stor3 + stor2):
                        revert with 0, 17
                    stor1.length = stor1.length + stor3 + stor2
                    mem[mem[64]] = cd[4]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = 96
                    _3245 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    var97001 = _3245
                    emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _3245) + 32]
                else:
                    if stor7[cd[4]] >= stor8.length:
                        revert with 0, 50
                    if stor8[stor7[cd[4]]].field_0 != cd[4]:
                        mem[32] = 5
                        address(stor5[cd[4]].field_0) = 0
                        address(stor5[cd[4]].field_256) = 0
                        stor5[cd[4]].field_512 = 0
                        stor5[cd[4]].field_768 = 0
                        idx = 0
                        while stor5[cd[4]].field_768 > idx:
                            stor5[cd[4]][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor5[cd[4]].field_1024 = 0
                        mem[0] = sha3(cd[4], 5) + 4
                        idx = 0
                        while stor5[cd[4]].field_1024 > idx:
                            stor5[cd[4]][idx + 4].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor5[cd[4]].field_1280 = 0
                        stor5[cd[4]].field_1536 = 0
                        uint8(stor5[cd[4]].field_1792) = 0
                        if stor3 > !stor2:
                            revert with 0, 17
                        if stor1.length > !(stor3 + stor2):
                            revert with 0, 17
                        stor1.length = stor1.length + stor3 + stor2
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = 96
                        _3244 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        var97001 = _3244
                        emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _3244) + 32]
                    else:
                        if stor8.length < 1:
                            revert with 0, 17
                        if stor8.length - 1 == stor7[cd[4]]:
                            stor7[cd[4]] = 0
                            if stor8.length < 1:
                                revert with 0, 17
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor8[stor8.length].field_0 = 0
                            mem[32] = 5
                            address(stor5[cd[4]].field_0) = 0
                            address(stor5[cd[4]].field_256) = 0
                            stor5[cd[4]].field_512 = 0
                            stor5[cd[4]].field_768 = 0
                            idx = 0
                            while stor5[cd[4]].field_768 > idx:
                                stor5[cd[4]][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1024 = 0
                            mem[0] = sha3(cd[4], 5) + 4
                            idx = 0
                            while stor5[cd[4]].field_1024 > idx:
                                stor5[cd[4]][idx + 4].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1280 = 0
                            stor5[cd[4]].field_1536 = 0
                            uint8(stor5[cd[4]].field_1792) = 0
                            if stor3 > !stor2:
                                revert with 0, 17
                            if stor1.length > !(stor3 + stor2):
                                revert with 0, 17
                            stor1.length = stor1.length + stor3 + stor2
                            mem[mem[64]] = cd[4]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = 96
                            _3242 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _3242) + 32]
                        else:
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor7[stor8[stor8.length].field_0] = stor7[cd[4]]
                            if stor7[cd[4]] >= stor8.length:
                                revert with 0, 50
                            stor8[stor7[cd[4]]].field_0 = stor8[stor8.length].field_0
                            stor7[cd[4]] = 0
                            if stor8.length < 1:
                                revert with 0, 17
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor8[stor8.length].field_0 = 0
                            mem[32] = 5
                            address(stor5[cd[4]].field_0) = 0
                            address(stor5[cd[4]].field_256) = 0
                            stor5[cd[4]].field_512 = 0
                            stor5[cd[4]].field_768 = 0
                            idx = 0
                            while stor5[cd[4]].field_768 > idx:
                                stor5[cd[4]][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1024 = 0
                            mem[0] = sha3(cd[4], 5) + 4
                            idx = 0
                            while stor5[cd[4]].field_1024 > idx:
                                stor5[cd[4]][idx + 4].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1280 = 0
                            stor5[cd[4]].field_1536 = 0
                            uint8(stor5[cd[4]].field_1792) = 0
                            if stor3 > !stor2:
                                revert with 0, 17
                            if stor1.length > !(stor3 + stor2):
                                revert with 0, 17
                            stor1.length = stor1.length + stor3 + stor2
                            mem[mem[64]] = cd[4]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = 96
                            _3243 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _3243) + 32]
        else:
            mem[0] = sha3(cd[4], 5) + 4
            mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + 448] = stor5[cd[4]][4].field_0
            idx = (32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + 448
            s = 0
            while (32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 416 > idx:
                mem[idx + 32] = stor5[cd[4]][s + 4].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[(32 * ('cd', 36).length) + 256] = (32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + 416
            mem[(32 * ('cd', 36).length) + 288] = stor5[cd[4]].field_1280
            mem[(32 * ('cd', 36).length) + 320] = stor5[cd[4]].field_1536
            mem[(32 * ('cd', 36).length) + 352] = bool(uint8(stor5[cd[4]].field_1792))
            if ('cd', 36).length > test266151307():
                revert with 0, 65
            mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448] = ('cd', 36).length
            mem[64] = (64 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 480
            if not ('cd', 36).length:
                idx = 0
                while idx < stor5[cd[4]].field_768:
                    if idx >= mem[mem[(32 * ('cd', 36).length) + 224]]:
                        revert with 0, 50
                    _2472 = mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 224] + 32]
                    if mem[mem[(32 * ('cd', 36).length) + 256]] <= idx:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _2508 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2508
                        require ext_code.size(stor4)
                        staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args msg.sender, _2508
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2555 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2555] < 1:
                            revert with 0, 'insufficient gem balance'
                        mem[mem[64] + 4] = _2508
                        require ext_code.size(address(_2472))
                        staticcall address(_2472).tokenType(uint256 arg1) with:
                                gas gas_remaining wei
                               args _2508
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2659 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2659] < 3
                        if mem[_2659] > 2:
                            revert with 0, 33
                        if mem[_2659] != 2:
                            revert with 0, 'invalid token type'
                    else:
                        if idx >= mem[mem[(32 * ('cd', 36).length) + 256]]:
                            revert with 0, 50
                        _2488 = mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 256] + 32]
                        if idx >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 256] + 32]:
                            mem[(32 * idx) + 128] = mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 256] + 32]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2488
                            require ext_code.size(stor4)
                            staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, _2488
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2563 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_2563] < 1:
                                revert with 0, 'insufficient gem balance'
                            mem[mem[64] + 4] = _2488
                            require ext_code.size(address(_2472))
                            staticcall address(_2472).tokenType(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _2488
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2666 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2666] < 3
                            if mem[_2666] > 2:
                                revert with 0, 33
                            if mem[_2666] != 2:
                                revert with 0, 'invalid token type'
                        else:
                            _2517 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2517
                            require ext_code.size(stor4)
                            staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, _2517
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2564 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_2564] < 1:
                                revert with 0, 'insufficient gem balance'
                            mem[mem[64] + 4] = _2517
                            require ext_code.size(address(_2472))
                            staticcall address(_2472).tokenType(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _2517
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2667 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2667] < 3
                            if mem[_2667] > 2:
                                revert with 0, 33
                            if mem[_2667] != 2:
                                revert with 0, 'invalid token type'
                    if idx >= mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 480] = 1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _2463 = mem[(32 * ('cd', 36).length) + 192]
                mem[mem[64] + 4] = mem[(32 * ('cd', 36).length) + 140 len 20]
                mem[mem[64] + 36] = _2463
                require ext_code.size(stor4)
                staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], _2463
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2502 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_2502]:
                    call msg.sender with:
                       value stor3 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        return 0
                _2534 = mem[(32 * ('cd', 36).length) + 128]
                mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(_2534)
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 100] = (32 * mem[96]) + 192
                _2968 = mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448]
                mem[mem[64] + (32 * mem[96]) + 196] = mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448]
                mem[mem[64] + (32 * mem[96]) + 228 len 32 * _2968] = mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 480 len 32 * _2968]
                mem[mem[64] + 132] = (32 * mem[96]) + (32 * _2968) + 224
                mem[mem[64] + (32 * mem[96]) + (32 * _2968) + 228] = 0
                require ext_code.size(stor4)
                call stor4.safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(_2534), 160, (32 * mem[96]) + 192, (32 * mem[96]) + (32 * _2968) + 224, mem[96], mem[mem[64] + 196 len (32 * mem[96]) + (32 * _2968) + 32], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3207 = mem[(32 * ('cd', 36).length) + 192]
                mem[mem[64] + 4] = mem[(32 * ('cd', 36).length) + 140 len 20]
                mem[mem[64] + 68] = _3207
                mem[mem[64] + 100] = 1
                mem[mem[64] + 132] = 160
                mem[mem[64] + 164] = 0
                require ext_code.size(stor4)
                call stor4.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, _3207, 1, 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor8.length:
                    mem[32] = 5
                    address(stor5[cd[4]].field_0) = 0
                    address(stor5[cd[4]].field_256) = 0
                    stor5[cd[4]].field_512 = 0
                    stor5[cd[4]].field_768 = 0
                    idx = 0
                    while stor5[cd[4]].field_768 > idx:
                        stor5[cd[4]][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor5[cd[4]].field_1024 = 0
                    mem[0] = sha3(cd[4], 5) + 4
                    idx = 0
                    while stor5[cd[4]].field_1024 > idx:
                        stor5[cd[4]][idx + 4].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor5[cd[4]].field_1280 = 0
                    stor5[cd[4]].field_1536 = 0
                    uint8(stor5[cd[4]].field_1792) = 0
                    if stor3 > !stor2:
                        revert with 0, 17
                    if stor1.length > !(stor3 + stor2):
                        revert with 0, 17
                    stor1.length = stor1.length + stor3 + stor2
                    mem[mem[64]] = cd[4]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = 96
                    _3533 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    var100001 = _3533
                    emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _3533) + 32]
                else:
                    if stor7[cd[4]] >= stor8.length:
                        revert with 0, 50
                    if stor8[stor7[cd[4]]].field_0 != cd[4]:
                        mem[32] = 5
                        address(stor5[cd[4]].field_0) = 0
                        address(stor5[cd[4]].field_256) = 0
                        stor5[cd[4]].field_512 = 0
                        stor5[cd[4]].field_768 = 0
                        idx = 0
                        while stor5[cd[4]].field_768 > idx:
                            stor5[cd[4]][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor5[cd[4]].field_1024 = 0
                        mem[0] = sha3(cd[4], 5) + 4
                        idx = 0
                        while stor5[cd[4]].field_1024 > idx:
                            stor5[cd[4]][idx + 4].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor5[cd[4]].field_1280 = 0
                        stor5[cd[4]].field_1536 = 0
                        uint8(stor5[cd[4]].field_1792) = 0
                        if stor3 > !stor2:
                            revert with 0, 17
                        if stor1.length > !(stor3 + stor2):
                            revert with 0, 17
                        stor1.length = stor1.length + stor3 + stor2
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = 96
                        _3532 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        var100001 = _3532
                        emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _3532) + 32]
                    else:
                        if stor8.length < 1:
                            revert with 0, 17
                        if stor8.length - 1 == stor7[cd[4]]:
                            stor7[cd[4]] = 0
                            if stor8.length < 1:
                                revert with 0, 17
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor8[stor8.length].field_0 = 0
                            mem[32] = 5
                            address(stor5[cd[4]].field_0) = 0
                            address(stor5[cd[4]].field_256) = 0
                            stor5[cd[4]].field_512 = 0
                            stor5[cd[4]].field_768 = 0
                            idx = 0
                            while stor5[cd[4]].field_768 > idx:
                                stor5[cd[4]][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1024 = 0
                            mem[0] = sha3(cd[4], 5) + 4
                            idx = 0
                            while stor5[cd[4]].field_1024 > idx:
                                stor5[cd[4]][idx + 4].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1280 = 0
                            stor5[cd[4]].field_1536 = 0
                            uint8(stor5[cd[4]].field_1792) = 0
                            if stor3 > !stor2:
                                revert with 0, 17
                            if stor1.length > !(stor3 + stor2):
                                revert with 0, 17
                            stor1.length = stor1.length + stor3 + stor2
                            mem[mem[64]] = cd[4]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = 96
                            _3530 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _3530) + 32]
                        else:
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor7[stor8[stor8.length].field_0] = stor7[cd[4]]
                            if stor7[cd[4]] >= stor8.length:
                                revert with 0, 50
                            stor8[stor7[cd[4]]].field_0 = stor8[stor8.length].field_0
                            stor7[cd[4]] = 0
                            if stor8.length < 1:
                                revert with 0, 17
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor8[stor8.length].field_0 = 0
                            mem[32] = 5
                            address(stor5[cd[4]].field_0) = 0
                            address(stor5[cd[4]].field_256) = 0
                            stor5[cd[4]].field_512 = 0
                            stor5[cd[4]].field_768 = 0
                            idx = 0
                            while stor5[cd[4]].field_768 > idx:
                                stor5[cd[4]][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1024 = 0
                            mem[0] = sha3(cd[4], 5) + 4
                            idx = 0
                            while stor5[cd[4]].field_1024 > idx:
                                stor5[cd[4]][idx + 4].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1280 = 0
                            stor5[cd[4]].field_1536 = 0
                            uint8(stor5[cd[4]].field_1792) = 0
                            if stor3 > !stor2:
                                revert with 0, 17
                            if stor1.length > !(stor3 + stor2):
                                revert with 0, 17
                            stor1.length = stor1.length + stor3 + stor2
                            mem[mem[64]] = cd[4]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = 96
                            _3531 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _3531) + 32]
            else:
                mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 480 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                idx = 0
                while idx < stor5[cd[4]].field_768:
                    if idx >= mem[mem[(32 * ('cd', 36).length) + 224]]:
                        revert with 0, 50
                    _2475 = mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 224] + 32]
                    if mem[mem[(32 * ('cd', 36).length) + 256]] <= idx:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _2511 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2511
                        require ext_code.size(stor4)
                        staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args msg.sender, _2511
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2557 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2557] < 1:
                            revert with 0, 'insufficient gem balance'
                        mem[mem[64] + 4] = _2511
                        require ext_code.size(address(_2475))
                        staticcall address(_2475).tokenType(uint256 arg1) with:
                                gas gas_remaining wei
                               args _2511
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2661 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2661] < 3
                        if mem[_2661] > 2:
                            revert with 0, 33
                        if mem[_2661] != 2:
                            revert with 0, 'invalid token type'
                    else:
                        if idx >= mem[mem[(32 * ('cd', 36).length) + 256]]:
                            revert with 0, 50
                        _2489 = mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 256] + 32]
                        if idx >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 256] + 32]:
                            mem[(32 * idx) + 128] = mem[(32 * idx) + mem[(32 * ('cd', 36).length) + 256] + 32]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2489
                            require ext_code.size(stor4)
                            staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, _2489
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2566 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_2566] < 1:
                                revert with 0, 'insufficient gem balance'
                            mem[mem[64] + 4] = _2489
                            require ext_code.size(address(_2475))
                            staticcall address(_2475).tokenType(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _2489
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2668 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2668] < 3
                            if mem[_2668] > 2:
                                revert with 0, 33
                            if mem[_2668] != 2:
                                revert with 0, 'invalid token type'
                        else:
                            _2520 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2520
                            require ext_code.size(stor4)
                            staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, _2520
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2567 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_2567] < 1:
                                revert with 0, 'insufficient gem balance'
                            mem[mem[64] + 4] = _2520
                            require ext_code.size(address(_2475))
                            staticcall address(_2475).tokenType(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _2520
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2669 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2669] < 3
                            if mem[_2669] > 2:
                                revert with 0, 33
                            if mem[_2669] != 2:
                                revert with 0, 'invalid token type'
                    if idx >= mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 480] = 1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _2468 = mem[(32 * ('cd', 36).length) + 192]
                mem[mem[64] + 4] = mem[(32 * ('cd', 36).length) + 140 len 20]
                mem[mem[64] + 36] = _2468
                require ext_code.size(stor4)
                staticcall stor4.balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], _2468
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2504 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_2504]:
                    call msg.sender with:
                       value stor3 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        return 0
                _2538 = mem[(32 * ('cd', 36).length) + 128]
                mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(_2538)
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 100] = (32 * mem[96]) + 192
                _2969 = mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448]
                mem[mem[64] + (32 * mem[96]) + 196] = mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 448]
                mem[mem[64] + (32 * mem[96]) + 228 len 32 * _2969] = mem[(32 * ('cd', 36).length) + (32 * stor5[cd[4]].field_768) + (32 * stor5[cd[4]].field_1024) + 480 len 32 * _2969]
                mem[mem[64] + 132] = (32 * mem[96]) + (32 * _2969) + 224
                mem[mem[64] + (32 * mem[96]) + (32 * _2969) + 228] = 0
                require ext_code.size(stor4)
                call stor4.safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(_2538), 160, (32 * mem[96]) + 192, (32 * mem[96]) + (32 * _2969) + 224, mem[96], mem[mem[64] + 196 len (32 * mem[96]) + (32 * _2969) + 32], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3210 = mem[(32 * ('cd', 36).length) + 192]
                mem[mem[64] + 4] = mem[(32 * ('cd', 36).length) + 140 len 20]
                mem[mem[64] + 68] = _3210
                mem[mem[64] + 100] = 1
                mem[mem[64] + 132] = 160
                mem[mem[64] + 164] = 0
                require ext_code.size(stor4)
                call stor4.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], msg.sender, _3210, 1, 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor8.length:
                    mem[32] = 5
                    address(stor5[cd[4]].field_0) = 0
                    address(stor5[cd[4]].field_256) = 0
                    stor5[cd[4]].field_512 = 0
                    stor5[cd[4]].field_768 = 0
                    idx = 0
                    while stor5[cd[4]].field_768 > idx:
                        stor5[cd[4]][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor5[cd[4]].field_1024 = 0
                    mem[0] = sha3(cd[4], 5) + 4
                    idx = 0
                    while stor5[cd[4]].field_1024 > idx:
                        stor5[cd[4]][idx + 4].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor5[cd[4]].field_1280 = 0
                    stor5[cd[4]].field_1536 = 0
                    uint8(stor5[cd[4]].field_1792) = 0
                    if stor3 > !stor2:
                        revert with 0, 17
                    if stor1.length > !(stor3 + stor2):
                        revert with 0, 17
                    stor1.length = stor1.length + stor3 + stor2
                    mem[mem[64]] = cd[4]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = 96
                    _3537 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    var101001 = _3537
                    emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _3537) + 32]
                else:
                    if stor7[cd[4]] >= stor8.length:
                        revert with 0, 50
                    if stor8[stor7[cd[4]]].field_0 != cd[4]:
                        mem[32] = 5
                        address(stor5[cd[4]].field_0) = 0
                        address(stor5[cd[4]].field_256) = 0
                        stor5[cd[4]].field_512 = 0
                        stor5[cd[4]].field_768 = 0
                        idx = 0
                        while stor5[cd[4]].field_768 > idx:
                            stor5[cd[4]][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor5[cd[4]].field_1024 = 0
                        mem[0] = sha3(cd[4], 5) + 4
                        idx = 0
                        while stor5[cd[4]].field_1024 > idx:
                            stor5[cd[4]][idx + 4].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor5[cd[4]].field_1280 = 0
                        stor5[cd[4]].field_1536 = 0
                        uint8(stor5[cd[4]].field_1792) = 0
                        if stor3 > !stor2:
                            revert with 0, 17
                        if stor1.length > !(stor3 + stor2):
                            revert with 0, 17
                        stor1.length = stor1.length + stor3 + stor2
                        mem[mem[64]] = cd[4]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = 96
                        _3536 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        var101001 = _3536
                        emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _3536) + 32]
                    else:
                        if stor8.length < 1:
                            revert with 0, 17
                        if stor8.length - 1 == stor7[cd[4]]:
                            stor7[cd[4]] = 0
                            if stor8.length < 1:
                                revert with 0, 17
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor8[stor8.length].field_0 = 0
                            mem[32] = 5
                            address(stor5[cd[4]].field_0) = 0
                            address(stor5[cd[4]].field_256) = 0
                            stor5[cd[4]].field_512 = 0
                            stor5[cd[4]].field_768 = 0
                            idx = 0
                            while stor5[cd[4]].field_768 > idx:
                                stor5[cd[4]][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1024 = 0
                            mem[0] = sha3(cd[4], 5) + 4
                            idx = 0
                            while stor5[cd[4]].field_1024 > idx:
                                stor5[cd[4]][idx + 4].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1280 = 0
                            stor5[cd[4]].field_1536 = 0
                            uint8(stor5[cd[4]].field_1792) = 0
                            if stor3 > !stor2:
                                revert with 0, 17
                            if stor1.length > !(stor3 + stor2):
                                revert with 0, 17
                            stor1.length = stor1.length + stor3 + stor2
                            mem[mem[64]] = cd[4]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = 96
                            _3534 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _3534) + 32]
                        else:
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor7[stor8[stor8.length].field_0] = stor7[cd[4]]
                            if stor7[cd[4]] >= stor8.length:
                                revert with 0, 50
                            stor8[stor7[cd[4]]].field_0 = stor8[stor8.length].field_0
                            stor7[cd[4]] = 0
                            if stor8.length < 1:
                                revert with 0, 17
                            if stor8.length - 1 >= stor8.length:
                                revert with 0, 50
                            stor8[stor8.length].field_0 = 0
                            mem[32] = 5
                            address(stor5[cd[4]].field_0) = 0
                            address(stor5[cd[4]].field_256) = 0
                            stor5[cd[4]].field_512 = 0
                            stor5[cd[4]].field_768 = 0
                            idx = 0
                            while stor5[cd[4]].field_768 > idx:
                                stor5[cd[4]][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1024 = 0
                            mem[0] = sha3(cd[4], 5) + 4
                            idx = 0
                            while stor5[cd[4]].field_1024 > idx:
                                stor5[cd[4]][idx + 4].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor5[cd[4]].field_1280 = 0
                            stor5[cd[4]].field_1536 = 0
                            uint8(stor5[cd[4]].field_1792) = 0
                            if stor3 > !stor2:
                                revert with 0, 17
                            if stor1.length > !(stor3 + stor2):
                                revert with 0, 17
                            stor1.length = stor1.length + stor3 + stor2
                            mem[mem[64]] = cd[4]
                            mem[mem[64] + 32] = msg.sender
                            mem[mem[64] + 64] = 96
                            _3535 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            emit 0xb1213d48: cd[4], msg.sender, 96, mem[mem[64] + 96 len (32 * _3535) + 32]
    return 1
}



}
