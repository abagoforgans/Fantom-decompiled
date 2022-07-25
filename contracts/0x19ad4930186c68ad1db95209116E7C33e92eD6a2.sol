contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
address owner;
array of uint256 stor1;
address sub_270e5326Address;
uint256 sub_4c822e6b;
uint256 serviceFee;
address stor5;
uint256 sub_e275c997;
mapping of uint8 stor7;
mapping of struct stor8;

function sub_270e5326(?) {
    return sub_270e5326Address
}

function sub_4c822e6b(?) {
    return sub_4c822e6b
}

function serviceFee() {
    return serviceFee
}

function owner() {
    return owner
}

function sub_9cdd1453(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor7[arg1])
}

function sub_e275c997(?) {
    return sub_e275c997
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setServiceFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    serviceFee = arg1
    emit 0x67c99114: arg1
}

function setBypassAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4c822e6b = arg1
    emit 0xb1860c32: arg1
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function setFeeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = arg1
    emit NewFeeReceiver(arg1);
}

function sub_3348c700(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_270e5326Address = address(arg1)
    emit 0xeb9ba8a5: address(arg1)
}

function rescueETH(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: FTM_TRANSFER_FAILED'
}

function onERC721Received(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    return 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function sub_1ebd4266(?) {
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    if stor7[msg.sender]:
        revert with 0, 'getBypass: already obtianed'
    if not sub_270e5326Address:
        revert with 0, 'getBypass: not active'
    require ext_code.size(sub_270e5326Address)
    call sub_270e5326Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor5, sub_4c822e6b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor7[msg.sender] = 1
    emit 0x5932ce16: msg.sender, sub_4c822e6b, sub_270e5326Address
    stor1.length = 1
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function sub_65b6c33d(?) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 8
    mem[64] = (32 * stor8[arg1].field_0) + 320
    mem[288] = stor8[arg1].field_0
    s = 320
    idx = 0
    while idx < stor8[arg1].field_0:
        mem[0] = sha3(arg1, 8)
        _47 = mem[64]
        mem[64] = mem[64] + 128
        mem[_47] = address(stor8[arg1][idx].field_0)
        mem[_47 + 32] = uint16(stor8[arg1][idx].field_160)
        _48 = mem[64]
        mem[64] = mem[64] + (32 * stor8[arg1][idx].field_256) + 32
        mem[_48] = stor8[arg1][idx].field_256
        if not stor8[arg1][idx].field_256:
            mem[_47 + 64] = _48
            _49 = mem[64]
            mem[64] = mem[64] + (32 * stor8[arg1][idx].field_512) + 32
            mem[_49] = stor8[arg1][idx].field_512
            if stor8[arg1][idx].field_512:
                mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 2
                mem[_49 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                t = _49 + 32
                u = sha3(mem[0])
                while _49 + (32 * stor8[arg1][idx].field_512) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_47 + 96] = _49
        else:
            mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 1
            mem[_48 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 1)].field_0
            t = _48 + 32
            u = sha3(mem[0])
            while _48 + (32 * stor8[arg1][idx].field_256) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_47 + 64] = _48
            _120 = mem[64]
            mem[64] = mem[64] + (32 * stor8[arg1][idx].field_512) + 32
            mem[_120] = stor8[arg1][idx].field_512
            if stor8[arg1][idx].field_512:
                mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 2
                mem[_120 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                t = _120 + 32
                u = sha3(mem[0])
                while _120 + (32 * stor8[arg1][idx].field_512) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_47 + 96] = _120
        mem[s] = _47
        s = s + 32
        idx = idx + 1
        continue 
    mem[96] = 288
    _45 = mem[64]
    mem[64] = mem[64] + (32 * stor8[arg1].field_256) + 32
    mem[_45] = stor8[arg1].field_256
    s = _45 + 32
    idx = 0
    while idx < stor8[arg1].field_256:
        mem[0] = sha3(arg1, 8) + 1
        _93 = mem[64]
        mem[64] = mem[64] + 128
        mem[_93] = address(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_0)
        mem[_93 + 32] = uint16(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_160)
        _94 = mem[64]
        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256) + 32
        mem[_94] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256
        if not stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256:
            mem[_93 + 64] = _94
            _96 = mem[64]
            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
            mem[_96] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512
            if stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 2
                mem[_96 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                t = _96 + 32
                u = sha3(mem[0])
                while _96 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_93 + 96] = _96
        else:
            mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 1
            mem[_94 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 1)].field_0
            t = _94 + 32
            u = sha3(mem[0])
            while _94 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_93 + 64] = _94
            _142 = mem[64]
            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
            mem[_142] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512
            if stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 2
                mem[_142 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                t = _142 + 32
                u = sha3(mem[0])
                while _142 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_93 + 96] = _142
        mem[s] = _93
        s = s + 32
        idx = idx + 1
        continue 
    mem[128] = _45
    mem[160] = address(stor8[arg1].field_512)
    mem[192] = address(stor8[arg1].field_768)
    mem[224] = bool(uint8(stor8[arg1].field_928))
    mem[256] = stor8[arg1].field_1024
    _86 = mem[96]
    _95 = mem[64]
    mem[mem[64]] = 192
    _99 = mem[_86]
    mem[mem[64] + 192] = mem[_86]
    idx = 0
    s = _86 + 32
    t = mem[64] + (32 * _99) + 224
    u = mem[64] + 224
    while idx < _99:
        mem[u] = t + -_95 - 224
        _121 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_121 + 62 len 2]
        _124 = mem[_121 + 64]
        mem[t + 64] = 128
        _126 = mem[_124]
        mem[t + 128] = mem[_124]
        v = 0
        w = _124 + 32
        x = t + 160
        while v < _126:
            mem[x] = mem[w]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        _150 = mem[_121 + 96]
        mem[t + 96] = (32 * _126) + 160
        _152 = mem[_150]
        mem[t + (32 * _126) + 160] = mem[_150]
        v = 0
        w = _150 + 32
        x = t + (32 * _126) + 192
        while v < _152:
            mem[x] = mem[w]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        idx = idx + 1
        s = s + 32
        t = t + (32 * _126) + (32 * _152) + 192
        u = u + 32
        continue 
    mem[_95 + 32] = t - _95
    _127 = mem[_45]
    mem[t] = mem[_45]
    idx = 0
    s = _45 + 32
    u = t + (32 * _127) + 32
    v = t + 32
    while idx < _127:
        mem[v] = u + -t - 32
        _143 = mem[s]
        mem[u] = mem[mem[s] + 12 len 20]
        mem[u + 32] = mem[_143 + 62 len 2]
        _146 = mem[_143 + 64]
        mem[u + 64] = 128
        _149 = mem[_146]
        mem[u + 128] = mem[_146]
        t = 0
        w = _146 + 32
        x = u + 160
        while t < _149:
            mem[x] = mem[w]
            t = t + 1
            w = w + 32
            x = x + 32
            continue 
        _160 = mem[_143 + 96]
        mem[u + 96] = (32 * _149) + 160
        _161 = mem[_160]
        mem[u + (32 * _149) + 160] = mem[_160]
        t = 0
        w = _160 + 32
        x = u + (32 * _149) + 192
        while t < _161:
            mem[x] = mem[w]
            t = t + 1
            w = w + 32
            x = x + 32
            continue 
        idx = idx + 1
        s = s + 32
        u = u + (32 * _149) + (32 * _161) + 192
        v = v + 32
        continue 
    mem[_95 + 64] = address(stor8[arg1].field_512)
    mem[_95 + 96] = address(stor8[arg1].field_768)
    mem[_95 + 128] = bool(uint8(stor8[arg1].field_928))
    mem[_95 + 160] = stor8[arg1].field_1024
    return memory
      from mem[64]
       len u - mem[64]
}

function cancelTrade(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    mem[0] = arg1
    mem[32] = 8
    mem[64] = (32 * stor8[arg1].field_0) + 320
    mem[288] = stor8[arg1].field_0
    s = 320
    idx = 0
    while idx < stor8[arg1].field_0:
        mem[0] = sha3(arg1, 8)
        _128 = mem[64]
        mem[64] = mem[64] + 128
        mem[_128] = address(stor8[arg1][idx].field_0)
        mem[_128 + 32] = uint16(stor8[arg1][idx].field_160)
        _129 = mem[64]
        mem[64] = mem[64] + (32 * stor8[arg1][idx].field_256) + 32
        mem[_129] = stor8[arg1][idx].field_256
        if not stor8[arg1][idx].field_256:
            mem[_128 + 64] = _129
            _130 = mem[64]
            mem[64] = mem[64] + (32 * stor8[arg1][idx].field_512) + 32
            mem[_130] = stor8[arg1][idx].field_512
            if stor8[arg1][idx].field_512:
                mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 2
                mem[_130 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                t = _130 + 32
                u = sha3(mem[0])
                while _130 + (32 * stor8[arg1][idx].field_512) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_128 + 96] = _130
        else:
            mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 1
            mem[_129 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 1)].field_0
            t = _129 + 32
            u = sha3(mem[0])
            while _129 + (32 * stor8[arg1][idx].field_256) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_128 + 64] = _129
            _362 = mem[64]
            mem[64] = mem[64] + (32 * stor8[arg1][idx].field_512) + 32
            mem[_362] = stor8[arg1][idx].field_512
            if stor8[arg1][idx].field_512:
                mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 2
                mem[_362 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                t = _362 + 32
                u = sha3(mem[0])
                while _362 + (32 * stor8[arg1][idx].field_512) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_128 + 96] = _362
        mem[s] = _128
        s = s + 32
        idx = idx + 1
        continue 
    mem[96] = 288
    _126 = mem[64]
    mem[64] = mem[64] + (32 * stor8[arg1].field_256) + 32
    mem[_126] = stor8[arg1].field_256
    s = _126 + 32
    idx = 0
    while idx < stor8[arg1].field_256:
        mem[0] = sha3(arg1, 8) + 1
        _248 = mem[64]
        mem[64] = mem[64] + 128
        mem[_248] = address(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_0)
        mem[_248 + 32] = uint16(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_160)
        _249 = mem[64]
        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256) + 32
        mem[_249] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256
        if not stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256:
            mem[_248 + 64] = _249
            _252 = mem[64]
            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
            mem[_252] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512
            if stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 2
                mem[_252 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                t = _252 + 32
                u = sha3(mem[0])
                while _252 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_248 + 96] = _252
        else:
            mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 1
            mem[_249 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 1)].field_0
            t = _249 + 32
            u = sha3(mem[0])
            while _249 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_248 + 64] = _249
            _455 = mem[64]
            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
            mem[_455] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512
            if stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 2
                mem[_455 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                t = _455 + 32
                u = sha3(mem[0])
                while _455 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_248 + 96] = _455
        mem[s] = _248
        s = s + 32
        idx = idx + 1
        continue 
    mem[128] = _126
    mem[160] = address(stor8[arg1].field_512)
    mem[192] = address(stor8[arg1].field_768)
    mem[224] = bool(uint8(stor8[arg1].field_928))
    mem[256] = stor8[arg1].field_1024
    if arg1 > sub_e275c997:
        revert with 0, 'cancelTrade: trade non-existent'
    if uint8(stor8[arg1].field_928):
        revert with 0, 'cancelTrade: trade non-existent'
    if address(stor8[arg1].field_512) != msg.sender:
        revert with 0, 'cancelTrade: must be creator'
    uint8(stor8[arg1].field_928) = 1
    _259 = mem[96]
    if 0 >= mem[mem[96]]:
        revert with 0, 50
    if not mem[mem[mem[96] + 32] + 12 len 20]:
        emit TradeCanceled(arg1, address(stor8[arg1].field_512), address(stor8[arg1].field_768));
    else:
        _361 = mem[mem[96]]
        idx = 0
        while uint8(idx) < _361:
            if uint8(idx) >= mem[_259]:
                revert with 0, 50
            if uint8(idx) >= mem[_259]:
                revert with 0, 50
            if 20 == mem[mem[(32 * uint8(idx)) + _259 + 32] + 62 len 2]:
                _376 = mem[mem[(32 * uint8(idx)) + _259 + 32]]
                if uint8(idx) >= mem[_259]:
                    revert with 0, 50
                if 0 >= mem[mem[mem[(32 * uint8(idx)) + _259 + 32] + 96]]:
                    revert with 0, 50
                _383 = mem[mem[mem[(32 * uint8(idx)) + _259 + 32] + 96] + 32]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(stor8[arg1].field_512)
                mem[mem[64] + 68] = _383
                require ext_code.size(address(_376))
                call address(_376).0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), address(stor8[arg1].field_512), _383
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _405 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_405] == bool(mem[_405])
            else:
                if uint8(idx) >= mem[_259]:
                    revert with 0, 50
                if 777 == mem[mem[(32 * uint8(idx)) + _259 + 32] + 62 len 2]:
                    _388 = mem[mem[(32 * uint8(idx)) + _259 + 32]]
                    if uint8(idx) >= mem[_259]:
                        revert with 0, 50
                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _259 + 32] + 96]]:
                        revert with 0, 50
                    _398 = mem[mem[mem[(32 * uint8(idx)) + _259 + 32] + 96] + 32]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(stor8[arg1].field_512)
                    mem[mem[64] + 68] = _398
                    require ext_code.size(address(_388))
                    call address(_388).0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), address(stor8[arg1].field_512), _398
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _427 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_427] == bool(mem[_427])
                else:
                    if 721 == mem[mem[(32 * uint8(idx)) + _259 + 32] + 62 len 2]:
                        if uint8(idx) < mem[_259]:
                            if uint8(var45003) >= mem[mem[mem[(32 * uint8(idx)) + _259 + 32] + 64]]:
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                continue 
                            if uint8(idx) < mem[_259]:
                                if uint8(idx) < mem[_259]:
                                    _527 = mem[mem[(32 * uint8(idx)) + _259 + 32] + 64]
                                    _528 = mem[mem[mem[(32 * uint8(idx)) + _259 + 32] + 64]]
                                    t = mem[mem[(32 * uint8(idx)) + _259 + 32] + 12 len 20]
                                    s = var49003
                                    while uint8(s) < _528:
                                        _529 = mem[(32 * uint8(s)) + _527 + 32]
                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                        mem[mem[64] + 68] = _529
                                        require ext_code.size(t)
                                        call t.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), address(stor8[arg1].field_512), _529
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if uint8(s) == 255:
                                            revert with 0, 17
                                        if uint8(idx) >= mem[_259]:
                                            revert with 0, 50
                                        if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _259 + 32] + 64]]:
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) >= mem[_259]:
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_259]:
                                            revert with 0, 50
                                        t = mem[mem[(32 * uint8(idx)) + _259 + 32] + 12 len 20]
                                        s = uint8(s) + 1
                                        continue 
                        revert with 0, 50
                    if uint8(idx) >= mem[_259]:
                        revert with 0, 50
                    if mem[mem[(32 * uint8(idx)) + _259 + 32] + 62 len 2] != 1155:
                        revert with 0, 'createTrade: unsupported erc type'
                    if uint8(idx) >= mem[_259]:
                        revert with 0, 50
                    if uint8(idx) >= mem[_259]:
                        revert with 0, 50
                    if mem[mem[mem[(32 * uint8(idx)) + _259 + 32] + 64]] <= 1:
                        _419 = mem[mem[(32 * uint8(idx)) + _259 + 32]]
                        if uint8(idx) >= mem[_259]:
                            revert with 0, 50
                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _259 + 32] + 64]]:
                            revert with 0, 50
                        _436 = mem[mem[mem[(32 * uint8(idx)) + _259 + 32] + 64] + 32]
                        if uint8(idx) >= mem[_259]:
                            revert with 0, 50
                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _259 + 32] + 96]]:
                            revert with 0, 50
                        _446 = mem[mem[mem[(32 * uint8(idx)) + _259 + 32] + 96] + 32]
                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                        mem[mem[64] + 68] = _436
                        mem[mem[64] + 100] = _446
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        require ext_code.size(address(_419))
                        call address(_419).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), address(stor8[arg1].field_512), _436, _446, 160, 0
                    else:
                        _422 = mem[mem[(32 * uint8(idx)) + _259 + 32]]
                        if uint8(idx) >= mem[_259]:
                            revert with 0, 50
                        _432 = mem[mem[(32 * uint8(idx)) + _259 + 32] + 64]
                        if uint8(idx) >= mem[_259]:
                            revert with 0, 50
                        _439 = mem[mem[(32 * uint8(idx)) + _259 + 32] + 96]
                        mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                        mem[mem[64] + 68] = 160
                        _448 = mem[_432]
                        mem[mem[64] + 164] = mem[_432]
                        s = 0
                        t = _432 + 32
                        u = mem[64] + 196
                        while s < _448:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = (32 * _448) + 192
                        _462 = mem[_439]
                        mem[mem[64] + (32 * _448) + 196] = mem[_439]
                        s = 0
                        t = _439 + 32
                        u = mem[64] + (32 * _448) + 228
                        while s < _462:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 132] = (32 * _448) + (32 * _462) + 224
                        mem[mem[64] + (32 * _448) + (32 * _462) + 228] = 0
                        require ext_code.size(address(_422))
                        call address(_422).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), address(stor8[arg1].field_512), 160, (32 * _448) + 192, (32 * _448) + (32 * _462) + 224, mem[mem[64] + 164 len (32 * _448) + (32 * _462) + 64], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if uint8(idx) == 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            continue 
        emit TradeCanceled(arg1, mem[172 len 20], mem[204 len 20]);
    stor1.length = 1
}

function sub_a780073c(?) {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 68).length) + 97
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = 128
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        require cd[idx] <= test266151307()
        require 128 <= calldata.size + -cd[68] + -cd[idx] - 36
        _1024 = mem[64]
        if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 128
        require cd[(cd[68] + cd[idx] + 36)] == address(cd[(cd[68] + cd[idx] + 36)])
        mem[_1024] = cd[(cd[68] + cd[idx] + 36)]
        require cd[(cd[68] + cd[idx] + 68)] == uint16(cd[(cd[68] + cd[idx] + 68)])
        mem[_1024 + 32] = cd[(cd[68] + cd[idx] + 68)]
        require cd[(cd[68] + cd[idx] + 100)] <= test266151307()
        require cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 67 < calldata.size
        if cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)] > test266151307():
            revert with 0, 65
        _1027 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)]) + 1
        mem[_1027] = cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)]
        require cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + (32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)]) + 68 <= calldata.size
        t = cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 68
        u = _1027 + 32
        while t < cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + (32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)]) + 68:
            mem[u] = cd[t]
            t = t + 32
            u = u + 32
            continue 
        mem[_1024 + 64] = _1027
        require cd[(cd[68] + cd[idx] + 132)] <= test266151307()
        require cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 67 < calldata.size
        if cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)] > test266151307():
            revert with 0, 65
        _2058 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)]) + 1
        mem[_2058] = cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)]
        require cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + (32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)]) + 68 <= calldata.size
        t = cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 68
        u = _2058 + 32
        while t < cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + (32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)]) + 68:
            mem[u] = cd[t]
            t = t + 32
            u = u + 32
            continue 
        mem[_1024 + 96] = _2058
        mem[s] = _1024
        idx = idx + 32
        s = s + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    _1025 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 100).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 100).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 100).length) + 1
    mem[_1025] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = cd[100] + 36
    t = _1025 + 32
    while idx < cd[100] + (32 * ('cd', 100).length) + 36:
        require cd[idx] <= test266151307()
        require 128 <= calldata.size + -cd[100] + -cd[idx] - 36
        _2046 = mem[64]
        if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 128
        require cd[(cd[100] + cd[idx] + 36)] == address(cd[(cd[100] + cd[idx] + 36)])
        mem[_2046] = cd[(cd[100] + cd[idx] + 36)]
        require cd[(cd[100] + cd[idx] + 68)] == uint16(cd[(cd[100] + cd[idx] + 68)])
        mem[_2046 + 32] = cd[(cd[100] + cd[idx] + 68)]
        require cd[(cd[100] + cd[idx] + 100)] <= test266151307()
        require cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 67 < calldata.size
        if cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)] > test266151307():
            revert with 0, 65
        _2170 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)]) + 1
        mem[_2170] = cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)]
        require cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + (32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)]) + 68 <= calldata.size
        s = cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 68
        u = _2170 + 32
        while s < cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + (32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)]) + 68:
            mem[u] = cd[s]
            s = s + 32
            u = u + 32
            continue 
        mem[_2046 + 64] = _2170
        require cd[(cd[100] + cd[idx] + 132)] <= test266151307()
        require cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 67 < calldata.size
        if cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)] > test266151307():
            revert with 0, 65
        _3296 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)]) + 1
        mem[_3296] = cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)]
        require cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + (32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)]) + 68 <= calldata.size
        s = cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 68
        u = _3296 + 32
        while s < cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + (32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)]) + 68:
            mem[u] = cd[s]
            s = s + 32
            u = u + 32
            continue 
        mem[_2046 + 96] = _3296
        mem[t] = _2046
        idx = idx + 32
        t = t + 32
        continue 
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    if not sub_270e5326Address:
        if 0 >= mem[96]:
            revert with 0, 50
        if not mem[mem[128] + 12 len 20]:
            mem[0] = sub_e275c997
            mem[32] = 8
            t = 0
            while uint8(t) < mem[96]:
                if uint8(t) >= mem[96]:
                    revert with 0, 50
                stor8[stor6].field_0++
                mem[0] = sha3(sub_e275c997, 8)
                address(stor8[stor6][stor8[stor6].field_0].field_0) = mem[mem[(32 * uint8(t)) + 128] + 12 len 20]
                uint16(stor8[stor6][stor8[stor6].field_0].field_160) = mem[mem[(32 * uint8(t)) + 128] + 62 len 2]
                _3083 = mem[mem[mem[(32 * uint8(t)) + 128] + 64]]
                stor8[stor6][stor8[stor6].field_0].field_256 = mem[mem[mem[(32 * uint8(t)) + 128] + 64]]
                mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1
                if not _3083:
                    idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    _4136 = mem[mem[mem[(32 * uint8(t)) + 128] + 96]]
                    stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(t)) + 128] + 96]]
                    mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                    if not _4136:
                        idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                        u = mem[mem[(32 * uint8(t)) + 128] + 96] + 32
                        while mem[mem[(32 * uint8(t)) + 128] + 96] + (32 * _4136) + 32 > u:
                            stor[s] = mem[u]
                            s = s + 1
                            u = u + 32
                            continue 
                        idx = s
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                    u = mem[mem[(32 * uint8(t)) + 128] + 64] + 32
                    while mem[mem[(32 * uint8(t)) + 128] + 64] + (32 * _3083) + 32 > u:
                        stor[s] = mem[u]
                        s = s + 1
                        u = u + 32
                        continue 
                    idx = s
                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    _4930 = mem[mem[mem[(32 * uint8(t)) + 128] + 96]]
                    stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(t)) + 128] + 96]]
                    mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                    if not _4930:
                        idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                        u = mem[mem[(32 * uint8(t)) + 128] + 96] + 32
                        while mem[mem[(32 * uint8(t)) + 128] + 96] + (32 * _4930) + 32 > u:
                            stor[s] = mem[u]
                            s = s + 1
                            u = u + 32
                            continue 
                        idx = s
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                if uint8(t) == 255:
                    revert with 0, 17
                t = uint8(t) + 1
                continue 
            _4062 = mem[_1025]
            u = 0
            while uint8(u) < _4062:
                if uint8(u) >= mem[_1025]:
                    revert with 0, 50
                stor8[stor6].field_256++
                mem[0] = sha3(sub_e275c997, 8) + 1
                address(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_0) = mem[mem[(32 * uint8(u)) + _1025 + 32] + 12 len 20]
                uint16(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_160) = mem[mem[(32 * uint8(u)) + _1025 + 32] + 62 len 2]
                _4097 = mem[mem[mem[(32 * uint8(u)) + _1025 + 32] + 64]]
                stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 = mem[mem[mem[(32 * uint8(u)) + _1025 + 32] + 64]]
                mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1
                if not _4097:
                    idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    _4928 = mem[mem[mem[(32 * uint8(u)) + _1025 + 32] + 96]]
                    stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(u)) + _1025 + 32] + 96]]
                    mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                    if not _4928:
                        idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                        t = mem[mem[(32 * uint8(u)) + _1025 + 32] + 96] + 32
                        while mem[mem[(32 * uint8(u)) + _1025 + 32] + 96] + (32 * _4928) + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        idx = s
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    t = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                    v = mem[mem[(32 * uint8(u)) + _1025 + 32] + 64] + 32
                    while mem[mem[(32 * uint8(u)) + _1025 + 32] + 64] + (32 * _4097) + 32 > v:
                        stor[t] = mem[v]
                        t = t + 1
                        v = v + 32
                        continue 
                    idx = t
                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    _5624 = mem[mem[mem[(32 * uint8(u)) + _1025 + 32] + 96]]
                    stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(u)) + _1025 + 32] + 96]]
                    mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                    if not _5624:
                        idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                        t = mem[mem[(32 * uint8(u)) + _1025 + 32] + 96] + 32
                        while mem[mem[(32 * uint8(u)) + _1025 + 32] + 96] + (32 * _5624) + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        idx = s
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                if uint8(u) == 255:
                    revert with 0, 17
                u = uint8(u) + 1
                continue 
            if not cd[36]:
                stor8[stor6].field_1024 = 0
                stor8[stor6].field_512 = Mask(96, 0, stor8[stor6].field_672)
                address(stor8[stor6].field_768) = address(cd[4])
                if sub_e275c997 == -1:
                    revert with 0, 17
                _4203 = mem[64]
                mem[64] = mem[64] + 192
                _4204 = mem[64]
                mem[64] = mem[64] + (32 * stor8[stor6].field_0) + 32
                mem[_4204] = stor8[stor6].field_0
                u = _4204 + 32
                s = 0
                while s < stor8[stor6].field_0:
                    mem[0] = sha3(sub_e275c997, 8)
                    _4842 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_4842] = address(stor8[stor6][s].field_0)
                    mem[_4842 + 32] = uint16(stor8[stor6][s].field_160)
                    _4843 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6][s].field_256) + 32
                    mem[_4843] = stor8[stor6][s].field_256
                    if not stor8[stor6][s].field_256:
                        mem[_4842 + 64] = _4843
                        _4880 = mem[64]
                        mem[64] = mem[64] + (32 * stor8[stor6][s].field_512) + 32
                        mem[_4880] = stor8[stor6][s].field_512
                        if stor8[stor6][s].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * s) + 2
                            mem[_4880 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * s) + 2)].field_0
                            t = _4880 + 32
                            v = sha3(mem[0])
                            while _4880 + (32 * stor8[stor6][s].field_512) > t:
                                mem[t + 32] = stor1[v]
                                t = t + 32
                                v = v + 1
                                continue 
                        mem[_4842 + 96] = _4880
                    else:
                        mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * s) + 1
                        mem[_4843 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * s) + 1)].field_0
                        t = _4843 + 32
                        v = sha3(mem[0])
                        while _4843 + (32 * stor8[stor6][s].field_256) > t:
                            mem[t + 32] = stor1[v]
                            t = t + 32
                            v = v + 1
                            continue 
                        mem[_4842 + 64] = _4843
                        _6064 = mem[64]
                        mem[64] = mem[64] + (32 * stor8[stor6][s].field_512) + 32
                        mem[_6064] = stor8[stor6][s].field_512
                        if stor8[stor6][s].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * s) + 2
                            mem[_6064 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * s) + 2)].field_0
                            t = _6064 + 32
                            v = sha3(mem[0])
                            while _6064 + (32 * stor8[stor6][s].field_512) > t:
                                mem[t + 32] = stor1[v]
                                t = t + 32
                                v = v + 1
                                continue 
                        mem[_4842 + 96] = _6064
                    mem[u] = _4842
                    u = u + 32
                    s = s + 1
                    continue 
                mem[_4203] = _4204
                _4840 = mem[64]
                mem[64] = mem[64] + (32 * stor8[stor6].field_256) + 32
                mem[_4840] = stor8[stor6].field_256
                u = _4840 + 32
                s = 0
                while s < stor8[stor6].field_256:
                    mem[0] = sha3(sub_e275c997, 8) + 1
                    _5517 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_5517] = address(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_0)
                    mem[_5517 + 32] = uint16(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_160)
                    _5518 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_256) + 32
                    mem[_5518] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_256
                    if not stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_256:
                        mem[_5517 + 64] = _5518
                        _5584 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512) + 32
                        mem[_5584] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512
                        if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * s) + 2
                            mem[_5584 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s) + 2)].field_0
                            t = _5584 + 32
                            v = sha3(mem[0])
                            while _5584 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512) > t:
                                mem[t + 32] = stor1[v]
                                t = t + 32
                                v = v + 1
                                continue 
                        mem[_5517 + 96] = _5584
                    else:
                        mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * s) + 1
                        mem[_5518 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s) + 1)].field_0
                        v = _5518 + 32
                        w = sha3(mem[0])
                        while _5518 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_256) > v:
                            mem[v + 32] = stor1[w]
                            v = v + 32
                            w = w + 1
                            continue 
                        mem[_5517 + 64] = _5518
                        _6502 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512) + 32
                        mem[_6502] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512
                        if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * s) + 2
                            mem[_6502 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s) + 2)].field_0
                            v = _6502 + 32
                            w = sha3(mem[0])
                            while _6502 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512) > v:
                                mem[v + 32] = stor1[w]
                                v = v + 32
                                w = w + 1
                                continue 
                        mem[_5517 + 96] = _6502
                    mem[u] = _5517
                    u = u + 32
                    s = s + 1
                    continue 
                mem[_4203 + 32] = _4840
                mem[_4203 + 64] = address(stor8[stor6].field_512)
                mem[_4203 + 96] = address(stor8[stor6].field_768)
                mem[_4203 + 128] = bool(uint8(stor8[stor6].field_928))
                mem[_4203 + 160] = stor8[stor6].field_1024
                _5515 = mem[64]
                mem[mem[64]] = 32
                _5583 = mem[_4203]
                mem[mem[64] + 32] = 192
                _5621 = mem[_5583]
                mem[mem[64] + 224] = mem[_5583]
                s = 0
                t = _5583 + 32
                u = mem[64] + (32 * _5621) + 256
                v = mem[64] + 256
                while s < _5621:
                    mem[v] = u + -_5515 - 256
                    _6083 = mem[t]
                    mem[u] = mem[mem[t] + 12 len 20]
                    mem[u + 32] = mem[_6083 + 62 len 2]
                    _6086 = mem[_6083 + 64]
                    mem[u + 64] = 128
                    _6153 = mem[_6086]
                    mem[u + 128] = mem[_6086]
                    w = 0
                    x = _6086 + 32
                    y = u + 160
                    while w < _6153:
                        mem[y] = mem[x]
                        w = w + 1
                        x = x + 32
                        y = y + 32
                        continue 
                    _6608 = mem[_6083 + 96]
                    mem[u + 96] = (32 * _6153) + 160
                    _6648 = mem[_6608]
                    mem[u + (32 * _6153) + 160] = mem[_6608]
                    idx = 0
                    w = _6608 + 32
                    x = u + (32 * _6153) + 192
                    while idx < _6648:
                        mem[x] = mem[w]
                        idx = idx + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    s = s + 1
                    t = t + 32
                    u = u + (32 * _6153) + (32 * _6648) + 192
                    v = v + 32
                    continue 
                _6152 = mem[_4203 + 32]
                mem[_5515 + 64] = u + -_5515 - 32
                _6187 = mem[_6152]
                mem[u] = mem[_6152]
                idx = 0
                s = _6152 + 32
                t = u + (32 * _6187) + 32
                v = u + 32
                while idx < _6187:
                    mem[v] = t + -u - 32
                    _6528 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_6528 + 62 len 2]
                    _6531 = mem[_6528 + 64]
                    mem[t + 64] = 128
                    _6607 = mem[_6531]
                    mem[t + 128] = mem[_6531]
                    u = 0
                    w = _6531 + 32
                    x = t + 160
                    while u < _6607:
                        mem[x] = mem[w]
                        u = u + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    _6883 = mem[_6528 + 96]
                    mem[t + 96] = (32 * _6607) + 160
                    _6925 = mem[_6883]
                    mem[t + (32 * _6607) + 160] = mem[_6883]
                    u = 0
                    w = _6883 + 32
                    x = t + (32 * _6607) + 192
                    while u < _6925:
                        mem[x] = mem[w]
                        u = u + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = t + (32 * _6607) + (32 * _6925) + 192
                    v = v + 32
                    continue 
                mem[_5515 + 96] = mem[_4203 + 76 len 20]
                mem[_5515 + 128] = mem[_4203 + 108 len 20]
                mem[_5515 + 160] = bool(mem[_4203 + 128])
                mem[_5515 + 192] = mem[_4203 + 160]
                emit 0x7d684fc9: mem[mem[64] len t - mem[64]], sub_e275c997 + 1, msg.sender, address(cd[4])
            else:
                if block.timestamp > !cd[36]:
                    revert with 0, 17
                stor8[stor6].field_1024 = block.timestamp + cd[36]
                stor8[stor6].field_512 = Mask(96, 0, stor8[stor6].field_672)
                address(stor8[stor6].field_768) = address(cd[4])
                if sub_e275c997 == -1:
                    revert with 0, 17
                _4254 = mem[64]
                mem[64] = mem[64] + 192
                _4255 = mem[64]
                mem[64] = mem[64] + (32 * stor8[stor6].field_0) + 32
                mem[_4255] = stor8[stor6].field_0
                s = _4255 + 32
                idx = 0
                while idx < stor8[stor6].field_0:
                    mem[0] = sha3(sub_e275c997, 8)
                    _4838 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_4838] = address(stor8[stor6][idx].field_0)
                    mem[_4838 + 32] = uint16(stor8[stor6][idx].field_160)
                    _4839 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6][idx].field_256) + 32
                    mem[_4839] = stor8[stor6][idx].field_256
                    if not stor8[stor6][idx].field_256:
                        mem[_4838 + 64] = _4839
                        _4878 = mem[64]
                        mem[64] = mem[64] + (32 * stor8[stor6][idx].field_512) + 32
                        mem[_4878] = stor8[stor6][idx].field_512
                        if stor8[stor6][idx].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * idx) + 2
                            mem[_4878 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                            t = _4878 + 32
                            u = sha3(mem[0])
                            while _4878 + (32 * stor8[stor6][idx].field_512) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_4838 + 96] = _4878
                    else:
                        mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * idx) + 1
                        mem[_4839 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * idx) + 1)].field_0
                        u = _4839 + 32
                        v = sha3(mem[0])
                        while _4839 + (32 * stor8[stor6][idx].field_256) > u:
                            mem[u + 32] = stor1[v]
                            u = u + 32
                            v = v + 1
                            continue 
                        mem[_4838 + 64] = _4839
                        _6063 = mem[64]
                        mem[64] = mem[64] + (32 * stor8[stor6][idx].field_512) + 32
                        mem[_6063] = stor8[stor6][idx].field_512
                        if stor8[stor6][idx].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * idx) + 2
                            mem[_6063 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                            u = _6063 + 32
                            v = sha3(mem[0])
                            while _6063 + (32 * stor8[stor6][idx].field_512) > u:
                                mem[u + 32] = stor1[v]
                                u = u + 32
                                v = v + 1
                                continue 
                        mem[_4838 + 96] = _6063
                    mem[s] = _4838
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[_4254] = _4255
                _4836 = mem[64]
                mem[64] = mem[64] + (32 * stor8[stor6].field_256) + 32
                mem[_4836] = stor8[stor6].field_256
                s = _4836 + 32
                idx = 0
                while idx < stor8[stor6].field_256:
                    mem[0] = sha3(sub_e275c997, 8) + 1
                    _5513 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_5513] = address(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_0)
                    mem[_5513 + 32] = uint16(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_160)
                    _5514 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256) + 32
                    mem[_5514] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256
                    if not stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256:
                        mem[_5513 + 64] = _5514
                        _5581 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                        mem[_5581] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512
                        if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 2
                            mem[_5581 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                            t = _5581 + 32
                            u = sha3(mem[0])
                            while _5581 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_5513 + 96] = _5581
                    else:
                        mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 1
                        mem[_5514 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 1)].field_0
                        t = _5514 + 32
                        v = sha3(mem[0])
                        while _5514 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256) > t:
                            mem[t + 32] = stor1[v]
                            t = t + 32
                            v = v + 1
                            continue 
                        mem[_5513 + 64] = _5514
                        _6501 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                        mem[_6501] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512
                        if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 2
                            mem[_6501 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                            t = _6501 + 32
                            u = sha3(mem[0])
                            while _6501 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_5513 + 96] = _6501
                    mem[s] = _5513
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[_4254 + 32] = _4836
                mem[_4254 + 64] = address(stor8[stor6].field_512)
                mem[_4254 + 96] = address(stor8[stor6].field_768)
                mem[_4254 + 128] = bool(uint8(stor8[stor6].field_928))
                mem[_4254 + 160] = stor8[stor6].field_1024
                _5511 = mem[64]
                mem[mem[64]] = 32
                _5580 = mem[_4254]
                mem[mem[64] + 32] = 192
                _5619 = mem[_5580]
                mem[mem[64] + 224] = mem[_5580]
                idx = 0
                s = _5580 + 32
                t = mem[64] + (32 * _5619) + 256
                u = mem[64] + 256
                while idx < _5619:
                    mem[u] = t + -_5511 - 256
                    _6078 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_6078 + 62 len 2]
                    _6081 = mem[_6078 + 64]
                    mem[t + 64] = 128
                    _6151 = mem[_6081]
                    mem[t + 128] = mem[_6081]
                    v = 0
                    w = _6081 + 32
                    x = t + 160
                    while v < _6151:
                        mem[x] = mem[w]
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    _6602 = mem[_6078 + 96]
                    mem[t + 96] = (32 * _6151) + 160
                    _6646 = mem[_6602]
                    mem[t + (32 * _6151) + 160] = mem[_6602]
                    v = 0
                    w = _6602 + 32
                    x = t + (32 * _6151) + 192
                    while v < _6646:
                        mem[x] = mem[w]
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = t + (32 * _6151) + (32 * _6646) + 192
                    u = u + 32
                    continue 
                _6150 = mem[_4254 + 32]
                mem[_5511 + 64] = t + -_5511 - 32
                _6186 = mem[_6150]
                mem[t] = mem[_6150]
                idx = 0
                s = _6150 + 32
                u = t + (32 * _6186) + 32
                v = t + 32
                while idx < _6186:
                    mem[v] = u + -t - 32
                    _6522 = mem[s]
                    mem[u] = mem[mem[s] + 12 len 20]
                    mem[u + 32] = mem[_6522 + 62 len 2]
                    _6525 = mem[_6522 + 64]
                    mem[u + 64] = 128
                    _6601 = mem[_6525]
                    mem[u + 128] = mem[_6525]
                    t = 0
                    w = _6525 + 32
                    x = u + 160
                    while t < _6601:
                        mem[x] = mem[w]
                        t = t + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    _6882 = mem[_6522 + 96]
                    mem[u + 96] = (32 * _6601) + 160
                    _6924 = mem[_6882]
                    mem[u + (32 * _6601) + 160] = mem[_6882]
                    t = 0
                    w = _6882 + 32
                    x = u + (32 * _6601) + 192
                    while t < _6924:
                        mem[x] = mem[w]
                        t = t + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    u = u + (32 * _6601) + (32 * _6924) + 192
                    v = v + 32
                    continue 
                mem[_5511 + 96] = mem[_4254 + 76 len 20]
                mem[_5511 + 128] = mem[_4254 + 108 len 20]
                mem[_5511 + 160] = bool(mem[_4254 + 128])
                mem[_5511 + 192] = mem[_4254 + 160]
                emit 0x7d684fc9: mem[mem[64] len u - mem[64]], sub_e275c997 + 1, msg.sender, address(cd[4])
        else:
            _3066 = mem[96]
            u = 0
            while uint8(u) < _3066:
                if uint8(u) >= mem[96]:
                    revert with 0, 50
                if uint8(u) >= mem[96]:
                    revert with 0, 50
                if 20 == mem[mem[(32 * uint8(u)) + 128] + 62 len 2]:
                    _3158 = mem[mem[(32 * uint8(u)) + 128]]
                    if uint8(u) >= mem[96]:
                        revert with 0, 50
                    if 0 >= mem[mem[mem[(32 * uint8(u)) + 128] + 96]]:
                        revert with 0, 50
                    _3212 = mem[mem[mem[(32 * uint8(u)) + 128] + 96] + 32]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _3212
                    require ext_code.size(address(_3158))
                    call address(_3158).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _3212
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3338 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3338] == bool(mem[_3338])
                else:
                    if uint8(u) >= mem[96]:
                        revert with 0, 50
                    if 777 == mem[mem[(32 * uint8(u)) + 128] + 62 len 2]:
                        _3217 = mem[mem[(32 * uint8(u)) + 128]]
                        if uint8(u) >= mem[96]:
                            revert with 0, 50
                        if 0 >= mem[mem[mem[(32 * uint8(u)) + 128] + 96]]:
                            revert with 0, 50
                        _3276 = mem[mem[mem[(32 * uint8(u)) + 128] + 96] + 32]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _3276
                        require ext_code.size(address(_3217))
                        call address(_3217).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _3276
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3448 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3448] == bool(mem[_3448])
                    else:
                        if 721 == mem[mem[(32 * uint8(u)) + 128] + 62 len 2]:
                            if uint8(u) < mem[96]:
                                if uint8(var68003) >= mem[mem[mem[(32 * uint8(u)) + 128] + 64]]:
                                    if uint8(u) == 255:
                                        revert with 0, 17
                                    u = uint8(u) + 1
                                    continue 
                                if uint8(u) < mem[96]:
                                    if uint8(u) < mem[96]:
                                        _6506 = mem[mem[(32 * uint8(u)) + 128] + 64]
                                        _6507 = mem[mem[mem[(32 * uint8(u)) + 128] + 64]]
                                        s = mem[mem[(32 * uint8(u)) + 128] + 12 len 20]
                                        idx = var72003
                                        while uint8(idx) < _6507:
                                            _6545 = mem[(32 * uint8(idx)) + _6506 + 32]
                                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            mem[mem[64] + 68] = _6545
                                            require ext_code.size(s)
                                            call s.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), _6545
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            if uint8(u) >= mem[96]:
                                                revert with 0, 50
                                            if uint8(uint8(idx) + 1) >= mem[mem[mem[(32 * uint8(u)) + 128] + 64]]:
                                                if uint8(u) == 255:
                                                    revert with 0, 17
                                                u = uint8(u) + 1
                                                continue 
                                            if uint8(u) >= mem[96]:
                                                revert with 0, 50
                                            if uint8(u) >= mem[96]:
                                                revert with 0, 50
                                            s = mem[mem[(32 * uint8(u)) + 128] + 12 len 20]
                                            idx = uint8(idx) + 1
                                            continue 
                            revert with 0, 50
                        if uint8(u) >= mem[96]:
                            revert with 0, 50
                        if mem[mem[(32 * uint8(u)) + 128] + 62 len 2] != 1155:
                            revert with 0, 'createTrade: unsupported erc type'
                        if uint8(u) >= mem[96]:
                            revert with 0, 50
                        if uint8(u) >= mem[96]:
                            revert with 0, 50
                        if mem[mem[mem[(32 * uint8(u)) + 128] + 64]] <= 1:
                            _3440 = mem[mem[(32 * uint8(u)) + 128]]
                            if uint8(u) >= mem[96]:
                                revert with 0, 50
                            if 0 >= mem[mem[mem[(32 * uint8(u)) + 128] + 64]]:
                                revert with 0, 50
                            _3578 = mem[mem[mem[(32 * uint8(u)) + 128] + 64] + 32]
                            if uint8(u) >= mem[96]:
                                revert with 0, 50
                            if 0 >= mem[mem[mem[(32 * uint8(u)) + 128] + 96]]:
                                revert with 0, 50
                            _3697 = mem[mem[mem[(32 * uint8(u)) + 128] + 96] + 32]
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = _3578
                            mem[mem[64] + 100] = _3697
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            require ext_code.size(address(_3440))
                            call address(_3440).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), _3578, _3697, 160, 0
                        else:
                            _3443 = mem[mem[(32 * uint8(u)) + 128]]
                            if uint8(u) >= mem[96]:
                                revert with 0, 50
                            _3518 = mem[mem[(32 * uint8(u)) + 128] + 64]
                            if uint8(u) >= mem[96]:
                                revert with 0, 50
                            _3581 = mem[mem[(32 * uint8(u)) + 128] + 96]
                            _3582 = mem[64]
                            mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = 160
                            _3699 = mem[_3518]
                            mem[mem[64] + 164] = mem[_3518]
                            s = 0
                            t = _3518 + 32
                            v = mem[64] + 196
                            while s < _3699:
                                mem[v] = mem[t]
                                s = s + 1
                                t = t + 32
                                v = v + 32
                                continue 
                            mem[_3582 + 100] = (32 * _3699) + 192
                            _4139 = mem[_3581]
                            mem[_3582 + (32 * _3699) + 196] = mem[_3581]
                            s = 0
                            t = _3581 + 32
                            v = _3582 + (32 * _3699) + 228
                            while s < _4139:
                                mem[v] = mem[t]
                                s = s + 1
                                t = t + 32
                                v = v + 32
                                continue 
                            mem[_3582 + 132] = (32 * _3699) + (32 * _4139) + 224
                            mem[_3582 + (32 * _3699) + (32 * _4139) + 228] = 0
                            require ext_code.size(address(_3443))
                            call address(_3443).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3582 + (32 * _3699) + (32 * _4139) + -mem[64] + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if uint8(u) == 255:
                    revert with 0, 17
                u = uint8(u) + 1
                continue 
            mem[0] = sub_e275c997
            mem[32] = 8
            v = 0
            while uint8(v) < mem[96]:
                if uint8(v) >= mem[96]:
                    revert with 0, 50
                stor8[stor6].field_0++
                mem[0] = sha3(sub_e275c997, 8)
                address(stor8[stor6][stor8[stor6].field_0].field_0) = mem[mem[(32 * uint8(v)) + 128] + 12 len 20]
                uint16(stor8[stor6][stor8[stor6].field_0].field_160) = mem[mem[(32 * uint8(v)) + 128] + 62 len 2]
                _4104 = mem[mem[mem[(32 * uint8(v)) + 128] + 64]]
                stor8[stor6][stor8[stor6].field_0].field_256 = mem[mem[mem[(32 * uint8(v)) + 128] + 64]]
                mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1
                if not _4104:
                    idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    _4933 = mem[mem[mem[(32 * uint8(v)) + 128] + 96]]
                    stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(v)) + 128] + 96]]
                    mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                    if not _4933:
                        idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                        t = mem[mem[(32 * uint8(v)) + 128] + 96] + 32
                        while mem[mem[(32 * uint8(v)) + 128] + 96] + (32 * _4933) + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        idx = s
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    t = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                    u = mem[mem[(32 * uint8(v)) + 128] + 64] + 32
                    while mem[mem[(32 * uint8(v)) + 128] + 64] + (32 * _4104) + 32 > u:
                        stor[t] = mem[u]
                        t = t + 1
                        u = u + 32
                        continue 
                    idx = t
                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    _5638 = mem[mem[mem[(32 * uint8(v)) + 128] + 96]]
                    stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(v)) + 128] + 96]]
                    mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                    if not _5638:
                        idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                        t = mem[mem[(32 * uint8(v)) + 128] + 96] + 32
                        while mem[mem[(32 * uint8(v)) + 128] + 96] + (32 * _5638) + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        idx = s
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                if uint8(v) == 255:
                    revert with 0, 17
                v = uint8(v) + 1
                continue 
            _4824 = mem[_1025]
            s = 0
            while uint8(s) < _4824:
                if uint8(s) >= mem[_1025]:
                    revert with 0, 50
                stor8[stor6].field_256++
                mem[0] = sha3(sub_e275c997, 8) + 1
                address(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_0) = mem[mem[(32 * uint8(s)) + _1025 + 32] + 12 len 20]
                uint16(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_160) = mem[mem[(32 * uint8(s)) + _1025 + 32] + 62 len 2]
                _4887 = mem[mem[mem[(32 * uint8(s)) + _1025 + 32] + 64]]
                stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 = mem[mem[mem[(32 * uint8(s)) + _1025 + 32] + 64]]
                mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1
                if not _4887:
                    idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    _5636 = mem[mem[mem[(32 * uint8(s)) + _1025 + 32] + 96]]
                    stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(s)) + _1025 + 32] + 96]]
                    mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                    if not _5636:
                        idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        t = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                        u = mem[mem[(32 * uint8(s)) + _1025 + 32] + 96] + 32
                        while mem[mem[(32 * uint8(s)) + _1025 + 32] + 96] + (32 * _5636) + 32 > u:
                            stor[t] = mem[u]
                            t = t + 1
                            u = u + 32
                            continue 
                        idx = t
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    u = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                    v = mem[mem[(32 * uint8(s)) + _1025 + 32] + 64] + 32
                    while mem[mem[(32 * uint8(s)) + _1025 + 32] + 64] + (32 * _4887) + 32 > v:
                        stor[u] = mem[v]
                        u = u + 1
                        v = v + 32
                        continue 
                    idx = u
                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    _6193 = mem[mem[mem[(32 * uint8(s)) + _1025 + 32] + 96]]
                    stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(s)) + _1025 + 32] + 96]]
                    mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                    if not _6193:
                        idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        u = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                        v = mem[mem[(32 * uint8(s)) + _1025 + 32] + 96] + 32
                        while mem[mem[(32 * uint8(s)) + _1025 + 32] + 96] + (32 * _6193) + 32 > v:
                            stor[u] = mem[v]
                            u = u + 1
                            v = v + 32
                            continue 
                        idx = u
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                if uint8(s) == 255:
                    revert with 0, 17
                s = uint8(s) + 1
                continue 
            if not cd[36]:
                stor8[stor6].field_1024 = 0
                stor8[stor6].field_512 = Mask(96, 0, stor8[stor6].field_672)
                address(stor8[stor6].field_768) = address(cd[4])
                if sub_e275c997 == -1:
                    revert with 0, 17
                _5027 = mem[64]
                mem[64] = mem[64] + 192
                _5028 = mem[64]
                mem[64] = mem[64] + (32 * stor8[stor6].field_0) + 32
                mem[_5028] = stor8[stor6].field_0
                s = _5028 + 32
                idx = 0
                while idx < stor8[stor6].field_0:
                    mem[0] = sha3(sub_e275c997, 8)
                    _5527 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_5527] = address(stor8[stor6][idx].field_0)
                    mem[_5527 + 32] = uint16(stor8[stor6][idx].field_160)
                    _5528 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6][idx].field_256) + 32
                    mem[_5528] = stor8[stor6][idx].field_256
                    if not stor8[stor6][idx].field_256:
                        mem[_5527 + 64] = _5528
                        _5588 = mem[64]
                        mem[64] = mem[64] + (32 * stor8[stor6][idx].field_512) + 32
                        mem[_5588] = stor8[stor6][idx].field_512
                        if stor8[stor6][idx].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * idx) + 2
                            mem[_5588 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                            t = _5588 + 32
                            u = sha3(mem[0])
                            while _5588 + (32 * stor8[stor6][idx].field_512) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_5527 + 96] = _5588
                    else:
                        mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * idx) + 1
                        mem[_5528 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * idx) + 1)].field_0
                        t = _5528 + 32
                        u = sha3(mem[0])
                        while _5528 + (32 * stor8[stor6][idx].field_256) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_5527 + 64] = _5528
                        _6504 = mem[64]
                        mem[64] = mem[64] + (32 * stor8[stor6][idx].field_512) + 32
                        mem[_6504] = stor8[stor6][idx].field_512
                        if stor8[stor6][idx].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * idx) + 2
                            mem[_6504 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                            t = _6504 + 32
                            u = sha3(mem[0])
                            while _6504 + (32 * stor8[stor6][idx].field_512) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_5527 + 96] = _6504
                    mem[s] = _5527
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[_5027] = _5028
                _5525 = mem[64]
                mem[64] = mem[64] + (32 * stor8[stor6].field_256) + 32
                mem[_5525] = stor8[stor6].field_256
                s = _5525 + 32
                idx = 0
                while idx < stor8[stor6].field_256:
                    mem[0] = sha3(sub_e275c997, 8) + 1
                    _6095 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_6095] = address(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_0)
                    mem[_6095 + 32] = uint16(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_160)
                    _6096 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256) + 32
                    mem[_6096] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256
                    if not stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256:
                        mem[_6095 + 64] = _6096
                        _6158 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                        mem[_6158] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512
                        if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 2
                            mem[_6158 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                            t = _6158 + 32
                            u = sha3(mem[0])
                            while _6158 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_6095 + 96] = _6158
                    else:
                        mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 1
                        mem[_6096 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 1)].field_0
                        t = _6096 + 32
                        u = sha3(mem[0])
                        while _6096 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_6095 + 64] = _6096
                        _6829 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                        mem[_6829] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512
                        if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 2
                            mem[_6829 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                            t = _6829 + 32
                            u = sha3(mem[0])
                            while _6829 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_6095 + 96] = _6829
                    mem[s] = _6095
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[_5027 + 32] = _5525
                mem[_5027 + 64] = address(stor8[stor6].field_512)
                mem[_5027 + 96] = address(stor8[stor6].field_768)
                mem[_5027 + 128] = bool(uint8(stor8[stor6].field_928))
                mem[_5027 + 160] = stor8[stor6].field_1024
                _6093 = mem[64]
                mem[mem[64]] = 32
                _6157 = mem[_5027]
                mem[mem[64] + 32] = 192
                _6190 = mem[_6157]
                mem[mem[64] + 224] = mem[_6157]
                idx = 0
                s = _6157 + 32
                t = mem[64] + (32 * _6190) + 256
                u = mem[64] + 256
                while idx < _6190:
                    mem[u] = t + -_6093 - 256
                    _6539 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_6539 + 62 len 2]
                    _6542 = mem[_6539 + 64]
                    mem[t + 64] = 128
                    _6612 = mem[_6542]
                    mem[t + 128] = mem[_6542]
                    v = 0
                    w = _6542 + 32
                    x = t + 160
                    while v < _6612:
                        mem[x] = mem[w]
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    _6895 = mem[_6539 + 96]
                    mem[t + 96] = (32 * _6612) + 160
                    _6929 = mem[_6895]
                    mem[t + (32 * _6612) + 160] = mem[_6895]
                    v = 0
                    w = _6895 + 32
                    x = t + (32 * _6612) + 192
                    while v < _6929:
                        mem[x] = mem[w]
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = t + (32 * _6612) + (32 * _6929) + 192
                    u = u + 32
                    continue 
                _6611 = mem[_5027 + 32]
                mem[_6093 + 64] = t + -_6093 - 32
                _6650 = mem[_6611]
                mem[t] = mem[_6611]
                idx = 0
                s = _6611 + 32
                u = t + (32 * _6650) + 32
                v = t + 32
                while idx < _6650:
                    mem[v] = u + -t - 32
                    _6844 = mem[s]
                    mem[u] = mem[mem[s] + 12 len 20]
                    mem[u + 32] = mem[_6844 + 62 len 2]
                    _6847 = mem[_6844 + 64]
                    mem[u + 64] = 128
                    _6894 = mem[_6847]
                    mem[u + 128] = mem[_6847]
                    t = 0
                    w = _6847 + 32
                    x = u + 160
                    while t < _6894:
                        mem[x] = mem[w]
                        t = t + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    _6997 = mem[_6844 + 96]
                    mem[u + 96] = (32 * _6894) + 160
                    _7003 = mem[_6997]
                    mem[u + (32 * _6894) + 160] = mem[_6997]
                    t = 0
                    w = _6997 + 32
                    x = u + (32 * _6894) + 192
                    while t < _7003:
                        mem[x] = mem[w]
                        t = t + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    u = u + (32 * _6894) + (32 * _7003) + 192
                    v = v + 32
                    continue 
                mem[_6093 + 96] = mem[_5027 + 76 len 20]
                mem[_6093 + 128] = mem[_5027 + 108 len 20]
                mem[_6093 + 160] = bool(mem[_5027 + 128])
                mem[_6093 + 192] = mem[_5027 + 160]
            else:
                if block.timestamp > !cd[36]:
                    revert with 0, 17
                stor8[stor6].field_1024 = block.timestamp + cd[36]
                stor8[stor6].field_512 = Mask(96, 0, stor8[stor6].field_672)
                address(stor8[stor6].field_768) = address(cd[4])
                if sub_e275c997 == -1:
                    revert with 0, 17
                _5114 = mem[64]
                mem[64] = mem[64] + 192
                _5115 = mem[64]
                mem[64] = mem[64] + (32 * stor8[stor6].field_0) + 32
                mem[_5115] = stor8[stor6].field_0
                w = _5115 + 32
                t = 0
                while t < stor8[stor6].field_0:
                    mem[0] = sha3(sub_e275c997, 8)
                    _5523 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_5523] = address(stor8[stor6][t].field_0)
                    mem[_5523 + 32] = uint16(stor8[stor6][t].field_160)
                    _5524 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6][t].field_256) + 32
                    mem[_5524] = stor8[stor6][t].field_256
                    if not stor8[stor6][t].field_256:
                        mem[_5523 + 64] = _5524
                        _5586 = mem[64]
                        mem[64] = mem[64] + (32 * stor8[stor6][t].field_512) + 32
                        mem[_5586] = stor8[stor6][t].field_512
                        if stor8[stor6][t].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * t) + 2
                            mem[_5586 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * t) + 2)].field_0
                            s = _5586 + 32
                            u = sha3(mem[0])
                            while _5586 + (32 * stor8[stor6][t].field_512) > s:
                                mem[s + 32] = stor1[u]
                                s = s + 32
                                u = u + 1
                                continue 
                        mem[_5523 + 96] = _5586
                    else:
                        mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * t) + 1
                        mem[_5524 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * t) + 1)].field_0
                        s = _5524 + 32
                        u = sha3(mem[0])
                        while _5524 + (32 * stor8[stor6][t].field_256) > s:
                            mem[s + 32] = stor1[u]
                            s = s + 32
                            u = u + 1
                            continue 
                        mem[_5523 + 64] = _5524
                        _6503 = mem[64]
                        mem[64] = mem[64] + (32 * stor8[stor6][t].field_512) + 32
                        mem[_6503] = stor8[stor6][t].field_512
                        if stor8[stor6][t].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * t) + 2
                            mem[_6503 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * t) + 2)].field_0
                            s = _6503 + 32
                            u = sha3(mem[0])
                            while _6503 + (32 * stor8[stor6][t].field_512) > s:
                                mem[s + 32] = stor1[u]
                                s = s + 32
                                u = u + 1
                                continue 
                        mem[_5523 + 96] = _6503
                    mem[w] = _5523
                    w = w + 32
                    t = t + 1
                    continue 
                mem[_5114] = _5115
                _5521 = mem[64]
                mem[64] = mem[64] + (32 * stor8[stor6].field_256) + 32
                mem[_5521] = stor8[stor6].field_256
                u = _5521 + 32
                t = 0
                while t < stor8[stor6].field_256:
                    mem[0] = sha3(sub_e275c997, 8) + 1
                    _6091 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_6091] = address(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * t)].field_0)
                    mem[_6091 + 32] = uint16(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * t)].field_160)
                    _6092 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * t)].field_256) + 32
                    mem[_6092] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * t)].field_256
                    if not stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * t)].field_256:
                        mem[_6091 + 64] = _6092
                        _6155 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * t)].field_512) + 32
                        mem[_6155] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * t)].field_512
                        if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * t)].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * t) + 2
                            mem[_6155 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * t) + 2)].field_0
                            s = _6155 + 32
                            v = sha3(mem[0])
                            while _6155 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * t)].field_512) > s:
                                mem[s + 32] = stor1[v]
                                s = s + 32
                                v = v + 1
                                continue 
                        mem[_6091 + 96] = _6155
                    else:
                        mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * t) + 1
                        mem[_6092 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * t) + 1)].field_0
                        v = _6092 + 32
                        w = sha3(mem[0])
                        while _6092 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * t)].field_256) > v:
                            mem[v + 32] = stor1[w]
                            v = v + 32
                            w = w + 1
                            continue 
                        mem[_6091 + 64] = _6092
                        _6828 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * t)].field_512) + 32
                        mem[_6828] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * t)].field_512
                        if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * t)].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * t) + 2
                            mem[_6828 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * t) + 2)].field_0
                            v = _6828 + 32
                            w = sha3(mem[0])
                            while _6828 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * t)].field_512) > v:
                                mem[v + 32] = stor1[w]
                                v = v + 32
                                w = w + 1
                                continue 
                        mem[_6091 + 96] = _6828
                    mem[u] = _6091
                    u = u + 32
                    t = t + 1
                    continue 
                mem[_5114 + 32] = _5521
                mem[_5114 + 64] = address(stor8[stor6].field_512)
                mem[_5114 + 96] = address(stor8[stor6].field_768)
                mem[_5114 + 128] = bool(uint8(stor8[stor6].field_928))
                mem[_5114 + 160] = stor8[stor6].field_1024
                _6089 = mem[64]
                mem[mem[64]] = 32
                _6154 = mem[_5114]
                mem[mem[64] + 32] = 192
                _6188 = mem[_6154]
                mem[mem[64] + 224] = mem[_6154]
                idx = 0
                s = _6154 + 32
                t = mem[64] + (32 * _6188) + 256
                u = mem[64] + 256
                while idx < _6188:
                    mem[u] = t + -_6089 - 256
                    _6534 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_6534 + 62 len 2]
                    _6537 = mem[_6534 + 64]
                    mem[t + 64] = 128
                    _6610 = mem[_6537]
                    mem[t + 128] = mem[_6537]
                    v = 0
                    w = _6537 + 32
                    x = t + 160
                    while v < _6610:
                        mem[x] = mem[w]
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    _6889 = mem[_6534 + 96]
                    mem[t + 96] = (32 * _6610) + 160
                    _6927 = mem[_6889]
                    mem[t + (32 * _6610) + 160] = mem[_6889]
                    v = 0
                    w = _6889 + 32
                    x = t + (32 * _6610) + 192
                    while v < _6927:
                        mem[x] = mem[w]
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = t + (32 * _6610) + (32 * _6927) + 192
                    u = u + 32
                    continue 
                _6609 = mem[_5114 + 32]
                mem[_6089 + 64] = t + -_6089 - 32
                _6649 = mem[_6609]
                mem[t] = mem[_6609]
                idx = 0
                s = _6609 + 32
                u = t + (32 * _6649) + 32
                v = t + 32
                while idx < _6649:
                    mem[v] = u + -t - 32
                    _6838 = mem[s]
                    mem[u] = mem[mem[s] + 12 len 20]
                    mem[u + 32] = mem[_6838 + 62 len 2]
                    _6841 = mem[_6838 + 64]
                    mem[u + 64] = 128
                    _6888 = mem[_6841]
                    mem[u + 128] = mem[_6841]
                    t = 0
                    w = _6841 + 32
                    x = u + 160
                    while t < _6888:
                        mem[x] = mem[w]
                        t = t + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    _6996 = mem[_6838 + 96]
                    mem[u + 96] = (32 * _6888) + 160
                    _7002 = mem[_6996]
                    mem[u + (32 * _6888) + 160] = mem[_6996]
                    t = 0
                    w = _6996 + 32
                    x = u + (32 * _6888) + 192
                    while t < _7002:
                        mem[x] = mem[w]
                        t = t + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    u = u + (32 * _6888) + (32 * _7002) + 192
                    v = v + 32
                    continue 
                mem[_6089 + 96] = mem[_5114 + 76 len 20]
                mem[_6089 + 128] = mem[_5114 + 108 len 20]
                mem[_6089 + 160] = bool(mem[_5114 + 128])
                mem[_6089 + 192] = mem[_5114 + 160]
            emit 0x7d684fc9: mem[mem[64] len u - mem[64]], sub_e275c997 + 1, msg.sender, address(cd[4])
    else:
        mem[0] = msg.sender
        mem[32] = 7
        if stor7[msg.sender]:
            if 0 >= mem[96]:
                revert with 0, 50
            if not mem[mem[128] + 12 len 20]:
                mem[0] = sub_e275c997
                mem[32] = 8
                s = 0
                while uint8(s) < mem[96]:
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    stor8[stor6].field_0++
                    mem[0] = sha3(sub_e275c997, 8)
                    address(stor8[stor6][stor8[stor6].field_0].field_0) = mem[mem[(32 * uint8(s)) + 128] + 12 len 20]
                    uint16(stor8[stor6][stor8[stor6].field_0].field_160) = mem[mem[(32 * uint8(s)) + 128] + 62 len 2]
                    _3093 = mem[mem[mem[(32 * uint8(s)) + 128] + 64]]
                    stor8[stor6][stor8[stor6].field_0].field_256 = mem[mem[mem[(32 * uint8(s)) + 128] + 64]]
                    mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1
                    if not _3093:
                        idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _4145 = mem[mem[mem[(32 * uint8(s)) + 128] + 96]]
                        stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(s)) + 128] + 96]]
                        mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                        if not _4145:
                            idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            t = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            u = mem[mem[(32 * uint8(s)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(s)) + 128] + 96] + (32 * _4145) + 32 > u:
                                stor[t] = mem[u]
                                t = t + 1
                                u = u + 32
                                continue 
                            idx = t
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    else:
                        t = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                        u = mem[mem[(32 * uint8(s)) + 128] + 64] + 32
                        while mem[mem[(32 * uint8(s)) + 128] + 64] + (32 * _3093) + 32 > u:
                            stor[t] = mem[u]
                            t = t + 1
                            u = u + 32
                            continue 
                        idx = t
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _4951 = mem[mem[mem[(32 * uint8(s)) + 128] + 96]]
                        stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(s)) + 128] + 96]]
                        mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                        if not _4951:
                            idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            t = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            u = mem[mem[(32 * uint8(s)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(s)) + 128] + 96] + (32 * _4951) + 32 > u:
                                stor[t] = mem[u]
                                t = t + 1
                                u = u + 32
                                continue 
                            idx = t
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    if uint8(s) == 255:
                        revert with 0, 17
                    s = uint8(s) + 1
                    continue 
                _4065 = mem[_1025]
                idx = 0
                while uint8(idx) < _4065:
                    if uint8(idx) >= mem[_1025]:
                        revert with 0, 50
                    stor8[stor6].field_256++
                    mem[0] = sha3(sub_e275c997, 8) + 1
                    address(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_0) = mem[mem[(32 * uint8(idx)) + _1025 + 32] + 12 len 20]
                    uint16(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_160) = mem[mem[(32 * uint8(idx)) + _1025 + 32] + 62 len 2]
                    _4111 = mem[mem[mem[(32 * uint8(idx)) + _1025 + 32] + 64]]
                    stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 = mem[mem[mem[(32 * uint8(idx)) + _1025 + 32] + 64]]
                    mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1
                    if not _4111:
                        s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        _4949 = mem[mem[mem[(32 * uint8(idx)) + _1025 + 32] + 96]]
                        stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _1025 + 32] + 96]]
                        mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                        if not _4949:
                            s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            t = mem[mem[(32 * uint8(idx)) + _1025 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(idx)) + _1025 + 32] + 96] + (32 * _4949) + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            t = s
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                        t = mem[mem[(32 * uint8(idx)) + _1025 + 32] + 64] + 32
                        while mem[mem[(32 * uint8(idx)) + _1025 + 32] + 64] + (32 * _4111) + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        t = s
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                        _5646 = mem[mem[mem[(32 * uint8(idx)) + _1025 + 32] + 96]]
                        stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _1025 + 32] + 96]]
                        mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                        if not _5646:
                            s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            t = mem[mem[(32 * uint8(idx)) + _1025 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(idx)) + _1025 + 32] + 96] + (32 * _5646) + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            t = s
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                    if uint8(idx) == 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    continue 
                if not cd[36]:
                    stor8[stor6].field_1024 = 0
                    stor8[stor6].field_512 = Mask(96, 0, stor8[stor6].field_672)
                    address(stor8[stor6].field_768) = address(cd[4])
                    if sub_e275c997 == -1:
                        revert with 0, 17
                    _4209 = mem[64]
                    mem[64] = mem[64] + 192
                    _4210 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6].field_0) + 32
                    mem[_4210] = stor8[stor6].field_0
                    t = _4210 + 32
                    idx = 0
                    while idx < stor8[stor6].field_0:
                        mem[0] = sha3(sub_e275c997, 8)
                        _4856 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_4856] = address(stor8[stor6][idx].field_0)
                        mem[_4856 + 32] = uint16(stor8[stor6][idx].field_160)
                        _4857 = mem[64]
                        mem[64] = mem[64] + (32 * stor8[stor6][idx].field_256) + 32
                        mem[_4857] = stor8[stor6][idx].field_256
                        if not stor8[stor6][idx].field_256:
                            mem[_4856 + 64] = _4857
                            _4893 = mem[64]
                            mem[64] = mem[64] + (32 * stor8[stor6][idx].field_512) + 32
                            mem[_4893] = stor8[stor6][idx].field_512
                            if stor8[stor6][idx].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * idx) + 2
                                mem[_4893 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                                s = _4893 + 32
                                u = sha3(mem[0])
                                while _4893 + (32 * stor8[stor6][idx].field_512) > s:
                                    mem[s + 32] = stor1[u]
                                    s = s + 32
                                    u = u + 1
                                    continue 
                            mem[_4856 + 96] = _4893
                        else:
                            mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * idx) + 1
                            mem[_4857 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * idx) + 1)].field_0
                            s = _4857 + 32
                            u = sha3(mem[0])
                            while _4857 + (32 * stor8[stor6][idx].field_256) > s:
                                mem[s + 32] = stor1[u]
                                s = s + 32
                                u = u + 1
                                continue 
                            mem[_4856 + 64] = _4857
                            _6069 = mem[64]
                            mem[64] = mem[64] + (32 * stor8[stor6][idx].field_512) + 32
                            mem[_6069] = stor8[stor6][idx].field_512
                            if stor8[stor6][idx].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * idx) + 2
                                mem[_6069 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                                s = _6069 + 32
                                u = sha3(mem[0])
                                while _6069 + (32 * stor8[stor6][idx].field_512) > s:
                                    mem[s + 32] = stor1[u]
                                    s = s + 32
                                    u = u + 1
                                    continue 
                            mem[_4856 + 96] = _6069
                        mem[t] = _4856
                        t = t + 32
                        idx = idx + 1
                        continue 
                    mem[_4209] = _4210
                    _4854 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6].field_256) + 32
                    mem[_4854] = stor8[stor6].field_256
                    t = _4854 + 32
                    idx = 0
                    while idx < stor8[stor6].field_256:
                        mem[0] = sha3(sub_e275c997, 8) + 1
                        _5540 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_5540] = address(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_0)
                        mem[_5540 + 32] = uint16(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_160)
                        _5541 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256) + 32
                        mem[_5541] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256
                        if not stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256:
                            mem[_5540 + 64] = _5541
                            _5597 = mem[64]
                            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                            mem[_5597] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512
                            if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 2
                                mem[_5597 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                                s = _5597 + 32
                                u = sha3(mem[0])
                                while _5597 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) > s:
                                    mem[s + 32] = stor1[u]
                                    s = s + 32
                                    u = u + 1
                                    continue 
                            mem[_5540 + 96] = _5597
                        else:
                            mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 1
                            mem[_5541 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 1)].field_0
                            u = _5541 + 32
                            v = sha3(mem[0])
                            while _5541 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256) > u:
                                mem[u + 32] = stor1[v]
                                u = u + 32
                                v = v + 1
                                continue 
                            mem[_5540 + 64] = _5541
                            _6509 = mem[64]
                            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                            mem[_6509] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512
                            if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 2
                                mem[_6509 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                                u = _6509 + 32
                                v = sha3(mem[0])
                                while _6509 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) > u:
                                    mem[u + 32] = stor1[v]
                                    u = u + 32
                                    v = v + 1
                                    continue 
                            mem[_5540 + 96] = _6509
                        mem[t] = _5540
                        t = t + 32
                        idx = idx + 1
                        continue 
                    mem[_4209 + 32] = _4854
                    mem[_4209 + 64] = address(stor8[stor6].field_512)
                    mem[_4209 + 96] = address(stor8[stor6].field_768)
                    mem[_4209 + 128] = bool(uint8(stor8[stor6].field_928))
                    mem[_4209 + 160] = stor8[stor6].field_1024
                    _5538 = mem[64]
                    mem[mem[64]] = 32
                    _5596 = mem[_4209]
                    mem[mem[64] + 32] = 192
                    _5643 = mem[_5596]
                    mem[mem[64] + 224] = mem[_5596]
                    idx = 0
                    s = _5596 + 32
                    t = mem[64] + (32 * _5643) + 256
                    u = mem[64] + 256
                    while idx < _5643:
                        mem[u] = t + -_5538 - 256
                        _6107 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_6107 + 62 len 2]
                        _6110 = mem[_6107 + 64]
                        mem[t + 64] = 128
                        _6165 = mem[_6110]
                        mem[t + 128] = mem[_6110]
                        v = 0
                        w = _6110 + 32
                        x = t + 160
                        while v < _6165:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        _6624 = mem[_6107 + 96]
                        mem[t + 96] = (32 * _6165) + 160
                        _6655 = mem[_6624]
                        mem[t + (32 * _6165) + 160] = mem[_6624]
                        v = 0
                        w = _6624 + 32
                        x = t + (32 * _6165) + 192
                        while v < _6655:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (32 * _6165) + (32 * _6655) + 192
                        u = u + 32
                        continue 
                    _6164 = mem[_4209 + 32]
                    mem[_5538 + 64] = t + -_5538 - 32
                    _6195 = mem[_6164]
                    mem[t] = mem[_6164]
                    idx = 0
                    s = _6164 + 32
                    u = t + (32 * _6195) + 32
                    v = t + 32
                    while idx < _6195:
                        mem[v] = u + -t - 32
                        _6553 = mem[s]
                        mem[u] = mem[mem[s] + 12 len 20]
                        mem[u + 32] = mem[_6553 + 62 len 2]
                        _6556 = mem[_6553 + 64]
                        mem[u + 64] = 128
                        _6623 = mem[_6556]
                        mem[u + 128] = mem[_6556]
                        t = 0
                        w = _6556 + 32
                        x = u + 160
                        while t < _6623:
                            mem[x] = mem[w]
                            t = t + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        _6897 = mem[_6553 + 96]
                        mem[u + 96] = (32 * _6623) + 160
                        _6931 = mem[_6897]
                        mem[u + (32 * _6623) + 160] = mem[_6897]
                        t = 0
                        w = _6897 + 32
                        x = u + (32 * _6623) + 192
                        while t < _6931:
                            mem[x] = mem[w]
                            t = t + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        u = u + (32 * _6623) + (32 * _6931) + 192
                        v = v + 32
                        continue 
                    mem[_5538 + 96] = mem[_4209 + 76 len 20]
                    mem[_5538 + 128] = mem[_4209 + 108 len 20]
                    mem[_5538 + 160] = bool(mem[_4209 + 128])
                    mem[_5538 + 192] = mem[_4209 + 160]
                else:
                    if block.timestamp > !cd[36]:
                        revert with 0, 17
                    stor8[stor6].field_1024 = block.timestamp + cd[36]
                    stor8[stor6].field_512 = Mask(96, 0, stor8[stor6].field_672)
                    address(stor8[stor6].field_768) = address(cd[4])
                    if sub_e275c997 == -1:
                        revert with 0, 17
                    _4262 = mem[64]
                    mem[64] = mem[64] + 192
                    _4263 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6].field_0) + 32
                    mem[_4263] = stor8[stor6].field_0
                    u = _4263 + 32
                    t = 0
                    while t < stor8[stor6].field_0:
                        mem[0] = sha3(sub_e275c997, 8)
                        _4852 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_4852] = address(stor8[stor6][t].field_0)
                        mem[_4852 + 32] = uint16(stor8[stor6][t].field_160)
                        _4853 = mem[64]
                        mem[64] = mem[64] + (32 * stor8[stor6][t].field_256) + 32
                        mem[_4853] = stor8[stor6][t].field_256
                        if not stor8[stor6][t].field_256:
                            mem[_4852 + 64] = _4853
                            _4891 = mem[64]
                            mem[64] = mem[64] + (32 * stor8[stor6][t].field_512) + 32
                            mem[_4891] = stor8[stor6][t].field_512
                            if stor8[stor6][t].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * t) + 2
                                mem[_4891 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * t) + 2)].field_0
                                s = _4891 + 32
                                v = sha3(mem[0])
                                while _4891 + (32 * stor8[stor6][t].field_512) > s:
                                    mem[s + 32] = stor1[v]
                                    s = s + 32
                                    v = v + 1
                                    continue 
                            mem[_4852 + 96] = _4891
                        else:
                            mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * t) + 1
                            mem[_4853 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * t) + 1)].field_0
                            v = _4853 + 32
                            w = sha3(mem[0])
                            while _4853 + (32 * stor8[stor6][t].field_256) > v:
                                mem[v + 32] = stor1[w]
                                v = v + 32
                                w = w + 1
                                continue 
                            mem[_4852 + 64] = _4853
                            _6068 = mem[64]
                            mem[64] = mem[64] + (32 * stor8[stor6][t].field_512) + 32
                            mem[_6068] = stor8[stor6][t].field_512
                            if stor8[stor6][t].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * t) + 2
                                mem[_6068 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * t) + 2)].field_0
                                v = _6068 + 32
                                w = sha3(mem[0])
                                while _6068 + (32 * stor8[stor6][t].field_512) > v:
                                    mem[v + 32] = stor1[w]
                                    v = v + 32
                                    w = w + 1
                                    continue 
                            mem[_4852 + 96] = _6068
                        mem[u] = _4852
                        u = u + 32
                        t = t + 1
                        continue 
                    mem[_4262] = _4263
                    _4850 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6].field_256) + 32
                    mem[_4850] = stor8[stor6].field_256
                    t = _4850 + 32
                    s = 0
                    while s < stor8[stor6].field_256:
                        mem[0] = sha3(sub_e275c997, 8) + 1
                        _5536 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_5536] = address(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_0)
                        mem[_5536 + 32] = uint16(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_160)
                        _5537 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_256) + 32
                        mem[_5537] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_256
                        if not stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_256:
                            mem[_5536 + 64] = _5537
                            _5594 = mem[64]
                            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512) + 32
                            mem[_5594] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512
                            if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * s) + 2
                                mem[_5594 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s) + 2)].field_0
                                u = _5594 + 32
                                v = sha3(mem[0])
                                while _5594 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512) > u:
                                    mem[u + 32] = stor1[v]
                                    u = u + 32
                                    v = v + 1
                                    continue 
                            mem[_5536 + 96] = _5594
                        else:
                            mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * s) + 1
                            mem[_5537 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s) + 1)].field_0
                            u = _5537 + 32
                            v = sha3(mem[0])
                            while _5537 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_256) > u:
                                mem[u + 32] = stor1[v]
                                u = u + 32
                                v = v + 1
                                continue 
                            mem[_5536 + 64] = _5537
                            _6508 = mem[64]
                            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512) + 32
                            mem[_6508] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512
                            if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * s) + 2
                                mem[_6508 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s) + 2)].field_0
                                u = _6508 + 32
                                v = sha3(mem[0])
                                while _6508 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512) > u:
                                    mem[u + 32] = stor1[v]
                                    u = u + 32
                                    v = v + 1
                                    continue 
                            mem[_5536 + 96] = _6508
                        mem[t] = _5536
                        t = t + 32
                        s = s + 1
                        continue 
                    mem[_4262 + 32] = _4850
                    mem[_4262 + 64] = address(stor8[stor6].field_512)
                    mem[_4262 + 96] = address(stor8[stor6].field_768)
                    mem[_4262 + 128] = bool(uint8(stor8[stor6].field_928))
                    mem[_4262 + 160] = stor8[stor6].field_1024
                    _5534 = mem[64]
                    mem[mem[64]] = 32
                    _5593 = mem[_4262]
                    mem[mem[64] + 32] = 192
                    _5641 = mem[_5593]
                    mem[mem[64] + 224] = mem[_5593]
                    idx = 0
                    s = _5593 + 32
                    t = mem[64] + (32 * _5641) + 256
                    u = mem[64] + 256
                    while idx < _5641:
                        mem[u] = t + -_5534 - 256
                        _6102 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_6102 + 62 len 2]
                        _6105 = mem[_6102 + 64]
                        mem[t + 64] = 128
                        _6163 = mem[_6105]
                        mem[t + 128] = mem[_6105]
                        v = 0
                        w = _6105 + 32
                        x = t + 160
                        while v < _6163:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        _6618 = mem[_6102 + 96]
                        mem[t + 96] = (32 * _6163) + 160
                        _6653 = mem[_6618]
                        mem[t + (32 * _6163) + 160] = mem[_6618]
                        v = 0
                        w = _6618 + 32
                        x = t + (32 * _6163) + 192
                        while v < _6653:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (32 * _6163) + (32 * _6653) + 192
                        u = u + 32
                        continue 
                    _6162 = mem[_4262 + 32]
                    mem[_5534 + 64] = t + -_5534 - 32
                    _6194 = mem[_6162]
                    mem[t] = mem[_6162]
                    idx = 0
                    s = _6162 + 32
                    u = t + (32 * _6194) + 32
                    v = t + 32
                    while idx < _6194:
                        mem[v] = u + -t - 32
                        _6547 = mem[s]
                        mem[u] = mem[mem[s] + 12 len 20]
                        mem[u + 32] = mem[_6547 + 62 len 2]
                        _6550 = mem[_6547 + 64]
                        mem[u + 64] = 128
                        _6617 = mem[_6550]
                        mem[u + 128] = mem[_6550]
                        t = 0
                        w = _6550 + 32
                        x = u + 160
                        while t < _6617:
                            mem[x] = mem[w]
                            t = t + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        _6896 = mem[_6547 + 96]
                        mem[u + 96] = (32 * _6617) + 160
                        _6930 = mem[_6896]
                        mem[u + (32 * _6617) + 160] = mem[_6896]
                        t = 0
                        w = _6896 + 32
                        x = u + (32 * _6617) + 192
                        while t < _6930:
                            mem[x] = mem[w]
                            t = t + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        u = u + (32 * _6617) + (32 * _6930) + 192
                        v = v + 32
                        continue 
                    mem[_5534 + 96] = mem[_4262 + 76 len 20]
                    mem[_5534 + 128] = mem[_4262 + 108 len 20]
                    mem[_5534 + 160] = bool(mem[_4262 + 128])
                    mem[_5534 + 192] = mem[_4262 + 160]
            else:
                _3068 = mem[96]
                s = 0
                while uint8(s) < _3068:
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    if 20 == mem[mem[(32 * uint8(s)) + 128] + 62 len 2]:
                        _3169 = mem[mem[(32 * uint8(s)) + 128]]
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        if 0 >= mem[mem[mem[(32 * uint8(s)) + 128] + 96]]:
                            revert with 0, 50
                        _3225 = mem[mem[mem[(32 * uint8(s)) + 128] + 96] + 32]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _3225
                        require ext_code.size(address(_3169))
                        call address(_3169).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _3225
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3356 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3356] == bool(mem[_3356])
                    else:
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        if 777 == mem[mem[(32 * uint8(s)) + 128] + 62 len 2]:
                            _3230 = mem[mem[(32 * uint8(s)) + 128]]
                            if uint8(s) >= mem[96]:
                                revert with 0, 50
                            if 0 >= mem[mem[mem[(32 * uint8(s)) + 128] + 96]]:
                                revert with 0, 50
                            _3285 = mem[mem[mem[(32 * uint8(s)) + 128] + 96] + 32]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = _3285
                            require ext_code.size(address(_3230))
                            call address(_3230).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), _3285
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3474 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3474] == bool(mem[_3474])
                        else:
                            if 721 == mem[mem[(32 * uint8(s)) + 128] + 62 len 2]:
                                if uint8(s) < mem[96]:
                                    if uint8(t) >= mem[mem[mem[(32 * uint8(s)) + 128] + 64]]:
                                        if uint8(s) == 255:
                                            revert with 0, 17
                                        s = uint8(s) + 1
                                        continue 
                                    if uint8(s) < mem[96]:
                                        if uint8(s) < mem[96]:
                                            _6513 = mem[mem[(32 * uint8(s)) + 128] + 64]
                                            _6514 = mem[mem[mem[(32 * uint8(s)) + 128] + 64]]
                                            t = mem[mem[(32 * uint8(s)) + 128] + 12 len 20]
                                            idx = var73003
                                            while uint8(idx) < _6514:
                                                _6570 = mem[(32 * uint8(idx)) + _6513 + 32]
                                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = this.address
                                                mem[mem[64] + 68] = _6570
                                                require ext_code.size(t)
                                                call t.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(this.address), _6570
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                if uint8(s) >= mem[96]:
                                                    revert with 0, 50
                                                if uint8(uint8(idx) + 1) >= mem[mem[mem[(32 * uint8(s)) + 128] + 64]]:
                                                    if uint8(s) == 255:
                                                        revert with 0, 17
                                                    s = uint8(s) + 1
                                                    continue 
                                                if uint8(s) >= mem[96]:
                                                    revert with 0, 50
                                                if uint8(s) >= mem[96]:
                                                    revert with 0, 50
                                                t = mem[mem[(32 * uint8(s)) + 128] + 12 len 20]
                                                idx = uint8(idx) + 1
                                                continue 
                                revert with 0, 50
                            if uint8(s) >= mem[96]:
                                revert with 0, 50
                            if mem[mem[(32 * uint8(s)) + 128] + 62 len 2] != 1155:
                                revert with 0, 'createTrade: unsupported erc type'
                            if uint8(s) >= mem[96]:
                                revert with 0, 50
                            if uint8(s) >= mem[96]:
                                revert with 0, 50
                            if mem[mem[mem[(32 * uint8(s)) + 128] + 64]] <= 1:
                                _3466 = mem[mem[(32 * uint8(s)) + 128]]
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(s)) + 128] + 64]]:
                                    revert with 0, 50
                                _3598 = mem[mem[mem[(32 * uint8(s)) + 128] + 64] + 32]
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(s)) + 128] + 96]]:
                                    revert with 0, 50
                                _3710 = mem[mem[mem[(32 * uint8(s)) + 128] + 96] + 32]
                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _3598
                                mem[mem[64] + 100] = _3710
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(address(_3466))
                                call address(_3466).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _3598, _3710, 160, 0
                            else:
                                _3469 = mem[mem[(32 * uint8(s)) + 128]]
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                _3539 = mem[mem[(32 * uint8(s)) + 128] + 64]
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                _3601 = mem[mem[(32 * uint8(s)) + 128] + 96]
                                _3602 = mem[64]
                                mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = 160
                                _3712 = mem[_3539]
                                mem[mem[64] + 164] = mem[_3539]
                                idx = 0
                                t = _3539 + 32
                                u = mem[64] + 196
                                while idx < _3712:
                                    mem[u] = mem[t]
                                    idx = idx + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_3602 + 100] = (32 * _3712) + 192
                                _4148 = mem[_3601]
                                mem[_3602 + (32 * _3712) + 196] = mem[_3601]
                                idx = 0
                                t = _3601 + 32
                                u = _3602 + (32 * _3712) + 228
                                while idx < _4148:
                                    mem[u] = mem[t]
                                    idx = idx + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_3602 + 132] = (32 * _3712) + (32 * _4148) + 224
                                mem[_3602 + (32 * _3712) + (32 * _4148) + 228] = 0
                                require ext_code.size(address(_3469))
                                call address(_3469).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _3602 + (32 * _3712) + (32 * _4148) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if uint8(s) == 255:
                        revert with 0, 17
                    s = uint8(s) + 1
                    continue 
                mem[0] = sub_e275c997
                mem[32] = 8
                t = 0
                while uint8(t) < mem[96]:
                    if uint8(t) >= mem[96]:
                        revert with 0, 50
                    stor8[stor6].field_0++
                    mem[0] = sha3(sub_e275c997, 8)
                    address(stor8[stor6][stor8[stor6].field_0].field_0) = mem[mem[(32 * uint8(t)) + 128] + 12 len 20]
                    uint16(stor8[stor6][stor8[stor6].field_0].field_160) = mem[mem[(32 * uint8(t)) + 128] + 62 len 2]
                    _4118 = mem[mem[mem[(32 * uint8(t)) + 128] + 64]]
                    stor8[stor6][stor8[stor6].field_0].field_256 = mem[mem[mem[(32 * uint8(t)) + 128] + 64]]
                    mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1
                    if not _4118:
                        idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _4954 = mem[mem[mem[(32 * uint8(t)) + 128] + 96]]
                        stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(t)) + 128] + 96]]
                        mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                        if not _4954:
                            idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            u = mem[mem[(32 * uint8(t)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(t)) + 128] + 96] + (32 * _4954) + 32 > u:
                                stor[s] = mem[u]
                                s = s + 1
                                u = u + 32
                                continue 
                            idx = s
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                        u = mem[mem[(32 * uint8(t)) + 128] + 64] + 32
                        while mem[mem[(32 * uint8(t)) + 128] + 64] + (32 * _4118) + 32 > u:
                            stor[s] = mem[u]
                            s = s + 1
                            u = u + 32
                            continue 
                        idx = s
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _5660 = mem[mem[mem[(32 * uint8(t)) + 128] + 96]]
                        stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(t)) + 128] + 96]]
                        mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                        if not _5660:
                            idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            u = mem[mem[(32 * uint8(t)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(t)) + 128] + 96] + (32 * _5660) + 32 > u:
                                stor[s] = mem[u]
                                s = s + 1
                                u = u + 32
                                continue 
                            idx = s
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    if uint8(t) == 255:
                        revert with 0, 17
                    t = uint8(t) + 1
                    continue 
                _4828 = mem[_1025]
                u = 0
                while uint8(u) < _4828:
                    if uint8(u) >= mem[_1025]:
                        revert with 0, 50
                    stor8[stor6].field_256++
                    mem[0] = sha3(sub_e275c997, 8) + 1
                    address(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_0) = mem[mem[(32 * uint8(u)) + _1025 + 32] + 12 len 20]
                    uint16(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_160) = mem[mem[(32 * uint8(u)) + _1025 + 32] + 62 len 2]
                    _4900 = mem[mem[mem[(32 * uint8(u)) + _1025 + 32] + 64]]
                    stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 = mem[mem[mem[(32 * uint8(u)) + _1025 + 32] + 64]]
                    mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1
                    if not _4900:
                        idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _5658 = mem[mem[mem[(32 * uint8(u)) + _1025 + 32] + 96]]
                        stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(u)) + _1025 + 32] + 96]]
                        mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                        if not _5658:
                            idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            t = mem[mem[(32 * uint8(u)) + _1025 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(u)) + _1025 + 32] + 96] + (32 * _5658) + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            idx = s
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                        t = mem[mem[(32 * uint8(u)) + _1025 + 32] + 64] + 32
                        while mem[mem[(32 * uint8(u)) + _1025 + 32] + 64] + (32 * _4900) + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        idx = s
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _6201 = mem[mem[mem[(32 * uint8(u)) + _1025 + 32] + 96]]
                        stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(u)) + _1025 + 32] + 96]]
                        mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                        if not _6201:
                            idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            t = mem[mem[(32 * uint8(u)) + _1025 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(u)) + _1025 + 32] + 96] + (32 * _6201) + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            idx = s
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    if uint8(u) == 255:
                        revert with 0, 17
                    u = uint8(u) + 1
                    continue 
                if not cd[36]:
                    stor8[stor6].field_1024 = 0
                    stor8[stor6].field_512 = Mask(96, 0, stor8[stor6].field_672)
                    address(stor8[stor6].field_768) = address(cd[4])
                    if sub_e275c997 == -1:
                        revert with 0, 17
                    _5035 = mem[64]
                    mem[64] = mem[64] + 192
                    _5036 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6].field_0) + 32
                    mem[_5036] = stor8[stor6].field_0
                    v = _5036 + 32
                    u = 0
                    while u < stor8[stor6].field_0:
                        mem[0] = sha3(sub_e275c997, 8)
                        _5550 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_5550] = address(stor8[stor6][u].field_0)
                        mem[_5550 + 32] = uint16(stor8[stor6][u].field_160)
                        _5551 = mem[64]
                        mem[64] = mem[64] + (32 * stor8[stor6][u].field_256) + 32
                        mem[_5551] = stor8[stor6][u].field_256
                        if not stor8[stor6][u].field_256:
                            mem[_5550 + 64] = _5551
                            _5601 = mem[64]
                            mem[64] = mem[64] + (32 * stor8[stor6][u].field_512) + 32
                            mem[_5601] = stor8[stor6][u].field_512
                            if stor8[stor6][u].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * u) + 2
                                mem[_5601 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * u) + 2)].field_0
                                s = _5601 + 32
                                t = sha3(mem[0])
                                while _5601 + (32 * stor8[stor6][u].field_512) > s:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                            mem[_5550 + 96] = _5601
                        else:
                            mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * u) + 1
                            mem[_5551 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * u) + 1)].field_0
                            s = _5551 + 32
                            t = sha3(mem[0])
                            while _5551 + (32 * stor8[stor6][u].field_256) > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_5550 + 64] = _5551
                            _6511 = mem[64]
                            mem[64] = mem[64] + (32 * stor8[stor6][u].field_512) + 32
                            mem[_6511] = stor8[stor6][u].field_512
                            if stor8[stor6][u].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * u) + 2
                                mem[_6511 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * u) + 2)].field_0
                                s = _6511 + 32
                                t = sha3(mem[0])
                                while _6511 + (32 * stor8[stor6][u].field_512) > s:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                            mem[_5550 + 96] = _6511
                        mem[v] = _5550
                        v = v + 32
                        u = u + 1
                        continue 
                    mem[_5035] = _5036
                    _5548 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6].field_256) + 32
                    mem[_5548] = stor8[stor6].field_256
                    u = _5548 + 32
                    idx = 0
                    while idx < stor8[stor6].field_256:
                        mem[0] = sha3(sub_e275c997, 8) + 1
                        _6119 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_6119] = address(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_0)
                        mem[_6119 + 32] = uint16(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_160)
                        _6120 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256) + 32
                        mem[_6120] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256
                        if not stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256:
                            mem[_6119 + 64] = _6120
                            _6170 = mem[64]
                            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                            mem[_6170] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512
                            if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 2
                                mem[_6170 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                                s = _6170 + 32
                                t = sha3(mem[0])
                                while _6170 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) > s:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                            mem[_6119 + 96] = _6170
                        else:
                            mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 1
                            mem[_6120 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 1)].field_0
                            s = _6120 + 32
                            v = sha3(mem[0])
                            while _6120 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256) > s:
                                mem[s + 32] = stor1[v]
                                s = s + 32
                                v = v + 1
                                continue 
                            mem[_6119 + 64] = _6120
                            _6831 = mem[64]
                            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                            mem[_6831] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512
                            if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 2
                                mem[_6831 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                                s = _6831 + 32
                                t = sha3(mem[0])
                                while _6831 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) > s:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                            mem[_6119 + 96] = _6831
                        mem[u] = _6119
                        u = u + 32
                        idx = idx + 1
                        continue 
                    mem[_5035 + 32] = _5548
                    mem[_5035 + 64] = address(stor8[stor6].field_512)
                    mem[_5035 + 96] = address(stor8[stor6].field_768)
                    mem[_5035 + 128] = bool(uint8(stor8[stor6].field_928))
                    mem[_5035 + 160] = stor8[stor6].field_1024
                    _6117 = mem[64]
                    mem[mem[64]] = 32
                    _6169 = mem[_5035]
                    mem[mem[64] + 32] = 192
                    _6198 = mem[_6169]
                    mem[mem[64] + 224] = mem[_6169]
                    idx = 0
                    s = _6169 + 32
                    t = mem[64] + (32 * _6198) + 256
                    u = mem[64] + 256
                    while idx < _6198:
                        mem[u] = t + -_6117 - 256
                        _6564 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_6564 + 62 len 2]
                        _6567 = mem[_6564 + 64]
                        mem[t + 64] = 128
                        _6628 = mem[_6567]
                        mem[t + 128] = mem[_6567]
                        v = 0
                        w = _6567 + 32
                        x = t + 160
                        while v < _6628:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        _6909 = mem[_6564 + 96]
                        mem[t + 96] = (32 * _6628) + 160
                        _6935 = mem[_6909]
                        mem[t + (32 * _6628) + 160] = mem[_6909]
                        v = 0
                        w = _6909 + 32
                        x = t + (32 * _6628) + 192
                        while v < _6935:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (32 * _6628) + (32 * _6935) + 192
                        u = u + 32
                        continue 
                    _6627 = mem[_5035 + 32]
                    mem[_6117 + 64] = t + -_6117 - 32
                    _6657 = mem[_6627]
                    mem[t] = mem[_6627]
                    idx = 0
                    s = _6627 + 32
                    u = t + (32 * _6657) + 32
                    v = t + 32
                    while idx < _6657:
                        mem[v] = u + -t - 32
                        _6860 = mem[s]
                        mem[u] = mem[mem[s] + 12 len 20]
                        mem[u + 32] = mem[_6860 + 62 len 2]
                        _6863 = mem[_6860 + 64]
                        mem[u + 64] = 128
                        _6908 = mem[_6863]
                        mem[u + 128] = mem[_6863]
                        t = 0
                        w = _6863 + 32
                        x = u + 160
                        while t < _6908:
                            mem[x] = mem[w]
                            t = t + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        _6999 = mem[_6860 + 96]
                        mem[u + 96] = (32 * _6908) + 160
                        _7005 = mem[_6999]
                        mem[u + (32 * _6908) + 160] = mem[_6999]
                        t = 0
                        w = _6999 + 32
                        x = u + (32 * _6908) + 192
                        while t < _7005:
                            mem[x] = mem[w]
                            t = t + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        u = u + (32 * _6908) + (32 * _7005) + 192
                        v = v + 32
                        continue 
                    mem[_6117 + 96] = mem[_5035 + 76 len 20]
                    mem[_6117 + 128] = mem[_5035 + 108 len 20]
                    mem[_6117 + 160] = bool(mem[_5035 + 128])
                    mem[_6117 + 192] = mem[_5035 + 160]
                else:
                    if block.timestamp > !cd[36]:
                        revert with 0, 17
                    stor8[stor6].field_1024 = block.timestamp + cd[36]
                    stor8[stor6].field_512 = Mask(96, 0, stor8[stor6].field_672)
                    address(stor8[stor6].field_768) = address(cd[4])
                    if sub_e275c997 == -1:
                        revert with 0, 17
                    _5122 = mem[64]
                    mem[64] = mem[64] + 192
                    _5123 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6].field_0) + 32
                    mem[_5123] = stor8[stor6].field_0
                    w = _5123 + 32
                    v = 0
                    while v < stor8[stor6].field_0:
                        mem[0] = sha3(sub_e275c997, 8)
                        _5546 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_5546] = address(stor8[stor6][v].field_0)
                        mem[_5546 + 32] = uint16(stor8[stor6][v].field_160)
                        _5547 = mem[64]
                        mem[64] = mem[64] + (32 * stor8[stor6][v].field_256) + 32
                        mem[_5547] = stor8[stor6][v].field_256
                        if not stor8[stor6][v].field_256:
                            mem[_5546 + 64] = _5547
                            _5599 = mem[64]
                            mem[64] = mem[64] + (32 * stor8[stor6][v].field_512) + 32
                            mem[_5599] = stor8[stor6][v].field_512
                            if stor8[stor6][v].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * v) + 2
                                mem[_5599 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * v) + 2)].field_0
                                s = _5599 + 32
                                t = sha3(mem[0])
                                while _5599 + (32 * stor8[stor6][v].field_512) > s:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                            mem[_5546 + 96] = _5599
                        else:
                            mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * v) + 1
                            mem[_5547 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * v) + 1)].field_0
                            s = _5547 + 32
                            u = sha3(mem[0])
                            while _5547 + (32 * stor8[stor6][v].field_256) > s:
                                mem[s + 32] = stor1[u]
                                s = s + 32
                                u = u + 1
                                continue 
                            mem[_5546 + 64] = _5547
                            _6510 = mem[64]
                            mem[64] = mem[64] + (32 * stor8[stor6][v].field_512) + 32
                            mem[_6510] = stor8[stor6][v].field_512
                            if stor8[stor6][v].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * v) + 2
                                mem[_6510 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * v) + 2)].field_0
                                s = _6510 + 32
                                t = sha3(mem[0])
                                while _6510 + (32 * stor8[stor6][v].field_512) > s:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                            mem[_5546 + 96] = _6510
                        mem[w] = _5546
                        w = w + 32
                        v = v + 1
                        continue 
                    mem[_5122] = _5123
                    _5544 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6].field_256) + 32
                    mem[_5544] = stor8[stor6].field_256
                    t = _5544 + 32
                    s = 0
                    while s < stor8[stor6].field_256:
                        mem[0] = sha3(sub_e275c997, 8) + 1
                        _6115 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_6115] = address(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_0)
                        mem[_6115 + 32] = uint16(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_160)
                        _6116 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_256) + 32
                        mem[_6116] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_256
                        if not stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_256:
                            mem[_6115 + 64] = _6116
                            _6167 = mem[64]
                            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512) + 32
                            mem[_6167] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512
                            if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * s) + 2
                                mem[_6167 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s) + 2)].field_0
                                u = _6167 + 32
                                v = sha3(mem[0])
                                while _6167 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512) > u:
                                    mem[u + 32] = stor1[v]
                                    u = u + 32
                                    v = v + 1
                                    continue 
                            mem[_6115 + 96] = _6167
                        else:
                            mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * s) + 1
                            mem[_6116 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s) + 1)].field_0
                            v = _6116 + 32
                            w = sha3(mem[0])
                            while _6116 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_256) > v:
                                mem[v + 32] = stor1[w]
                                v = v + 32
                                w = w + 1
                                continue 
                            mem[_6115 + 64] = _6116
                            _6830 = mem[64]
                            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512) + 32
                            mem[_6830] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512
                            if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * s) + 2
                                mem[_6830 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s) + 2)].field_0
                                v = _6830 + 32
                                w = sha3(mem[0])
                                while _6830 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512) > v:
                                    mem[v + 32] = stor1[w]
                                    v = v + 32
                                    w = w + 1
                                    continue 
                            mem[_6115 + 96] = _6830
                        mem[t] = _6115
                        t = t + 32
                        s = s + 1
                        continue 
                    mem[_5122 + 32] = _5544
                    mem[_5122 + 64] = address(stor8[stor6].field_512)
                    mem[_5122 + 96] = address(stor8[stor6].field_768)
                    mem[_5122 + 128] = bool(uint8(stor8[stor6].field_928))
                    mem[_5122 + 160] = stor8[stor6].field_1024
                    _6113 = mem[64]
                    mem[mem[64]] = 32
                    _6166 = mem[_5122]
                    mem[mem[64] + 32] = 192
                    _6196 = mem[_6166]
                    mem[mem[64] + 224] = mem[_6166]
                    idx = 0
                    s = _6166 + 32
                    t = mem[64] + (32 * _6196) + 256
                    u = mem[64] + 256
                    while idx < _6196:
                        mem[u] = t + -_6113 - 256
                        _6559 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_6559 + 62 len 2]
                        _6562 = mem[_6559 + 64]
                        mem[t + 64] = 128
                        _6626 = mem[_6562]
                        mem[t + 128] = mem[_6562]
                        v = 0
                        w = _6562 + 32
                        x = t + 160
                        while v < _6626:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        _6903 = mem[_6559 + 96]
                        mem[t + 96] = (32 * _6626) + 160
                        _6933 = mem[_6903]
                        mem[t + (32 * _6626) + 160] = mem[_6903]
                        v = 0
                        w = _6903 + 32
                        x = t + (32 * _6626) + 192
                        while v < _6933:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (32 * _6626) + (32 * _6933) + 192
                        u = u + 32
                        continue 
                    _6625 = mem[_5122 + 32]
                    mem[_6113 + 64] = t + -_6113 - 32
                    _6656 = mem[_6625]
                    mem[t] = mem[_6625]
                    idx = 0
                    s = _6625 + 32
                    u = t + (32 * _6656) + 32
                    v = t + 32
                    while idx < _6656:
                        mem[v] = u + -t - 32
                        _6854 = mem[s]
                        mem[u] = mem[mem[s] + 12 len 20]
                        mem[u + 32] = mem[_6854 + 62 len 2]
                        _6857 = mem[_6854 + 64]
                        mem[u + 64] = 128
                        _6902 = mem[_6857]
                        mem[u + 128] = mem[_6857]
                        t = 0
                        w = _6857 + 32
                        x = u + 160
                        while t < _6902:
                            mem[x] = mem[w]
                            t = t + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        _6998 = mem[_6854 + 96]
                        mem[u + 96] = (32 * _6902) + 160
                        _7004 = mem[_6998]
                        mem[u + (32 * _6902) + 160] = mem[_6998]
                        t = 0
                        w = _6998 + 32
                        x = u + (32 * _6902) + 192
                        while t < _7004:
                            mem[x] = mem[w]
                            t = t + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        u = u + (32 * _6902) + (32 * _7004) + 192
                        v = v + 32
                        continue 
                    mem[_6113 + 96] = mem[_5122 + 76 len 20]
                    mem[_6113 + 128] = mem[_5122 + 108 len 20]
                    mem[_6113 + 160] = bool(mem[_5122 + 128])
                    mem[_6113 + 192] = mem[_5122 + 160]
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = stor5
            mem[mem[64] + 68] = serviceFee
            require ext_code.size(sub_270e5326Address)
            call sub_270e5326Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, stor5, serviceFee
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2065 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2065] == bool(mem[_2065])
            if 0 >= mem[96]:
                revert with 0, 50
            if not mem[mem[128] + 12 len 20]:
                mem[0] = sub_e275c997
                mem[32] = 8
                s = 0
                while uint8(s) < mem[96]:
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    stor8[stor6].field_0++
                    mem[0] = sha3(sub_e275c997, 8)
                    address(stor8[stor6][stor8[stor6].field_0].field_0) = mem[mem[(32 * uint8(s)) + 128] + 12 len 20]
                    uint16(stor8[stor6][stor8[stor6].field_0].field_160) = mem[mem[(32 * uint8(s)) + 128] + 62 len 2]
                    _3103 = mem[mem[mem[(32 * uint8(s)) + 128] + 64]]
                    stor8[stor6][stor8[stor6].field_0].field_256 = mem[mem[mem[(32 * uint8(s)) + 128] + 64]]
                    mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1
                    if not _3103:
                        idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _4154 = mem[mem[mem[(32 * uint8(s)) + 128] + 96]]
                        stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(s)) + 128] + 96]]
                        mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                        if not _4154:
                            idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            t = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            u = mem[mem[(32 * uint8(s)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(s)) + 128] + 96] + (32 * _4154) + 32 > u:
                                stor[t] = mem[u]
                                t = t + 1
                                u = u + 32
                                continue 
                            idx = t
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    else:
                        t = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                        u = mem[mem[(32 * uint8(s)) + 128] + 64] + 32
                        while mem[mem[(32 * uint8(s)) + 128] + 64] + (32 * _3103) + 32 > u:
                            stor[t] = mem[u]
                            t = t + 1
                            u = u + 32
                            continue 
                        idx = t
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _4972 = mem[mem[mem[(32 * uint8(s)) + 128] + 96]]
                        stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(s)) + 128] + 96]]
                        mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                        if not _4972:
                            idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            t = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            u = mem[mem[(32 * uint8(s)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(s)) + 128] + 96] + (32 * _4972) + 32 > u:
                                stor[t] = mem[u]
                                t = t + 1
                                u = u + 32
                                continue 
                            idx = t
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    if uint8(s) == 255:
                        revert with 0, 17
                    s = uint8(s) + 1
                    continue 
                _4068 = mem[_1025]
                t = 0
                while uint8(t) < _4068:
                    if uint8(t) >= mem[_1025]:
                        revert with 0, 50
                    stor8[stor6].field_256++
                    mem[0] = sha3(sub_e275c997, 8) + 1
                    address(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_0) = mem[mem[(32 * uint8(t)) + _1025 + 32] + 12 len 20]
                    uint16(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_160) = mem[mem[(32 * uint8(t)) + _1025 + 32] + 62 len 2]
                    _4125 = mem[mem[mem[(32 * uint8(t)) + _1025 + 32] + 64]]
                    stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 = mem[mem[mem[(32 * uint8(t)) + _1025 + 32] + 64]]
                    mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1
                    if not _4125:
                        idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _4970 = mem[mem[mem[(32 * uint8(t)) + _1025 + 32] + 96]]
                        stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(t)) + _1025 + 32] + 96]]
                        mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                        if not _4970:
                            idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            u = mem[mem[(32 * uint8(t)) + _1025 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(t)) + _1025 + 32] + 96] + (32 * _4970) + 32 > u:
                                stor[s] = mem[u]
                                s = s + 1
                                u = u + 32
                                continue 
                            idx = s
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                        u = mem[mem[(32 * uint8(t)) + _1025 + 32] + 64] + 32
                        while mem[mem[(32 * uint8(t)) + _1025 + 32] + 64] + (32 * _4125) + 32 > u:
                            stor[s] = mem[u]
                            s = s + 1
                            u = u + 32
                            continue 
                        u = s
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > u:
                            stor[u] = 0
                            u = u + 1
                            continue 
                        _5668 = mem[mem[mem[(32 * uint8(t)) + _1025 + 32] + 96]]
                        stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(t)) + _1025 + 32] + 96]]
                        mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                        if not _5668:
                            idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            u = mem[mem[(32 * uint8(t)) + _1025 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(t)) + _1025 + 32] + 96] + (32 * _5668) + 32 > u:
                                stor[s] = mem[u]
                                s = s + 1
                                u = u + 32
                                continue 
                            idx = s
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    if uint8(t) == 255:
                        revert with 0, 17
                    t = uint8(t) + 1
                    continue 
                if not cd[36]:
                    stor8[stor6].field_1024 = 0
                    stor8[stor6].field_512 = Mask(96, 0, stor8[stor6].field_672)
                    address(stor8[stor6].field_768) = address(cd[4])
                    if sub_e275c997 == -1:
                        revert with 0, 17
                    _4215 = mem[64]
                    mem[64] = mem[64] + 192
                    _4216 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6].field_0) + 32
                    mem[_4216] = stor8[stor6].field_0
                    u = _4216 + 32
                    t = 0
                    while t < stor8[stor6].field_0:
                        mem[0] = sha3(sub_e275c997, 8)
                        _4870 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_4870] = address(stor8[stor6][t].field_0)
                        mem[_4870 + 32] = uint16(stor8[stor6][t].field_160)
                        _4871 = mem[64]
                        mem[64] = mem[64] + (32 * stor8[stor6][t].field_256) + 32
                        mem[_4871] = stor8[stor6][t].field_256
                        if not stor8[stor6][t].field_256:
                            mem[_4870 + 64] = _4871
                            _4906 = mem[64]
                            mem[64] = mem[64] + (32 * stor8[stor6][t].field_512) + 32
                            mem[_4906] = stor8[stor6][t].field_512
                            if stor8[stor6][t].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * t) + 2
                                mem[_4906 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * t) + 2)].field_0
                                s = _4906 + 32
                                v = sha3(mem[0])
                                while _4906 + (32 * stor8[stor6][t].field_512) > s:
                                    mem[s + 32] = stor1[v]
                                    s = s + 32
                                    v = v + 1
                                    continue 
                            mem[_4870 + 96] = _4906
                        else:
                            mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * t) + 1
                            mem[_4871 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * t) + 1)].field_0
                            s = _4871 + 32
                            v = sha3(mem[0])
                            while _4871 + (32 * stor8[stor6][t].field_256) > s:
                                mem[s + 32] = stor1[v]
                                s = s + 32
                                v = v + 1
                                continue 
                            mem[_4870 + 64] = _4871
                            _6074 = mem[64]
                            mem[64] = mem[64] + (32 * stor8[stor6][t].field_512) + 32
                            mem[_6074] = stor8[stor6][t].field_512
                            if stor8[stor6][t].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * t) + 2
                                mem[_6074 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * t) + 2)].field_0
                                s = _6074 + 32
                                v = sha3(mem[0])
                                while _6074 + (32 * stor8[stor6][t].field_512) > s:
                                    mem[s + 32] = stor1[v]
                                    s = s + 32
                                    v = v + 1
                                    continue 
                            mem[_4870 + 96] = _6074
                        mem[u] = _4870
                        u = u + 32
                        t = t + 1
                        continue 
                    mem[_4215] = _4216
                    _4868 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6].field_256) + 32
                    mem[_4868] = stor8[stor6].field_256
                    t = _4868 + 32
                    idx = 0
                    while idx < stor8[stor6].field_256:
                        mem[0] = sha3(sub_e275c997, 8) + 1
                        _5563 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_5563] = address(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_0)
                        mem[_5563 + 32] = uint16(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_160)
                        _5564 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256) + 32
                        mem[_5564] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256
                        if not stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256:
                            mem[_5563 + 64] = _5564
                            _5610 = mem[64]
                            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                            mem[_5610] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512
                            if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 2
                                mem[_5610 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                                s = _5610 + 32
                                u = sha3(mem[0])
                                while _5610 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) > s:
                                    mem[s + 32] = stor1[u]
                                    s = s + 32
                                    u = u + 1
                                    continue 
                            mem[_5563 + 96] = _5610
                        else:
                            mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 1
                            mem[_5564 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 1)].field_0
                            u = _5564 + 32
                            v = sha3(mem[0])
                            while _5564 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256) > u:
                                mem[u + 32] = stor1[v]
                                u = u + 32
                                v = v + 1
                                continue 
                            mem[_5563 + 64] = _5564
                            _6516 = mem[64]
                            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                            mem[_6516] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512
                            if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 2
                                mem[_6516 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                                u = _6516 + 32
                                v = sha3(mem[0])
                                while _6516 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) > u:
                                    mem[u + 32] = stor1[v]
                                    u = u + 32
                                    v = v + 1
                                    continue 
                            mem[_5563 + 96] = _6516
                        mem[t] = _5563
                        t = t + 32
                        idx = idx + 1
                        continue 
                    mem[_4215 + 32] = _4868
                    mem[_4215 + 64] = address(stor8[stor6].field_512)
                    mem[_4215 + 96] = address(stor8[stor6].field_768)
                    mem[_4215 + 128] = bool(uint8(stor8[stor6].field_928))
                    mem[_4215 + 160] = stor8[stor6].field_1024
                    _5561 = mem[64]
                    mem[mem[64]] = 32
                    _5609 = mem[_4215]
                    mem[mem[64] + 32] = 192
                    _5665 = mem[_5609]
                    mem[mem[64] + 224] = mem[_5609]
                    idx = 0
                    s = _5609 + 32
                    t = mem[64] + (32 * _5665) + 256
                    u = mem[64] + 256
                    while idx < _5665:
                        mem[u] = t + -_5561 - 256
                        _6131 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_6131 + 62 len 2]
                        _6134 = mem[_6131 + 64]
                        mem[t + 64] = 128
                        _6177 = mem[_6134]
                        mem[t + 128] = mem[_6134]
                        v = 0
                        w = _6134 + 32
                        x = t + 160
                        while v < _6177:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        _6640 = mem[_6131 + 96]
                        mem[t + 96] = (32 * _6177) + 160
                        _6662 = mem[_6640]
                        mem[t + (32 * _6177) + 160] = mem[_6640]
                        v = 0
                        w = _6640 + 32
                        x = t + (32 * _6177) + 192
                        while v < _6662:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (32 * _6177) + (32 * _6662) + 192
                        u = u + 32
                        continue 
                    _6176 = mem[_4215 + 32]
                    mem[_5561 + 64] = t + -_5561 - 32
                    _6203 = mem[_6176]
                    mem[t] = mem[_6176]
                    idx = 0
                    s = _6176 + 32
                    u = t + (32 * _6203) + 32
                    v = t + 32
                    while idx < _6203:
                        mem[v] = u + -t - 32
                        _6578 = mem[s]
                        mem[u] = mem[mem[s] + 12 len 20]
                        mem[u + 32] = mem[_6578 + 62 len 2]
                        _6581 = mem[_6578 + 64]
                        mem[u + 64] = 128
                        _6639 = mem[_6581]
                        mem[u + 128] = mem[_6581]
                        t = 0
                        w = _6581 + 32
                        x = u + 160
                        while t < _6639:
                            mem[x] = mem[w]
                            t = t + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        _6911 = mem[_6578 + 96]
                        mem[u + 96] = (32 * _6639) + 160
                        _6937 = mem[_6911]
                        mem[u + (32 * _6639) + 160] = mem[_6911]
                        t = 0
                        w = _6911 + 32
                        x = u + (32 * _6639) + 192
                        while t < _6937:
                            mem[x] = mem[w]
                            t = t + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        u = u + (32 * _6639) + (32 * _6937) + 192
                        v = v + 32
                        continue 
                    mem[_5561 + 96] = mem[_4215 + 76 len 20]
                    mem[_5561 + 128] = mem[_4215 + 108 len 20]
                    mem[_5561 + 160] = bool(mem[_4215 + 128])
                    mem[_5561 + 192] = mem[_4215 + 160]
                else:
                    if block.timestamp > !cd[36]:
                        revert with 0, 17
                    stor8[stor6].field_1024 = block.timestamp + cd[36]
                    stor8[stor6].field_512 = Mask(96, 0, stor8[stor6].field_672)
                    address(stor8[stor6].field_768) = address(cd[4])
                    if sub_e275c997 == -1:
                        revert with 0, 17
                    _4270 = mem[64]
                    mem[64] = mem[64] + 192
                    _4271 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6].field_0) + 32
                    mem[_4271] = stor8[stor6].field_0
                    u = _4271 + 32
                    idx = 0
                    while idx < stor8[stor6].field_0:
                        mem[0] = sha3(sub_e275c997, 8)
                        _4866 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_4866] = address(stor8[stor6][idx].field_0)
                        mem[_4866 + 32] = uint16(stor8[stor6][idx].field_160)
                        _4867 = mem[64]
                        mem[64] = mem[64] + (32 * stor8[stor6][idx].field_256) + 32
                        mem[_4867] = stor8[stor6][idx].field_256
                        if not stor8[stor6][idx].field_256:
                            mem[_4866 + 64] = _4867
                            _4904 = mem[64]
                            mem[64] = mem[64] + (32 * stor8[stor6][idx].field_512) + 32
                            mem[_4904] = stor8[stor6][idx].field_512
                            if stor8[stor6][idx].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * idx) + 2
                                mem[_4904 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                                s = _4904 + 32
                                t = sha3(mem[0])
                                while _4904 + (32 * stor8[stor6][idx].field_512) > s:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                            mem[_4866 + 96] = _4904
                        else:
                            mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * idx) + 1
                            mem[_4867 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * idx) + 1)].field_0
                            t = _4867 + 32
                            v = sha3(mem[0])
                            while _4867 + (32 * stor8[stor6][idx].field_256) > t:
                                mem[t + 32] = stor1[v]
                                t = t + 32
                                v = v + 1
                                continue 
                            mem[_4866 + 64] = _4867
                            _6073 = mem[64]
                            mem[64] = mem[64] + (32 * stor8[stor6][idx].field_512) + 32
                            mem[_6073] = stor8[stor6][idx].field_512
                            if stor8[stor6][idx].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * idx) + 2
                                mem[_6073 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                                t = _6073 + 32
                                v = sha3(mem[0])
                                while _6073 + (32 * stor8[stor6][idx].field_512) > t:
                                    mem[t + 32] = stor1[v]
                                    t = t + 32
                                    v = v + 1
                                    continue 
                            mem[_4866 + 96] = _6073
                        mem[u] = _4866
                        u = u + 32
                        idx = idx + 1
                        continue 
                    mem[_4270] = _4271
                    _4864 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6].field_256) + 32
                    mem[_4864] = stor8[stor6].field_256
                    s = _4864 + 32
                    idx = 0
                    while idx < stor8[stor6].field_256:
                        mem[0] = sha3(sub_e275c997, 8) + 1
                        _5559 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_5559] = address(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_0)
                        mem[_5559 + 32] = uint16(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_160)
                        _5560 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256) + 32
                        mem[_5560] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256
                        if not stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256:
                            mem[_5559 + 64] = _5560
                            _5607 = mem[64]
                            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                            mem[_5607] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512
                            if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 2
                                mem[_5607 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                                t = _5607 + 32
                                u = sha3(mem[0])
                                while _5607 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                            mem[_5559 + 96] = _5607
                        else:
                            mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 1
                            mem[_5560 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 1)].field_0
                            u = _5560 + 32
                            v = sha3(mem[0])
                            while _5560 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256) > u:
                                mem[u + 32] = stor1[v]
                                u = u + 32
                                v = v + 1
                                continue 
                            mem[_5559 + 64] = _5560
                            _6515 = mem[64]
                            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                            mem[_6515] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512
                            if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 2
                                mem[_6515 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                                u = _6515 + 32
                                v = sha3(mem[0])
                                while _6515 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) > u:
                                    mem[u + 32] = stor1[v]
                                    u = u + 32
                                    v = v + 1
                                    continue 
                            mem[_5559 + 96] = _6515
                        mem[s] = _5559
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[_4270 + 32] = _4864
                    mem[_4270 + 64] = address(stor8[stor6].field_512)
                    mem[_4270 + 96] = address(stor8[stor6].field_768)
                    mem[_4270 + 128] = bool(uint8(stor8[stor6].field_928))
                    mem[_4270 + 160] = stor8[stor6].field_1024
                    _5557 = mem[64]
                    mem[mem[64]] = 32
                    _5606 = mem[_4270]
                    mem[mem[64] + 32] = 192
                    _5663 = mem[_5606]
                    mem[mem[64] + 224] = mem[_5606]
                    idx = 0
                    s = _5606 + 32
                    t = mem[64] + (32 * _5663) + 256
                    u = mem[64] + 256
                    while idx < _5663:
                        mem[u] = t + -_5557 - 256
                        _6126 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_6126 + 62 len 2]
                        _6129 = mem[_6126 + 64]
                        mem[t + 64] = 128
                        _6175 = mem[_6129]
                        mem[t + 128] = mem[_6129]
                        v = 0
                        w = _6129 + 32
                        x = t + 160
                        while v < _6175:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        _6634 = mem[_6126 + 96]
                        mem[t + 96] = (32 * _6175) + 160
                        _6660 = mem[_6634]
                        mem[t + (32 * _6175) + 160] = mem[_6634]
                        v = 0
                        w = _6634 + 32
                        x = t + (32 * _6175) + 192
                        while v < _6660:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (32 * _6175) + (32 * _6660) + 192
                        u = u + 32
                        continue 
                    _6174 = mem[_4270 + 32]
                    mem[_5557 + 64] = t + -_5557 - 32
                    _6202 = mem[_6174]
                    mem[t] = mem[_6174]
                    idx = 0
                    s = _6174 + 32
                    u = t + (32 * _6202) + 32
                    v = t + 32
                    while idx < _6202:
                        mem[v] = u + -t - 32
                        _6572 = mem[s]
                        mem[u] = mem[mem[s] + 12 len 20]
                        mem[u + 32] = mem[_6572 + 62 len 2]
                        _6575 = mem[_6572 + 64]
                        mem[u + 64] = 128
                        _6633 = mem[_6575]
                        mem[u + 128] = mem[_6575]
                        t = 0
                        w = _6575 + 32
                        x = u + 160
                        while t < _6633:
                            mem[x] = mem[w]
                            t = t + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        _6910 = mem[_6572 + 96]
                        mem[u + 96] = (32 * _6633) + 160
                        _6936 = mem[_6910]
                        mem[u + (32 * _6633) + 160] = mem[_6910]
                        t = 0
                        w = _6910 + 32
                        x = u + (32 * _6633) + 192
                        while t < _6936:
                            mem[x] = mem[w]
                            t = t + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        u = u + (32 * _6633) + (32 * _6936) + 192
                        v = v + 32
                        continue 
                    mem[_5557 + 96] = mem[_4270 + 76 len 20]
                    mem[_5557 + 128] = mem[_4270 + 108 len 20]
                    mem[_5557 + 160] = bool(mem[_4270 + 128])
                    mem[_5557 + 192] = mem[_4270 + 160]
            else:
                _3070 = mem[96]
                s = 0
                while uint8(s) < _3070:
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    if 20 == mem[mem[(32 * uint8(s)) + 128] + 62 len 2]:
                        _3180 = mem[mem[(32 * uint8(s)) + 128]]
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        if 0 >= mem[mem[mem[(32 * uint8(s)) + 128] + 96]]:
                            revert with 0, 50
                        _3238 = mem[mem[mem[(32 * uint8(s)) + 128] + 96] + 32]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _3238
                        require ext_code.size(address(_3180))
                        call address(_3180).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _3238
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3374 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3374] == bool(mem[_3374])
                    else:
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        if 777 == mem[mem[(32 * uint8(s)) + 128] + 62 len 2]:
                            _3243 = mem[mem[(32 * uint8(s)) + 128]]
                            if uint8(s) >= mem[96]:
                                revert with 0, 50
                            if 0 >= mem[mem[mem[(32 * uint8(s)) + 128] + 96]]:
                                revert with 0, 50
                            _3294 = mem[mem[mem[(32 * uint8(s)) + 128] + 96] + 32]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = _3294
                            require ext_code.size(address(_3243))
                            call address(_3243).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), _3294
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3500 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3500] == bool(mem[_3500])
                        else:
                            if 721 == mem[mem[(32 * uint8(s)) + 128] + 62 len 2]:
                                if uint8(s) < mem[96]:
                                    if uint8(var78003) >= mem[mem[mem[(32 * uint8(s)) + 128] + 64]]:
                                        if uint8(s) == 255:
                                            revert with 0, 17
                                        s = uint8(s) + 1
                                        continue 
                                    if uint8(s) < mem[96]:
                                        if uint8(s) < mem[96]:
                                            _6520 = mem[mem[(32 * uint8(s)) + 128] + 64]
                                            _6521 = mem[mem[mem[(32 * uint8(s)) + 128] + 64]]
                                            t = mem[mem[(32 * uint8(s)) + 128] + 12 len 20]
                                            idx = var82003
                                            while uint8(idx) < _6521:
                                                _6595 = mem[(32 * uint8(idx)) + _6520 + 32]
                                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = this.address
                                                mem[mem[64] + 68] = _6595
                                                require ext_code.size(t)
                                                call t.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(this.address), _6595
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                if uint8(s) >= mem[96]:
                                                    revert with 0, 50
                                                if uint8(uint8(idx) + 1) >= mem[mem[mem[(32 * uint8(s)) + 128] + 64]]:
                                                    if uint8(s) == 255:
                                                        revert with 0, 17
                                                    s = uint8(s) + 1
                                                    continue 
                                                if uint8(s) >= mem[96]:
                                                    revert with 0, 50
                                                if uint8(s) >= mem[96]:
                                                    revert with 0, 50
                                                t = mem[mem[(32 * uint8(s)) + 128] + 12 len 20]
                                                idx = uint8(idx) + 1
                                                continue 
                                revert with 0, 50
                            if uint8(s) >= mem[96]:
                                revert with 0, 50
                            if mem[mem[(32 * uint8(s)) + 128] + 62 len 2] != 1155:
                                revert with 0, 'createTrade: unsupported erc type'
                            if uint8(s) >= mem[96]:
                                revert with 0, 50
                            if uint8(s) >= mem[96]:
                                revert with 0, 50
                            if mem[mem[mem[(32 * uint8(s)) + 128] + 64]] <= 1:
                                _3492 = mem[mem[(32 * uint8(s)) + 128]]
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(s)) + 128] + 64]]:
                                    revert with 0, 50
                                _3618 = mem[mem[mem[(32 * uint8(s)) + 128] + 64] + 32]
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(s)) + 128] + 96]]:
                                    revert with 0, 50
                                _3723 = mem[mem[mem[(32 * uint8(s)) + 128] + 96] + 32]
                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _3618
                                mem[mem[64] + 100] = _3723
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(address(_3492))
                                call address(_3492).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _3618, _3723, 160, 0
                            else:
                                _3495 = mem[mem[(32 * uint8(s)) + 128]]
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                _3560 = mem[mem[(32 * uint8(s)) + 128] + 64]
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                _3621 = mem[mem[(32 * uint8(s)) + 128] + 96]
                                mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = 160
                                _3725 = mem[_3560]
                                mem[mem[64] + 164] = mem[_3560]
                                idx = 0
                                t = _3560 + 32
                                u = mem[64] + 196
                                while idx < _3725:
                                    mem[u] = mem[t]
                                    idx = idx + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[mem[64] + 100] = (32 * _3725) + 192
                                _4157 = mem[_3621]
                                mem[mem[64] + (32 * _3725) + 196] = mem[_3621]
                                idx = 0
                                t = _3621 + 32
                                u = mem[64] + (32 * _3725) + 228
                                while idx < _4157:
                                    mem[u] = mem[t]
                                    idx = idx + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[mem[64] + 132] = (32 * _3725) + (32 * _4157) + 224
                                mem[mem[64] + (32 * _3725) + (32 * _4157) + 228] = 0
                                require ext_code.size(address(_3495))
                                call address(_3495).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), 160, (32 * _3725) + 192, (32 * _3725) + (32 * _4157) + 224, mem[mem[64] + 164 len (32 * _3725) + (32 * _4157) + 64], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if uint8(s) == 255:
                        revert with 0, 17
                    s = uint8(s) + 1
                    continue 
                mem[0] = sub_e275c997
                mem[32] = 8
                t = 0
                while uint8(t) < mem[96]:
                    if uint8(t) >= mem[96]:
                        revert with 0, 50
                    stor8[stor6].field_0++
                    mem[0] = sha3(sub_e275c997, 8)
                    address(stor8[stor6][stor8[stor6].field_0].field_0) = mem[mem[(32 * uint8(t)) + 128] + 12 len 20]
                    uint16(stor8[stor6][stor8[stor6].field_0].field_160) = mem[mem[(32 * uint8(t)) + 128] + 62 len 2]
                    _4132 = mem[mem[mem[(32 * uint8(t)) + 128] + 64]]
                    stor8[stor6][stor8[stor6].field_0].field_256 = mem[mem[mem[(32 * uint8(t)) + 128] + 64]]
                    mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1
                    if not _4132:
                        idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _4975 = mem[mem[mem[(32 * uint8(t)) + 128] + 96]]
                        stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(t)) + 128] + 96]]
                        mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                        if not _4975:
                            idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            u = mem[mem[(32 * uint8(t)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(t)) + 128] + 96] + (32 * _4975) + 32 > u:
                                stor[s] = mem[u]
                                s = s + 1
                                u = u + 32
                                continue 
                            idx = s
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                        u = mem[mem[(32 * uint8(t)) + 128] + 64] + 32
                        while mem[mem[(32 * uint8(t)) + 128] + 64] + (32 * _4132) + 32 > u:
                            stor[s] = mem[u]
                            s = s + 1
                            u = u + 32
                            continue 
                        u = s
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > u:
                            stor[u] = 0
                            u = u + 1
                            continue 
                        _5682 = mem[mem[mem[(32 * uint8(t)) + 128] + 96]]
                        stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(t)) + 128] + 96]]
                        mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                        if not _5682:
                            idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            u = mem[mem[(32 * uint8(t)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(t)) + 128] + 96] + (32 * _5682) + 32 > u:
                                stor[s] = mem[u]
                                s = s + 1
                                u = u + 32
                                continue 
                            idx = s
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    if uint8(t) == 255:
                        revert with 0, 17
                    t = uint8(t) + 1
                    continue 
                _4832 = mem[_1025]
                u = 0
                while uint8(u) < _4832:
                    if uint8(u) >= mem[_1025]:
                        revert with 0, 50
                    stor8[stor6].field_256++
                    mem[0] = sha3(sub_e275c997, 8) + 1
                    address(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_0) = mem[mem[(32 * uint8(u)) + _1025 + 32] + 12 len 20]
                    uint16(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_160) = mem[mem[(32 * uint8(u)) + _1025 + 32] + 62 len 2]
                    _4913 = mem[mem[mem[(32 * uint8(u)) + _1025 + 32] + 64]]
                    stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 = mem[mem[mem[(32 * uint8(u)) + _1025 + 32] + 64]]
                    mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1
                    if not _4913:
                        s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        _5680 = mem[mem[mem[(32 * uint8(u)) + _1025 + 32] + 96]]
                        stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(u)) + _1025 + 32] + 96]]
                        mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                        if not _5680:
                            idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            t = mem[mem[(32 * uint8(u)) + _1025 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(u)) + _1025 + 32] + 96] + (32 * _5680) + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            idx = s
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                        t = mem[mem[(32 * uint8(u)) + _1025 + 32] + 64] + 32
                        while mem[mem[(32 * uint8(u)) + _1025 + 32] + 64] + (32 * _4913) + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        idx = s
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _6209 = mem[mem[mem[(32 * uint8(u)) + _1025 + 32] + 96]]
                        stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(u)) + _1025 + 32] + 96]]
                        mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                        if not _6209:
                            idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            t = mem[mem[(32 * uint8(u)) + _1025 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(u)) + _1025 + 32] + 96] + (32 * _6209) + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            idx = s
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    if uint8(u) == 255:
                        revert with 0, 17
                    u = uint8(u) + 1
                    continue 
                if not cd[36]:
                    stor8[stor6].field_1024 = 0
                    stor8[stor6].field_512 = Mask(96, 0, stor8[stor6].field_672)
                    address(stor8[stor6].field_768) = address(cd[4])
                    if sub_e275c997 == -1:
                        revert with 0, 17
                    _5043 = mem[64]
                    mem[64] = mem[64] + 192
                    _5044 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6].field_0) + 32
                    mem[_5044] = stor8[stor6].field_0
                    u = _5044 + 32
                    idx = 0
                    while idx < stor8[stor6].field_0:
                        mem[0] = sha3(sub_e275c997, 8)
                        _5573 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_5573] = address(stor8[stor6][idx].field_0)
                        mem[_5573 + 32] = uint16(stor8[stor6][idx].field_160)
                        _5574 = mem[64]
                        mem[64] = mem[64] + (32 * stor8[stor6][idx].field_256) + 32
                        mem[_5574] = stor8[stor6][idx].field_256
                        if not stor8[stor6][idx].field_256:
                            mem[_5573 + 64] = _5574
                            _5614 = mem[64]
                            mem[64] = mem[64] + (32 * stor8[stor6][idx].field_512) + 32
                            mem[_5614] = stor8[stor6][idx].field_512
                            if stor8[stor6][idx].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * idx) + 2
                                mem[_5614 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                                s = _5614 + 32
                                t = sha3(mem[0])
                                while _5614 + (32 * stor8[stor6][idx].field_512) > s:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                            mem[_5573 + 96] = _5614
                        else:
                            mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * idx) + 1
                            mem[_5574 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * idx) + 1)].field_0
                            s = _5574 + 32
                            t = sha3(mem[0])
                            while _5574 + (32 * stor8[stor6][idx].field_256) > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_5573 + 64] = _5574
                            _6518 = mem[64]
                            mem[64] = mem[64] + (32 * stor8[stor6][idx].field_512) + 32
                            mem[_6518] = stor8[stor6][idx].field_512
                            if stor8[stor6][idx].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * idx) + 2
                                mem[_6518 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                                s = _6518 + 32
                                t = sha3(mem[0])
                                while _6518 + (32 * stor8[stor6][idx].field_512) > s:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                            mem[_5573 + 96] = _6518
                        mem[u] = _5573
                        u = u + 32
                        idx = idx + 1
                        continue 
                    mem[_5043] = _5044
                    _5571 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6].field_256) + 32
                    mem[_5571] = stor8[stor6].field_256
                    u = _5571 + 32
                    idx = 0
                    while idx < stor8[stor6].field_256:
                        mem[0] = sha3(sub_e275c997, 8) + 1
                        _6143 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_6143] = address(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_0)
                        mem[_6143 + 32] = uint16(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_160)
                        _6144 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256) + 32
                        mem[_6144] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256
                        if not stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256:
                            mem[_6143 + 64] = _6144
                            _6182 = mem[64]
                            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                            mem[_6182] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512
                            if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 2
                                mem[_6182 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                                s = _6182 + 32
                                t = sha3(mem[0])
                                while _6182 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) > s:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                            mem[_6143 + 96] = _6182
                        else:
                            mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 1
                            mem[_6144 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 1)].field_0
                            s = _6144 + 32
                            v = sha3(mem[0])
                            while _6144 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256) > s:
                                mem[s + 32] = stor1[v]
                                s = s + 32
                                v = v + 1
                                continue 
                            mem[_6143 + 64] = _6144
                            _6833 = mem[64]
                            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                            mem[_6833] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512
                            if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 2
                                mem[_6833 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                                s = _6833 + 32
                                t = sha3(mem[0])
                                while _6833 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) > s:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                            mem[_6143 + 96] = _6833
                        mem[u] = _6143
                        u = u + 32
                        idx = idx + 1
                        continue 
                    mem[_5043 + 32] = _5571
                    mem[_5043 + 64] = address(stor8[stor6].field_512)
                    mem[_5043 + 96] = address(stor8[stor6].field_768)
                    mem[_5043 + 128] = bool(uint8(stor8[stor6].field_928))
                    mem[_5043 + 160] = stor8[stor6].field_1024
                    _6141 = mem[64]
                    mem[mem[64]] = 32
                    _6181 = mem[_5043]
                    mem[mem[64] + 32] = 192
                    _6206 = mem[_6181]
                    mem[mem[64] + 224] = mem[_6181]
                    idx = 0
                    s = _6181 + 32
                    t = mem[64] + (32 * _6206) + 256
                    u = mem[64] + 256
                    while idx < _6206:
                        mem[u] = t + -_6141 - 256
                        _6589 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_6589 + 62 len 2]
                        _6592 = mem[_6589 + 64]
                        mem[t + 64] = 128
                        _6644 = mem[_6592]
                        mem[t + 128] = mem[_6592]
                        v = 0
                        w = _6592 + 32
                        x = t + 160
                        while v < _6644:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        _6923 = mem[_6589 + 96]
                        mem[t + 96] = (32 * _6644) + 160
                        _6941 = mem[_6923]
                        mem[t + (32 * _6644) + 160] = mem[_6923]
                        v = 0
                        w = _6923 + 32
                        x = t + (32 * _6644) + 192
                        while v < _6941:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (32 * _6644) + (32 * _6941) + 192
                        u = u + 32
                        continue 
                    _6643 = mem[_5043 + 32]
                    mem[_6141 + 64] = t + -_6141 - 32
                    _6664 = mem[_6643]
                    mem[t] = mem[_6643]
                    idx = 0
                    s = _6643 + 32
                    u = t + (32 * _6664) + 32
                    v = t + 32
                    while idx < _6664:
                        mem[v] = u + -t - 32
                        _6876 = mem[s]
                        mem[u] = mem[mem[s] + 12 len 20]
                        mem[u + 32] = mem[_6876 + 62 len 2]
                        _6879 = mem[_6876 + 64]
                        mem[u + 64] = 128
                        _6922 = mem[_6879]
                        mem[u + 128] = mem[_6879]
                        t = 0
                        w = _6879 + 32
                        x = u + 160
                        while t < _6922:
                            mem[x] = mem[w]
                            t = t + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        _7001 = mem[_6876 + 96]
                        mem[u + 96] = (32 * _6922) + 160
                        _7007 = mem[_7001]
                        mem[u + (32 * _6922) + 160] = mem[_7001]
                        t = 0
                        w = _7001 + 32
                        x = u + (32 * _6922) + 192
                        while t < _7007:
                            mem[x] = mem[w]
                            t = t + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        u = u + (32 * _6922) + (32 * _7007) + 192
                        v = v + 32
                        continue 
                    mem[_6141 + 96] = mem[_5043 + 76 len 20]
                    mem[_6141 + 128] = mem[_5043 + 108 len 20]
                    mem[_6141 + 160] = bool(mem[_5043 + 128])
                    mem[_6141 + 192] = mem[_5043 + 160]
                else:
                    if block.timestamp > !cd[36]:
                        revert with 0, 17
                    stor8[stor6].field_1024 = block.timestamp + cd[36]
                    stor8[stor6].field_512 = Mask(96, 0, stor8[stor6].field_672)
                    address(stor8[stor6].field_768) = address(cd[4])
                    if sub_e275c997 == -1:
                        revert with 0, 17
                    _5130 = mem[64]
                    mem[64] = mem[64] + 192
                    _5131 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6].field_0) + 32
                    mem[_5131] = stor8[stor6].field_0
                    v = _5131 + 32
                    idx = 0
                    while idx < stor8[stor6].field_0:
                        mem[0] = sha3(sub_e275c997, 8)
                        _5569 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_5569] = address(stor8[stor6][idx].field_0)
                        mem[_5569 + 32] = uint16(stor8[stor6][idx].field_160)
                        _5570 = mem[64]
                        mem[64] = mem[64] + (32 * stor8[stor6][idx].field_256) + 32
                        mem[_5570] = stor8[stor6][idx].field_256
                        if not stor8[stor6][idx].field_256:
                            mem[_5569 + 64] = _5570
                            _5612 = mem[64]
                            mem[64] = mem[64] + (32 * stor8[stor6][idx].field_512) + 32
                            mem[_5612] = stor8[stor6][idx].field_512
                            if stor8[stor6][idx].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * idx) + 2
                                mem[_5612 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                                s = _5612 + 32
                                t = sha3(mem[0])
                                while _5612 + (32 * stor8[stor6][idx].field_512) > s:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                            mem[_5569 + 96] = _5612
                        else:
                            mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * idx) + 1
                            mem[_5570 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * idx) + 1)].field_0
                            s = _5570 + 32
                            u = sha3(mem[0])
                            while _5570 + (32 * stor8[stor6][idx].field_256) > s:
                                mem[s + 32] = stor1[u]
                                s = s + 32
                                u = u + 1
                                continue 
                            mem[_5569 + 64] = _5570
                            _6517 = mem[64]
                            mem[64] = mem[64] + (32 * stor8[stor6][idx].field_512) + 32
                            mem[_6517] = stor8[stor6][idx].field_512
                            if stor8[stor6][idx].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * idx) + 2
                                mem[_6517 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                                s = _6517 + 32
                                t = sha3(mem[0])
                                while _6517 + (32 * stor8[stor6][idx].field_512) > s:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                            mem[_5569 + 96] = _6517
                        mem[v] = _5569
                        v = v + 32
                        idx = idx + 1
                        continue 
                    mem[_5130] = _5131
                    _5567 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6].field_256) + 32
                    mem[_5567] = stor8[stor6].field_256
                    s = _5567 + 32
                    idx = 0
                    while idx < stor8[stor6].field_256:
                        mem[0] = sha3(sub_e275c997, 8) + 1
                        _6139 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_6139] = address(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_0)
                        mem[_6139 + 32] = uint16(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_160)
                        _6140 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256) + 32
                        mem[_6140] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256
                        if not stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256:
                            mem[_6139 + 64] = _6140
                            _6179 = mem[64]
                            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                            mem[_6179] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512
                            if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 2
                                mem[_6179 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                                t = _6179 + 32
                                u = sha3(mem[0])
                                while _6179 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                            mem[_6139 + 96] = _6179
                        else:
                            mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 1
                            mem[_6140 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 1)].field_0
                            t = _6140 + 32
                            v = sha3(mem[0])
                            while _6140 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256) > t:
                                mem[t + 32] = stor1[v]
                                t = t + 32
                                v = v + 1
                                continue 
                            mem[_6139 + 64] = _6140
                            _6832 = mem[64]
                            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                            mem[_6832] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512
                            if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                                mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 2
                                mem[_6832 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                                t = _6832 + 32
                                u = sha3(mem[0])
                                while _6832 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                            mem[_6139 + 96] = _6832
                        mem[s] = _6139
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[_5130 + 32] = _5567
                    mem[_5130 + 64] = address(stor8[stor6].field_512)
                    mem[_5130 + 96] = address(stor8[stor6].field_768)
                    mem[_5130 + 128] = bool(uint8(stor8[stor6].field_928))
                    mem[_5130 + 160] = stor8[stor6].field_1024
                    _6137 = mem[64]
                    mem[mem[64]] = 32
                    _6178 = mem[_5130]
                    mem[mem[64] + 32] = 192
                    _6204 = mem[_6178]
                    mem[mem[64] + 224] = mem[_6178]
                    idx = 0
                    s = _6178 + 32
                    t = mem[64] + (32 * _6204) + 256
                    u = mem[64] + 256
                    while idx < _6204:
                        mem[u] = t + -_6137 - 256
                        _6584 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_6584 + 62 len 2]
                        _6587 = mem[_6584 + 64]
                        mem[t + 64] = 128
                        _6642 = mem[_6587]
                        mem[t + 128] = mem[_6587]
                        v = 0
                        w = _6587 + 32
                        x = t + 160
                        while v < _6642:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        _6917 = mem[_6584 + 96]
                        mem[t + 96] = (32 * _6642) + 160
                        _6939 = mem[_6917]
                        mem[t + (32 * _6642) + 160] = mem[_6917]
                        v = 0
                        w = _6917 + 32
                        x = t + (32 * _6642) + 192
                        while v < _6939:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (32 * _6642) + (32 * _6939) + 192
                        u = u + 32
                        continue 
                    _6641 = mem[_5130 + 32]
                    mem[_6137 + 64] = t + -_6137 - 32
                    _6663 = mem[_6641]
                    mem[t] = mem[_6641]
                    idx = 0
                    s = _6641 + 32
                    u = t + (32 * _6663) + 32
                    v = t + 32
                    while idx < _6663:
                        mem[v] = u + -t - 32
                        _6870 = mem[s]
                        mem[u] = mem[mem[s] + 12 len 20]
                        mem[u + 32] = mem[_6870 + 62 len 2]
                        _6873 = mem[_6870 + 64]
                        mem[u + 64] = 128
                        _6916 = mem[_6873]
                        mem[u + 128] = mem[_6873]
                        t = 0
                        w = _6873 + 32
                        x = u + 160
                        while t < _6916:
                            mem[x] = mem[w]
                            t = t + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        _7000 = mem[_6870 + 96]
                        mem[u + 96] = (32 * _6916) + 160
                        _7006 = mem[_7000]
                        mem[u + (32 * _6916) + 160] = mem[_7000]
                        t = 0
                        w = _7000 + 32
                        x = u + (32 * _6916) + 192
                        while t < _7006:
                            mem[x] = mem[w]
                            t = t + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        u = u + (32 * _6916) + (32 * _7006) + 192
                        v = v + 32
                        continue 
                    mem[_6137 + 96] = mem[_5130 + 76 len 20]
                    mem[_6137 + 128] = mem[_5130 + 108 len 20]
                    mem[_6137 + 160] = bool(mem[_5130 + 128])
                    mem[_6137 + 192] = mem[_5130 + 160]
        emit 0x7d684fc9: mem[mem[64] len u - mem[64]], sub_e275c997 + 1, msg.sender, address(cd[4])
    stor1.length = 1
}

function acceptTrade(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    mem[0] = arg1
    mem[32] = 8
    mem[64] = (32 * stor8[arg1].field_0) + 320
    mem[288] = stor8[arg1].field_0
    s = 320
    idx = 0
    while idx < stor8[arg1].field_0:
        mem[0] = sha3(arg1, 8)
        _3516 = mem[64]
        mem[64] = mem[64] + 128
        mem[_3516] = address(stor8[arg1][idx].field_0)
        mem[_3516 + 32] = uint16(stor8[arg1][idx].field_160)
        _3517 = mem[64]
        mem[64] = mem[64] + (32 * stor8[arg1][idx].field_256) + 32
        mem[_3517] = stor8[arg1][idx].field_256
        if not stor8[arg1][idx].field_256:
            mem[_3516 + 64] = _3517
            _3518 = mem[64]
            mem[64] = mem[64] + (32 * stor8[arg1][idx].field_512) + 32
            mem[_3518] = stor8[arg1][idx].field_512
            if stor8[arg1][idx].field_512:
                mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 2
                mem[_3518 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                t = _3518 + 32
                u = sha3(mem[0])
                while _3518 + (32 * stor8[arg1][idx].field_512) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_3516 + 96] = _3518
        else:
            mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 1
            mem[_3517 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 1)].field_0
            t = _3517 + 32
            u = sha3(mem[0])
            while _3517 + (32 * stor8[arg1][idx].field_256) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_3516 + 64] = _3517
            _10549 = mem[64]
            mem[64] = mem[64] + (32 * stor8[arg1][idx].field_512) + 32
            mem[_10549] = stor8[arg1][idx].field_512
            if stor8[arg1][idx].field_512:
                mem[0] = sha3(sha3(arg1, 8)) + (3 * idx) + 2
                mem[_10549 + 32] = stor[sha3(('map', ('param', 'arg1'), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                t = _10549 + 32
                u = sha3(mem[0])
                while _10549 + (32 * stor8[arg1][idx].field_512) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_3516 + 96] = _10549
        mem[s] = _3516
        s = s + 32
        idx = idx + 1
        continue 
    mem[96] = 288
    _3514 = mem[64]
    mem[64] = mem[64] + (32 * stor8[arg1].field_256) + 32
    mem[_3514] = stor8[arg1].field_256
    s = _3514 + 32
    idx = 0
    while idx < stor8[arg1].field_256:
        mem[0] = sha3(arg1, 8) + 1
        _7024 = mem[64]
        mem[64] = mem[64] + 128
        mem[_7024] = address(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_0)
        mem[_7024 + 32] = uint16(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_160)
        _7025 = mem[64]
        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256) + 32
        mem[_7025] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256
        if not stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256:
            mem[_7024 + 64] = _7025
            _7028 = mem[64]
            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
            mem[_7028] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512
            if stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 2
                mem[_7028 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                t = _7028 + 32
                u = sha3(mem[0])
                while _7028 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_7024 + 96] = _7028
        else:
            mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 1
            mem[_7025 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 1)].field_0
            t = _7025 + 32
            u = sha3(mem[0])
            while _7025 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_256) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_7024 + 64] = _7025
            _13863 = mem[64]
            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
            mem[_13863] = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512
            if stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                mem[0] = sha3(sha3(arg1, 8) + 1) + (3 * idx) + 2
                mem[_13863 + 32] = stor[sha3(('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                t = _13863 + 32
                u = sha3(mem[0])
                while _13863 + (32 * stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_7024 + 96] = _13863
        mem[s] = _7024
        s = s + 32
        idx = idx + 1
        continue 
    mem[128] = _3514
    mem[160] = address(stor8[arg1].field_512)
    mem[192] = address(stor8[arg1].field_768)
    mem[224] = bool(uint8(stor8[arg1].field_928))
    mem[256] = stor8[arg1].field_1024
    if arg1 > sub_e275c997:
        revert with 0, 'acceptTrade: trade non-existent'
    if uint8(stor8[arg1].field_928):
        revert with 0, 'acceptTrade: trade inactive'
    if msg.sender == address(stor8[arg1].field_512):
        revert with 0, 'acceptTrade: must not be creator'
    if not stor8[arg1].field_1024:
        if not address(stor8[arg1].field_768):
            mem[192] = msg.sender
            if not sub_270e5326Address:
                if 0 >= mem[_3514]:
                    revert with 0, 50
                if not mem[mem[_3514 + 32] + 12 len 20]:
                    _7090 = mem[96]
                    if 0 >= mem[mem[96]]:
                        revert with 0, 50
                    if not mem[mem[mem[96] + 32] + 12 len 20]:
                        uint8(stor8[arg1].field_928) = 1
                        emit 0xb117ea82: arg1, address(stor8[arg1].field_512), msg.sender
                    else:
                        _10525 = mem[mem[96]]
                        idx = 0
                        while uint8(idx) < _10525:
                            if uint8(idx) >= mem[_7090]:
                                revert with 0, 50
                            if uint8(idx) >= mem[_7090]:
                                revert with 0, 50
                            if 20 == mem[mem[(32 * uint8(idx)) + _7090 + 32] + 62 len 2]:
                                _10816 = mem[mem[(32 * uint8(idx)) + _7090 + 32]]
                                if uint8(idx) >= mem[_7090]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7090 + 32] + 96]]:
                                    revert with 0, 50
                                _11055 = mem[mem[mem[(32 * uint8(idx)) + _7090 + 32] + 96] + 32]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _11055
                                require ext_code.size(address(_10816))
                                call address(_10816).0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _11055
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11703 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11703] == bool(mem[_11703])
                            else:
                                if uint8(idx) >= mem[_7090]:
                                    revert with 0, 50
                                if 777 == mem[mem[(32 * uint8(idx)) + _7090 + 32] + 62 len 2]:
                                    _11060 = mem[mem[(32 * uint8(idx)) + _7090 + 32]]
                                    if uint8(idx) >= mem[_7090]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7090 + 32] + 96]]:
                                        revert with 0, 50
                                    _11395 = mem[mem[mem[(32 * uint8(idx)) + _7090 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11395
                                    require ext_code.size(address(_11060))
                                    call address(_11060).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11395
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12097 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_12097] == bool(mem[_12097])
                                else:
                                    if 721 == mem[mem[(32 * uint8(idx)) + _7090 + 32] + 62 len 2]:
                                        if uint8(idx) < mem[_7090]:
                                            if uint8(var53003) >= mem[mem[mem[(32 * uint8(idx)) + _7090 + 32] + 64]]:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                continue 
                                            if uint8(idx) < mem[_7090]:
                                                if uint8(idx) < mem[_7090]:
                                                    _17226 = mem[mem[(32 * uint8(idx)) + _7090 + 32] + 64]
                                                    _17227 = mem[mem[mem[(32 * uint8(idx)) + _7090 + 32] + 64]]
                                                    t = mem[mem[(32 * uint8(idx)) + _7090 + 32] + 12 len 20]
                                                    s = var57003
                                                    while uint8(s) < _17227:
                                                        _17333 = mem[(32 * uint8(s)) + _17226 + 32]
                                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = this.address
                                                        mem[mem[64] + 36] = msg.sender
                                                        mem[mem[64] + 68] = _17333
                                                        require ext_code.size(t)
                                                        call t.0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args address(this.address), msg.sender, _17333
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if uint8(s) == 255:
                                                            revert with 0, 17
                                                        if uint8(idx) >= mem[_7090]:
                                                            revert with 0, 50
                                                        if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _7090 + 32] + 64]]:
                                                            if uint8(idx) == 255:
                                                                revert with 0, 17
                                                            idx = uint8(idx) + 1
                                                            continue 
                                                        if uint8(idx) >= mem[_7090]:
                                                            revert with 0, 50
                                                        if uint8(idx) >= mem[_7090]:
                                                            revert with 0, 50
                                                        t = mem[mem[(32 * uint8(idx)) + _7090 + 32] + 12 len 20]
                                                        s = uint8(s) + 1
                                                        continue 
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_7090]:
                                        revert with 0, 50
                                    if mem[mem[(32 * uint8(idx)) + _7090 + 32] + 62 len 2] != 1155:
                                        revert with 0, 'createTrade: unsupported erc type'
                                    if uint8(idx) >= mem[_7090]:
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_7090]:
                                        revert with 0, 50
                                    if mem[mem[mem[(32 * uint8(idx)) + _7090 + 32] + 64]] <= 1:
                                        _12089 = mem[mem[(32 * uint8(idx)) + _7090 + 32]]
                                        if uint8(idx) >= mem[_7090]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7090 + 32] + 64]]:
                                            revert with 0, 50
                                        _12675 = mem[mem[mem[(32 * uint8(idx)) + _7090 + 32] + 64] + 32]
                                        if uint8(idx) >= mem[_7090]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7090 + 32] + 96]]:
                                            revert with 0, 50
                                        _13047 = mem[mem[mem[(32 * uint8(idx)) + _7090 + 32] + 96] + 32]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _12675
                                        mem[mem[64] + 100] = _13047
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(address(_12089))
                                        call address(_12089).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _12675, _13047, 160, 0
                                    else:
                                        _12092 = mem[mem[(32 * uint8(idx)) + _7090 + 32]]
                                        if uint8(idx) >= mem[_7090]:
                                            revert with 0, 50
                                        _12439 = mem[mem[(32 * uint8(idx)) + _7090 + 32] + 64]
                                        if uint8(idx) >= mem[_7090]:
                                            revert with 0, 50
                                        _12678 = mem[mem[(32 * uint8(idx)) + _7090 + 32] + 96]
                                        _12679 = mem[64]
                                        mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = 160
                                        _13049 = mem[_12439]
                                        mem[mem[64] + 164] = mem[_12439]
                                        s = 0
                                        t = _12439 + 32
                                        u = mem[64] + 196
                                        while s < _13049:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_12679 + 100] = (32 * _13049) + 192
                                        _14057 = mem[_12678]
                                        mem[_12679 + (32 * _13049) + 196] = mem[_12678]
                                        s = 0
                                        t = _12678 + 32
                                        u = _12679 + (32 * _13049) + 228
                                        while s < _14057:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_12679 + 132] = (32 * _13049) + (32 * _14057) + 224
                                        mem[_12679 + (32 * _13049) + (32 * _14057) + 228] = 0
                                        require ext_code.size(address(_12092))
                                        call address(_12092).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _12679 + (32 * _13049) + (32 * _14057) + -mem[64] + 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                        uint8(stor8[arg1].field_928) = 1
                        emit 0xb117ea82: arg1, mem[172 len 20], mem[204 len 20]
                else:
                    _10526 = mem[_3514]
                    idx = 0
                    while uint8(idx) < _10526:
                        if uint8(idx) >= mem[_3514]:
                            revert with 0, 50
                        if uint8(idx) >= mem[_3514]:
                            revert with 0, 50
                        if 20 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                            _10819 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                            if uint8(idx) >= mem[_3514]:
                                revert with 0, 50
                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                revert with 0, 50
                            _11063 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor8[arg1].field_512)
                            mem[mem[64] + 68] = _11063
                            require ext_code.size(address(_10819))
                            call address(_10819).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor8[arg1].field_512), _11063
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11713 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11713] == bool(mem[_11713])
                        else:
                            if uint8(idx) >= mem[_3514]:
                                revert with 0, 50
                            if 777 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                _11068 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                    revert with 0, 50
                                _11402 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                mem[mem[64] + 68] = _11402
                                require ext_code.size(address(_11068))
                                call address(_11068).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor8[arg1].field_512), _11402
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12115 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_12115] == bool(mem[_12115])
                            else:
                                if 721 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                    if uint8(idx) < mem[_3514]:
                                        if uint8(var49003) >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) < mem[_3514]:
                                            if uint8(idx) < mem[_3514]:
                                                _17232 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]
                                                _17233 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]
                                                t = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 12 len 20]
                                                s = var53003
                                                while uint8(s) < _17233:
                                                    _17338 = mem[(32 * uint8(s)) + _17232 + 32]
                                                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                                    mem[mem[64] + 68] = _17338
                                                    require ext_code.size(t)
                                                    call t.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(stor8[arg1].field_512), _17338
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if uint8(s) == 255:
                                                        revert with 0, 17
                                                    if uint8(idx) >= mem[_3514]:
                                                        revert with 0, 50
                                                    if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                                        if uint8(idx) == 255:
                                                            revert with 0, 17
                                                        idx = uint8(idx) + 1
                                                        continue 
                                                    if uint8(idx) >= mem[_3514]:
                                                        revert with 0, 50
                                                    if uint8(idx) >= mem[_3514]:
                                                        revert with 0, 50
                                                    t = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 12 len 20]
                                                    s = uint8(s) + 1
                                                    continue 
                                    revert with 0, 50
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2] != 1155:
                                    revert with 0, 'createTrade: unsupported erc type'
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]] <= 1:
                                    _12107 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                        revert with 0, 50
                                    _12687 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64] + 32]
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                        revert with 0, 50
                                    _13057 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                    mem[mem[64] + 68] = _12687
                                    mem[mem[64] + 100] = _13057
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(address(_12107))
                                    call address(_12107).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(stor8[arg1].field_512), _12687, _13057, 160, 0
                                else:
                                    _12110 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    _12451 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    _12690 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]
                                    mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                    mem[mem[64] + 68] = 160
                                    _13059 = mem[_12451]
                                    mem[mem[64] + 164] = mem[_12451]
                                    s = 0
                                    t = _12451 + 32
                                    u = mem[64] + 196
                                    while s < _13059:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = (32 * _13059) + 192
                                    _14062 = mem[_12690]
                                    mem[mem[64] + (32 * _13059) + 196] = mem[_12690]
                                    s = 0
                                    t = _12690 + 32
                                    u = mem[64] + (32 * _13059) + 228
                                    while s < _14062:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 132] = (32 * _13059) + (32 * _14062) + 224
                                    mem[mem[64] + (32 * _13059) + (32 * _14062) + 228] = 0
                                    require ext_code.size(address(_12110))
                                    call address(_12110).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(stor8[arg1].field_512), 160, (32 * _13059) + 192, (32 * _13059) + (32 * _14062) + 224, mem[mem[64] + 164 len (32 * _13059) + (32 * _14062) + 64], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        continue 
                    _10580 = mem[192]
                    _10581 = mem[96]
                    if 0 >= mem[mem[96]]:
                        revert with 0, 50
                    if mem[mem[mem[96] + 32] + 12 len 20]:
                        _13828 = mem[mem[96]]
                        idx = 0
                        while uint8(idx) < _13828:
                            if uint8(idx) >= mem[_10581]:
                                revert with 0, 50
                            if uint8(idx) >= mem[_10581]:
                                revert with 0, 50
                            if 20 == mem[mem[(32 * uint8(idx)) + _10581 + 32] + 62 len 2]:
                                _14277 = mem[mem[(32 * uint8(idx)) + _10581 + 32]]
                                if uint8(idx) >= mem[_10581]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10581 + 32] + 96]]:
                                    revert with 0, 50
                                _14443 = mem[mem[mem[(32 * uint8(idx)) + _10581 + 32] + 96] + 32]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(_10580)
                                mem[mem[64] + 68] = _14443
                                require ext_code.size(address(_14277))
                                call address(_14277).0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(_10580), _14443
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14753 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_14753] == bool(mem[_14753])
                            else:
                                if uint8(idx) >= mem[_10581]:
                                    revert with 0, 50
                                if 777 == mem[mem[(32 * uint8(idx)) + _10581 + 32] + 62 len 2]:
                                    _14448 = mem[mem[(32 * uint8(idx)) + _10581 + 32]]
                                    if uint8(idx) >= mem[_10581]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10581 + 32] + 96]]:
                                        revert with 0, 50
                                    _14625 = mem[mem[mem[(32 * uint8(idx)) + _10581 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(_10580)
                                    mem[mem[64] + 68] = _14625
                                    require ext_code.size(address(_14448))
                                    call address(_14448).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), address(_10580), _14625
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _14908 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_14908] == bool(mem[_14908])
                                else:
                                    if 721 == mem[mem[(32 * uint8(idx)) + _10581 + 32] + 62 len 2]:
                                        if uint8(idx) < mem[_10581]:
                                            if uint8(var56003) >= mem[mem[mem[(32 * uint8(idx)) + _10581 + 32] + 64]]:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                continue 
                                            if uint8(idx) < mem[_10581]:
                                                if uint8(idx) < mem[_10581]:
                                                    _17766 = mem[mem[(32 * uint8(idx)) + _10581 + 32] + 64]
                                                    _17767 = mem[mem[mem[(32 * uint8(idx)) + _10581 + 32] + 64]]
                                                    t = mem[mem[(32 * uint8(idx)) + _10581 + 32] + 12 len 20]
                                                    s = var60003
                                                    while uint8(s) < _17767:
                                                        _17801 = mem[(32 * uint8(s)) + _17766 + 32]
                                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = this.address
                                                        mem[mem[64] + 36] = address(_10580)
                                                        mem[mem[64] + 68] = _17801
                                                        require ext_code.size(t)
                                                        call t.0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args address(this.address), address(_10580), _17801
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if uint8(s) == 255:
                                                            revert with 0, 17
                                                        if uint8(idx) >= mem[_10581]:
                                                            revert with 0, 50
                                                        if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _10581 + 32] + 64]]:
                                                            if uint8(idx) == 255:
                                                                revert with 0, 17
                                                            idx = uint8(idx) + 1
                                                            continue 
                                                        if uint8(idx) >= mem[_10581]:
                                                            revert with 0, 50
                                                        if uint8(idx) >= mem[_10581]:
                                                            revert with 0, 50
                                                        t = mem[mem[(32 * uint8(idx)) + _10581 + 32] + 12 len 20]
                                                        s = uint8(s) + 1
                                                        continue 
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_10581]:
                                        revert with 0, 50
                                    if mem[mem[(32 * uint8(idx)) + _10581 + 32] + 62 len 2] != 1155:
                                        revert with 0, 'createTrade: unsupported erc type'
                                    if uint8(idx) >= mem[_10581]:
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_10581]:
                                        revert with 0, 50
                                    if mem[mem[mem[(32 * uint8(idx)) + _10581 + 32] + 64]] <= 1:
                                        _14900 = mem[mem[(32 * uint8(idx)) + _10581 + 32]]
                                        if uint8(idx) >= mem[_10581]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10581 + 32] + 64]]:
                                            revert with 0, 50
                                        _15149 = mem[mem[mem[(32 * uint8(idx)) + _10581 + 32] + 64] + 32]
                                        if uint8(idx) >= mem[_10581]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10581 + 32] + 96]]:
                                            revert with 0, 50
                                        _15269 = mem[mem[mem[(32 * uint8(idx)) + _10581 + 32] + 96] + 32]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(_10580)
                                        mem[mem[64] + 68] = _15149
                                        mem[mem[64] + 100] = _15269
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(address(_14900))
                                        call address(_14900).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), address(_10580), _15149, _15269, 160, 0
                                    else:
                                        _14903 = mem[mem[(32 * uint8(idx)) + _10581 + 32]]
                                        if uint8(idx) >= mem[_10581]:
                                            revert with 0, 50
                                        _15057 = mem[mem[(32 * uint8(idx)) + _10581 + 32] + 64]
                                        if uint8(idx) >= mem[_10581]:
                                            revert with 0, 50
                                        _15152 = mem[mem[(32 * uint8(idx)) + _10581 + 32] + 96]
                                        _15153 = mem[64]
                                        mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(_10580)
                                        mem[mem[64] + 68] = 160
                                        _15271 = mem[_15057]
                                        mem[mem[64] + 164] = mem[_15057]
                                        s = 0
                                        t = _15057 + 32
                                        u = mem[64] + 196
                                        while s < _15271:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[mem[64] + 100] = (32 * _15271) + 192
                                        _15633 = mem[_15152]
                                        mem[mem[64] + (32 * _15271) + 196] = mem[_15152]
                                        s = 0
                                        t = _15152 + 32
                                        u = mem[64] + (32 * _15271) + 228
                                        while s < _15633:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_15153 + 132] = (32 * _15271) + (32 * _15633) + 224
                                        mem[_15153 + (32 * _15271) + (32 * _15633) + 228] = 0
                                        require ext_code.size(address(_14903))
                                        call address(_14903).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _15153 + (32 * _15271) + (32 * _15633) + -mem[64] + 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                    uint8(stor8[arg1].field_928) = 1
                    emit 0xb117ea82: arg1, mem[172 len 20], mem[204 len 20]
            else:
                mem[0] = msg.sender
                mem[32] = 7
                if stor7[msg.sender]:
                    if 0 >= mem[_3514]:
                        revert with 0, 50
                    if not mem[mem[_3514 + 32] + 12 len 20]:
                        _7104 = mem[96]
                        if 0 >= mem[mem[96]]:
                            revert with 0, 50
                        if not mem[mem[mem[96] + 32] + 12 len 20]:
                            uint8(stor8[arg1].field_928) = 1
                            emit 0xb117ea82: arg1, address(stor8[arg1].field_512), msg.sender
                        else:
                            _10527 = mem[mem[96]]
                            idx = 0
                            while uint8(idx) < _10527:
                                if uint8(idx) >= mem[_7104]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[_7104]:
                                    revert with 0, 50
                                if 20 == mem[mem[(32 * uint8(idx)) + _7104 + 32] + 62 len 2]:
                                    _10822 = mem[mem[(32 * uint8(idx)) + _7104 + 32]]
                                    if uint8(idx) >= mem[_7104]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7104 + 32] + 96]]:
                                        revert with 0, 50
                                    _11070 = mem[mem[mem[(32 * uint8(idx)) + _7104 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11070
                                    require ext_code.size(address(_10822))
                                    call address(_10822).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11070
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11720 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_11720] == bool(mem[_11720])
                                else:
                                    if uint8(idx) >= mem[_7104]:
                                        revert with 0, 50
                                    if 777 == mem[mem[(32 * uint8(idx)) + _7104 + 32] + 62 len 2]:
                                        _11075 = mem[mem[(32 * uint8(idx)) + _7104 + 32]]
                                        if uint8(idx) >= mem[_7104]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7104 + 32] + 96]]:
                                            revert with 0, 50
                                        _11408 = mem[mem[mem[(32 * uint8(idx)) + _7104 + 32] + 96] + 32]
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11408
                                        require ext_code.size(address(_11075))
                                        call address(_11075).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11408
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12126 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_12126] == bool(mem[_12126])
                                    else:
                                        if 721 == mem[mem[(32 * uint8(idx)) + _7104 + 32] + 62 len 2]:
                                            if uint8(idx) < mem[_7104]:
                                                if uint8(var54003) >= mem[mem[mem[(32 * uint8(idx)) + _7104 + 32] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) < mem[_7104]:
                                                    if uint8(idx) < mem[_7104]:
                                                        _17235 = mem[mem[(32 * uint8(idx)) + _7104 + 32] + 64]
                                                        _17236 = mem[mem[mem[(32 * uint8(idx)) + _7104 + 32] + 64]]
                                                        t = mem[mem[(32 * uint8(idx)) + _7104 + 32] + 12 len 20]
                                                        s = var58003
                                                        while uint8(s) < _17236:
                                                            _17340 = mem[(32 * uint8(s)) + _17235 + 32]
                                                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = this.address
                                                            mem[mem[64] + 36] = msg.sender
                                                            mem[mem[64] + 68] = _17340
                                                            require ext_code.size(t)
                                                            call t.0x23b872dd with:
                                                                 gas gas_remaining wei
                                                                args address(this.address), msg.sender, _17340
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint8(s) == 255:
                                                                revert with 0, 17
                                                            if uint8(idx) >= mem[_7104]:
                                                                revert with 0, 50
                                                            if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _7104 + 32] + 64]]:
                                                                if uint8(idx) == 255:
                                                                    revert with 0, 17
                                                                idx = uint8(idx) + 1
                                                                continue 
                                                            if uint8(idx) >= mem[_7104]:
                                                                revert with 0, 50
                                                            if uint8(idx) >= mem[_7104]:
                                                                revert with 0, 50
                                                            t = mem[mem[(32 * uint8(idx)) + _7104 + 32] + 12 len 20]
                                                            s = uint8(s) + 1
                                                            continue 
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_7104]:
                                            revert with 0, 50
                                        if mem[mem[(32 * uint8(idx)) + _7104 + 32] + 62 len 2] != 1155:
                                            revert with 0, 'createTrade: unsupported erc type'
                                        if uint8(idx) >= mem[_7104]:
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_7104]:
                                            revert with 0, 50
                                        if mem[mem[mem[(32 * uint8(idx)) + _7104 + 32] + 64]] <= 1:
                                            _12118 = mem[mem[(32 * uint8(idx)) + _7104 + 32]]
                                            if uint8(idx) >= mem[_7104]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7104 + 32] + 64]]:
                                                revert with 0, 50
                                            _12693 = mem[mem[mem[(32 * uint8(idx)) + _7104 + 32] + 64] + 32]
                                            if uint8(idx) >= mem[_7104]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7104 + 32] + 96]]:
                                                revert with 0, 50
                                            _13060 = mem[mem[mem[(32 * uint8(idx)) + _7104 + 32] + 96] + 32]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _12693
                                            mem[mem[64] + 100] = _13060
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(address(_12118))
                                            call address(_12118).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _12693, _13060, 160, 0
                                        else:
                                            _12121 = mem[mem[(32 * uint8(idx)) + _7104 + 32]]
                                            if uint8(idx) >= mem[_7104]:
                                                revert with 0, 50
                                            _12459 = mem[mem[(32 * uint8(idx)) + _7104 + 32] + 64]
                                            if uint8(idx) >= mem[_7104]:
                                                revert with 0, 50
                                            _12696 = mem[mem[(32 * uint8(idx)) + _7104 + 32] + 96]
                                            _12697 = mem[64]
                                            mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = 160
                                            _13062 = mem[_12459]
                                            mem[mem[64] + 164] = mem[_12459]
                                            s = 0
                                            t = _12459 + 32
                                            u = mem[64] + 196
                                            while s < _13062:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_12697 + 100] = (32 * _13062) + 192
                                            _14066 = mem[_12696]
                                            mem[_12697 + (32 * _13062) + 196] = mem[_12696]
                                            s = 0
                                            t = _12696 + 32
                                            u = _12697 + (32 * _13062) + 228
                                            while s < _14066:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_12697 + 132] = (32 * _13062) + (32 * _14066) + 224
                                            mem[_12697 + (32 * _13062) + (32 * _14066) + 228] = 0
                                            require ext_code.size(address(_12121))
                                            call address(_12121).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _12697 + (32 * _13062) + (32 * _14066) + -mem[64] + 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                continue 
                            uint8(stor8[arg1].field_928) = 1
                            emit 0xb117ea82: arg1, mem[172 len 20], mem[204 len 20]
                    else:
                        _10528 = mem[_3514]
                        idx = 0
                        while uint8(idx) < _10528:
                            if uint8(idx) >= mem[_3514]:
                                revert with 0, 50
                            if uint8(idx) >= mem[_3514]:
                                revert with 0, 50
                            if 20 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                _10825 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                    revert with 0, 50
                                _11078 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                mem[mem[64] + 68] = _11078
                                require ext_code.size(address(_10825))
                                call address(_10825).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor8[arg1].field_512), _11078
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11730 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11730] == bool(mem[_11730])
                            else:
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if 777 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                    _11083 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                        revert with 0, 50
                                    _11415 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                    mem[mem[64] + 68] = _11415
                                    require ext_code.size(address(_11083))
                                    call address(_11083).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(stor8[arg1].field_512), _11415
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12144 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_12144] == bool(mem[_12144])
                                else:
                                    if 721 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                        if uint8(idx) < mem[_3514]:
                                            if uint8(var50003) >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                continue 
                                            if uint8(idx) < mem[_3514]:
                                                if uint8(idx) < mem[_3514]:
                                                    _17241 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]
                                                    _17242 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]
                                                    t = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 12 len 20]
                                                    s = var54003
                                                    while uint8(s) < _17242:
                                                        _17345 = mem[(32 * uint8(s)) + _17241 + 32]
                                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                                        mem[mem[64] + 68] = _17345
                                                        require ext_code.size(t)
                                                        call t.0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(stor8[arg1].field_512), _17345
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if uint8(s) == 255:
                                                            revert with 0, 17
                                                        if uint8(idx) >= mem[_3514]:
                                                            revert with 0, 50
                                                        if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                                            if uint8(idx) == 255:
                                                                revert with 0, 17
                                                            idx = uint8(idx) + 1
                                                            continue 
                                                        if uint8(idx) >= mem[_3514]:
                                                            revert with 0, 50
                                                        if uint8(idx) >= mem[_3514]:
                                                            revert with 0, 50
                                                        t = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 12 len 20]
                                                        s = uint8(s) + 1
                                                        continue 
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2] != 1155:
                                        revert with 0, 'createTrade: unsupported erc type'
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]] <= 1:
                                        _12136 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                            revert with 0, 50
                                        _12705 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64] + 32]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                            revert with 0, 50
                                        _13070 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                        mem[mem[64] + 68] = _12705
                                        mem[mem[64] + 100] = _13070
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(address(_12136))
                                        call address(_12136).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(stor8[arg1].field_512), _12705, _13070, 160, 0
                                    else:
                                        _12139 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        _12471 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        _12708 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]
                                        _12709 = mem[64]
                                        mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                        mem[mem[64] + 68] = 160
                                        _13072 = mem[_12471]
                                        mem[mem[64] + 164] = mem[_12471]
                                        s = 0
                                        t = _12471 + 32
                                        u = mem[64] + 196
                                        while s < _13072:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_12709 + 100] = (32 * _13072) + 192
                                        _14071 = mem[_12708]
                                        mem[_12709 + (32 * _13072) + 196] = mem[_12708]
                                        s = 0
                                        t = _12708 + 32
                                        u = _12709 + (32 * _13072) + 228
                                        while s < _14071:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_12709 + 132] = (32 * _13072) + (32 * _14071) + 224
                                        mem[_12709 + (32 * _13072) + (32 * _14071) + 228] = 0
                                        require ext_code.size(address(_12139))
                                        call address(_12139).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _12709 + (32 * _13072) + (32 * _14071) + -mem[64] + 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                        _10589 = mem[192]
                        _10590 = mem[96]
                        if 0 >= mem[mem[96]]:
                            revert with 0, 50
                        if mem[mem[mem[96] + 32] + 12 len 20]:
                            _13831 = mem[mem[96]]
                            idx = 0
                            while uint8(idx) < _13831:
                                if uint8(idx) >= mem[_10590]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[_10590]:
                                    revert with 0, 50
                                if 20 == mem[mem[(32 * uint8(idx)) + _10590 + 32] + 62 len 2]:
                                    _14286 = mem[mem[(32 * uint8(idx)) + _10590 + 32]]
                                    if uint8(idx) >= mem[_10590]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10590 + 32] + 96]]:
                                        revert with 0, 50
                                    _14454 = mem[mem[mem[(32 * uint8(idx)) + _10590 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(_10589)
                                    mem[mem[64] + 68] = _14454
                                    require ext_code.size(address(_14286))
                                    call address(_14286).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), address(_10589), _14454
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _14760 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_14760] == bool(mem[_14760])
                                else:
                                    if uint8(idx) >= mem[_10590]:
                                        revert with 0, 50
                                    if 777 == mem[mem[(32 * uint8(idx)) + _10590 + 32] + 62 len 2]:
                                        _14459 = mem[mem[(32 * uint8(idx)) + _10590 + 32]]
                                        if uint8(idx) >= mem[_10590]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10590 + 32] + 96]]:
                                            revert with 0, 50
                                        _14631 = mem[mem[mem[(32 * uint8(idx)) + _10590 + 32] + 96] + 32]
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(_10589)
                                        mem[mem[64] + 68] = _14631
                                        require ext_code.size(address(_14459))
                                        call address(_14459).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), address(_10589), _14631
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _14921 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_14921] == bool(mem[_14921])
                                    else:
                                        if 721 == mem[mem[(32 * uint8(idx)) + _10590 + 32] + 62 len 2]:
                                            if uint8(idx) < mem[_10590]:
                                                if uint8(var57003) >= mem[mem[mem[(32 * uint8(idx)) + _10590 + 32] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) < mem[_10590]:
                                                    if uint8(idx) < mem[_10590]:
                                                        _17769 = mem[mem[(32 * uint8(idx)) + _10590 + 32] + 64]
                                                        _17770 = mem[mem[mem[(32 * uint8(idx)) + _10590 + 32] + 64]]
                                                        t = mem[mem[(32 * uint8(idx)) + _10590 + 32] + 12 len 20]
                                                        s = var61003
                                                        while uint8(s) < _17770:
                                                            _17803 = mem[(32 * uint8(s)) + _17769 + 32]
                                                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = this.address
                                                            mem[mem[64] + 36] = address(_10589)
                                                            mem[mem[64] + 68] = _17803
                                                            require ext_code.size(t)
                                                            call t.0x23b872dd with:
                                                                 gas gas_remaining wei
                                                                args address(this.address), address(_10589), _17803
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint8(s) == 255:
                                                                revert with 0, 17
                                                            if uint8(idx) >= mem[_10590]:
                                                                revert with 0, 50
                                                            if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _10590 + 32] + 64]]:
                                                                if uint8(idx) == 255:
                                                                    revert with 0, 17
                                                                idx = uint8(idx) + 1
                                                                continue 
                                                            if uint8(idx) >= mem[_10590]:
                                                                revert with 0, 50
                                                            if uint8(idx) >= mem[_10590]:
                                                                revert with 0, 50
                                                            t = mem[mem[(32 * uint8(idx)) + _10590 + 32] + 12 len 20]
                                                            s = uint8(s) + 1
                                                            continue 
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_10590]:
                                            revert with 0, 50
                                        if mem[mem[(32 * uint8(idx)) + _10590 + 32] + 62 len 2] != 1155:
                                            revert with 0, 'createTrade: unsupported erc type'
                                        if uint8(idx) >= mem[_10590]:
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_10590]:
                                            revert with 0, 50
                                        if mem[mem[mem[(32 * uint8(idx)) + _10590 + 32] + 64]] <= 1:
                                            _14913 = mem[mem[(32 * uint8(idx)) + _10590 + 32]]
                                            if uint8(idx) >= mem[_10590]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10590 + 32] + 64]]:
                                                revert with 0, 50
                                            _15155 = mem[mem[mem[(32 * uint8(idx)) + _10590 + 32] + 64] + 32]
                                            if uint8(idx) >= mem[_10590]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10590 + 32] + 96]]:
                                                revert with 0, 50
                                            _15272 = mem[mem[mem[(32 * uint8(idx)) + _10590 + 32] + 96] + 32]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = address(_10589)
                                            mem[mem[64] + 68] = _15155
                                            mem[mem[64] + 100] = _15272
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(address(_14913))
                                            call address(_14913).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(_10589), _15155, _15272, 160, 0
                                        else:
                                            _14916 = mem[mem[(32 * uint8(idx)) + _10590 + 32]]
                                            if uint8(idx) >= mem[_10590]:
                                                revert with 0, 50
                                            _15065 = mem[mem[(32 * uint8(idx)) + _10590 + 32] + 64]
                                            if uint8(idx) >= mem[_10590]:
                                                revert with 0, 50
                                            _15158 = mem[mem[(32 * uint8(idx)) + _10590 + 32] + 96]
                                            _15159 = mem[64]
                                            mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = address(_10589)
                                            mem[mem[64] + 68] = 160
                                            _15274 = mem[_15065]
                                            mem[mem[64] + 164] = mem[_15065]
                                            s = 0
                                            t = _15065 + 32
                                            u = mem[64] + 196
                                            while s < _15274:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_15159 + 100] = (32 * _15274) + 192
                                            _15645 = mem[_15158]
                                            mem[_15159 + (32 * _15274) + 196] = mem[_15158]
                                            s = 0
                                            t = _15158 + 32
                                            u = _15159 + (32 * _15274) + 228
                                            while s < _15645:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_15159 + 132] = (32 * _15274) + (32 * _15645) + 224
                                            mem[_15159 + (32 * _15274) + (32 * _15645) + 228] = 0
                                            require ext_code.size(address(_14916))
                                            call address(_14916).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _15159 + (32 * _15274) + (32 * _15645) + -mem[64] + 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                continue 
                        uint8(stor8[arg1].field_928) = 1
                        emit 0xb117ea82: arg1, mem[172 len 20], mem[204 len 20]
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor5
                    mem[mem[64] + 68] = serviceFee
                    require ext_code.size(sub_270e5326Address)
                    call sub_270e5326Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor5, serviceFee
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7106 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7106] == bool(mem[_7106])
                    if 0 >= mem[_3514]:
                        revert with 0, 50
                    if not mem[mem[_3514 + 32] + 12 len 20]:
                        _7592 = mem[96]
                        if 0 >= mem[mem[96]]:
                            revert with 0, 50
                        if not mem[mem[mem[96] + 32] + 12 len 20]:
                            uint8(stor8[arg1].field_928) = 1
                            emit 0xb117ea82: arg1, address(stor8[arg1].field_512), msg.sender
                        else:
                            _10529 = mem[mem[96]]
                            idx = 0
                            while uint8(idx) < _10529:
                                if uint8(idx) >= mem[_7592]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[_7592]:
                                    revert with 0, 50
                                if 20 == mem[mem[(32 * uint8(idx)) + _7592 + 32] + 62 len 2]:
                                    _10828 = mem[mem[(32 * uint8(idx)) + _7592 + 32]]
                                    if uint8(idx) >= mem[_7592]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7592 + 32] + 96]]:
                                        revert with 0, 50
                                    _11085 = mem[mem[mem[(32 * uint8(idx)) + _7592 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11085
                                    require ext_code.size(address(_10828))
                                    call address(_10828).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11085
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11737 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_11737] == bool(mem[_11737])
                                else:
                                    if uint8(idx) >= mem[_7592]:
                                        revert with 0, 50
                                    if 777 == mem[mem[(32 * uint8(idx)) + _7592 + 32] + 62 len 2]:
                                        _11090 = mem[mem[(32 * uint8(idx)) + _7592 + 32]]
                                        if uint8(idx) >= mem[_7592]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7592 + 32] + 96]]:
                                            revert with 0, 50
                                        _11421 = mem[mem[mem[(32 * uint8(idx)) + _7592 + 32] + 96] + 32]
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11421
                                        require ext_code.size(address(_11090))
                                        call address(_11090).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11421
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12155 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_12155] == bool(mem[_12155])
                                    else:
                                        if 721 == mem[mem[(32 * uint8(idx)) + _7592 + 32] + 62 len 2]:
                                            if uint8(idx) < mem[_7592]:
                                                if uint8(var63003) >= mem[mem[mem[(32 * uint8(idx)) + _7592 + 32] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) < mem[_7592]:
                                                    if uint8(idx) < mem[_7592]:
                                                        _17244 = mem[mem[(32 * uint8(idx)) + _7592 + 32] + 64]
                                                        _17245 = mem[mem[mem[(32 * uint8(idx)) + _7592 + 32] + 64]]
                                                        t = mem[mem[(32 * uint8(idx)) + _7592 + 32] + 12 len 20]
                                                        s = var67003
                                                        while uint8(s) < _17245:
                                                            _17347 = mem[(32 * uint8(s)) + _17244 + 32]
                                                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = this.address
                                                            mem[mem[64] + 36] = msg.sender
                                                            mem[mem[64] + 68] = _17347
                                                            require ext_code.size(t)
                                                            call t.0x23b872dd with:
                                                                 gas gas_remaining wei
                                                                args address(this.address), msg.sender, _17347
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint8(s) == 255:
                                                                revert with 0, 17
                                                            if uint8(idx) >= mem[_7592]:
                                                                revert with 0, 50
                                                            if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _7592 + 32] + 64]]:
                                                                if uint8(idx) == 255:
                                                                    revert with 0, 17
                                                                idx = uint8(idx) + 1
                                                                continue 
                                                            if uint8(idx) >= mem[_7592]:
                                                                revert with 0, 50
                                                            if uint8(idx) >= mem[_7592]:
                                                                revert with 0, 50
                                                            t = mem[mem[(32 * uint8(idx)) + _7592 + 32] + 12 len 20]
                                                            s = uint8(s) + 1
                                                            continue 
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_7592]:
                                            revert with 0, 50
                                        if mem[mem[(32 * uint8(idx)) + _7592 + 32] + 62 len 2] != 1155:
                                            revert with 0, 'createTrade: unsupported erc type'
                                        if uint8(idx) >= mem[_7592]:
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_7592]:
                                            revert with 0, 50
                                        if mem[mem[mem[(32 * uint8(idx)) + _7592 + 32] + 64]] <= 1:
                                            _12147 = mem[mem[(32 * uint8(idx)) + _7592 + 32]]
                                            if uint8(idx) >= mem[_7592]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7592 + 32] + 64]]:
                                                revert with 0, 50
                                            _12711 = mem[mem[mem[(32 * uint8(idx)) + _7592 + 32] + 64] + 32]
                                            if uint8(idx) >= mem[_7592]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7592 + 32] + 96]]:
                                                revert with 0, 50
                                            _13073 = mem[mem[mem[(32 * uint8(idx)) + _7592 + 32] + 96] + 32]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _12711
                                            mem[mem[64] + 100] = _13073
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(address(_12147))
                                            call address(_12147).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _12711, _13073, 160, 0
                                        else:
                                            _12150 = mem[mem[(32 * uint8(idx)) + _7592 + 32]]
                                            if uint8(idx) >= mem[_7592]:
                                                revert with 0, 50
                                            _12479 = mem[mem[(32 * uint8(idx)) + _7592 + 32] + 64]
                                            if uint8(idx) >= mem[_7592]:
                                                revert with 0, 50
                                            _12714 = mem[mem[(32 * uint8(idx)) + _7592 + 32] + 96]
                                            _12715 = mem[64]
                                            mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = 160
                                            _13075 = mem[_12479]
                                            mem[mem[64] + 164] = mem[_12479]
                                            s = 0
                                            t = _12479 + 32
                                            u = mem[64] + 196
                                            while s < _13075:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_12715 + 100] = (32 * _13075) + 192
                                            _14075 = mem[_12714]
                                            mem[_12715 + (32 * _13075) + 196] = mem[_12714]
                                            s = 0
                                            t = _12714 + 32
                                            u = _12715 + (32 * _13075) + 228
                                            while s < _14075:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_12715 + 132] = (32 * _13075) + (32 * _14075) + 224
                                            mem[_12715 + (32 * _13075) + (32 * _14075) + 228] = 0
                                            require ext_code.size(address(_12150))
                                            call address(_12150).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _12715 + (32 * _13075) + (32 * _14075) + -mem[64] + 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                continue 
                            uint8(stor8[arg1].field_928) = 1
                            emit 0xb117ea82: arg1, mem[172 len 20], mem[204 len 20]
                    else:
                        _10530 = mem[_3514]
                        idx = 0
                        while uint8(idx) < _10530:
                            if uint8(idx) >= mem[_3514]:
                                revert with 0, 50
                            if uint8(idx) >= mem[_3514]:
                                revert with 0, 50
                            if 20 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                _10831 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                    revert with 0, 50
                                _11093 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                mem[mem[64] + 68] = _11093
                                require ext_code.size(address(_10831))
                                call address(_10831).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor8[arg1].field_512), _11093
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11747 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11747] == bool(mem[_11747])
                            else:
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if 777 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                    _11098 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                        revert with 0, 50
                                    _11428 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                    mem[mem[64] + 68] = _11428
                                    require ext_code.size(address(_11098))
                                    call address(_11098).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(stor8[arg1].field_512), _11428
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12173 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_12173] == bool(mem[_12173])
                                else:
                                    if 721 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                        if uint8(idx) < mem[_3514]:
                                            if uint8(var59003) >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                continue 
                                            if uint8(idx) < mem[_3514]:
                                                if uint8(idx) < mem[_3514]:
                                                    _17250 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]
                                                    _17251 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]
                                                    t = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 12 len 20]
                                                    s = var63003
                                                    while uint8(s) < _17251:
                                                        _17352 = mem[(32 * uint8(s)) + _17250 + 32]
                                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                                        mem[mem[64] + 68] = _17352
                                                        require ext_code.size(t)
                                                        call t.0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(stor8[arg1].field_512), _17352
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if uint8(s) == 255:
                                                            revert with 0, 17
                                                        if uint8(idx) >= mem[_3514]:
                                                            revert with 0, 50
                                                        if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                                            if uint8(idx) == 255:
                                                                revert with 0, 17
                                                            idx = uint8(idx) + 1
                                                            continue 
                                                        if uint8(idx) >= mem[_3514]:
                                                            revert with 0, 50
                                                        if uint8(idx) >= mem[_3514]:
                                                            revert with 0, 50
                                                        t = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 12 len 20]
                                                        s = uint8(s) + 1
                                                        continue 
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2] != 1155:
                                        revert with 0, 'createTrade: unsupported erc type'
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]] <= 1:
                                        _12165 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                            revert with 0, 50
                                        _12723 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64] + 32]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                            revert with 0, 50
                                        _13083 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                        mem[mem[64] + 68] = _12723
                                        mem[mem[64] + 100] = _13083
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(address(_12165))
                                        call address(_12165).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(stor8[arg1].field_512), _12723, _13083, 160, 0
                                    else:
                                        _12168 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        _12491 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        _12726 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]
                                        _12727 = mem[64]
                                        mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                        mem[mem[64] + 68] = 160
                                        _13085 = mem[_12491]
                                        mem[mem[64] + 164] = mem[_12491]
                                        s = 0
                                        t = _12491 + 32
                                        u = mem[64] + 196
                                        while s < _13085:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_12727 + 100] = (32 * _13085) + 192
                                        _14080 = mem[_12726]
                                        mem[_12727 + (32 * _13085) + 196] = mem[_12726]
                                        s = 0
                                        t = _12726 + 32
                                        u = _12727 + (32 * _13085) + 228
                                        while s < _14080:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_12727 + 132] = (32 * _13085) + (32 * _14080) + 224
                                        mem[_12727 + (32 * _13085) + (32 * _14080) + 228] = 0
                                        require ext_code.size(address(_12168))
                                        call address(_12168).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _12727 + (32 * _13085) + (32 * _14080) + -mem[64] + 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                        _10598 = mem[192]
                        _10599 = mem[96]
                        if 0 >= mem[mem[96]]:
                            revert with 0, 50
                        if mem[mem[mem[96] + 32] + 12 len 20]:
                            _13834 = mem[mem[96]]
                            idx = 0
                            while uint8(idx) < _13834:
                                if uint8(idx) >= mem[_10599]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[_10599]:
                                    revert with 0, 50
                                if 20 == mem[mem[(32 * uint8(idx)) + _10599 + 32] + 62 len 2]:
                                    _14295 = mem[mem[(32 * uint8(idx)) + _10599 + 32]]
                                    if uint8(idx) >= mem[_10599]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10599 + 32] + 96]]:
                                        revert with 0, 50
                                    _14465 = mem[mem[mem[(32 * uint8(idx)) + _10599 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(_10598)
                                    mem[mem[64] + 68] = _14465
                                    require ext_code.size(address(_14295))
                                    call address(_14295).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), address(_10598), _14465
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _14767 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_14767] == bool(mem[_14767])
                                else:
                                    if uint8(idx) >= mem[_10599]:
                                        revert with 0, 50
                                    if 777 == mem[mem[(32 * uint8(idx)) + _10599 + 32] + 62 len 2]:
                                        _14470 = mem[mem[(32 * uint8(idx)) + _10599 + 32]]
                                        if uint8(idx) >= mem[_10599]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10599 + 32] + 96]]:
                                            revert with 0, 50
                                        _14637 = mem[mem[mem[(32 * uint8(idx)) + _10599 + 32] + 96] + 32]
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(_10598)
                                        mem[mem[64] + 68] = _14637
                                        require ext_code.size(address(_14470))
                                        call address(_14470).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), address(_10598), _14637
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _14934 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_14934] == bool(mem[_14934])
                                    else:
                                        if 721 == mem[mem[(32 * uint8(idx)) + _10599 + 32] + 62 len 2]:
                                            if uint8(idx) < mem[_10599]:
                                                if uint8(var66003) >= mem[mem[mem[(32 * uint8(idx)) + _10599 + 32] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) < mem[_10599]:
                                                    if uint8(idx) < mem[_10599]:
                                                        _17772 = mem[mem[(32 * uint8(idx)) + _10599 + 32] + 64]
                                                        _17773 = mem[mem[mem[(32 * uint8(idx)) + _10599 + 32] + 64]]
                                                        t = mem[mem[(32 * uint8(idx)) + _10599 + 32] + 12 len 20]
                                                        s = var70003
                                                        while uint8(s) < _17773:
                                                            _17805 = mem[(32 * uint8(s)) + _17772 + 32]
                                                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = this.address
                                                            mem[mem[64] + 36] = address(_10598)
                                                            mem[mem[64] + 68] = _17805
                                                            require ext_code.size(t)
                                                            call t.0x23b872dd with:
                                                                 gas gas_remaining wei
                                                                args address(this.address), address(_10598), _17805
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint8(s) == 255:
                                                                revert with 0, 17
                                                            if uint8(idx) >= mem[_10599]:
                                                                revert with 0, 50
                                                            if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _10599 + 32] + 64]]:
                                                                if uint8(idx) == 255:
                                                                    revert with 0, 17
                                                                idx = uint8(idx) + 1
                                                                continue 
                                                            if uint8(idx) >= mem[_10599]:
                                                                revert with 0, 50
                                                            if uint8(idx) >= mem[_10599]:
                                                                revert with 0, 50
                                                            t = mem[mem[(32 * uint8(idx)) + _10599 + 32] + 12 len 20]
                                                            s = uint8(s) + 1
                                                            continue 
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_10599]:
                                            revert with 0, 50
                                        if mem[mem[(32 * uint8(idx)) + _10599 + 32] + 62 len 2] != 1155:
                                            revert with 0, 'createTrade: unsupported erc type'
                                        if uint8(idx) >= mem[_10599]:
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_10599]:
                                            revert with 0, 50
                                        if mem[mem[mem[(32 * uint8(idx)) + _10599 + 32] + 64]] <= 1:
                                            _14926 = mem[mem[(32 * uint8(idx)) + _10599 + 32]]
                                            if uint8(idx) >= mem[_10599]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10599 + 32] + 64]]:
                                                revert with 0, 50
                                            _15161 = mem[mem[mem[(32 * uint8(idx)) + _10599 + 32] + 64] + 32]
                                            if uint8(idx) >= mem[_10599]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10599 + 32] + 96]]:
                                                revert with 0, 50
                                            _15275 = mem[mem[mem[(32 * uint8(idx)) + _10599 + 32] + 96] + 32]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = address(_10598)
                                            mem[mem[64] + 68] = _15161
                                            mem[mem[64] + 100] = _15275
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(address(_14926))
                                            call address(_14926).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(_10598), _15161, _15275, 160, 0
                                        else:
                                            _14929 = mem[mem[(32 * uint8(idx)) + _10599 + 32]]
                                            if uint8(idx) >= mem[_10599]:
                                                revert with 0, 50
                                            _15073 = mem[mem[(32 * uint8(idx)) + _10599 + 32] + 64]
                                            if uint8(idx) >= mem[_10599]:
                                                revert with 0, 50
                                            _15164 = mem[mem[(32 * uint8(idx)) + _10599 + 32] + 96]
                                            _15165 = mem[64]
                                            mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = address(_10598)
                                            mem[mem[64] + 68] = 160
                                            _15277 = mem[_15073]
                                            mem[mem[64] + 164] = mem[_15073]
                                            s = 0
                                            t = _15073 + 32
                                            u = mem[64] + 196
                                            while s < _15277:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_15165 + 100] = (32 * _15277) + 192
                                            _15657 = mem[_15164]
                                            mem[_15165 + (32 * _15277) + 196] = mem[_15164]
                                            s = 0
                                            t = _15164 + 32
                                            u = _15165 + (32 * _15277) + 228
                                            while s < _15657:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_15165 + 132] = (32 * _15277) + (32 * _15657) + 224
                                            mem[_15165 + (32 * _15277) + (32 * _15657) + 228] = 0
                                            require ext_code.size(address(_14929))
                                            call address(_14929).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _15165 + (32 * _15277) + (32 * _15657) + -mem[64] + 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                continue 
                        uint8(stor8[arg1].field_928) = 1
                        emit 0xb117ea82: arg1, mem[172 len 20], mem[204 len 20]
        else:
            if address(stor8[arg1].field_768) != msg.sender:
                revert with 0, 'acceptTrade: not private trade recipient'
            if not sub_270e5326Address:
                if 0 >= mem[_3514]:
                    revert with 0, 50
                if not mem[mem[_3514 + 32] + 12 len 20]:
                    _7108 = mem[96]
                    if 0 >= mem[mem[96]]:
                        revert with 0, 50
                    if not mem[mem[mem[96] + 32] + 12 len 20]:
                        uint8(stor8[arg1].field_928) = 1
                        emit 0xb117ea82: arg1, address(stor8[arg1].field_512), address(stor8[arg1].field_768)
                    else:
                        _10531 = mem[mem[96]]
                        idx = 0
                        while uint8(idx) < _10531:
                            if uint8(idx) >= mem[_7108]:
                                revert with 0, 50
                            if uint8(idx) >= mem[_7108]:
                                revert with 0, 50
                            if 20 == mem[mem[(32 * uint8(idx)) + _7108 + 32] + 62 len 2]:
                                _10834 = mem[mem[(32 * uint8(idx)) + _7108 + 32]]
                                if uint8(idx) >= mem[_7108]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7108 + 32] + 96]]:
                                    revert with 0, 50
                                _11100 = mem[mem[mem[(32 * uint8(idx)) + _7108 + 32] + 96] + 32]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                mem[mem[64] + 68] = _11100
                                require ext_code.size(address(_10834))
                                call address(_10834).0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(stor8[arg1].field_768), _11100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11754 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11754] == bool(mem[_11754])
                            else:
                                if uint8(idx) >= mem[_7108]:
                                    revert with 0, 50
                                if 777 == mem[mem[(32 * uint8(idx)) + _7108 + 32] + 62 len 2]:
                                    _11105 = mem[mem[(32 * uint8(idx)) + _7108 + 32]]
                                    if uint8(idx) >= mem[_7108]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7108 + 32] + 96]]:
                                        revert with 0, 50
                                    _11434 = mem[mem[mem[(32 * uint8(idx)) + _7108 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                    mem[mem[64] + 68] = _11434
                                    require ext_code.size(address(_11105))
                                    call address(_11105).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), address(stor8[arg1].field_768), _11434
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12184 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_12184] == bool(mem[_12184])
                                else:
                                    if 721 == mem[mem[(32 * uint8(idx)) + _7108 + 32] + 62 len 2]:
                                        if uint8(idx) < mem[_7108]:
                                            if uint8(var54003) >= mem[mem[mem[(32 * uint8(idx)) + _7108 + 32] + 64]]:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                continue 
                                            if uint8(idx) < mem[_7108]:
                                                if uint8(idx) < mem[_7108]:
                                                    _17253 = mem[mem[(32 * uint8(idx)) + _7108 + 32] + 64]
                                                    _17254 = mem[mem[mem[(32 * uint8(idx)) + _7108 + 32] + 64]]
                                                    t = mem[mem[(32 * uint8(idx)) + _7108 + 32] + 12 len 20]
                                                    s = var58003
                                                    while uint8(s) < _17254:
                                                        _17354 = mem[(32 * uint8(s)) + _17253 + 32]
                                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = this.address
                                                        mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                                        mem[mem[64] + 68] = _17354
                                                        require ext_code.size(t)
                                                        call t.0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args address(this.address), address(stor8[arg1].field_768), _17354
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if uint8(s) == 255:
                                                            revert with 0, 17
                                                        if uint8(idx) >= mem[_7108]:
                                                            revert with 0, 50
                                                        if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _7108 + 32] + 64]]:
                                                            if uint8(idx) == 255:
                                                                revert with 0, 17
                                                            idx = uint8(idx) + 1
                                                            continue 
                                                        if uint8(idx) >= mem[_7108]:
                                                            revert with 0, 50
                                                        if uint8(idx) >= mem[_7108]:
                                                            revert with 0, 50
                                                        t = mem[mem[(32 * uint8(idx)) + _7108 + 32] + 12 len 20]
                                                        s = uint8(s) + 1
                                                        continue 
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_7108]:
                                        revert with 0, 50
                                    if mem[mem[(32 * uint8(idx)) + _7108 + 32] + 62 len 2] != 1155:
                                        revert with 0, 'createTrade: unsupported erc type'
                                    if uint8(idx) >= mem[_7108]:
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_7108]:
                                        revert with 0, 50
                                    if mem[mem[mem[(32 * uint8(idx)) + _7108 + 32] + 64]] <= 1:
                                        _12176 = mem[mem[(32 * uint8(idx)) + _7108 + 32]]
                                        if uint8(idx) >= mem[_7108]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7108 + 32] + 64]]:
                                            revert with 0, 50
                                        _12729 = mem[mem[mem[(32 * uint8(idx)) + _7108 + 32] + 64] + 32]
                                        if uint8(idx) >= mem[_7108]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7108 + 32] + 96]]:
                                            revert with 0, 50
                                        _13086 = mem[mem[mem[(32 * uint8(idx)) + _7108 + 32] + 96] + 32]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                        mem[mem[64] + 68] = _12729
                                        mem[mem[64] + 100] = _13086
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(address(_12176))
                                        call address(_12176).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), address(stor8[arg1].field_768), _12729, _13086, 160, 0
                                    else:
                                        _12179 = mem[mem[(32 * uint8(idx)) + _7108 + 32]]
                                        if uint8(idx) >= mem[_7108]:
                                            revert with 0, 50
                                        _12499 = mem[mem[(32 * uint8(idx)) + _7108 + 32] + 64]
                                        if uint8(idx) >= mem[_7108]:
                                            revert with 0, 50
                                        _12732 = mem[mem[(32 * uint8(idx)) + _7108 + 32] + 96]
                                        mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                        mem[mem[64] + 68] = 160
                                        _13088 = mem[_12499]
                                        mem[mem[64] + 164] = mem[_12499]
                                        s = 0
                                        t = _12499 + 32
                                        u = mem[64] + 196
                                        while s < _13088:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[mem[64] + 100] = (32 * _13088) + 192
                                        _14084 = mem[_12732]
                                        mem[mem[64] + (32 * _13088) + 196] = mem[_12732]
                                        s = 0
                                        t = _12732 + 32
                                        u = mem[64] + (32 * _13088) + 228
                                        while s < _14084:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[mem[64] + 132] = (32 * _13088) + (32 * _14084) + 224
                                        mem[mem[64] + (32 * _13088) + (32 * _14084) + 228] = 0
                                        require ext_code.size(address(_12179))
                                        call address(_12179).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), address(stor8[arg1].field_768), 160, (32 * _13088) + 192, (32 * _13088) + (32 * _14084) + 224, mem[mem[64] + 164 len (32 * _13088) + (32 * _14084) + 64], 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                        uint8(stor8[arg1].field_928) = 1
                        emit 0xb117ea82: arg1, mem[172 len 20], mem[204 len 20]
                else:
                    _10532 = mem[_3514]
                    idx = 0
                    while uint8(idx) < _10532:
                        if uint8(idx) >= mem[_3514]:
                            revert with 0, 50
                        if uint8(idx) >= mem[_3514]:
                            revert with 0, 50
                        if 20 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                            _10837 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                            if uint8(idx) >= mem[_3514]:
                                revert with 0, 50
                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                revert with 0, 50
                            _11108 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor8[arg1].field_512)
                            mem[mem[64] + 68] = _11108
                            require ext_code.size(address(_10837))
                            call address(_10837).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor8[arg1].field_512), _11108
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11764 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11764] == bool(mem[_11764])
                        else:
                            if uint8(idx) >= mem[_3514]:
                                revert with 0, 50
                            if 777 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                _11113 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                    revert with 0, 50
                                _11441 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                mem[mem[64] + 68] = _11441
                                require ext_code.size(address(_11113))
                                call address(_11113).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor8[arg1].field_512), _11441
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12202 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_12202] == bool(mem[_12202])
                            else:
                                if 721 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                    if uint8(idx) < mem[_3514]:
                                        if uint8(var50003) >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) < mem[_3514]:
                                            if uint8(idx) < mem[_3514]:
                                                _17259 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]
                                                _17260 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]
                                                t = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 12 len 20]
                                                s = var54003
                                                while uint8(s) < _17260:
                                                    _17359 = mem[(32 * uint8(s)) + _17259 + 32]
                                                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                                    mem[mem[64] + 68] = _17359
                                                    require ext_code.size(t)
                                                    call t.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(stor8[arg1].field_512), _17359
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if uint8(s) == 255:
                                                        revert with 0, 17
                                                    if uint8(idx) >= mem[_3514]:
                                                        revert with 0, 50
                                                    if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                                        if uint8(idx) == 255:
                                                            revert with 0, 17
                                                        idx = uint8(idx) + 1
                                                        continue 
                                                    if uint8(idx) >= mem[_3514]:
                                                        revert with 0, 50
                                                    if uint8(idx) >= mem[_3514]:
                                                        revert with 0, 50
                                                    t = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 12 len 20]
                                                    s = uint8(s) + 1
                                                    continue 
                                    revert with 0, 50
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2] != 1155:
                                    revert with 0, 'createTrade: unsupported erc type'
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]] <= 1:
                                    _12194 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                        revert with 0, 50
                                    _12741 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64] + 32]
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                        revert with 0, 50
                                    _13096 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                    mem[mem[64] + 68] = _12741
                                    mem[mem[64] + 100] = _13096
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(address(_12194))
                                    call address(_12194).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(stor8[arg1].field_512), _12741, _13096, 160, 0
                                else:
                                    _12197 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    _12511 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    _12744 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]
                                    _12745 = mem[64]
                                    mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                    mem[mem[64] + 68] = 160
                                    _13098 = mem[_12511]
                                    mem[mem[64] + 164] = mem[_12511]
                                    s = 0
                                    t = _12511 + 32
                                    u = mem[64] + 196
                                    while s < _13098:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_12745 + 100] = (32 * _13098) + 192
                                    _14089 = mem[_12744]
                                    mem[_12745 + (32 * _13098) + 196] = mem[_12744]
                                    s = 0
                                    t = _12744 + 32
                                    u = _12745 + (32 * _13098) + 228
                                    while s < _14089:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_12745 + 132] = (32 * _13098) + (32 * _14089) + 224
                                    mem[_12745 + (32 * _13098) + (32 * _14089) + 228] = 0
                                    require ext_code.size(address(_12197))
                                    call address(_12197).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _12745 + (32 * _13098) + (32 * _14089) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        continue 
                    _10607 = mem[192]
                    _10608 = mem[96]
                    if 0 >= mem[mem[96]]:
                        revert with 0, 50
                    if mem[mem[mem[96] + 32] + 12 len 20]:
                        _13837 = mem[mem[96]]
                        idx = 0
                        while uint8(idx) < _13837:
                            if uint8(idx) >= mem[_10608]:
                                revert with 0, 50
                            if uint8(idx) >= mem[_10608]:
                                revert with 0, 50
                            if 20 == mem[mem[(32 * uint8(idx)) + _10608 + 32] + 62 len 2]:
                                _14304 = mem[mem[(32 * uint8(idx)) + _10608 + 32]]
                                if uint8(idx) >= mem[_10608]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10608 + 32] + 96]]:
                                    revert with 0, 50
                                _14476 = mem[mem[mem[(32 * uint8(idx)) + _10608 + 32] + 96] + 32]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(_10607)
                                mem[mem[64] + 68] = _14476
                                require ext_code.size(address(_14304))
                                call address(_14304).0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(_10607), _14476
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14774 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_14774] == bool(mem[_14774])
                            else:
                                if uint8(idx) >= mem[_10608]:
                                    revert with 0, 50
                                if 777 == mem[mem[(32 * uint8(idx)) + _10608 + 32] + 62 len 2]:
                                    _14481 = mem[mem[(32 * uint8(idx)) + _10608 + 32]]
                                    if uint8(idx) >= mem[_10608]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10608 + 32] + 96]]:
                                        revert with 0, 50
                                    _14643 = mem[mem[mem[(32 * uint8(idx)) + _10608 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(_10607)
                                    mem[mem[64] + 68] = _14643
                                    require ext_code.size(address(_14481))
                                    call address(_14481).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), address(_10607), _14643
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _14947 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_14947] == bool(mem[_14947])
                                else:
                                    if 721 == mem[mem[(32 * uint8(idx)) + _10608 + 32] + 62 len 2]:
                                        if uint8(idx) < mem[_10608]:
                                            if uint8(var57003) >= mem[mem[mem[(32 * uint8(idx)) + _10608 + 32] + 64]]:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                continue 
                                            if uint8(idx) < mem[_10608]:
                                                if uint8(idx) < mem[_10608]:
                                                    _17775 = mem[mem[(32 * uint8(idx)) + _10608 + 32] + 64]
                                                    _17776 = mem[mem[mem[(32 * uint8(idx)) + _10608 + 32] + 64]]
                                                    t = mem[mem[(32 * uint8(idx)) + _10608 + 32] + 12 len 20]
                                                    s = var61003
                                                    while uint8(s) < _17776:
                                                        _17807 = mem[(32 * uint8(s)) + _17775 + 32]
                                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = this.address
                                                        mem[mem[64] + 36] = address(_10607)
                                                        mem[mem[64] + 68] = _17807
                                                        require ext_code.size(t)
                                                        call t.0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args address(this.address), address(_10607), _17807
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if uint8(s) == 255:
                                                            revert with 0, 17
                                                        if uint8(idx) >= mem[_10608]:
                                                            revert with 0, 50
                                                        if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _10608 + 32] + 64]]:
                                                            if uint8(idx) == 255:
                                                                revert with 0, 17
                                                            idx = uint8(idx) + 1
                                                            continue 
                                                        if uint8(idx) >= mem[_10608]:
                                                            revert with 0, 50
                                                        if uint8(idx) >= mem[_10608]:
                                                            revert with 0, 50
                                                        t = mem[mem[(32 * uint8(idx)) + _10608 + 32] + 12 len 20]
                                                        s = uint8(s) + 1
                                                        continue 
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_10608]:
                                        revert with 0, 50
                                    if mem[mem[(32 * uint8(idx)) + _10608 + 32] + 62 len 2] != 1155:
                                        revert with 0, 'createTrade: unsupported erc type'
                                    if uint8(idx) >= mem[_10608]:
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_10608]:
                                        revert with 0, 50
                                    if mem[mem[mem[(32 * uint8(idx)) + _10608 + 32] + 64]] <= 1:
                                        _14939 = mem[mem[(32 * uint8(idx)) + _10608 + 32]]
                                        if uint8(idx) >= mem[_10608]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10608 + 32] + 64]]:
                                            revert with 0, 50
                                        _15167 = mem[mem[mem[(32 * uint8(idx)) + _10608 + 32] + 64] + 32]
                                        if uint8(idx) >= mem[_10608]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10608 + 32] + 96]]:
                                            revert with 0, 50
                                        _15278 = mem[mem[mem[(32 * uint8(idx)) + _10608 + 32] + 96] + 32]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(_10607)
                                        mem[mem[64] + 68] = _15167
                                        mem[mem[64] + 100] = _15278
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(address(_14939))
                                        call address(_14939).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), address(_10607), _15167, _15278, 160, 0
                                    else:
                                        _14942 = mem[mem[(32 * uint8(idx)) + _10608 + 32]]
                                        if uint8(idx) >= mem[_10608]:
                                            revert with 0, 50
                                        _15081 = mem[mem[(32 * uint8(idx)) + _10608 + 32] + 64]
                                        if uint8(idx) >= mem[_10608]:
                                            revert with 0, 50
                                        _15170 = mem[mem[(32 * uint8(idx)) + _10608 + 32] + 96]
                                        _15171 = mem[64]
                                        mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(_10607)
                                        mem[mem[64] + 68] = 160
                                        _15280 = mem[_15081]
                                        mem[mem[64] + 164] = mem[_15081]
                                        s = 0
                                        t = _15081 + 32
                                        u = mem[64] + 196
                                        while s < _15280:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_15171 + 100] = (32 * _15280) + 192
                                        _15669 = mem[_15170]
                                        mem[_15171 + (32 * _15280) + 196] = mem[_15170]
                                        s = 0
                                        t = _15170 + 32
                                        u = _15171 + (32 * _15280) + 228
                                        while s < _15669:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_15171 + 132] = (32 * _15280) + (32 * _15669) + 224
                                        mem[_15171 + (32 * _15280) + (32 * _15669) + 228] = 0
                                        require ext_code.size(address(_14942))
                                        call address(_14942).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _15171 + (32 * _15280) + (32 * _15669) + -mem[64] + 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                    uint8(stor8[arg1].field_928) = 1
                    emit 0xb117ea82: arg1, mem[172 len 20], mem[204 len 20]
            else:
                mem[0] = msg.sender
                mem[32] = 7
                if stor7[msg.sender]:
                    if 0 >= mem[_3514]:
                        revert with 0, 50
                    if not mem[mem[_3514 + 32] + 12 len 20]:
                        _7127 = mem[96]
                        if 0 >= mem[mem[96]]:
                            revert with 0, 50
                        if not mem[mem[mem[96] + 32] + 12 len 20]:
                            uint8(stor8[arg1].field_928) = 1
                            emit 0xb117ea82: arg1, address(stor8[arg1].field_512), address(stor8[arg1].field_768)
                        else:
                            _10533 = mem[mem[96]]
                            idx = 0
                            while uint8(idx) < _10533:
                                if uint8(idx) >= mem[_7127]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[_7127]:
                                    revert with 0, 50
                                if 20 == mem[mem[(32 * uint8(idx)) + _7127 + 32] + 62 len 2]:
                                    _10840 = mem[mem[(32 * uint8(idx)) + _7127 + 32]]
                                    if uint8(idx) >= mem[_7127]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7127 + 32] + 96]]:
                                        revert with 0, 50
                                    _11115 = mem[mem[mem[(32 * uint8(idx)) + _7127 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                    mem[mem[64] + 68] = _11115
                                    require ext_code.size(address(_10840))
                                    call address(_10840).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), address(stor8[arg1].field_768), _11115
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11771 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_11771] == bool(mem[_11771])
                                else:
                                    if uint8(idx) >= mem[_7127]:
                                        revert with 0, 50
                                    if 777 == mem[mem[(32 * uint8(idx)) + _7127 + 32] + 62 len 2]:
                                        _11120 = mem[mem[(32 * uint8(idx)) + _7127 + 32]]
                                        if uint8(idx) >= mem[_7127]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7127 + 32] + 96]]:
                                            revert with 0, 50
                                        _11447 = mem[mem[mem[(32 * uint8(idx)) + _7127 + 32] + 96] + 32]
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                        mem[mem[64] + 68] = _11447
                                        require ext_code.size(address(_11120))
                                        call address(_11120).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), address(stor8[arg1].field_768), _11447
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12213 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_12213] == bool(mem[_12213])
                                    else:
                                        if 721 == mem[mem[(32 * uint8(idx)) + _7127 + 32] + 62 len 2]:
                                            if uint8(idx) < mem[_7127]:
                                                if uint8(var55003) >= mem[mem[mem[(32 * uint8(idx)) + _7127 + 32] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) < mem[_7127]:
                                                    if uint8(idx) < mem[_7127]:
                                                        _17262 = mem[mem[(32 * uint8(idx)) + _7127 + 32] + 64]
                                                        _17263 = mem[mem[mem[(32 * uint8(idx)) + _7127 + 32] + 64]]
                                                        t = mem[mem[(32 * uint8(idx)) + _7127 + 32] + 12 len 20]
                                                        s = var59003
                                                        while uint8(s) < _17263:
                                                            _17361 = mem[(32 * uint8(s)) + _17262 + 32]
                                                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = this.address
                                                            mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                                            mem[mem[64] + 68] = _17361
                                                            require ext_code.size(t)
                                                            call t.0x23b872dd with:
                                                                 gas gas_remaining wei
                                                                args address(this.address), address(stor8[arg1].field_768), _17361
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint8(s) == 255:
                                                                revert with 0, 17
                                                            if uint8(idx) >= mem[_7127]:
                                                                revert with 0, 50
                                                            if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _7127 + 32] + 64]]:
                                                                if uint8(idx) == 255:
                                                                    revert with 0, 17
                                                                idx = uint8(idx) + 1
                                                                continue 
                                                            if uint8(idx) >= mem[_7127]:
                                                                revert with 0, 50
                                                            if uint8(idx) >= mem[_7127]:
                                                                revert with 0, 50
                                                            t = mem[mem[(32 * uint8(idx)) + _7127 + 32] + 12 len 20]
                                                            s = uint8(s) + 1
                                                            continue 
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_7127]:
                                            revert with 0, 50
                                        if mem[mem[(32 * uint8(idx)) + _7127 + 32] + 62 len 2] != 1155:
                                            revert with 0, 'createTrade: unsupported erc type'
                                        if uint8(idx) >= mem[_7127]:
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_7127]:
                                            revert with 0, 50
                                        if mem[mem[mem[(32 * uint8(idx)) + _7127 + 32] + 64]] <= 1:
                                            _12205 = mem[mem[(32 * uint8(idx)) + _7127 + 32]]
                                            if uint8(idx) >= mem[_7127]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7127 + 32] + 64]]:
                                                revert with 0, 50
                                            _12747 = mem[mem[mem[(32 * uint8(idx)) + _7127 + 32] + 64] + 32]
                                            if uint8(idx) >= mem[_7127]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7127 + 32] + 96]]:
                                                revert with 0, 50
                                            _13099 = mem[mem[mem[(32 * uint8(idx)) + _7127 + 32] + 96] + 32]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                            mem[mem[64] + 68] = _12747
                                            mem[mem[64] + 100] = _13099
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(address(_12205))
                                            call address(_12205).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(stor8[arg1].field_768), _12747, _13099, 160, 0
                                        else:
                                            _12208 = mem[mem[(32 * uint8(idx)) + _7127 + 32]]
                                            if uint8(idx) >= mem[_7127]:
                                                revert with 0, 50
                                            _12519 = mem[mem[(32 * uint8(idx)) + _7127 + 32] + 64]
                                            if uint8(idx) >= mem[_7127]:
                                                revert with 0, 50
                                            _12750 = mem[mem[(32 * uint8(idx)) + _7127 + 32] + 96]
                                            _12751 = mem[64]
                                            mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                            mem[mem[64] + 68] = 160
                                            _13101 = mem[_12519]
                                            mem[mem[64] + 164] = mem[_12519]
                                            s = 0
                                            t = _12519 + 32
                                            u = mem[64] + 196
                                            while s < _13101:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[mem[64] + 100] = (32 * _13101) + 192
                                            _14093 = mem[_12750]
                                            mem[mem[64] + (32 * _13101) + 196] = mem[_12750]
                                            s = 0
                                            t = _12750 + 32
                                            u = mem[64] + (32 * _13101) + 228
                                            while s < _14093:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_12751 + 132] = (32 * _13101) + (32 * _14093) + 224
                                            mem[_12751 + (32 * _13101) + (32 * _14093) + 228] = 0
                                            require ext_code.size(address(_12208))
                                            call address(_12208).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _12751 + (32 * _13101) + (32 * _14093) + -mem[64] + 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                continue 
                            uint8(stor8[arg1].field_928) = 1
                            emit 0xb117ea82: arg1, mem[172 len 20], mem[204 len 20]
                    else:
                        _10534 = mem[_3514]
                        idx = 0
                        while uint8(idx) < _10534:
                            if uint8(idx) >= mem[_3514]:
                                revert with 0, 50
                            if uint8(idx) >= mem[_3514]:
                                revert with 0, 50
                            if 20 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                _10843 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                    revert with 0, 50
                                _11123 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                mem[mem[64] + 68] = _11123
                                require ext_code.size(address(_10843))
                                call address(_10843).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor8[arg1].field_512), _11123
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11781 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11781] == bool(mem[_11781])
                            else:
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if 777 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                    _11128 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                        revert with 0, 50
                                    _11454 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                    mem[mem[64] + 68] = _11454
                                    require ext_code.size(address(_11128))
                                    call address(_11128).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(stor8[arg1].field_512), _11454
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12231 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_12231] == bool(mem[_12231])
                                else:
                                    if 721 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                        if uint8(idx) < mem[_3514]:
                                            if uint8(var51003) >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                continue 
                                            if uint8(idx) < mem[_3514]:
                                                if uint8(idx) < mem[_3514]:
                                                    _17268 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]
                                                    _17269 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]
                                                    t = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 12 len 20]
                                                    s = var55003
                                                    while uint8(s) < _17269:
                                                        _17366 = mem[(32 * uint8(s)) + _17268 + 32]
                                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                                        mem[mem[64] + 68] = _17366
                                                        require ext_code.size(t)
                                                        call t.0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(stor8[arg1].field_512), _17366
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if uint8(s) == 255:
                                                            revert with 0, 17
                                                        if uint8(idx) >= mem[_3514]:
                                                            revert with 0, 50
                                                        if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                                            if uint8(idx) == 255:
                                                                revert with 0, 17
                                                            idx = uint8(idx) + 1
                                                            continue 
                                                        if uint8(idx) >= mem[_3514]:
                                                            revert with 0, 50
                                                        if uint8(idx) >= mem[_3514]:
                                                            revert with 0, 50
                                                        t = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 12 len 20]
                                                        s = uint8(s) + 1
                                                        continue 
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2] != 1155:
                                        revert with 0, 'createTrade: unsupported erc type'
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]] <= 1:
                                        _12223 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                            revert with 0, 50
                                        _12759 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64] + 32]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                            revert with 0, 50
                                        _13109 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                        mem[mem[64] + 68] = _12759
                                        mem[mem[64] + 100] = _13109
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(address(_12223))
                                        call address(_12223).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(stor8[arg1].field_512), _12759, _13109, 160, 0
                                    else:
                                        _12226 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        _12531 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        _12762 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]
                                        _12763 = mem[64]
                                        mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                        mem[mem[64] + 68] = 160
                                        _13111 = mem[_12531]
                                        mem[mem[64] + 164] = mem[_12531]
                                        s = 0
                                        t = _12531 + 32
                                        u = mem[64] + 196
                                        while s < _13111:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[mem[64] + 100] = (32 * _13111) + 192
                                        _14098 = mem[_12762]
                                        mem[mem[64] + (32 * _13111) + 196] = mem[_12762]
                                        s = 0
                                        t = _12762 + 32
                                        u = mem[64] + (32 * _13111) + 228
                                        while s < _14098:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_12763 + 132] = (32 * _13111) + (32 * _14098) + 224
                                        mem[_12763 + (32 * _13111) + (32 * _14098) + 228] = 0
                                        require ext_code.size(address(_12226))
                                        call address(_12226).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _12763 + (32 * _13111) + (32 * _14098) + -mem[64] + 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                        _10616 = mem[192]
                        _10617 = mem[96]
                        if 0 >= mem[mem[96]]:
                            revert with 0, 50
                        if mem[mem[mem[96] + 32] + 12 len 20]:
                            _13840 = mem[mem[96]]
                            idx = 0
                            while uint8(idx) < _13840:
                                if uint8(idx) >= mem[_10617]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[_10617]:
                                    revert with 0, 50
                                if 20 == mem[mem[(32 * uint8(idx)) + _10617 + 32] + 62 len 2]:
                                    _14313 = mem[mem[(32 * uint8(idx)) + _10617 + 32]]
                                    if uint8(idx) >= mem[_10617]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10617 + 32] + 96]]:
                                        revert with 0, 50
                                    _14487 = mem[mem[mem[(32 * uint8(idx)) + _10617 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(_10616)
                                    mem[mem[64] + 68] = _14487
                                    require ext_code.size(address(_14313))
                                    call address(_14313).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), address(_10616), _14487
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _14781 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_14781] == bool(mem[_14781])
                                else:
                                    if uint8(idx) >= mem[_10617]:
                                        revert with 0, 50
                                    if 777 == mem[mem[(32 * uint8(idx)) + _10617 + 32] + 62 len 2]:
                                        _14492 = mem[mem[(32 * uint8(idx)) + _10617 + 32]]
                                        if uint8(idx) >= mem[_10617]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10617 + 32] + 96]]:
                                            revert with 0, 50
                                        _14649 = mem[mem[mem[(32 * uint8(idx)) + _10617 + 32] + 96] + 32]
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(_10616)
                                        mem[mem[64] + 68] = _14649
                                        require ext_code.size(address(_14492))
                                        call address(_14492).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), address(_10616), _14649
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _14960 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_14960] == bool(mem[_14960])
                                    else:
                                        if 721 == mem[mem[(32 * uint8(idx)) + _10617 + 32] + 62 len 2]:
                                            if uint8(idx) < mem[_10617]:
                                                if uint8(var58003) >= mem[mem[mem[(32 * uint8(idx)) + _10617 + 32] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) < mem[_10617]:
                                                    if uint8(idx) < mem[_10617]:
                                                        _17778 = mem[mem[(32 * uint8(idx)) + _10617 + 32] + 64]
                                                        _17779 = mem[mem[mem[(32 * uint8(idx)) + _10617 + 32] + 64]]
                                                        t = mem[mem[(32 * uint8(idx)) + _10617 + 32] + 12 len 20]
                                                        s = var62003
                                                        while uint8(s) < _17779:
                                                            _17809 = mem[(32 * uint8(s)) + _17778 + 32]
                                                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = this.address
                                                            mem[mem[64] + 36] = address(_10616)
                                                            mem[mem[64] + 68] = _17809
                                                            require ext_code.size(t)
                                                            call t.0x23b872dd with:
                                                                 gas gas_remaining wei
                                                                args address(this.address), address(_10616), _17809
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint8(s) == 255:
                                                                revert with 0, 17
                                                            if uint8(idx) >= mem[_10617]:
                                                                revert with 0, 50
                                                            if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _10617 + 32] + 64]]:
                                                                if uint8(idx) == 255:
                                                                    revert with 0, 17
                                                                idx = uint8(idx) + 1
                                                                continue 
                                                            if uint8(idx) >= mem[_10617]:
                                                                revert with 0, 50
                                                            if uint8(idx) >= mem[_10617]:
                                                                revert with 0, 50
                                                            t = mem[mem[(32 * uint8(idx)) + _10617 + 32] + 12 len 20]
                                                            s = uint8(s) + 1
                                                            continue 
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_10617]:
                                            revert with 0, 50
                                        if mem[mem[(32 * uint8(idx)) + _10617 + 32] + 62 len 2] != 1155:
                                            revert with 0, 'createTrade: unsupported erc type'
                                        if uint8(idx) >= mem[_10617]:
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_10617]:
                                            revert with 0, 50
                                        if mem[mem[mem[(32 * uint8(idx)) + _10617 + 32] + 64]] <= 1:
                                            _14952 = mem[mem[(32 * uint8(idx)) + _10617 + 32]]
                                            if uint8(idx) >= mem[_10617]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10617 + 32] + 64]]:
                                                revert with 0, 50
                                            _15173 = mem[mem[mem[(32 * uint8(idx)) + _10617 + 32] + 64] + 32]
                                            if uint8(idx) >= mem[_10617]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10617 + 32] + 96]]:
                                                revert with 0, 50
                                            _15281 = mem[mem[mem[(32 * uint8(idx)) + _10617 + 32] + 96] + 32]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = address(_10616)
                                            mem[mem[64] + 68] = _15173
                                            mem[mem[64] + 100] = _15281
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(address(_14952))
                                            call address(_14952).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(_10616), _15173, _15281, 160, 0
                                        else:
                                            _14955 = mem[mem[(32 * uint8(idx)) + _10617 + 32]]
                                            if uint8(idx) >= mem[_10617]:
                                                revert with 0, 50
                                            _15089 = mem[mem[(32 * uint8(idx)) + _10617 + 32] + 64]
                                            if uint8(idx) >= mem[_10617]:
                                                revert with 0, 50
                                            _15176 = mem[mem[(32 * uint8(idx)) + _10617 + 32] + 96]
                                            mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = address(_10616)
                                            mem[mem[64] + 68] = 160
                                            _15283 = mem[_15089]
                                            mem[mem[64] + 164] = mem[_15089]
                                            s = 0
                                            t = _15089 + 32
                                            u = mem[64] + 196
                                            while s < _15283:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[mem[64] + 100] = (32 * _15283) + 192
                                            _15681 = mem[_15176]
                                            mem[mem[64] + (32 * _15283) + 196] = mem[_15176]
                                            s = 0
                                            t = _15176 + 32
                                            u = mem[64] + (32 * _15283) + 228
                                            while s < _15681:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[mem[64] + 132] = (32 * _15283) + (32 * _15681) + 224
                                            mem[mem[64] + (32 * _15283) + (32 * _15681) + 228] = 0
                                            require ext_code.size(address(_14955))
                                            call address(_14955).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(_10616), 160, (32 * _15283) + 192, (32 * _15283) + (32 * _15681) + 224, mem[mem[64] + 164 len (32 * _15283) + (32 * _15681) + 64], 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                continue 
                        uint8(stor8[arg1].field_928) = 1
                        emit 0xb117ea82: arg1, mem[172 len 20], mem[204 len 20]
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor5
                    mem[mem[64] + 68] = serviceFee
                    require ext_code.size(sub_270e5326Address)
                    call sub_270e5326Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor5, serviceFee
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7129 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7129] == bool(mem[_7129])
                    if 0 >= mem[_3514]:
                        revert with 0, 50
                    if not mem[mem[_3514 + 32] + 12 len 20]:
                        _7717 = mem[96]
                        if 0 >= mem[mem[96]]:
                            revert with 0, 50
                        if not mem[mem[mem[96] + 32] + 12 len 20]:
                            uint8(stor8[arg1].field_928) = 1
                            emit 0xb117ea82: arg1, address(stor8[arg1].field_512), address(stor8[arg1].field_768)
                        else:
                            _10535 = mem[mem[96]]
                            idx = 0
                            while uint8(idx) < _10535:
                                if uint8(idx) >= mem[_7717]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[_7717]:
                                    revert with 0, 50
                                if 20 == mem[mem[(32 * uint8(idx)) + _7717 + 32] + 62 len 2]:
                                    _10846 = mem[mem[(32 * uint8(idx)) + _7717 + 32]]
                                    if uint8(idx) >= mem[_7717]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7717 + 32] + 96]]:
                                        revert with 0, 50
                                    _11130 = mem[mem[mem[(32 * uint8(idx)) + _7717 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                    mem[mem[64] + 68] = _11130
                                    require ext_code.size(address(_10846))
                                    call address(_10846).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), address(stor8[arg1].field_768), _11130
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11788 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_11788] == bool(mem[_11788])
                                else:
                                    if uint8(idx) >= mem[_7717]:
                                        revert with 0, 50
                                    if 777 == mem[mem[(32 * uint8(idx)) + _7717 + 32] + 62 len 2]:
                                        _11135 = mem[mem[(32 * uint8(idx)) + _7717 + 32]]
                                        if uint8(idx) >= mem[_7717]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7717 + 32] + 96]]:
                                            revert with 0, 50
                                        _11460 = mem[mem[mem[(32 * uint8(idx)) + _7717 + 32] + 96] + 32]
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                        mem[mem[64] + 68] = _11460
                                        require ext_code.size(address(_11135))
                                        call address(_11135).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), address(stor8[arg1].field_768), _11460
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12242 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_12242] == bool(mem[_12242])
                                    else:
                                        if 721 == mem[mem[(32 * uint8(idx)) + _7717 + 32] + 62 len 2]:
                                            if uint8(idx) < mem[_7717]:
                                                if uint8(var64003) >= mem[mem[mem[(32 * uint8(idx)) + _7717 + 32] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) < mem[_7717]:
                                                    if uint8(idx) < mem[_7717]:
                                                        _17271 = mem[mem[(32 * uint8(idx)) + _7717 + 32] + 64]
                                                        _17272 = mem[mem[mem[(32 * uint8(idx)) + _7717 + 32] + 64]]
                                                        t = mem[mem[(32 * uint8(idx)) + _7717 + 32] + 12 len 20]
                                                        s = var68003
                                                        while uint8(s) < _17272:
                                                            _17368 = mem[(32 * uint8(s)) + _17271 + 32]
                                                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = this.address
                                                            mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                                            mem[mem[64] + 68] = _17368
                                                            require ext_code.size(t)
                                                            call t.0x23b872dd with:
                                                                 gas gas_remaining wei
                                                                args address(this.address), address(stor8[arg1].field_768), _17368
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint8(s) == 255:
                                                                revert with 0, 17
                                                            if uint8(idx) >= mem[_7717]:
                                                                revert with 0, 50
                                                            if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _7717 + 32] + 64]]:
                                                                if uint8(idx) == 255:
                                                                    revert with 0, 17
                                                                idx = uint8(idx) + 1
                                                                continue 
                                                            if uint8(idx) >= mem[_7717]:
                                                                revert with 0, 50
                                                            if uint8(idx) >= mem[_7717]:
                                                                revert with 0, 50
                                                            t = mem[mem[(32 * uint8(idx)) + _7717 + 32] + 12 len 20]
                                                            s = uint8(s) + 1
                                                            continue 
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_7717]:
                                            revert with 0, 50
                                        if mem[mem[(32 * uint8(idx)) + _7717 + 32] + 62 len 2] != 1155:
                                            revert with 0, 'createTrade: unsupported erc type'
                                        if uint8(idx) >= mem[_7717]:
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_7717]:
                                            revert with 0, 50
                                        if mem[mem[mem[(32 * uint8(idx)) + _7717 + 32] + 64]] <= 1:
                                            _12234 = mem[mem[(32 * uint8(idx)) + _7717 + 32]]
                                            if uint8(idx) >= mem[_7717]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7717 + 32] + 64]]:
                                                revert with 0, 50
                                            _12765 = mem[mem[mem[(32 * uint8(idx)) + _7717 + 32] + 64] + 32]
                                            if uint8(idx) >= mem[_7717]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7717 + 32] + 96]]:
                                                revert with 0, 50
                                            _13112 = mem[mem[mem[(32 * uint8(idx)) + _7717 + 32] + 96] + 32]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                            mem[mem[64] + 68] = _12765
                                            mem[mem[64] + 100] = _13112
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(address(_12234))
                                            call address(_12234).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(stor8[arg1].field_768), _12765, _13112, 160, 0
                                        else:
                                            _12237 = mem[mem[(32 * uint8(idx)) + _7717 + 32]]
                                            if uint8(idx) >= mem[_7717]:
                                                revert with 0, 50
                                            _12539 = mem[mem[(32 * uint8(idx)) + _7717 + 32] + 64]
                                            if uint8(idx) >= mem[_7717]:
                                                revert with 0, 50
                                            _12768 = mem[mem[(32 * uint8(idx)) + _7717 + 32] + 96]
                                            _12769 = mem[64]
                                            mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                            mem[mem[64] + 68] = 160
                                            _13114 = mem[_12539]
                                            mem[mem[64] + 164] = mem[_12539]
                                            s = 0
                                            t = _12539 + 32
                                            u = mem[64] + 196
                                            while s < _13114:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_12769 + 100] = (32 * _13114) + 192
                                            _14102 = mem[_12768]
                                            mem[_12769 + (32 * _13114) + 196] = mem[_12768]
                                            s = 0
                                            t = _12768 + 32
                                            u = _12769 + (32 * _13114) + 228
                                            while s < _14102:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_12769 + 132] = (32 * _13114) + (32 * _14102) + 224
                                            mem[_12769 + (32 * _13114) + (32 * _14102) + 228] = 0
                                            require ext_code.size(address(_12237))
                                            call address(_12237).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _12769 + (32 * _13114) + (32 * _14102) + -mem[64] + 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                continue 
                            uint8(stor8[arg1].field_928) = 1
                            emit 0xb117ea82: arg1, mem[172 len 20], mem[204 len 20]
                    else:
                        _10536 = mem[_3514]
                        idx = 0
                        while uint8(idx) < _10536:
                            if uint8(idx) >= mem[_3514]:
                                revert with 0, 50
                            if uint8(idx) >= mem[_3514]:
                                revert with 0, 50
                            if 20 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                _10849 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                    revert with 0, 50
                                _11138 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                mem[mem[64] + 68] = _11138
                                require ext_code.size(address(_10849))
                                call address(_10849).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor8[arg1].field_512), _11138
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11798 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11798] == bool(mem[_11798])
                            else:
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if 777 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                    _11143 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                        revert with 0, 50
                                    _11467 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                    mem[mem[64] + 68] = _11467
                                    require ext_code.size(address(_11143))
                                    call address(_11143).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(stor8[arg1].field_512), _11467
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12260 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_12260] == bool(mem[_12260])
                                else:
                                    if 721 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                        if uint8(idx) < mem[_3514]:
                                            if uint8(var60003) >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                continue 
                                            if uint8(idx) < mem[_3514]:
                                                if uint8(idx) < mem[_3514]:
                                                    _17277 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]
                                                    _17278 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]
                                                    t = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 12 len 20]
                                                    s = var64003
                                                    while uint8(s) < _17278:
                                                        _17373 = mem[(32 * uint8(s)) + _17277 + 32]
                                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                                        mem[mem[64] + 68] = _17373
                                                        require ext_code.size(t)
                                                        call t.0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(stor8[arg1].field_512), _17373
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if uint8(s) == 255:
                                                            revert with 0, 17
                                                        if uint8(idx) >= mem[_3514]:
                                                            revert with 0, 50
                                                        if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                                            if uint8(idx) == 255:
                                                                revert with 0, 17
                                                            idx = uint8(idx) + 1
                                                            continue 
                                                        if uint8(idx) >= mem[_3514]:
                                                            revert with 0, 50
                                                        if uint8(idx) >= mem[_3514]:
                                                            revert with 0, 50
                                                        t = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 12 len 20]
                                                        s = uint8(s) + 1
                                                        continue 
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2] != 1155:
                                        revert with 0, 'createTrade: unsupported erc type'
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]] <= 1:
                                        _12252 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                            revert with 0, 50
                                        _12777 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64] + 32]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                            revert with 0, 50
                                        _13122 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                        mem[mem[64] + 68] = _12777
                                        mem[mem[64] + 100] = _13122
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(address(_12252))
                                        call address(_12252).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(stor8[arg1].field_512), _12777, _13122, 160, 0
                                    else:
                                        _12255 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        _12551 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        _12780 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]
                                        _12781 = mem[64]
                                        mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                        mem[mem[64] + 68] = 160
                                        _13124 = mem[_12551]
                                        mem[mem[64] + 164] = mem[_12551]
                                        s = 0
                                        t = _12551 + 32
                                        u = mem[64] + 196
                                        while s < _13124:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_12781 + 100] = (32 * _13124) + 192
                                        _14107 = mem[_12780]
                                        mem[_12781 + (32 * _13124) + 196] = mem[_12780]
                                        s = 0
                                        t = _12780 + 32
                                        u = _12781 + (32 * _13124) + 228
                                        while s < _14107:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_12781 + 132] = (32 * _13124) + (32 * _14107) + 224
                                        mem[_12781 + (32 * _13124) + (32 * _14107) + 228] = 0
                                        require ext_code.size(address(_12255))
                                        call address(_12255).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _12781 + (32 * _13124) + (32 * _14107) + -mem[64] + 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                        _10625 = mem[192]
                        _10626 = mem[96]
                        if 0 >= mem[mem[96]]:
                            revert with 0, 50
                        if mem[mem[mem[96] + 32] + 12 len 20]:
                            _13843 = mem[mem[96]]
                            idx = 0
                            while uint8(idx) < _13843:
                                if uint8(idx) >= mem[_10626]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[_10626]:
                                    revert with 0, 50
                                if 20 == mem[mem[(32 * uint8(idx)) + _10626 + 32] + 62 len 2]:
                                    _14322 = mem[mem[(32 * uint8(idx)) + _10626 + 32]]
                                    if uint8(idx) >= mem[_10626]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10626 + 32] + 96]]:
                                        revert with 0, 50
                                    _14498 = mem[mem[mem[(32 * uint8(idx)) + _10626 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(_10625)
                                    mem[mem[64] + 68] = _14498
                                    require ext_code.size(address(_14322))
                                    call address(_14322).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), address(_10625), _14498
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _14788 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_14788] == bool(mem[_14788])
                                else:
                                    if uint8(idx) >= mem[_10626]:
                                        revert with 0, 50
                                    if 777 == mem[mem[(32 * uint8(idx)) + _10626 + 32] + 62 len 2]:
                                        _14503 = mem[mem[(32 * uint8(idx)) + _10626 + 32]]
                                        if uint8(idx) >= mem[_10626]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10626 + 32] + 96]]:
                                            revert with 0, 50
                                        _14655 = mem[mem[mem[(32 * uint8(idx)) + _10626 + 32] + 96] + 32]
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(_10625)
                                        mem[mem[64] + 68] = _14655
                                        require ext_code.size(address(_14503))
                                        call address(_14503).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), address(_10625), _14655
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _14973 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_14973] == bool(mem[_14973])
                                    else:
                                        if 721 == mem[mem[(32 * uint8(idx)) + _10626 + 32] + 62 len 2]:
                                            if uint8(idx) < mem[_10626]:
                                                if uint8(var67003) >= mem[mem[mem[(32 * uint8(idx)) + _10626 + 32] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) < mem[_10626]:
                                                    if uint8(idx) < mem[_10626]:
                                                        _17781 = mem[mem[(32 * uint8(idx)) + _10626 + 32] + 64]
                                                        _17782 = mem[mem[mem[(32 * uint8(idx)) + _10626 + 32] + 64]]
                                                        t = mem[mem[(32 * uint8(idx)) + _10626 + 32] + 12 len 20]
                                                        s = var71003
                                                        while uint8(s) < _17782:
                                                            _17811 = mem[(32 * uint8(s)) + _17781 + 32]
                                                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = this.address
                                                            mem[mem[64] + 36] = address(_10625)
                                                            mem[mem[64] + 68] = _17811
                                                            require ext_code.size(t)
                                                            call t.0x23b872dd with:
                                                                 gas gas_remaining wei
                                                                args address(this.address), address(_10625), _17811
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint8(s) == 255:
                                                                revert with 0, 17
                                                            if uint8(idx) >= mem[_10626]:
                                                                revert with 0, 50
                                                            if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _10626 + 32] + 64]]:
                                                                if uint8(idx) == 255:
                                                                    revert with 0, 17
                                                                idx = uint8(idx) + 1
                                                                continue 
                                                            if uint8(idx) >= mem[_10626]:
                                                                revert with 0, 50
                                                            if uint8(idx) >= mem[_10626]:
                                                                revert with 0, 50
                                                            t = mem[mem[(32 * uint8(idx)) + _10626 + 32] + 12 len 20]
                                                            s = uint8(s) + 1
                                                            continue 
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_10626]:
                                            revert with 0, 50
                                        if mem[mem[(32 * uint8(idx)) + _10626 + 32] + 62 len 2] != 1155:
                                            revert with 0, 'createTrade: unsupported erc type'
                                        if uint8(idx) >= mem[_10626]:
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_10626]:
                                            revert with 0, 50
                                        if mem[mem[mem[(32 * uint8(idx)) + _10626 + 32] + 64]] <= 1:
                                            _14965 = mem[mem[(32 * uint8(idx)) + _10626 + 32]]
                                            if uint8(idx) >= mem[_10626]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10626 + 32] + 64]]:
                                                revert with 0, 50
                                            _15179 = mem[mem[mem[(32 * uint8(idx)) + _10626 + 32] + 64] + 32]
                                            if uint8(idx) >= mem[_10626]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10626 + 32] + 96]]:
                                                revert with 0, 50
                                            _15284 = mem[mem[mem[(32 * uint8(idx)) + _10626 + 32] + 96] + 32]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = address(_10625)
                                            mem[mem[64] + 68] = _15179
                                            mem[mem[64] + 100] = _15284
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(address(_14965))
                                            call address(_14965).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(_10625), _15179, _15284, 160, 0
                                        else:
                                            _14968 = mem[mem[(32 * uint8(idx)) + _10626 + 32]]
                                            if uint8(idx) >= mem[_10626]:
                                                revert with 0, 50
                                            _15097 = mem[mem[(32 * uint8(idx)) + _10626 + 32] + 64]
                                            if uint8(idx) >= mem[_10626]:
                                                revert with 0, 50
                                            _15182 = mem[mem[(32 * uint8(idx)) + _10626 + 32] + 96]
                                            _15183 = mem[64]
                                            mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = address(_10625)
                                            mem[mem[64] + 68] = 160
                                            _15286 = mem[_15097]
                                            mem[mem[64] + 164] = mem[_15097]
                                            s = 0
                                            t = _15097 + 32
                                            u = mem[64] + 196
                                            while s < _15286:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[mem[64] + 100] = (32 * _15286) + 192
                                            _15693 = mem[_15182]
                                            mem[mem[64] + (32 * _15286) + 196] = mem[_15182]
                                            s = 0
                                            t = _15182 + 32
                                            u = mem[64] + (32 * _15286) + 228
                                            while s < _15693:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_15183 + 132] = (32 * _15286) + (32 * _15693) + 224
                                            mem[_15183 + (32 * _15286) + (32 * _15693) + 228] = 0
                                            require ext_code.size(address(_14968))
                                            call address(_14968).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _15183 + (32 * _15286) + (32 * _15693) + -mem[64] + 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                continue 
                        uint8(stor8[arg1].field_928) = 1
                        emit 0xb117ea82: arg1, mem[172 len 20], mem[204 len 20]
    else:
        if block.timestamp >= stor8[arg1].field_1024:
            revert with 0, 'acceptTrade: trade expired'
        if not address(stor8[arg1].field_768):
            mem[192] = msg.sender
            if not sub_270e5326Address:
                if 0 >= mem[_3514]:
                    revert with 0, 50
                if not mem[mem[_3514 + 32] + 12 len 20]:
                    _7111 = mem[96]
                    if 0 >= mem[mem[96]]:
                        revert with 0, 50
                    if not mem[mem[mem[96] + 32] + 12 len 20]:
                        uint8(stor8[arg1].field_928) = 1
                        emit 0xb117ea82: arg1, address(stor8[arg1].field_512), msg.sender
                    else:
                        _10537 = mem[mem[96]]
                        idx = 0
                        while uint8(idx) < _10537:
                            if uint8(idx) >= mem[_7111]:
                                revert with 0, 50
                            if uint8(idx) >= mem[_7111]:
                                revert with 0, 50
                            if 20 == mem[mem[(32 * uint8(idx)) + _7111 + 32] + 62 len 2]:
                                _10852 = mem[mem[(32 * uint8(idx)) + _7111 + 32]]
                                if uint8(idx) >= mem[_7111]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7111 + 32] + 96]]:
                                    revert with 0, 50
                                _11145 = mem[mem[mem[(32 * uint8(idx)) + _7111 + 32] + 96] + 32]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _11145
                                require ext_code.size(address(_10852))
                                call address(_10852).0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _11145
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11805 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11805] == bool(mem[_11805])
                            else:
                                if uint8(idx) >= mem[_7111]:
                                    revert with 0, 50
                                if 777 == mem[mem[(32 * uint8(idx)) + _7111 + 32] + 62 len 2]:
                                    _11150 = mem[mem[(32 * uint8(idx)) + _7111 + 32]]
                                    if uint8(idx) >= mem[_7111]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7111 + 32] + 96]]:
                                        revert with 0, 50
                                    _11473 = mem[mem[mem[(32 * uint8(idx)) + _7111 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11473
                                    require ext_code.size(address(_11150))
                                    call address(_11150).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11473
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12271 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_12271] == bool(mem[_12271])
                                else:
                                    if 721 == mem[mem[(32 * uint8(idx)) + _7111 + 32] + 62 len 2]:
                                        if uint8(idx) < mem[_7111]:
                                            if uint8(var54003) >= mem[mem[mem[(32 * uint8(idx)) + _7111 + 32] + 64]]:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                continue 
                                            if uint8(idx) < mem[_7111]:
                                                if uint8(idx) < mem[_7111]:
                                                    _17280 = mem[mem[(32 * uint8(idx)) + _7111 + 32] + 64]
                                                    _17281 = mem[mem[mem[(32 * uint8(idx)) + _7111 + 32] + 64]]
                                                    t = mem[mem[(32 * uint8(idx)) + _7111 + 32] + 12 len 20]
                                                    s = var58003
                                                    while uint8(s) < _17281:
                                                        _17375 = mem[(32 * uint8(s)) + _17280 + 32]
                                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = this.address
                                                        mem[mem[64] + 36] = msg.sender
                                                        mem[mem[64] + 68] = _17375
                                                        require ext_code.size(t)
                                                        call t.0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args address(this.address), msg.sender, _17375
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if uint8(s) == 255:
                                                            revert with 0, 17
                                                        if uint8(idx) >= mem[_7111]:
                                                            revert with 0, 50
                                                        if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _7111 + 32] + 64]]:
                                                            if uint8(idx) == 255:
                                                                revert with 0, 17
                                                            idx = uint8(idx) + 1
                                                            continue 
                                                        if uint8(idx) >= mem[_7111]:
                                                            revert with 0, 50
                                                        if uint8(idx) >= mem[_7111]:
                                                            revert with 0, 50
                                                        t = mem[mem[(32 * uint8(idx)) + _7111 + 32] + 12 len 20]
                                                        s = uint8(s) + 1
                                                        continue 
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_7111]:
                                        revert with 0, 50
                                    if mem[mem[(32 * uint8(idx)) + _7111 + 32] + 62 len 2] != 1155:
                                        revert with 0, 'createTrade: unsupported erc type'
                                    if uint8(idx) >= mem[_7111]:
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_7111]:
                                        revert with 0, 50
                                    if mem[mem[mem[(32 * uint8(idx)) + _7111 + 32] + 64]] <= 1:
                                        _12263 = mem[mem[(32 * uint8(idx)) + _7111 + 32]]
                                        if uint8(idx) >= mem[_7111]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7111 + 32] + 64]]:
                                            revert with 0, 50
                                        _12783 = mem[mem[mem[(32 * uint8(idx)) + _7111 + 32] + 64] + 32]
                                        if uint8(idx) >= mem[_7111]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7111 + 32] + 96]]:
                                            revert with 0, 50
                                        _13125 = mem[mem[mem[(32 * uint8(idx)) + _7111 + 32] + 96] + 32]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _12783
                                        mem[mem[64] + 100] = _13125
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(address(_12263))
                                        call address(_12263).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _12783, _13125, 160, 0
                                    else:
                                        _12266 = mem[mem[(32 * uint8(idx)) + _7111 + 32]]
                                        if uint8(idx) >= mem[_7111]:
                                            revert with 0, 50
                                        _12559 = mem[mem[(32 * uint8(idx)) + _7111 + 32] + 64]
                                        if uint8(idx) >= mem[_7111]:
                                            revert with 0, 50
                                        _12786 = mem[mem[(32 * uint8(idx)) + _7111 + 32] + 96]
                                        _12787 = mem[64]
                                        mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = 160
                                        _13127 = mem[_12559]
                                        mem[mem[64] + 164] = mem[_12559]
                                        s = 0
                                        t = _12559 + 32
                                        u = mem[64] + 196
                                        while s < _13127:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[mem[64] + 100] = (32 * _13127) + 192
                                        _14111 = mem[_12786]
                                        mem[mem[64] + (32 * _13127) + 196] = mem[_12786]
                                        s = 0
                                        t = _12786 + 32
                                        u = mem[64] + (32 * _13127) + 228
                                        while s < _14111:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_12787 + 132] = (32 * _13127) + (32 * _14111) + 224
                                        mem[_12787 + (32 * _13127) + (32 * _14111) + 228] = 0
                                        require ext_code.size(address(_12266))
                                        call address(_12266).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _12787 + (32 * _13127) + (32 * _14111) + -mem[64] + 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                        uint8(stor8[arg1].field_928) = 1
                        emit 0xb117ea82: arg1, mem[172 len 20], mem[204 len 20]
                else:
                    _10538 = mem[_3514]
                    idx = 0
                    while uint8(idx) < _10538:
                        if uint8(idx) >= mem[_3514]:
                            revert with 0, 50
                        if uint8(idx) >= mem[_3514]:
                            revert with 0, 50
                        if 20 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                            _10855 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                            if uint8(idx) >= mem[_3514]:
                                revert with 0, 50
                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                revert with 0, 50
                            _11153 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor8[arg1].field_512)
                            mem[mem[64] + 68] = _11153
                            require ext_code.size(address(_10855))
                            call address(_10855).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor8[arg1].field_512), _11153
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11815 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11815] == bool(mem[_11815])
                        else:
                            if uint8(idx) >= mem[_3514]:
                                revert with 0, 50
                            if 777 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                _11158 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                    revert with 0, 50
                                _11480 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                mem[mem[64] + 68] = _11480
                                require ext_code.size(address(_11158))
                                call address(_11158).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor8[arg1].field_512), _11480
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12289 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_12289] == bool(mem[_12289])
                            else:
                                if 721 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                    if uint8(idx) < mem[_3514]:
                                        if uint8(var50003) >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) < mem[_3514]:
                                            if uint8(idx) < mem[_3514]:
                                                _17286 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]
                                                _17287 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]
                                                t = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 12 len 20]
                                                s = var54003
                                                while uint8(s) < _17287:
                                                    _17380 = mem[(32 * uint8(s)) + _17286 + 32]
                                                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                                    mem[mem[64] + 68] = _17380
                                                    require ext_code.size(t)
                                                    call t.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(stor8[arg1].field_512), _17380
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if uint8(s) == 255:
                                                        revert with 0, 17
                                                    if uint8(idx) >= mem[_3514]:
                                                        revert with 0, 50
                                                    if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                                        if uint8(idx) == 255:
                                                            revert with 0, 17
                                                        idx = uint8(idx) + 1
                                                        continue 
                                                    if uint8(idx) >= mem[_3514]:
                                                        revert with 0, 50
                                                    if uint8(idx) >= mem[_3514]:
                                                        revert with 0, 50
                                                    t = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 12 len 20]
                                                    s = uint8(s) + 1
                                                    continue 
                                    revert with 0, 50
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2] != 1155:
                                    revert with 0, 'createTrade: unsupported erc type'
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]] <= 1:
                                    _12281 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                        revert with 0, 50
                                    _12795 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64] + 32]
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                        revert with 0, 50
                                    _13135 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                    mem[mem[64] + 68] = _12795
                                    mem[mem[64] + 100] = _13135
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(address(_12281))
                                    call address(_12281).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(stor8[arg1].field_512), _12795, _13135, 160, 0
                                else:
                                    _12284 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    _12571 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    _12798 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]
                                    _12799 = mem[64]
                                    mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                    mem[mem[64] + 68] = 160
                                    _13137 = mem[_12571]
                                    mem[mem[64] + 164] = mem[_12571]
                                    s = 0
                                    t = _12571 + 32
                                    u = mem[64] + 196
                                    while s < _13137:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_12799 + 100] = (32 * _13137) + 192
                                    _14116 = mem[_12798]
                                    mem[_12799 + (32 * _13137) + 196] = mem[_12798]
                                    s = 0
                                    t = _12798 + 32
                                    u = _12799 + (32 * _13137) + 228
                                    while s < _14116:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_12799 + 132] = (32 * _13137) + (32 * _14116) + 224
                                    mem[_12799 + (32 * _13137) + (32 * _14116) + 228] = 0
                                    require ext_code.size(address(_12284))
                                    call address(_12284).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _12799 + (32 * _13137) + (32 * _14116) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        continue 
                    _10634 = mem[192]
                    _10635 = mem[96]
                    if 0 >= mem[mem[96]]:
                        revert with 0, 50
                    if mem[mem[mem[96] + 32] + 12 len 20]:
                        _13846 = mem[mem[96]]
                        idx = 0
                        while uint8(idx) < _13846:
                            if uint8(idx) >= mem[_10635]:
                                revert with 0, 50
                            if uint8(idx) >= mem[_10635]:
                                revert with 0, 50
                            if 20 == mem[mem[(32 * uint8(idx)) + _10635 + 32] + 62 len 2]:
                                _14331 = mem[mem[(32 * uint8(idx)) + _10635 + 32]]
                                if uint8(idx) >= mem[_10635]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10635 + 32] + 96]]:
                                    revert with 0, 50
                                _14509 = mem[mem[mem[(32 * uint8(idx)) + _10635 + 32] + 96] + 32]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(_10634)
                                mem[mem[64] + 68] = _14509
                                require ext_code.size(address(_14331))
                                call address(_14331).0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(_10634), _14509
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14795 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_14795] == bool(mem[_14795])
                            else:
                                if uint8(idx) >= mem[_10635]:
                                    revert with 0, 50
                                if 777 == mem[mem[(32 * uint8(idx)) + _10635 + 32] + 62 len 2]:
                                    _14514 = mem[mem[(32 * uint8(idx)) + _10635 + 32]]
                                    if uint8(idx) >= mem[_10635]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10635 + 32] + 96]]:
                                        revert with 0, 50
                                    _14661 = mem[mem[mem[(32 * uint8(idx)) + _10635 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(_10634)
                                    mem[mem[64] + 68] = _14661
                                    require ext_code.size(address(_14514))
                                    call address(_14514).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), address(_10634), _14661
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _14986 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_14986] == bool(mem[_14986])
                                else:
                                    if 721 == mem[mem[(32 * uint8(idx)) + _10635 + 32] + 62 len 2]:
                                        if uint8(idx) < mem[_10635]:
                                            if uint8(var57003) >= mem[mem[mem[(32 * uint8(idx)) + _10635 + 32] + 64]]:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                continue 
                                            if uint8(idx) < mem[_10635]:
                                                if uint8(idx) < mem[_10635]:
                                                    _17784 = mem[mem[(32 * uint8(idx)) + _10635 + 32] + 64]
                                                    _17785 = mem[mem[mem[(32 * uint8(idx)) + _10635 + 32] + 64]]
                                                    t = mem[mem[(32 * uint8(idx)) + _10635 + 32] + 12 len 20]
                                                    s = var61003
                                                    while uint8(s) < _17785:
                                                        _17813 = mem[(32 * uint8(s)) + _17784 + 32]
                                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = this.address
                                                        mem[mem[64] + 36] = address(_10634)
                                                        mem[mem[64] + 68] = _17813
                                                        require ext_code.size(t)
                                                        call t.0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args address(this.address), address(_10634), _17813
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if uint8(s) == 255:
                                                            revert with 0, 17
                                                        if uint8(idx) >= mem[_10635]:
                                                            revert with 0, 50
                                                        if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _10635 + 32] + 64]]:
                                                            if uint8(idx) == 255:
                                                                revert with 0, 17
                                                            idx = uint8(idx) + 1
                                                            continue 
                                                        if uint8(idx) >= mem[_10635]:
                                                            revert with 0, 50
                                                        if uint8(idx) >= mem[_10635]:
                                                            revert with 0, 50
                                                        t = mem[mem[(32 * uint8(idx)) + _10635 + 32] + 12 len 20]
                                                        s = uint8(s) + 1
                                                        continue 
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_10635]:
                                        revert with 0, 50
                                    if mem[mem[(32 * uint8(idx)) + _10635 + 32] + 62 len 2] != 1155:
                                        revert with 0, 'createTrade: unsupported erc type'
                                    if uint8(idx) >= mem[_10635]:
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_10635]:
                                        revert with 0, 50
                                    if mem[mem[mem[(32 * uint8(idx)) + _10635 + 32] + 64]] <= 1:
                                        _14978 = mem[mem[(32 * uint8(idx)) + _10635 + 32]]
                                        if uint8(idx) >= mem[_10635]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10635 + 32] + 64]]:
                                            revert with 0, 50
                                        _15185 = mem[mem[mem[(32 * uint8(idx)) + _10635 + 32] + 64] + 32]
                                        if uint8(idx) >= mem[_10635]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10635 + 32] + 96]]:
                                            revert with 0, 50
                                        _15287 = mem[mem[mem[(32 * uint8(idx)) + _10635 + 32] + 96] + 32]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(_10634)
                                        mem[mem[64] + 68] = _15185
                                        mem[mem[64] + 100] = _15287
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(address(_14978))
                                        call address(_14978).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), address(_10634), _15185, _15287, 160, 0
                                    else:
                                        _14981 = mem[mem[(32 * uint8(idx)) + _10635 + 32]]
                                        if uint8(idx) >= mem[_10635]:
                                            revert with 0, 50
                                        _15105 = mem[mem[(32 * uint8(idx)) + _10635 + 32] + 64]
                                        if uint8(idx) >= mem[_10635]:
                                            revert with 0, 50
                                        _15188 = mem[mem[(32 * uint8(idx)) + _10635 + 32] + 96]
                                        _15189 = mem[64]
                                        mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(_10634)
                                        mem[mem[64] + 68] = 160
                                        _15289 = mem[_15105]
                                        mem[mem[64] + 164] = mem[_15105]
                                        s = 0
                                        t = _15105 + 32
                                        u = mem[64] + 196
                                        while s < _15289:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[mem[64] + 100] = (32 * _15289) + 192
                                        _15705 = mem[_15188]
                                        mem[mem[64] + (32 * _15289) + 196] = mem[_15188]
                                        s = 0
                                        t = _15188 + 32
                                        u = mem[64] + (32 * _15289) + 228
                                        while s < _15705:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_15189 + 132] = (32 * _15289) + (32 * _15705) + 224
                                        mem[_15189 + (32 * _15289) + (32 * _15705) + 228] = 0
                                        require ext_code.size(address(_14981))
                                        call address(_14981).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _15189 + (32 * _15289) + (32 * _15705) + -mem[64] + 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                    uint8(stor8[arg1].field_928) = 1
                    emit 0xb117ea82: arg1, mem[172 len 20], mem[204 len 20]
            else:
                mem[0] = msg.sender
                mem[32] = 7
                if stor7[msg.sender]:
                    if 0 >= mem[_3514]:
                        revert with 0, 50
                    if not mem[mem[_3514 + 32] + 12 len 20]:
                        _7133 = mem[96]
                        if 0 >= mem[mem[96]]:
                            revert with 0, 50
                        if not mem[mem[mem[96] + 32] + 12 len 20]:
                            uint8(stor8[arg1].field_928) = 1
                            emit 0xb117ea82: arg1, address(stor8[arg1].field_512), msg.sender
                        else:
                            _10539 = mem[mem[96]]
                            idx = 0
                            while uint8(idx) < _10539:
                                if uint8(idx) >= mem[_7133]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[_7133]:
                                    revert with 0, 50
                                if 20 == mem[mem[(32 * uint8(idx)) + _7133 + 32] + 62 len 2]:
                                    _10858 = mem[mem[(32 * uint8(idx)) + _7133 + 32]]
                                    if uint8(idx) >= mem[_7133]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7133 + 32] + 96]]:
                                        revert with 0, 50
                                    _11160 = mem[mem[mem[(32 * uint8(idx)) + _7133 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11160
                                    require ext_code.size(address(_10858))
                                    call address(_10858).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11160
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11822 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_11822] == bool(mem[_11822])
                                else:
                                    if uint8(idx) >= mem[_7133]:
                                        revert with 0, 50
                                    if 777 == mem[mem[(32 * uint8(idx)) + _7133 + 32] + 62 len 2]:
                                        _11165 = mem[mem[(32 * uint8(idx)) + _7133 + 32]]
                                        if uint8(idx) >= mem[_7133]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7133 + 32] + 96]]:
                                            revert with 0, 50
                                        _11486 = mem[mem[mem[(32 * uint8(idx)) + _7133 + 32] + 96] + 32]
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11486
                                        require ext_code.size(address(_11165))
                                        call address(_11165).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11486
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12300 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_12300] == bool(mem[_12300])
                                    else:
                                        if 721 == mem[mem[(32 * uint8(idx)) + _7133 + 32] + 62 len 2]:
                                            if uint8(idx) < mem[_7133]:
                                                if uint8(var55003) >= mem[mem[mem[(32 * uint8(idx)) + _7133 + 32] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) < mem[_7133]:
                                                    if uint8(idx) < mem[_7133]:
                                                        _17289 = mem[mem[(32 * uint8(idx)) + _7133 + 32] + 64]
                                                        _17290 = mem[mem[mem[(32 * uint8(idx)) + _7133 + 32] + 64]]
                                                        t = mem[mem[(32 * uint8(idx)) + _7133 + 32] + 12 len 20]
                                                        s = var59003
                                                        while uint8(s) < _17290:
                                                            _17382 = mem[(32 * uint8(s)) + _17289 + 32]
                                                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = this.address
                                                            mem[mem[64] + 36] = msg.sender
                                                            mem[mem[64] + 68] = _17382
                                                            require ext_code.size(t)
                                                            call t.0x23b872dd with:
                                                                 gas gas_remaining wei
                                                                args address(this.address), msg.sender, _17382
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint8(s) == 255:
                                                                revert with 0, 17
                                                            if uint8(idx) >= mem[_7133]:
                                                                revert with 0, 50
                                                            if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _7133 + 32] + 64]]:
                                                                if uint8(idx) == 255:
                                                                    revert with 0, 17
                                                                idx = uint8(idx) + 1
                                                                continue 
                                                            if uint8(idx) >= mem[_7133]:
                                                                revert with 0, 50
                                                            if uint8(idx) >= mem[_7133]:
                                                                revert with 0, 50
                                                            t = mem[mem[(32 * uint8(idx)) + _7133 + 32] + 12 len 20]
                                                            s = uint8(s) + 1
                                                            continue 
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_7133]:
                                            revert with 0, 50
                                        if mem[mem[(32 * uint8(idx)) + _7133 + 32] + 62 len 2] != 1155:
                                            revert with 0, 'createTrade: unsupported erc type'
                                        if uint8(idx) >= mem[_7133]:
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_7133]:
                                            revert with 0, 50
                                        if mem[mem[mem[(32 * uint8(idx)) + _7133 + 32] + 64]] <= 1:
                                            _12292 = mem[mem[(32 * uint8(idx)) + _7133 + 32]]
                                            if uint8(idx) >= mem[_7133]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7133 + 32] + 64]]:
                                                revert with 0, 50
                                            _12801 = mem[mem[mem[(32 * uint8(idx)) + _7133 + 32] + 64] + 32]
                                            if uint8(idx) >= mem[_7133]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7133 + 32] + 96]]:
                                                revert with 0, 50
                                            _13138 = mem[mem[mem[(32 * uint8(idx)) + _7133 + 32] + 96] + 32]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _12801
                                            mem[mem[64] + 100] = _13138
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(address(_12292))
                                            call address(_12292).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _12801, _13138, 160, 0
                                        else:
                                            _12295 = mem[mem[(32 * uint8(idx)) + _7133 + 32]]
                                            if uint8(idx) >= mem[_7133]:
                                                revert with 0, 50
                                            _12579 = mem[mem[(32 * uint8(idx)) + _7133 + 32] + 64]
                                            if uint8(idx) >= mem[_7133]:
                                                revert with 0, 50
                                            _12804 = mem[mem[(32 * uint8(idx)) + _7133 + 32] + 96]
                                            _12805 = mem[64]
                                            mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = 160
                                            _13140 = mem[_12579]
                                            mem[mem[64] + 164] = mem[_12579]
                                            s = 0
                                            t = _12579 + 32
                                            u = mem[64] + 196
                                            while s < _13140:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[mem[64] + 100] = (32 * _13140) + 192
                                            _14120 = mem[_12804]
                                            mem[mem[64] + (32 * _13140) + 196] = mem[_12804]
                                            s = 0
                                            t = _12804 + 32
                                            u = mem[64] + (32 * _13140) + 228
                                            while s < _14120:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_12805 + 132] = (32 * _13140) + (32 * _14120) + 224
                                            mem[_12805 + (32 * _13140) + (32 * _14120) + 228] = 0
                                            require ext_code.size(address(_12295))
                                            call address(_12295).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _12805 + (32 * _13140) + (32 * _14120) + -mem[64] + 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                continue 
                            uint8(stor8[arg1].field_928) = 1
                            emit 0xb117ea82: arg1, mem[172 len 20], mem[204 len 20]
                    else:
                        _10540 = mem[_3514]
                        idx = 0
                        while uint8(idx) < _10540:
                            if uint8(idx) >= mem[_3514]:
                                revert with 0, 50
                            if uint8(idx) >= mem[_3514]:
                                revert with 0, 50
                            if 20 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                _10861 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                    revert with 0, 50
                                _11168 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                mem[mem[64] + 68] = _11168
                                require ext_code.size(address(_10861))
                                call address(_10861).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor8[arg1].field_512), _11168
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11832 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11832] == bool(mem[_11832])
                            else:
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if 777 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                    _11173 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                        revert with 0, 50
                                    _11493 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                    mem[mem[64] + 68] = _11493
                                    require ext_code.size(address(_11173))
                                    call address(_11173).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(stor8[arg1].field_512), _11493
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12318 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_12318] == bool(mem[_12318])
                                else:
                                    if 721 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                        if uint8(idx) < mem[_3514]:
                                            if uint8(var51003) >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                continue 
                                            if uint8(idx) < mem[_3514]:
                                                if uint8(idx) < mem[_3514]:
                                                    _17295 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]
                                                    _17296 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]
                                                    t = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 12 len 20]
                                                    s = var55003
                                                    while uint8(s) < _17296:
                                                        _17387 = mem[(32 * uint8(s)) + _17295 + 32]
                                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                                        mem[mem[64] + 68] = _17387
                                                        require ext_code.size(t)
                                                        call t.0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(stor8[arg1].field_512), _17387
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if uint8(s) == 255:
                                                            revert with 0, 17
                                                        if uint8(idx) >= mem[_3514]:
                                                            revert with 0, 50
                                                        if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                                            if uint8(idx) == 255:
                                                                revert with 0, 17
                                                            idx = uint8(idx) + 1
                                                            continue 
                                                        if uint8(idx) >= mem[_3514]:
                                                            revert with 0, 50
                                                        if uint8(idx) >= mem[_3514]:
                                                            revert with 0, 50
                                                        t = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 12 len 20]
                                                        s = uint8(s) + 1
                                                        continue 
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2] != 1155:
                                        revert with 0, 'createTrade: unsupported erc type'
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]] <= 1:
                                        _12310 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                            revert with 0, 50
                                        _12813 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64] + 32]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                            revert with 0, 50
                                        _13148 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                        mem[mem[64] + 68] = _12813
                                        mem[mem[64] + 100] = _13148
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(address(_12310))
                                        call address(_12310).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(stor8[arg1].field_512), _12813, _13148, 160, 0
                                    else:
                                        _12313 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        _12591 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        _12816 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]
                                        _12817 = mem[64]
                                        mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                        mem[mem[64] + 68] = 160
                                        _13150 = mem[_12591]
                                        mem[mem[64] + 164] = mem[_12591]
                                        s = 0
                                        t = _12591 + 32
                                        u = mem[64] + 196
                                        while s < _13150:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_12817 + 100] = (32 * _13150) + 192
                                        _14125 = mem[_12816]
                                        mem[_12817 + (32 * _13150) + 196] = mem[_12816]
                                        s = 0
                                        t = _12816 + 32
                                        u = _12817 + (32 * _13150) + 228
                                        while s < _14125:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_12817 + 132] = (32 * _13150) + (32 * _14125) + 224
                                        mem[_12817 + (32 * _13150) + (32 * _14125) + 228] = 0
                                        require ext_code.size(address(_12313))
                                        call address(_12313).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _12817 + (32 * _13150) + (32 * _14125) + -mem[64] + 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                        _10643 = mem[192]
                        _10644 = mem[96]
                        if 0 >= mem[mem[96]]:
                            revert with 0, 50
                        if mem[mem[mem[96] + 32] + 12 len 20]:
                            _13849 = mem[mem[96]]
                            idx = 0
                            while uint8(idx) < _13849:
                                if uint8(idx) >= mem[_10644]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[_10644]:
                                    revert with 0, 50
                                if 20 == mem[mem[(32 * uint8(idx)) + _10644 + 32] + 62 len 2]:
                                    _14340 = mem[mem[(32 * uint8(idx)) + _10644 + 32]]
                                    if uint8(idx) >= mem[_10644]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10644 + 32] + 96]]:
                                        revert with 0, 50
                                    _14520 = mem[mem[mem[(32 * uint8(idx)) + _10644 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(_10643)
                                    mem[mem[64] + 68] = _14520
                                    require ext_code.size(address(_14340))
                                    call address(_14340).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), address(_10643), _14520
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _14802 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_14802] == bool(mem[_14802])
                                else:
                                    if uint8(idx) >= mem[_10644]:
                                        revert with 0, 50
                                    if 777 == mem[mem[(32 * uint8(idx)) + _10644 + 32] + 62 len 2]:
                                        _14525 = mem[mem[(32 * uint8(idx)) + _10644 + 32]]
                                        if uint8(idx) >= mem[_10644]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10644 + 32] + 96]]:
                                            revert with 0, 50
                                        _14667 = mem[mem[mem[(32 * uint8(idx)) + _10644 + 32] + 96] + 32]
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(_10643)
                                        mem[mem[64] + 68] = _14667
                                        require ext_code.size(address(_14525))
                                        call address(_14525).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), address(_10643), _14667
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _14999 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_14999] == bool(mem[_14999])
                                    else:
                                        if 721 == mem[mem[(32 * uint8(idx)) + _10644 + 32] + 62 len 2]:
                                            if uint8(idx) < mem[_10644]:
                                                if uint8(var58003) >= mem[mem[mem[(32 * uint8(idx)) + _10644 + 32] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) < mem[_10644]:
                                                    if uint8(idx) < mem[_10644]:
                                                        _17787 = mem[mem[(32 * uint8(idx)) + _10644 + 32] + 64]
                                                        _17788 = mem[mem[mem[(32 * uint8(idx)) + _10644 + 32] + 64]]
                                                        t = mem[mem[(32 * uint8(idx)) + _10644 + 32] + 12 len 20]
                                                        s = var62003
                                                        while uint8(s) < _17788:
                                                            _17815 = mem[(32 * uint8(s)) + _17787 + 32]
                                                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = this.address
                                                            mem[mem[64] + 36] = address(_10643)
                                                            mem[mem[64] + 68] = _17815
                                                            require ext_code.size(t)
                                                            call t.0x23b872dd with:
                                                                 gas gas_remaining wei
                                                                args address(this.address), address(_10643), _17815
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint8(s) == 255:
                                                                revert with 0, 17
                                                            if uint8(idx) >= mem[_10644]:
                                                                revert with 0, 50
                                                            if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _10644 + 32] + 64]]:
                                                                if uint8(idx) == 255:
                                                                    revert with 0, 17
                                                                idx = uint8(idx) + 1
                                                                continue 
                                                            if uint8(idx) >= mem[_10644]:
                                                                revert with 0, 50
                                                            if uint8(idx) >= mem[_10644]:
                                                                revert with 0, 50
                                                            t = mem[mem[(32 * uint8(idx)) + _10644 + 32] + 12 len 20]
                                                            s = uint8(s) + 1
                                                            continue 
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_10644]:
                                            revert with 0, 50
                                        if mem[mem[(32 * uint8(idx)) + _10644 + 32] + 62 len 2] != 1155:
                                            revert with 0, 'createTrade: unsupported erc type'
                                        if uint8(idx) >= mem[_10644]:
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_10644]:
                                            revert with 0, 50
                                        if mem[mem[mem[(32 * uint8(idx)) + _10644 + 32] + 64]] <= 1:
                                            _14991 = mem[mem[(32 * uint8(idx)) + _10644 + 32]]
                                            if uint8(idx) >= mem[_10644]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10644 + 32] + 64]]:
                                                revert with 0, 50
                                            _15191 = mem[mem[mem[(32 * uint8(idx)) + _10644 + 32] + 64] + 32]
                                            if uint8(idx) >= mem[_10644]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10644 + 32] + 96]]:
                                                revert with 0, 50
                                            _15290 = mem[mem[mem[(32 * uint8(idx)) + _10644 + 32] + 96] + 32]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = address(_10643)
                                            mem[mem[64] + 68] = _15191
                                            mem[mem[64] + 100] = _15290
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(address(_14991))
                                            call address(_14991).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(_10643), _15191, _15290, 160, 0
                                        else:
                                            _14994 = mem[mem[(32 * uint8(idx)) + _10644 + 32]]
                                            if uint8(idx) >= mem[_10644]:
                                                revert with 0, 50
                                            _15113 = mem[mem[(32 * uint8(idx)) + _10644 + 32] + 64]
                                            if uint8(idx) >= mem[_10644]:
                                                revert with 0, 50
                                            _15194 = mem[mem[(32 * uint8(idx)) + _10644 + 32] + 96]
                                            _15195 = mem[64]
                                            mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = address(_10643)
                                            mem[mem[64] + 68] = 160
                                            _15292 = mem[_15113]
                                            mem[mem[64] + 164] = mem[_15113]
                                            s = 0
                                            t = _15113 + 32
                                            u = mem[64] + 196
                                            while s < _15292:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[mem[64] + 100] = (32 * _15292) + 192
                                            _15717 = mem[_15194]
                                            mem[mem[64] + (32 * _15292) + 196] = mem[_15194]
                                            s = 0
                                            t = _15194 + 32
                                            u = mem[64] + (32 * _15292) + 228
                                            while s < _15717:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_15195 + 132] = (32 * _15292) + (32 * _15717) + 224
                                            mem[_15195 + (32 * _15292) + (32 * _15717) + 228] = 0
                                            require ext_code.size(address(_14994))
                                            call address(_14994).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _15195 + (32 * _15292) + (32 * _15717) + -mem[64] + 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                continue 
                        uint8(stor8[arg1].field_928) = 1
                        emit 0xb117ea82: arg1, mem[172 len 20], mem[204 len 20]
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor5
                    mem[mem[64] + 68] = serviceFee
                    require ext_code.size(sub_270e5326Address)
                    call sub_270e5326Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor5, serviceFee
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7135 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7135] == bool(mem[_7135])
                    if 0 >= mem[_3514]:
                        revert with 0, 50
                    if not mem[mem[_3514 + 32] + 12 len 20]:
                        _7743 = mem[96]
                        if 0 >= mem[mem[96]]:
                            revert with 0, 50
                        if not mem[mem[mem[96] + 32] + 12 len 20]:
                            uint8(stor8[arg1].field_928) = 1
                            emit 0xb117ea82: arg1, address(stor8[arg1].field_512), msg.sender
                        else:
                            _10541 = mem[mem[96]]
                            idx = 0
                            while uint8(idx) < _10541:
                                if uint8(idx) >= mem[_7743]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[_7743]:
                                    revert with 0, 50
                                if 20 == mem[mem[(32 * uint8(idx)) + _7743 + 32] + 62 len 2]:
                                    _10864 = mem[mem[(32 * uint8(idx)) + _7743 + 32]]
                                    if uint8(idx) >= mem[_7743]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7743 + 32] + 96]]:
                                        revert with 0, 50
                                    _11175 = mem[mem[mem[(32 * uint8(idx)) + _7743 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _11175
                                    require ext_code.size(address(_10864))
                                    call address(_10864).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _11175
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11839 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_11839] == bool(mem[_11839])
                                else:
                                    if uint8(idx) >= mem[_7743]:
                                        revert with 0, 50
                                    if 777 == mem[mem[(32 * uint8(idx)) + _7743 + 32] + 62 len 2]:
                                        _11180 = mem[mem[(32 * uint8(idx)) + _7743 + 32]]
                                        if uint8(idx) >= mem[_7743]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7743 + 32] + 96]]:
                                            revert with 0, 50
                                        _11499 = mem[mem[mem[(32 * uint8(idx)) + _7743 + 32] + 96] + 32]
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _11499
                                        require ext_code.size(address(_11180))
                                        call address(_11180).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _11499
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12329 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_12329] == bool(mem[_12329])
                                    else:
                                        if 721 == mem[mem[(32 * uint8(idx)) + _7743 + 32] + 62 len 2]:
                                            if uint8(idx) < mem[_7743]:
                                                if uint8(var64003) >= mem[mem[mem[(32 * uint8(idx)) + _7743 + 32] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) < mem[_7743]:
                                                    if uint8(idx) < mem[_7743]:
                                                        _17298 = mem[mem[(32 * uint8(idx)) + _7743 + 32] + 64]
                                                        _17299 = mem[mem[mem[(32 * uint8(idx)) + _7743 + 32] + 64]]
                                                        t = mem[mem[(32 * uint8(idx)) + _7743 + 32] + 12 len 20]
                                                        s = var68003
                                                        while uint8(s) < _17299:
                                                            _17389 = mem[(32 * uint8(s)) + _17298 + 32]
                                                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = this.address
                                                            mem[mem[64] + 36] = msg.sender
                                                            mem[mem[64] + 68] = _17389
                                                            require ext_code.size(t)
                                                            call t.0x23b872dd with:
                                                                 gas gas_remaining wei
                                                                args address(this.address), msg.sender, _17389
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint8(s) == 255:
                                                                revert with 0, 17
                                                            if uint8(idx) >= mem[_7743]:
                                                                revert with 0, 50
                                                            if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _7743 + 32] + 64]]:
                                                                if uint8(idx) == 255:
                                                                    revert with 0, 17
                                                                idx = uint8(idx) + 1
                                                                continue 
                                                            if uint8(idx) >= mem[_7743]:
                                                                revert with 0, 50
                                                            if uint8(idx) >= mem[_7743]:
                                                                revert with 0, 50
                                                            t = mem[mem[(32 * uint8(idx)) + _7743 + 32] + 12 len 20]
                                                            s = uint8(s) + 1
                                                            continue 
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_7743]:
                                            revert with 0, 50
                                        if mem[mem[(32 * uint8(idx)) + _7743 + 32] + 62 len 2] != 1155:
                                            revert with 0, 'createTrade: unsupported erc type'
                                        if uint8(idx) >= mem[_7743]:
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_7743]:
                                            revert with 0, 50
                                        if mem[mem[mem[(32 * uint8(idx)) + _7743 + 32] + 64]] <= 1:
                                            _12321 = mem[mem[(32 * uint8(idx)) + _7743 + 32]]
                                            if uint8(idx) >= mem[_7743]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7743 + 32] + 64]]:
                                                revert with 0, 50
                                            _12819 = mem[mem[mem[(32 * uint8(idx)) + _7743 + 32] + 64] + 32]
                                            if uint8(idx) >= mem[_7743]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7743 + 32] + 96]]:
                                                revert with 0, 50
                                            _13151 = mem[mem[mem[(32 * uint8(idx)) + _7743 + 32] + 96] + 32]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _12819
                                            mem[mem[64] + 100] = _13151
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(address(_12321))
                                            call address(_12321).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), msg.sender, _12819, _13151, 160, 0
                                        else:
                                            _12324 = mem[mem[(32 * uint8(idx)) + _7743 + 32]]
                                            if uint8(idx) >= mem[_7743]:
                                                revert with 0, 50
                                            _12599 = mem[mem[(32 * uint8(idx)) + _7743 + 32] + 64]
                                            if uint8(idx) >= mem[_7743]:
                                                revert with 0, 50
                                            _12822 = mem[mem[(32 * uint8(idx)) + _7743 + 32] + 96]
                                            _12823 = mem[64]
                                            mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = 160
                                            _13153 = mem[_12599]
                                            mem[mem[64] + 164] = mem[_12599]
                                            s = 0
                                            t = _12599 + 32
                                            u = mem[64] + 196
                                            while s < _13153:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_12823 + 100] = (32 * _13153) + 192
                                            _14129 = mem[_12822]
                                            mem[_12823 + (32 * _13153) + 196] = mem[_12822]
                                            s = 0
                                            t = _12822 + 32
                                            u = _12823 + (32 * _13153) + 228
                                            while s < _14129:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_12823 + 132] = (32 * _13153) + (32 * _14129) + 224
                                            mem[_12823 + (32 * _13153) + (32 * _14129) + 228] = 0
                                            require ext_code.size(address(_12324))
                                            call address(_12324).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _12823 + (32 * _13153) + (32 * _14129) + -mem[64] + 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                continue 
                            uint8(stor8[arg1].field_928) = 1
                            emit 0xb117ea82: arg1, mem[172 len 20], mem[204 len 20]
                    else:
                        _10542 = mem[_3514]
                        idx = 0
                        while uint8(idx) < _10542:
                            if uint8(idx) >= mem[_3514]:
                                revert with 0, 50
                            if uint8(idx) >= mem[_3514]:
                                revert with 0, 50
                            if 20 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                _10867 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                    revert with 0, 50
                                _11183 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                mem[mem[64] + 68] = _11183
                                require ext_code.size(address(_10867))
                                call address(_10867).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor8[arg1].field_512), _11183
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11849 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11849] == bool(mem[_11849])
                            else:
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if 777 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                    _11188 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                        revert with 0, 50
                                    _11506 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                    mem[mem[64] + 68] = _11506
                                    require ext_code.size(address(_11188))
                                    call address(_11188).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(stor8[arg1].field_512), _11506
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12347 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_12347] == bool(mem[_12347])
                                else:
                                    if 721 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                        if uint8(idx) < mem[_3514]:
                                            if uint8(var60003) >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                continue 
                                            if uint8(idx) < mem[_3514]:
                                                if uint8(idx) < mem[_3514]:
                                                    _17304 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]
                                                    _17305 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]
                                                    t = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 12 len 20]
                                                    s = var64003
                                                    while uint8(s) < _17305:
                                                        _17394 = mem[(32 * uint8(s)) + _17304 + 32]
                                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                                        mem[mem[64] + 68] = _17394
                                                        require ext_code.size(t)
                                                        call t.0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(stor8[arg1].field_512), _17394
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if uint8(s) == 255:
                                                            revert with 0, 17
                                                        if uint8(idx) >= mem[_3514]:
                                                            revert with 0, 50
                                                        if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                                            if uint8(idx) == 255:
                                                                revert with 0, 17
                                                            idx = uint8(idx) + 1
                                                            continue 
                                                        if uint8(idx) >= mem[_3514]:
                                                            revert with 0, 50
                                                        if uint8(idx) >= mem[_3514]:
                                                            revert with 0, 50
                                                        t = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 12 len 20]
                                                        s = uint8(s) + 1
                                                        continue 
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2] != 1155:
                                        revert with 0, 'createTrade: unsupported erc type'
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]] <= 1:
                                        _12339 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                            revert with 0, 50
                                        _12831 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64] + 32]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                            revert with 0, 50
                                        _13161 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                        mem[mem[64] + 68] = _12831
                                        mem[mem[64] + 100] = _13161
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(address(_12339))
                                        call address(_12339).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(stor8[arg1].field_512), _12831, _13161, 160, 0
                                    else:
                                        _12342 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        _12611 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        _12834 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]
                                        _12835 = mem[64]
                                        mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                        mem[mem[64] + 68] = 160
                                        _13163 = mem[_12611]
                                        mem[mem[64] + 164] = mem[_12611]
                                        s = 0
                                        t = _12611 + 32
                                        u = mem[64] + 196
                                        while s < _13163:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_12835 + 100] = (32 * _13163) + 192
                                        _14134 = mem[_12834]
                                        mem[_12835 + (32 * _13163) + 196] = mem[_12834]
                                        s = 0
                                        t = _12834 + 32
                                        u = _12835 + (32 * _13163) + 228
                                        while s < _14134:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_12835 + 132] = (32 * _13163) + (32 * _14134) + 224
                                        mem[_12835 + (32 * _13163) + (32 * _14134) + 228] = 0
                                        require ext_code.size(address(_12342))
                                        call address(_12342).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _12835 + (32 * _13163) + (32 * _14134) + -mem[64] + 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                        _10652 = mem[192]
                        _10653 = mem[96]
                        if 0 >= mem[mem[96]]:
                            revert with 0, 50
                        if mem[mem[mem[96] + 32] + 12 len 20]:
                            _13852 = mem[mem[96]]
                            idx = 0
                            while uint8(idx) < _13852:
                                if uint8(idx) >= mem[_10653]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[_10653]:
                                    revert with 0, 50
                                if 20 == mem[mem[(32 * uint8(idx)) + _10653 + 32] + 62 len 2]:
                                    _14349 = mem[mem[(32 * uint8(idx)) + _10653 + 32]]
                                    if uint8(idx) >= mem[_10653]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10653 + 32] + 96]]:
                                        revert with 0, 50
                                    _14531 = mem[mem[mem[(32 * uint8(idx)) + _10653 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(_10652)
                                    mem[mem[64] + 68] = _14531
                                    require ext_code.size(address(_14349))
                                    call address(_14349).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), address(_10652), _14531
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _14809 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_14809] == bool(mem[_14809])
                                else:
                                    if uint8(idx) >= mem[_10653]:
                                        revert with 0, 50
                                    if 777 == mem[mem[(32 * uint8(idx)) + _10653 + 32] + 62 len 2]:
                                        _14536 = mem[mem[(32 * uint8(idx)) + _10653 + 32]]
                                        if uint8(idx) >= mem[_10653]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10653 + 32] + 96]]:
                                            revert with 0, 50
                                        _14673 = mem[mem[mem[(32 * uint8(idx)) + _10653 + 32] + 96] + 32]
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(_10652)
                                        mem[mem[64] + 68] = _14673
                                        require ext_code.size(address(_14536))
                                        call address(_14536).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), address(_10652), _14673
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _15012 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_15012] == bool(mem[_15012])
                                    else:
                                        if 721 == mem[mem[(32 * uint8(idx)) + _10653 + 32] + 62 len 2]:
                                            if uint8(idx) < mem[_10653]:
                                                if uint8(var67003) >= mem[mem[mem[(32 * uint8(idx)) + _10653 + 32] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) < mem[_10653]:
                                                    if uint8(idx) < mem[_10653]:
                                                        _17790 = mem[mem[(32 * uint8(idx)) + _10653 + 32] + 64]
                                                        _17791 = mem[mem[mem[(32 * uint8(idx)) + _10653 + 32] + 64]]
                                                        t = mem[mem[(32 * uint8(idx)) + _10653 + 32] + 12 len 20]
                                                        s = var71003
                                                        while uint8(s) < _17791:
                                                            _17817 = mem[(32 * uint8(s)) + _17790 + 32]
                                                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = this.address
                                                            mem[mem[64] + 36] = address(_10652)
                                                            mem[mem[64] + 68] = _17817
                                                            require ext_code.size(t)
                                                            call t.0x23b872dd with:
                                                                 gas gas_remaining wei
                                                                args address(this.address), address(_10652), _17817
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint8(s) == 255:
                                                                revert with 0, 17
                                                            if uint8(idx) >= mem[_10653]:
                                                                revert with 0, 50
                                                            if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _10653 + 32] + 64]]:
                                                                if uint8(idx) == 255:
                                                                    revert with 0, 17
                                                                idx = uint8(idx) + 1
                                                                continue 
                                                            if uint8(idx) >= mem[_10653]:
                                                                revert with 0, 50
                                                            if uint8(idx) >= mem[_10653]:
                                                                revert with 0, 50
                                                            t = mem[mem[(32 * uint8(idx)) + _10653 + 32] + 12 len 20]
                                                            s = uint8(s) + 1
                                                            continue 
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_10653]:
                                            revert with 0, 50
                                        if mem[mem[(32 * uint8(idx)) + _10653 + 32] + 62 len 2] != 1155:
                                            revert with 0, 'createTrade: unsupported erc type'
                                        if uint8(idx) >= mem[_10653]:
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_10653]:
                                            revert with 0, 50
                                        if mem[mem[mem[(32 * uint8(idx)) + _10653 + 32] + 64]] <= 1:
                                            _15004 = mem[mem[(32 * uint8(idx)) + _10653 + 32]]
                                            if uint8(idx) >= mem[_10653]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10653 + 32] + 64]]:
                                                revert with 0, 50
                                            _15197 = mem[mem[mem[(32 * uint8(idx)) + _10653 + 32] + 64] + 32]
                                            if uint8(idx) >= mem[_10653]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10653 + 32] + 96]]:
                                                revert with 0, 50
                                            _15293 = mem[mem[mem[(32 * uint8(idx)) + _10653 + 32] + 96] + 32]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = address(_10652)
                                            mem[mem[64] + 68] = _15197
                                            mem[mem[64] + 100] = _15293
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(address(_15004))
                                            call address(_15004).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(_10652), _15197, _15293, 160, 0
                                        else:
                                            _15007 = mem[mem[(32 * uint8(idx)) + _10653 + 32]]
                                            if uint8(idx) >= mem[_10653]:
                                                revert with 0, 50
                                            _15121 = mem[mem[(32 * uint8(idx)) + _10653 + 32] + 64]
                                            if uint8(idx) >= mem[_10653]:
                                                revert with 0, 50
                                            _15200 = mem[mem[(32 * uint8(idx)) + _10653 + 32] + 96]
                                            _15201 = mem[64]
                                            mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = address(_10652)
                                            mem[mem[64] + 68] = 160
                                            _15295 = mem[_15121]
                                            mem[mem[64] + 164] = mem[_15121]
                                            s = 0
                                            t = _15121 + 32
                                            u = mem[64] + 196
                                            while s < _15295:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[mem[64] + 100] = (32 * _15295) + 192
                                            _15729 = mem[_15200]
                                            mem[mem[64] + (32 * _15295) + 196] = mem[_15200]
                                            s = 0
                                            t = _15200 + 32
                                            u = mem[64] + (32 * _15295) + 228
                                            while s < _15729:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_15201 + 132] = (32 * _15295) + (32 * _15729) + 224
                                            mem[_15201 + (32 * _15295) + (32 * _15729) + 228] = 0
                                            require ext_code.size(address(_15007))
                                            call address(_15007).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _15201 + (32 * _15295) + (32 * _15729) + -mem[64] + 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                continue 
                        uint8(stor8[arg1].field_928) = 1
                        emit 0xb117ea82: arg1, mem[172 len 20], mem[204 len 20]
        else:
            if address(stor8[arg1].field_768) != msg.sender:
                revert with 0, 'acceptTrade: not private trade recipient'
            if not sub_270e5326Address:
                if 0 >= mem[_3514]:
                    revert with 0, 50
                if not mem[mem[_3514 + 32] + 12 len 20]:
                    _7137 = mem[96]
                    if 0 >= mem[mem[96]]:
                        revert with 0, 50
                    if not mem[mem[mem[96] + 32] + 12 len 20]:
                        uint8(stor8[arg1].field_928) = 1
                        emit 0xb117ea82: arg1, address(stor8[arg1].field_512), address(stor8[arg1].field_768)
                    else:
                        _10543 = mem[mem[96]]
                        idx = 0
                        while uint8(idx) < _10543:
                            if uint8(idx) >= mem[_7137]:
                                revert with 0, 50
                            if uint8(idx) >= mem[_7137]:
                                revert with 0, 50
                            if 20 == mem[mem[(32 * uint8(idx)) + _7137 + 32] + 62 len 2]:
                                _10870 = mem[mem[(32 * uint8(idx)) + _7137 + 32]]
                                if uint8(idx) >= mem[_7137]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7137 + 32] + 96]]:
                                    revert with 0, 50
                                _11190 = mem[mem[mem[(32 * uint8(idx)) + _7137 + 32] + 96] + 32]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                mem[mem[64] + 68] = _11190
                                require ext_code.size(address(_10870))
                                call address(_10870).0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(stor8[arg1].field_768), _11190
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11856 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11856] == bool(mem[_11856])
                            else:
                                if uint8(idx) >= mem[_7137]:
                                    revert with 0, 50
                                if 777 == mem[mem[(32 * uint8(idx)) + _7137 + 32] + 62 len 2]:
                                    _11195 = mem[mem[(32 * uint8(idx)) + _7137 + 32]]
                                    if uint8(idx) >= mem[_7137]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7137 + 32] + 96]]:
                                        revert with 0, 50
                                    _11512 = mem[mem[mem[(32 * uint8(idx)) + _7137 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                    mem[mem[64] + 68] = _11512
                                    require ext_code.size(address(_11195))
                                    call address(_11195).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), address(stor8[arg1].field_768), _11512
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12358 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_12358] == bool(mem[_12358])
                                else:
                                    if 721 == mem[mem[(32 * uint8(idx)) + _7137 + 32] + 62 len 2]:
                                        if uint8(idx) < mem[_7137]:
                                            if uint8(var55003) >= mem[mem[mem[(32 * uint8(idx)) + _7137 + 32] + 64]]:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                continue 
                                            if uint8(idx) < mem[_7137]:
                                                if uint8(idx) < mem[_7137]:
                                                    _17307 = mem[mem[(32 * uint8(idx)) + _7137 + 32] + 64]
                                                    _17308 = mem[mem[mem[(32 * uint8(idx)) + _7137 + 32] + 64]]
                                                    t = mem[mem[(32 * uint8(idx)) + _7137 + 32] + 12 len 20]
                                                    s = var59003
                                                    while uint8(s) < _17308:
                                                        _17396 = mem[(32 * uint8(s)) + _17307 + 32]
                                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = this.address
                                                        mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                                        mem[mem[64] + 68] = _17396
                                                        require ext_code.size(t)
                                                        call t.0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args address(this.address), address(stor8[arg1].field_768), _17396
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if uint8(s) == 255:
                                                            revert with 0, 17
                                                        if uint8(idx) >= mem[_7137]:
                                                            revert with 0, 50
                                                        if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _7137 + 32] + 64]]:
                                                            if uint8(idx) == 255:
                                                                revert with 0, 17
                                                            idx = uint8(idx) + 1
                                                            continue 
                                                        if uint8(idx) >= mem[_7137]:
                                                            revert with 0, 50
                                                        if uint8(idx) >= mem[_7137]:
                                                            revert with 0, 50
                                                        t = mem[mem[(32 * uint8(idx)) + _7137 + 32] + 12 len 20]
                                                        s = uint8(s) + 1
                                                        continue 
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_7137]:
                                        revert with 0, 50
                                    if mem[mem[(32 * uint8(idx)) + _7137 + 32] + 62 len 2] != 1155:
                                        revert with 0, 'createTrade: unsupported erc type'
                                    if uint8(idx) >= mem[_7137]:
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_7137]:
                                        revert with 0, 50
                                    if mem[mem[mem[(32 * uint8(idx)) + _7137 + 32] + 64]] <= 1:
                                        _12350 = mem[mem[(32 * uint8(idx)) + _7137 + 32]]
                                        if uint8(idx) >= mem[_7137]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7137 + 32] + 64]]:
                                            revert with 0, 50
                                        _12837 = mem[mem[mem[(32 * uint8(idx)) + _7137 + 32] + 64] + 32]
                                        if uint8(idx) >= mem[_7137]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7137 + 32] + 96]]:
                                            revert with 0, 50
                                        _13164 = mem[mem[mem[(32 * uint8(idx)) + _7137 + 32] + 96] + 32]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                        mem[mem[64] + 68] = _12837
                                        mem[mem[64] + 100] = _13164
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(address(_12350))
                                        call address(_12350).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), address(stor8[arg1].field_768), _12837, _13164, 160, 0
                                    else:
                                        _12353 = mem[mem[(32 * uint8(idx)) + _7137 + 32]]
                                        if uint8(idx) >= mem[_7137]:
                                            revert with 0, 50
                                        _12619 = mem[mem[(32 * uint8(idx)) + _7137 + 32] + 64]
                                        if uint8(idx) >= mem[_7137]:
                                            revert with 0, 50
                                        _12840 = mem[mem[(32 * uint8(idx)) + _7137 + 32] + 96]
                                        _12841 = mem[64]
                                        mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                        mem[mem[64] + 68] = 160
                                        _13166 = mem[_12619]
                                        mem[mem[64] + 164] = mem[_12619]
                                        s = 0
                                        t = _12619 + 32
                                        u = mem[64] + 196
                                        while s < _13166:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_12841 + 100] = (32 * _13166) + 192
                                        _14138 = mem[_12840]
                                        mem[_12841 + (32 * _13166) + 196] = mem[_12840]
                                        s = 0
                                        t = _12840 + 32
                                        u = _12841 + (32 * _13166) + 228
                                        while s < _14138:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_12841 + 132] = (32 * _13166) + (32 * _14138) + 224
                                        mem[_12841 + (32 * _13166) + (32 * _14138) + 228] = 0
                                        require ext_code.size(address(_12353))
                                        call address(_12353).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _12841 + (32 * _13166) + (32 * _14138) + -mem[64] + 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                        uint8(stor8[arg1].field_928) = 1
                        emit 0xb117ea82: arg1, mem[172 len 20], mem[204 len 20]
                else:
                    _10544 = mem[_3514]
                    idx = 0
                    while uint8(idx) < _10544:
                        if uint8(idx) >= mem[_3514]:
                            revert with 0, 50
                        if uint8(idx) >= mem[_3514]:
                            revert with 0, 50
                        if 20 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                            _10873 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                            if uint8(idx) >= mem[_3514]:
                                revert with 0, 50
                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                revert with 0, 50
                            _11198 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = address(stor8[arg1].field_512)
                            mem[mem[64] + 68] = _11198
                            require ext_code.size(address(_10873))
                            call address(_10873).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(stor8[arg1].field_512), _11198
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11866 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11866] == bool(mem[_11866])
                        else:
                            if uint8(idx) >= mem[_3514]:
                                revert with 0, 50
                            if 777 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                _11203 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                    revert with 0, 50
                                _11519 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                mem[mem[64] + 68] = _11519
                                require ext_code.size(address(_11203))
                                call address(_11203).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor8[arg1].field_512), _11519
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12376 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_12376] == bool(mem[_12376])
                            else:
                                if 721 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                    if uint8(idx) < mem[_3514]:
                                        if uint8(var51003) >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                            if uint8(idx) == 255:
                                                revert with 0, 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) < mem[_3514]:
                                            if uint8(idx) < mem[_3514]:
                                                _17313 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]
                                                _17314 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]
                                                t = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 12 len 20]
                                                s = var55003
                                                while uint8(s) < _17314:
                                                    _17401 = mem[(32 * uint8(s)) + _17313 + 32]
                                                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                                    mem[mem[64] + 68] = _17401
                                                    require ext_code.size(t)
                                                    call t.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(stor8[arg1].field_512), _17401
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if uint8(s) == 255:
                                                        revert with 0, 17
                                                    if uint8(idx) >= mem[_3514]:
                                                        revert with 0, 50
                                                    if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                                        if uint8(idx) == 255:
                                                            revert with 0, 17
                                                        idx = uint8(idx) + 1
                                                        continue 
                                                    if uint8(idx) >= mem[_3514]:
                                                        revert with 0, 50
                                                    if uint8(idx) >= mem[_3514]:
                                                        revert with 0, 50
                                                    t = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 12 len 20]
                                                    s = uint8(s) + 1
                                                    continue 
                                    revert with 0, 50
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2] != 1155:
                                    revert with 0, 'createTrade: unsupported erc type'
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]] <= 1:
                                    _12368 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                        revert with 0, 50
                                    _12849 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64] + 32]
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                        revert with 0, 50
                                    _13174 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                    mem[mem[64] + 68] = _12849
                                    mem[mem[64] + 100] = _13174
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(address(_12368))
                                    call address(_12368).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(stor8[arg1].field_512), _12849, _13174, 160, 0
                                else:
                                    _12371 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    _12631 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    _12852 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]
                                    _12853 = mem[64]
                                    mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                    mem[mem[64] + 68] = 160
                                    _13176 = mem[_12631]
                                    mem[mem[64] + 164] = mem[_12631]
                                    s = 0
                                    t = _12631 + 32
                                    u = mem[64] + 196
                                    while s < _13176:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_12853 + 100] = (32 * _13176) + 192
                                    _14143 = mem[_12852]
                                    mem[_12853 + (32 * _13176) + 196] = mem[_12852]
                                    s = 0
                                    t = _12852 + 32
                                    u = _12853 + (32 * _13176) + 228
                                    while s < _14143:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_12853 + 132] = (32 * _13176) + (32 * _14143) + 224
                                    mem[_12853 + (32 * _13176) + (32 * _14143) + 228] = 0
                                    require ext_code.size(address(_12371))
                                    call address(_12371).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _12853 + (32 * _13176) + (32 * _14143) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        if uint8(idx) == 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        continue 
                    _10661 = mem[192]
                    _10662 = mem[96]
                    if 0 >= mem[mem[96]]:
                        revert with 0, 50
                    if mem[mem[mem[96] + 32] + 12 len 20]:
                        _13855 = mem[mem[96]]
                        idx = 0
                        while uint8(idx) < _13855:
                            if uint8(idx) >= mem[_10662]:
                                revert with 0, 50
                            if uint8(idx) >= mem[_10662]:
                                revert with 0, 50
                            if 20 == mem[mem[(32 * uint8(idx)) + _10662 + 32] + 62 len 2]:
                                _14358 = mem[mem[(32 * uint8(idx)) + _10662 + 32]]
                                if uint8(idx) >= mem[_10662]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10662 + 32] + 96]]:
                                    revert with 0, 50
                                _14542 = mem[mem[mem[(32 * uint8(idx)) + _10662 + 32] + 96] + 32]
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = address(_10661)
                                mem[mem[64] + 68] = _14542
                                require ext_code.size(address(_14358))
                                call address(_14358).0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(_10661), _14542
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14816 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_14816] == bool(mem[_14816])
                            else:
                                if uint8(idx) >= mem[_10662]:
                                    revert with 0, 50
                                if 777 == mem[mem[(32 * uint8(idx)) + _10662 + 32] + 62 len 2]:
                                    _14547 = mem[mem[(32 * uint8(idx)) + _10662 + 32]]
                                    if uint8(idx) >= mem[_10662]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10662 + 32] + 96]]:
                                        revert with 0, 50
                                    _14679 = mem[mem[mem[(32 * uint8(idx)) + _10662 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(_10661)
                                    mem[mem[64] + 68] = _14679
                                    require ext_code.size(address(_14547))
                                    call address(_14547).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), address(_10661), _14679
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _15025 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_15025] == bool(mem[_15025])
                                else:
                                    if 721 == mem[mem[(32 * uint8(idx)) + _10662 + 32] + 62 len 2]:
                                        if uint8(idx) < mem[_10662]:
                                            if uint8(var58003) >= mem[mem[mem[(32 * uint8(idx)) + _10662 + 32] + 64]]:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                continue 
                                            if uint8(idx) < mem[_10662]:
                                                if uint8(idx) < mem[_10662]:
                                                    _17793 = mem[mem[(32 * uint8(idx)) + _10662 + 32] + 64]
                                                    _17794 = mem[mem[mem[(32 * uint8(idx)) + _10662 + 32] + 64]]
                                                    t = mem[mem[(32 * uint8(idx)) + _10662 + 32] + 12 len 20]
                                                    s = var62003
                                                    while uint8(s) < _17794:
                                                        _17819 = mem[(32 * uint8(s)) + _17793 + 32]
                                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = this.address
                                                        mem[mem[64] + 36] = address(_10661)
                                                        mem[mem[64] + 68] = _17819
                                                        require ext_code.size(t)
                                                        call t.0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args address(this.address), address(_10661), _17819
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if uint8(s) == 255:
                                                            revert with 0, 17
                                                        if uint8(idx) >= mem[_10662]:
                                                            revert with 0, 50
                                                        if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _10662 + 32] + 64]]:
                                                            if uint8(idx) == 255:
                                                                revert with 0, 17
                                                            idx = uint8(idx) + 1
                                                            continue 
                                                        if uint8(idx) >= mem[_10662]:
                                                            revert with 0, 50
                                                        if uint8(idx) >= mem[_10662]:
                                                            revert with 0, 50
                                                        t = mem[mem[(32 * uint8(idx)) + _10662 + 32] + 12 len 20]
                                                        s = uint8(s) + 1
                                                        continue 
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_10662]:
                                        revert with 0, 50
                                    if mem[mem[(32 * uint8(idx)) + _10662 + 32] + 62 len 2] != 1155:
                                        revert with 0, 'createTrade: unsupported erc type'
                                    if uint8(idx) >= mem[_10662]:
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_10662]:
                                        revert with 0, 50
                                    if mem[mem[mem[(32 * uint8(idx)) + _10662 + 32] + 64]] <= 1:
                                        _15017 = mem[mem[(32 * uint8(idx)) + _10662 + 32]]
                                        if uint8(idx) >= mem[_10662]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10662 + 32] + 64]]:
                                            revert with 0, 50
                                        _15203 = mem[mem[mem[(32 * uint8(idx)) + _10662 + 32] + 64] + 32]
                                        if uint8(idx) >= mem[_10662]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10662 + 32] + 96]]:
                                            revert with 0, 50
                                        _15296 = mem[mem[mem[(32 * uint8(idx)) + _10662 + 32] + 96] + 32]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(_10661)
                                        mem[mem[64] + 68] = _15203
                                        mem[mem[64] + 100] = _15296
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(address(_15017))
                                        call address(_15017).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), address(_10661), _15203, _15296, 160, 0
                                    else:
                                        _15020 = mem[mem[(32 * uint8(idx)) + _10662 + 32]]
                                        if uint8(idx) >= mem[_10662]:
                                            revert with 0, 50
                                        _15129 = mem[mem[(32 * uint8(idx)) + _10662 + 32] + 64]
                                        if uint8(idx) >= mem[_10662]:
                                            revert with 0, 50
                                        _15206 = mem[mem[(32 * uint8(idx)) + _10662 + 32] + 96]
                                        mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(_10661)
                                        mem[mem[64] + 68] = 160
                                        _15298 = mem[_15129]
                                        mem[mem[64] + 164] = mem[_15129]
                                        s = 0
                                        t = _15129 + 32
                                        u = mem[64] + 196
                                        while s < _15298:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[mem[64] + 100] = (32 * _15298) + 192
                                        _15741 = mem[_15206]
                                        mem[mem[64] + (32 * _15298) + 196] = mem[_15206]
                                        s = 0
                                        t = _15206 + 32
                                        u = mem[64] + (32 * _15298) + 228
                                        while s < _15741:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[mem[64] + 132] = (32 * _15298) + (32 * _15741) + 224
                                        mem[mem[64] + (32 * _15298) + (32 * _15741) + 228] = 0
                                        require ext_code.size(address(_15020))
                                        call address(_15020).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), address(_10661), 160, (32 * _15298) + 192, (32 * _15298) + (32 * _15741) + 224, mem[mem[64] + 164 len (32 * _15298) + (32 * _15741) + 64], 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                    uint8(stor8[arg1].field_928) = 1
                    emit 0xb117ea82: arg1, mem[172 len 20], mem[204 len 20]
            else:
                mem[0] = msg.sender
                mem[32] = 7
                if stor7[msg.sender]:
                    if 0 >= mem[_3514]:
                        revert with 0, 50
                    if not mem[mem[_3514 + 32] + 12 len 20]:
                        _7167 = mem[96]
                        if 0 >= mem[mem[96]]:
                            revert with 0, 50
                        if not mem[mem[mem[96] + 32] + 12 len 20]:
                            uint8(stor8[arg1].field_928) = 1
                            emit 0xb117ea82: arg1, address(stor8[arg1].field_512), address(stor8[arg1].field_768)
                        else:
                            _10545 = mem[mem[96]]
                            idx = 0
                            while uint8(idx) < _10545:
                                if uint8(idx) >= mem[_7167]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[_7167]:
                                    revert with 0, 50
                                if 20 == mem[mem[(32 * uint8(idx)) + _7167 + 32] + 62 len 2]:
                                    _10876 = mem[mem[(32 * uint8(idx)) + _7167 + 32]]
                                    if uint8(idx) >= mem[_7167]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7167 + 32] + 96]]:
                                        revert with 0, 50
                                    _11205 = mem[mem[mem[(32 * uint8(idx)) + _7167 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                    mem[mem[64] + 68] = _11205
                                    require ext_code.size(address(_10876))
                                    call address(_10876).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), address(stor8[arg1].field_768), _11205
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11873 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_11873] == bool(mem[_11873])
                                else:
                                    if uint8(idx) >= mem[_7167]:
                                        revert with 0, 50
                                    if 777 == mem[mem[(32 * uint8(idx)) + _7167 + 32] + 62 len 2]:
                                        _11210 = mem[mem[(32 * uint8(idx)) + _7167 + 32]]
                                        if uint8(idx) >= mem[_7167]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7167 + 32] + 96]]:
                                            revert with 0, 50
                                        _11525 = mem[mem[mem[(32 * uint8(idx)) + _7167 + 32] + 96] + 32]
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                        mem[mem[64] + 68] = _11525
                                        require ext_code.size(address(_11210))
                                        call address(_11210).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), address(stor8[arg1].field_768), _11525
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12387 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_12387] == bool(mem[_12387])
                                    else:
                                        if 721 == mem[mem[(32 * uint8(idx)) + _7167 + 32] + 62 len 2]:
                                            if uint8(idx) < mem[_7167]:
                                                if uint8(var56003) >= mem[mem[mem[(32 * uint8(idx)) + _7167 + 32] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) < mem[_7167]:
                                                    if uint8(idx) < mem[_7167]:
                                                        _17316 = mem[mem[(32 * uint8(idx)) + _7167 + 32] + 64]
                                                        _17317 = mem[mem[mem[(32 * uint8(idx)) + _7167 + 32] + 64]]
                                                        t = mem[mem[(32 * uint8(idx)) + _7167 + 32] + 12 len 20]
                                                        s = var60003
                                                        while uint8(s) < _17317:
                                                            _17403 = mem[(32 * uint8(s)) + _17316 + 32]
                                                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = this.address
                                                            mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                                            mem[mem[64] + 68] = _17403
                                                            require ext_code.size(t)
                                                            call t.0x23b872dd with:
                                                                 gas gas_remaining wei
                                                                args address(this.address), address(stor8[arg1].field_768), _17403
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint8(s) == 255:
                                                                revert with 0, 17
                                                            if uint8(idx) >= mem[_7167]:
                                                                revert with 0, 50
                                                            if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _7167 + 32] + 64]]:
                                                                if uint8(idx) == 255:
                                                                    revert with 0, 17
                                                                idx = uint8(idx) + 1
                                                                continue 
                                                            if uint8(idx) >= mem[_7167]:
                                                                revert with 0, 50
                                                            if uint8(idx) >= mem[_7167]:
                                                                revert with 0, 50
                                                            t = mem[mem[(32 * uint8(idx)) + _7167 + 32] + 12 len 20]
                                                            s = uint8(s) + 1
                                                            continue 
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_7167]:
                                            revert with 0, 50
                                        if mem[mem[(32 * uint8(idx)) + _7167 + 32] + 62 len 2] != 1155:
                                            revert with 0, 'createTrade: unsupported erc type'
                                        if uint8(idx) >= mem[_7167]:
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_7167]:
                                            revert with 0, 50
                                        if mem[mem[mem[(32 * uint8(idx)) + _7167 + 32] + 64]] <= 1:
                                            _12379 = mem[mem[(32 * uint8(idx)) + _7167 + 32]]
                                            if uint8(idx) >= mem[_7167]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7167 + 32] + 64]]:
                                                revert with 0, 50
                                            _12855 = mem[mem[mem[(32 * uint8(idx)) + _7167 + 32] + 64] + 32]
                                            if uint8(idx) >= mem[_7167]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7167 + 32] + 96]]:
                                                revert with 0, 50
                                            _13177 = mem[mem[mem[(32 * uint8(idx)) + _7167 + 32] + 96] + 32]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                            mem[mem[64] + 68] = _12855
                                            mem[mem[64] + 100] = _13177
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(address(_12379))
                                            call address(_12379).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(stor8[arg1].field_768), _12855, _13177, 160, 0
                                        else:
                                            _12382 = mem[mem[(32 * uint8(idx)) + _7167 + 32]]
                                            if uint8(idx) >= mem[_7167]:
                                                revert with 0, 50
                                            _12639 = mem[mem[(32 * uint8(idx)) + _7167 + 32] + 64]
                                            if uint8(idx) >= mem[_7167]:
                                                revert with 0, 50
                                            _12858 = mem[mem[(32 * uint8(idx)) + _7167 + 32] + 96]
                                            _12859 = mem[64]
                                            mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                            mem[mem[64] + 68] = 160
                                            _13179 = mem[_12639]
                                            mem[mem[64] + 164] = mem[_12639]
                                            s = 0
                                            t = _12639 + 32
                                            u = mem[64] + 196
                                            while s < _13179:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_12859 + 100] = (32 * _13179) + 192
                                            _14147 = mem[_12858]
                                            mem[_12859 + (32 * _13179) + 196] = mem[_12858]
                                            s = 0
                                            t = _12858 + 32
                                            u = _12859 + (32 * _13179) + 228
                                            while s < _14147:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_12859 + 132] = (32 * _13179) + (32 * _14147) + 224
                                            mem[_12859 + (32 * _13179) + (32 * _14147) + 228] = 0
                                            require ext_code.size(address(_12382))
                                            call address(_12382).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _12859 + (32 * _13179) + (32 * _14147) + -mem[64] + 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                continue 
                            uint8(stor8[arg1].field_928) = 1
                            emit 0xb117ea82: arg1, mem[172 len 20], mem[204 len 20]
                    else:
                        _10546 = mem[_3514]
                        idx = 0
                        while uint8(idx) < _10546:
                            if uint8(idx) >= mem[_3514]:
                                revert with 0, 50
                            if uint8(idx) >= mem[_3514]:
                                revert with 0, 50
                            if 20 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                _10879 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                    revert with 0, 50
                                _11213 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                mem[mem[64] + 68] = _11213
                                require ext_code.size(address(_10879))
                                call address(_10879).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor8[arg1].field_512), _11213
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11883 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11883] == bool(mem[_11883])
                            else:
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if 777 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                    _11218 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                        revert with 0, 50
                                    _11532 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                    mem[mem[64] + 68] = _11532
                                    require ext_code.size(address(_11218))
                                    call address(_11218).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(stor8[arg1].field_512), _11532
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12405 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_12405] == bool(mem[_12405])
                                else:
                                    if 721 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                        if uint8(idx) < mem[_3514]:
                                            if uint8(var52003) >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                continue 
                                            if uint8(idx) < mem[_3514]:
                                                if uint8(idx) < mem[_3514]:
                                                    _17322 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]
                                                    _17323 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]
                                                    t = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 12 len 20]
                                                    s = var56003
                                                    while uint8(s) < _17323:
                                                        _17408 = mem[(32 * uint8(s)) + _17322 + 32]
                                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                                        mem[mem[64] + 68] = _17408
                                                        require ext_code.size(t)
                                                        call t.0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(stor8[arg1].field_512), _17408
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if uint8(s) == 255:
                                                            revert with 0, 17
                                                        if uint8(idx) >= mem[_3514]:
                                                            revert with 0, 50
                                                        if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                                            if uint8(idx) == 255:
                                                                revert with 0, 17
                                                            idx = uint8(idx) + 1
                                                            continue 
                                                        if uint8(idx) >= mem[_3514]:
                                                            revert with 0, 50
                                                        if uint8(idx) >= mem[_3514]:
                                                            revert with 0, 50
                                                        t = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 12 len 20]
                                                        s = uint8(s) + 1
                                                        continue 
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2] != 1155:
                                        revert with 0, 'createTrade: unsupported erc type'
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]] <= 1:
                                        _12397 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                            revert with 0, 50
                                        _12867 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64] + 32]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                            revert with 0, 50
                                        _13187 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                        mem[mem[64] + 68] = _12867
                                        mem[mem[64] + 100] = _13187
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(address(_12397))
                                        call address(_12397).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(stor8[arg1].field_512), _12867, _13187, 160, 0
                                    else:
                                        _12400 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        _12651 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        _12870 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]
                                        mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                        mem[mem[64] + 68] = 160
                                        _13189 = mem[_12651]
                                        mem[mem[64] + 164] = mem[_12651]
                                        s = 0
                                        t = _12651 + 32
                                        u = mem[64] + 196
                                        while s < _13189:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[mem[64] + 100] = (32 * _13189) + 192
                                        _14152 = mem[_12870]
                                        mem[mem[64] + (32 * _13189) + 196] = mem[_12870]
                                        s = 0
                                        t = _12870 + 32
                                        u = mem[64] + (32 * _13189) + 228
                                        while s < _14152:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[mem[64] + 132] = (32 * _13189) + (32 * _14152) + 224
                                        mem[mem[64] + (32 * _13189) + (32 * _14152) + 228] = 0
                                        require ext_code.size(address(_12400))
                                        call address(_12400).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(stor8[arg1].field_512), 160, (32 * _13189) + 192, (32 * _13189) + (32 * _14152) + 224, mem[mem[64] + 164 len (32 * _13189) + (32 * _14152) + 64], 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                        _10670 = mem[192]
                        _10671 = mem[96]
                        if 0 >= mem[mem[96]]:
                            revert with 0, 50
                        if mem[mem[mem[96] + 32] + 12 len 20]:
                            _13858 = mem[mem[96]]
                            idx = 0
                            while uint8(idx) < _13858:
                                if uint8(idx) >= mem[_10671]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[_10671]:
                                    revert with 0, 50
                                if 20 == mem[mem[(32 * uint8(idx)) + _10671 + 32] + 62 len 2]:
                                    _14367 = mem[mem[(32 * uint8(idx)) + _10671 + 32]]
                                    if uint8(idx) >= mem[_10671]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10671 + 32] + 96]]:
                                        revert with 0, 50
                                    _14553 = mem[mem[mem[(32 * uint8(idx)) + _10671 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(_10670)
                                    mem[mem[64] + 68] = _14553
                                    require ext_code.size(address(_14367))
                                    call address(_14367).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), address(_10670), _14553
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _14823 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_14823] == bool(mem[_14823])
                                else:
                                    if uint8(idx) >= mem[_10671]:
                                        revert with 0, 50
                                    if 777 == mem[mem[(32 * uint8(idx)) + _10671 + 32] + 62 len 2]:
                                        _14558 = mem[mem[(32 * uint8(idx)) + _10671 + 32]]
                                        if uint8(idx) >= mem[_10671]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10671 + 32] + 96]]:
                                            revert with 0, 50
                                        _14685 = mem[mem[mem[(32 * uint8(idx)) + _10671 + 32] + 96] + 32]
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(_10670)
                                        mem[mem[64] + 68] = _14685
                                        require ext_code.size(address(_14558))
                                        call address(_14558).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), address(_10670), _14685
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _15038 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_15038] == bool(mem[_15038])
                                    else:
                                        if 721 == mem[mem[(32 * uint8(idx)) + _10671 + 32] + 62 len 2]:
                                            if uint8(idx) < mem[_10671]:
                                                if uint8(var59003) >= mem[mem[mem[(32 * uint8(idx)) + _10671 + 32] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) < mem[_10671]:
                                                    if uint8(idx) < mem[_10671]:
                                                        _17796 = mem[mem[(32 * uint8(idx)) + _10671 + 32] + 64]
                                                        _17797 = mem[mem[mem[(32 * uint8(idx)) + _10671 + 32] + 64]]
                                                        t = mem[mem[(32 * uint8(idx)) + _10671 + 32] + 12 len 20]
                                                        s = var63003
                                                        while uint8(s) < _17797:
                                                            _17821 = mem[(32 * uint8(s)) + _17796 + 32]
                                                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = this.address
                                                            mem[mem[64] + 36] = address(_10670)
                                                            mem[mem[64] + 68] = _17821
                                                            require ext_code.size(t)
                                                            call t.0x23b872dd with:
                                                                 gas gas_remaining wei
                                                                args address(this.address), address(_10670), _17821
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint8(s) == 255:
                                                                revert with 0, 17
                                                            if uint8(idx) >= mem[_10671]:
                                                                revert with 0, 50
                                                            if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _10671 + 32] + 64]]:
                                                                if uint8(idx) == 255:
                                                                    revert with 0, 17
                                                                idx = uint8(idx) + 1
                                                                continue 
                                                            if uint8(idx) >= mem[_10671]:
                                                                revert with 0, 50
                                                            if uint8(idx) >= mem[_10671]:
                                                                revert with 0, 50
                                                            t = mem[mem[(32 * uint8(idx)) + _10671 + 32] + 12 len 20]
                                                            s = uint8(s) + 1
                                                            continue 
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_10671]:
                                            revert with 0, 50
                                        if mem[mem[(32 * uint8(idx)) + _10671 + 32] + 62 len 2] != 1155:
                                            revert with 0, 'createTrade: unsupported erc type'
                                        if uint8(idx) >= mem[_10671]:
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_10671]:
                                            revert with 0, 50
                                        if mem[mem[mem[(32 * uint8(idx)) + _10671 + 32] + 64]] <= 1:
                                            _15030 = mem[mem[(32 * uint8(idx)) + _10671 + 32]]
                                            if uint8(idx) >= mem[_10671]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10671 + 32] + 64]]:
                                                revert with 0, 50
                                            _15209 = mem[mem[mem[(32 * uint8(idx)) + _10671 + 32] + 64] + 32]
                                            if uint8(idx) >= mem[_10671]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10671 + 32] + 96]]:
                                                revert with 0, 50
                                            _15299 = mem[mem[mem[(32 * uint8(idx)) + _10671 + 32] + 96] + 32]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = address(_10670)
                                            mem[mem[64] + 68] = _15209
                                            mem[mem[64] + 100] = _15299
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(address(_15030))
                                            call address(_15030).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(_10670), _15209, _15299, 160, 0
                                        else:
                                            _15033 = mem[mem[(32 * uint8(idx)) + _10671 + 32]]
                                            if uint8(idx) >= mem[_10671]:
                                                revert with 0, 50
                                            _15137 = mem[mem[(32 * uint8(idx)) + _10671 + 32] + 64]
                                            if uint8(idx) >= mem[_10671]:
                                                revert with 0, 50
                                            _15212 = mem[mem[(32 * uint8(idx)) + _10671 + 32] + 96]
                                            _15213 = mem[64]
                                            mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = address(_10670)
                                            mem[mem[64] + 68] = 160
                                            _15301 = mem[_15137]
                                            mem[mem[64] + 164] = mem[_15137]
                                            s = 0
                                            t = _15137 + 32
                                            u = mem[64] + 196
                                            while s < _15301:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_15213 + 100] = (32 * _15301) + 192
                                            _15753 = mem[_15212]
                                            mem[_15213 + (32 * _15301) + 196] = mem[_15212]
                                            s = 0
                                            t = _15212 + 32
                                            u = _15213 + (32 * _15301) + 228
                                            while s < _15753:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_15213 + 132] = (32 * _15301) + (32 * _15753) + 224
                                            mem[_15213 + (32 * _15301) + (32 * _15753) + 228] = 0
                                            require ext_code.size(address(_15033))
                                            call address(_15033).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _15213 + (32 * _15301) + (32 * _15753) + -mem[64] + 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                continue 
                        uint8(stor8[arg1].field_928) = 1
                        emit 0xb117ea82: arg1, mem[172 len 20], mem[204 len 20]
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor5
                    mem[mem[64] + 68] = serviceFee
                    require ext_code.size(sub_270e5326Address)
                    call sub_270e5326Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stor5, serviceFee
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7169 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_7169] == bool(mem[_7169])
                    if 0 >= mem[_3514]:
                        revert with 0, 50
                    if not mem[mem[_3514 + 32] + 12 len 20]:
                        _7892 = mem[96]
                        if 0 >= mem[mem[96]]:
                            revert with 0, 50
                        if not mem[mem[mem[96] + 32] + 12 len 20]:
                            uint8(stor8[arg1].field_928) = 1
                            emit 0xb117ea82: arg1, address(stor8[arg1].field_512), address(stor8[arg1].field_768)
                        else:
                            _10547 = mem[mem[96]]
                            idx = 0
                            while uint8(idx) < _10547:
                                if uint8(idx) >= mem[_7892]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[_7892]:
                                    revert with 0, 50
                                if 20 == mem[mem[(32 * uint8(idx)) + _7892 + 32] + 62 len 2]:
                                    _10882 = mem[mem[(32 * uint8(idx)) + _7892 + 32]]
                                    if uint8(idx) >= mem[_7892]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7892 + 32] + 96]]:
                                        revert with 0, 50
                                    _11220 = mem[mem[mem[(32 * uint8(idx)) + _7892 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                    mem[mem[64] + 68] = _11220
                                    require ext_code.size(address(_10882))
                                    call address(_10882).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), address(stor8[arg1].field_768), _11220
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11890 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_11890] == bool(mem[_11890])
                                else:
                                    if uint8(idx) >= mem[_7892]:
                                        revert with 0, 50
                                    if 777 == mem[mem[(32 * uint8(idx)) + _7892 + 32] + 62 len 2]:
                                        _11225 = mem[mem[(32 * uint8(idx)) + _7892 + 32]]
                                        if uint8(idx) >= mem[_7892]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7892 + 32] + 96]]:
                                            revert with 0, 50
                                        _11538 = mem[mem[mem[(32 * uint8(idx)) + _7892 + 32] + 96] + 32]
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                        mem[mem[64] + 68] = _11538
                                        require ext_code.size(address(_11225))
                                        call address(_11225).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), address(stor8[arg1].field_768), _11538
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12416 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_12416] == bool(mem[_12416])
                                    else:
                                        if 721 == mem[mem[(32 * uint8(idx)) + _7892 + 32] + 62 len 2]:
                                            if uint8(idx) < mem[_7892]:
                                                if uint8(var65003) >= mem[mem[mem[(32 * uint8(idx)) + _7892 + 32] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) < mem[_7892]:
                                                    if uint8(idx) < mem[_7892]:
                                                        _17325 = mem[mem[(32 * uint8(idx)) + _7892 + 32] + 64]
                                                        _17326 = mem[mem[mem[(32 * uint8(idx)) + _7892 + 32] + 64]]
                                                        t = mem[mem[(32 * uint8(idx)) + _7892 + 32] + 12 len 20]
                                                        s = var69003
                                                        while uint8(s) < _17326:
                                                            _17410 = mem[(32 * uint8(s)) + _17325 + 32]
                                                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = this.address
                                                            mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                                            mem[mem[64] + 68] = _17410
                                                            require ext_code.size(t)
                                                            call t.0x23b872dd with:
                                                                 gas gas_remaining wei
                                                                args address(this.address), address(stor8[arg1].field_768), _17410
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint8(s) == 255:
                                                                revert with 0, 17
                                                            if uint8(idx) >= mem[_7892]:
                                                                revert with 0, 50
                                                            if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _7892 + 32] + 64]]:
                                                                if uint8(idx) == 255:
                                                                    revert with 0, 17
                                                                idx = uint8(idx) + 1
                                                                continue 
                                                            if uint8(idx) >= mem[_7892]:
                                                                revert with 0, 50
                                                            if uint8(idx) >= mem[_7892]:
                                                                revert with 0, 50
                                                            t = mem[mem[(32 * uint8(idx)) + _7892 + 32] + 12 len 20]
                                                            s = uint8(s) + 1
                                                            continue 
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_7892]:
                                            revert with 0, 50
                                        if mem[mem[(32 * uint8(idx)) + _7892 + 32] + 62 len 2] != 1155:
                                            revert with 0, 'createTrade: unsupported erc type'
                                        if uint8(idx) >= mem[_7892]:
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_7892]:
                                            revert with 0, 50
                                        if mem[mem[mem[(32 * uint8(idx)) + _7892 + 32] + 64]] <= 1:
                                            _12408 = mem[mem[(32 * uint8(idx)) + _7892 + 32]]
                                            if uint8(idx) >= mem[_7892]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7892 + 32] + 64]]:
                                                revert with 0, 50
                                            _12873 = mem[mem[mem[(32 * uint8(idx)) + _7892 + 32] + 64] + 32]
                                            if uint8(idx) >= mem[_7892]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _7892 + 32] + 96]]:
                                                revert with 0, 50
                                            _13190 = mem[mem[mem[(32 * uint8(idx)) + _7892 + 32] + 96] + 32]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                            mem[mem[64] + 68] = _12873
                                            mem[mem[64] + 100] = _13190
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(address(_12408))
                                            call address(_12408).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(stor8[arg1].field_768), _12873, _13190, 160, 0
                                        else:
                                            _12411 = mem[mem[(32 * uint8(idx)) + _7892 + 32]]
                                            if uint8(idx) >= mem[_7892]:
                                                revert with 0, 50
                                            _12659 = mem[mem[(32 * uint8(idx)) + _7892 + 32] + 64]
                                            if uint8(idx) >= mem[_7892]:
                                                revert with 0, 50
                                            _12876 = mem[mem[(32 * uint8(idx)) + _7892 + 32] + 96]
                                            _12877 = mem[64]
                                            mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = address(stor8[arg1].field_768)
                                            mem[mem[64] + 68] = 160
                                            _13192 = mem[_12659]
                                            mem[mem[64] + 164] = mem[_12659]
                                            s = 0
                                            t = _12659 + 32
                                            u = mem[64] + 196
                                            while s < _13192:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_12877 + 100] = (32 * _13192) + 192
                                            _14156 = mem[_12876]
                                            mem[_12877 + (32 * _13192) + 196] = mem[_12876]
                                            s = 0
                                            t = _12876 + 32
                                            u = _12877 + (32 * _13192) + 228
                                            while s < _14156:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_12877 + 132] = (32 * _13192) + (32 * _14156) + 224
                                            mem[_12877 + (32 * _13192) + (32 * _14156) + 228] = 0
                                            require ext_code.size(address(_12411))
                                            call address(_12411).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _12877 + (32 * _13192) + (32 * _14156) + -mem[64] + 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                continue 
                            uint8(stor8[arg1].field_928) = 1
                            emit 0xb117ea82: arg1, mem[172 len 20], mem[204 len 20]
                    else:
                        _10548 = mem[_3514]
                        idx = 0
                        while uint8(idx) < _10548:
                            if uint8(idx) >= mem[_3514]:
                                revert with 0, 50
                            if uint8(idx) >= mem[_3514]:
                                revert with 0, 50
                            if 20 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                _10885 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                    revert with 0, 50
                                _11228 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                mem[mem[64] + 68] = _11228
                                require ext_code.size(address(_10885))
                                call address(_10885).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(stor8[arg1].field_512), _11228
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11900 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11900] == bool(mem[_11900])
                            else:
                                if uint8(idx) >= mem[_3514]:
                                    revert with 0, 50
                                if 777 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                    _11233 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                        revert with 0, 50
                                    _11545 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                    mem[mem[64] + 68] = _11545
                                    require ext_code.size(address(_11233))
                                    call address(_11233).0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(stor8[arg1].field_512), _11545
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12434 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_12434] == bool(mem[_12434])
                                else:
                                    if 721 == mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2]:
                                        if uint8(idx) < mem[_3514]:
                                            if uint8(var61003) >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                continue 
                                            if uint8(idx) < mem[_3514]:
                                                if uint8(idx) < mem[_3514]:
                                                    _17331 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]
                                                    _17332 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]
                                                    t = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 12 len 20]
                                                    s = var65003
                                                    while uint8(s) < _17332:
                                                        _17415 = mem[(32 * uint8(s)) + _17331 + 32]
                                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = msg.sender
                                                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                                        mem[mem[64] + 68] = _17415
                                                        require ext_code.size(t)
                                                        call t.0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args msg.sender, address(stor8[arg1].field_512), _17415
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if uint8(s) == 255:
                                                            revert with 0, 17
                                                        if uint8(idx) >= mem[_3514]:
                                                            revert with 0, 50
                                                        if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                                            if uint8(idx) == 255:
                                                                revert with 0, 17
                                                            idx = uint8(idx) + 1
                                                            continue 
                                                        if uint8(idx) >= mem[_3514]:
                                                            revert with 0, 50
                                                        if uint8(idx) >= mem[_3514]:
                                                            revert with 0, 50
                                                        t = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 12 len 20]
                                                        s = uint8(s) + 1
                                                        continue 
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if mem[mem[(32 * uint8(idx)) + _3514 + 32] + 62 len 2] != 1155:
                                        revert with 0, 'createTrade: unsupported erc type'
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if uint8(idx) >= mem[_3514]:
                                        revert with 0, 50
                                    if mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]] <= 1:
                                        _12426 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]]:
                                            revert with 0, 50
                                        _12885 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64] + 32]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]]:
                                            revert with 0, 50
                                        _13200 = mem[mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96] + 32]
                                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                        mem[mem[64] + 68] = _12885
                                        mem[mem[64] + 100] = _13200
                                        mem[mem[64] + 132] = 160
                                        mem[mem[64] + 164] = 0
                                        require ext_code.size(address(_12426))
                                        call address(_12426).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(stor8[arg1].field_512), _12885, _13200, 160, 0
                                    else:
                                        _12429 = mem[mem[(32 * uint8(idx)) + _3514 + 32]]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        _12671 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 64]
                                        if uint8(idx) >= mem[_3514]:
                                            revert with 0, 50
                                        _12888 = mem[mem[(32 * uint8(idx)) + _3514 + 32] + 96]
                                        _12889 = mem[64]
                                        mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = address(stor8[arg1].field_512)
                                        mem[mem[64] + 68] = 160
                                        _13202 = mem[_12671]
                                        mem[mem[64] + 164] = mem[_12671]
                                        s = 0
                                        t = _12671 + 32
                                        u = mem[64] + 196
                                        while s < _13202:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_12889 + 100] = (32 * _13202) + 192
                                        _14161 = mem[_12888]
                                        mem[_12889 + (32 * _13202) + 196] = mem[_12888]
                                        s = 0
                                        t = _12888 + 32
                                        u = _12889 + (32 * _13202) + 228
                                        while s < _14161:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_12889 + 132] = (32 * _13202) + (32 * _14161) + 224
                                        mem[_12889 + (32 * _13202) + (32 * _14161) + 228] = 0
                                        require ext_code.size(address(_12429))
                                        call address(_12429).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _12889 + (32 * _13202) + (32 * _14161) + -mem[64] + 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            if uint8(idx) == 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            continue 
                        _10679 = mem[192]
                        _10680 = mem[96]
                        if 0 >= mem[mem[96]]:
                            revert with 0, 50
                        if mem[mem[mem[96] + 32] + 12 len 20]:
                            _13861 = mem[mem[96]]
                            idx = 0
                            while uint8(idx) < _13861:
                                if uint8(idx) >= mem[_10680]:
                                    revert with 0, 50
                                if uint8(idx) >= mem[_10680]:
                                    revert with 0, 50
                                if 20 == mem[mem[(32 * uint8(idx)) + _10680 + 32] + 62 len 2]:
                                    _14376 = mem[mem[(32 * uint8(idx)) + _10680 + 32]]
                                    if uint8(idx) >= mem[_10680]:
                                        revert with 0, 50
                                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10680 + 32] + 96]]:
                                        revert with 0, 50
                                    _14564 = mem[mem[mem[(32 * uint8(idx)) + _10680 + 32] + 96] + 32]
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(_10679)
                                    mem[mem[64] + 68] = _14564
                                    require ext_code.size(address(_14376))
                                    call address(_14376).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), address(_10679), _14564
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _14830 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_14830] == bool(mem[_14830])
                                else:
                                    if uint8(idx) >= mem[_10680]:
                                        revert with 0, 50
                                    if 777 == mem[mem[(32 * uint8(idx)) + _10680 + 32] + 62 len 2]:
                                        _14569 = mem[mem[(32 * uint8(idx)) + _10680 + 32]]
                                        if uint8(idx) >= mem[_10680]:
                                            revert with 0, 50
                                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10680 + 32] + 96]]:
                                            revert with 0, 50
                                        _14691 = mem[mem[mem[(32 * uint8(idx)) + _10680 + 32] + 96] + 32]
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(_10679)
                                        mem[mem[64] + 68] = _14691
                                        require ext_code.size(address(_14569))
                                        call address(_14569).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), address(_10679), _14691
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _15051 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_15051] == bool(mem[_15051])
                                    else:
                                        if 721 == mem[mem[(32 * uint8(idx)) + _10680 + 32] + 62 len 2]:
                                            if uint8(idx) < mem[_10680]:
                                                if uint8(var68003) >= mem[mem[mem[(32 * uint8(idx)) + _10680 + 32] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) < mem[_10680]:
                                                    if uint8(idx) < mem[_10680]:
                                                        _17799 = mem[mem[(32 * uint8(idx)) + _10680 + 32] + 64]
                                                        _17800 = mem[mem[mem[(32 * uint8(idx)) + _10680 + 32] + 64]]
                                                        t = mem[mem[(32 * uint8(idx)) + _10680 + 32] + 12 len 20]
                                                        s = var72003
                                                        while uint8(s) < _17800:
                                                            _17823 = mem[(32 * uint8(s)) + _17799 + 32]
                                                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = this.address
                                                            mem[mem[64] + 36] = address(_10679)
                                                            mem[mem[64] + 68] = _17823
                                                            require ext_code.size(t)
                                                            call t.0x23b872dd with:
                                                                 gas gas_remaining wei
                                                                args address(this.address), address(_10679), _17823
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if uint8(s) == 255:
                                                                revert with 0, 17
                                                            if uint8(idx) >= mem[_10680]:
                                                                revert with 0, 50
                                                            if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _10680 + 32] + 64]]:
                                                                if uint8(idx) == 255:
                                                                    revert with 0, 17
                                                                idx = uint8(idx) + 1
                                                                continue 
                                                            if uint8(idx) >= mem[_10680]:
                                                                revert with 0, 50
                                                            if uint8(idx) >= mem[_10680]:
                                                                revert with 0, 50
                                                            t = mem[mem[(32 * uint8(idx)) + _10680 + 32] + 12 len 20]
                                                            s = uint8(s) + 1
                                                            continue 
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_10680]:
                                            revert with 0, 50
                                        if mem[mem[(32 * uint8(idx)) + _10680 + 32] + 62 len 2] != 1155:
                                            revert with 0, 'createTrade: unsupported erc type'
                                        if uint8(idx) >= mem[_10680]:
                                            revert with 0, 50
                                        if uint8(idx) >= mem[_10680]:
                                            revert with 0, 50
                                        if mem[mem[mem[(32 * uint8(idx)) + _10680 + 32] + 64]] <= 1:
                                            _15043 = mem[mem[(32 * uint8(idx)) + _10680 + 32]]
                                            if uint8(idx) >= mem[_10680]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10680 + 32] + 64]]:
                                                revert with 0, 50
                                            _15215 = mem[mem[mem[(32 * uint8(idx)) + _10680 + 32] + 64] + 32]
                                            if uint8(idx) >= mem[_10680]:
                                                revert with 0, 50
                                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + _10680 + 32] + 96]]:
                                                revert with 0, 50
                                            _15302 = mem[mem[mem[(32 * uint8(idx)) + _10680 + 32] + 96] + 32]
                                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = address(_10679)
                                            mem[mem[64] + 68] = _15215
                                            mem[mem[64] + 100] = _15302
                                            mem[mem[64] + 132] = 160
                                            mem[mem[64] + 164] = 0
                                            require ext_code.size(address(_15043))
                                            call address(_15043).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(_10679), _15215, _15302, 160, 0
                                        else:
                                            _15046 = mem[mem[(32 * uint8(idx)) + _10680 + 32]]
                                            if uint8(idx) >= mem[_10680]:
                                                revert with 0, 50
                                            _15145 = mem[mem[(32 * uint8(idx)) + _10680 + 32] + 64]
                                            if uint8(idx) >= mem[_10680]:
                                                revert with 0, 50
                                            _15218 = mem[mem[(32 * uint8(idx)) + _10680 + 32] + 96]
                                            _15219 = mem[64]
                                            mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = address(_10679)
                                            mem[mem[64] + 68] = 160
                                            _15304 = mem[_15145]
                                            mem[mem[64] + 164] = mem[_15145]
                                            s = 0
                                            t = _15145 + 32
                                            u = mem[64] + 196
                                            while s < _15304:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_15219 + 100] = (32 * _15304) + 192
                                            _15765 = mem[_15218]
                                            mem[_15219 + (32 * _15304) + 196] = mem[_15218]
                                            s = 0
                                            t = _15218 + 32
                                            u = _15219 + (32 * _15304) + 228
                                            while s < _15765:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_15219 + 132] = (32 * _15304) + (32 * _15765) + 224
                                            mem[_15219 + (32 * _15304) + (32 * _15765) + 228] = 0
                                            require ext_code.size(address(_15046))
                                            call address(_15046).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _15219 + (32 * _15304) + (32 * _15765) + -mem[64] + 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                if uint8(idx) == 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                continue 
                        uint8(stor8[arg1].field_928) = 1
                        emit 0xb117ea82: arg1, mem[172 len 20], mem[204 len 20]
    stor1.length = 1
}



}
