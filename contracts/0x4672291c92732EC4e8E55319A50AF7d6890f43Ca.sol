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

function sub_1ebd4266(?) payable {
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
                        _440 = mem[64]
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
                        mem[_440 + 100] = (32 * _448) + 192
                        _462 = mem[_439]
                        mem[_440 + (32 * _448) + 196] = mem[_439]
                        s = 0
                        t = _439 + 32
                        u = _440 + (32 * _448) + 228
                        while s < _462:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_440 + 132] = (32 * _448) + (32 * _462) + 224
                        mem[_440 + (32 * _448) + (32 * _462) + 228] = 0
                        require ext_code.size(address(_422))
                        call address(_422).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _440 + (32 * _448) + (32 * _462) + -mem[64] + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if uint8(idx) == 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            continue 
        emit TradeCanceled(arg1, mem[172 len 20], mem[204 len 20]);
    stor1.length = 1
}

function sub_a780073c(?) payable {
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
        _766 = mem[64]
        if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 128
        require cd[(cd[68] + cd[idx] + 36)] == address(cd[(cd[68] + cd[idx] + 36)])
        mem[_766] = cd[(cd[68] + cd[idx] + 36)]
        require cd[(cd[68] + cd[idx] + 68)] == uint16(cd[(cd[68] + cd[idx] + 68)])
        mem[_766 + 32] = cd[(cd[68] + cd[idx] + 68)]
        require cd[(cd[68] + cd[idx] + 100)] <= test266151307()
        require cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 67 < calldata.size
        if cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)] > test266151307():
            revert with 0, 65
        _769 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)]) + 1
        mem[_769] = cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)]
        require cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + (32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)]) + 68 <= calldata.size
        t = cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 68
        u = _769 + 32
        while t < cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + (32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)]) + 68:
            mem[u] = cd[t]
            t = t + 32
            u = u + 32
            continue 
        mem[_766 + 64] = _769
        require cd[(cd[68] + cd[idx] + 132)] <= test266151307()
        require cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 67 < calldata.size
        if cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)] > test266151307():
            revert with 0, 65
        _1542 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)]) + 1
        mem[_1542] = cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)]
        require cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + (32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)]) + 68 <= calldata.size
        t = cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 68
        u = _1542 + 32
        while t < cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + (32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)]) + 68:
            mem[u] = cd[t]
            t = t + 32
            u = u + 32
            continue 
        mem[_766 + 96] = _1542
        mem[s] = _766
        idx = idx + 32
        s = s + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    _767 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 100).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 100).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 100).length) + 1
    mem[_767] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = cd[100] + 36
    t = _767 + 32
    while idx < cd[100] + (32 * ('cd', 100).length) + 36:
        require cd[idx] <= test266151307()
        require 128 <= calldata.size + -cd[100] + -cd[idx] - 36
        _1530 = mem[64]
        if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 128
        require cd[(cd[100] + cd[idx] + 36)] == address(cd[(cd[100] + cd[idx] + 36)])
        mem[_1530] = cd[(cd[100] + cd[idx] + 36)]
        require cd[(cd[100] + cd[idx] + 68)] == uint16(cd[(cd[100] + cd[idx] + 68)])
        mem[_1530 + 32] = cd[(cd[100] + cd[idx] + 68)]
        require cd[(cd[100] + cd[idx] + 100)] <= test266151307()
        require cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 67 < calldata.size
        if cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)] > test266151307():
            revert with 0, 65
        _1612 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)]) + 1
        mem[_1612] = cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)]
        require cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + (32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)]) + 68 <= calldata.size
        s = cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 68
        u = _1612 + 32
        while s < cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + (32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)]) + 68:
            mem[u] = cd[s]
            s = s + 32
            u = u + 32
            continue 
        mem[_1530 + 64] = _1612
        require cd[(cd[100] + cd[idx] + 132)] <= test266151307()
        require cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 67 < calldata.size
        if cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)] > test266151307():
            revert with 0, 65
        _2498 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)]) + 1
        mem[_2498] = cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)]
        require cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + (32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)]) + 68 <= calldata.size
        s = cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 68
        u = _2498 + 32
        while s < cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + (32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)]) + 68:
            mem[u] = cd[s]
            s = s + 32
            u = u + 32
            continue 
        mem[_1530 + 96] = _2498
        mem[t] = _1530
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
            if sub_e275c997 == -1:
                revert with 0, 17
            sub_e275c997++
            mem[0] = sub_e275c997
            mem[32] = 8
            u = 0
            while uint8(u) < mem[96]:
                if uint8(u) >= mem[96]:
                    revert with 0, 50
                stor8[stor6].field_0++
                mem[0] = sha3(sub_e275c997, 8)
                address(stor8[stor6][stor8[stor6].field_0].field_0) = mem[mem[(32 * uint8(u)) + 128] + 12 len 20]
                uint16(stor8[stor6][stor8[stor6].field_0].field_160) = mem[mem[(32 * uint8(u)) + 128] + 62 len 2]
                _2309 = mem[mem[mem[(32 * uint8(u)) + 128] + 64]]
                stor8[stor6][stor8[stor6].field_0].field_256 = mem[mem[mem[(32 * uint8(u)) + 128] + 64]]
                mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1
                if not _2309:
                    idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    _3104 = mem[mem[mem[(32 * uint8(u)) + 128] + 96]]
                    stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(u)) + 128] + 96]]
                    mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                    if not _3104:
                        idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                        t = mem[mem[(32 * uint8(u)) + 128] + 96] + 32
                        while mem[mem[(32 * uint8(u)) + 128] + 96] + (32 * _3104) + 32 > t:
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
                    v = mem[mem[(32 * uint8(u)) + 128] + 64] + 32
                    while mem[mem[(32 * uint8(u)) + 128] + 64] + (32 * _2309) + 32 > v:
                        stor[t] = mem[v]
                        t = t + 1
                        v = v + 32
                        continue 
                    idx = t
                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    _3617 = mem[mem[mem[(32 * uint8(u)) + 128] + 96]]
                    stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(u)) + 128] + 96]]
                    mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                    if not _3617:
                        idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                        t = mem[mem[(32 * uint8(u)) + 128] + 96] + 32
                        while mem[mem[(32 * uint8(u)) + 128] + 96] + (32 * _3617) + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        idx = s
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                if uint8(u) == 255:
                    revert with 0, 17
                u = uint8(u) + 1
                continue 
            _3030 = mem[_767]
            s = 0
            while uint8(s) < _3030:
                if uint8(s) >= mem[_767]:
                    revert with 0, 50
                stor8[stor6].field_256++
                mem[0] = sha3(sub_e275c997, 8) + 1
                address(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_0) = mem[mem[(32 * uint8(s)) + _767 + 32] + 12 len 20]
                uint16(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_160) = mem[mem[(32 * uint8(s)) + _767 + 32] + 62 len 2]
                _3065 = mem[mem[mem[(32 * uint8(s)) + _767 + 32] + 64]]
                stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 = mem[mem[mem[(32 * uint8(s)) + _767 + 32] + 64]]
                mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1
                if not _3065:
                    idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    _3615 = mem[mem[mem[(32 * uint8(s)) + _767 + 32] + 96]]
                    stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(s)) + _767 + 32] + 96]]
                    mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                    if not _3615:
                        idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        t = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                        u = mem[mem[(32 * uint8(s)) + _767 + 32] + 96] + 32
                        while mem[mem[(32 * uint8(s)) + _767 + 32] + 96] + (32 * _3615) + 32 > u:
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
                    v = mem[mem[(32 * uint8(s)) + _767 + 32] + 64] + 32
                    while mem[mem[(32 * uint8(s)) + _767 + 32] + 64] + (32 * _3065) + 32 > v:
                        stor[u] = mem[v]
                        u = u + 1
                        v = v + 32
                        continue 
                    idx = u
                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    _4041 = mem[mem[mem[(32 * uint8(s)) + _767 + 32] + 96]]
                    stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(s)) + _767 + 32] + 96]]
                    mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                    if not _4041:
                        idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        u = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                        v = mem[mem[(32 * uint8(s)) + _767 + 32] + 96] + 32
                        while mem[mem[(32 * uint8(s)) + _767 + 32] + 96] + (32 * _4041) + 32 > v:
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
            stor8[stor6].field_512 = Mask(96, 0, stor8[stor6].field_672)
            address(stor8[stor6].field_768) = address(cd[4])
            if block.timestamp > !cd[36]:
                revert with 0, 17
            stor8[stor6].field_1024 = block.timestamp + cd[36]
            if sub_e275c997 == -1:
                revert with 0, 17
            _3183 = mem[64]
            mem[64] = mem[64] + 192
            _3184 = mem[64]
            mem[64] = mem[64] + (32 * stor8[stor6].field_0) + 32
            mem[_3184] = stor8[stor6].field_0
            t = _3184 + 32
            s = 0
            while s < stor8[stor6].field_0:
                mem[0] = sha3(sub_e275c997, 8)
                _3548 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3548] = address(stor8[stor6][s].field_0)
                mem[_3548 + 32] = uint16(stor8[stor6][s].field_160)
                _3549 = mem[64]
                mem[64] = mem[64] + (32 * stor8[stor6][s].field_256) + 32
                mem[_3549] = stor8[stor6][s].field_256
                if not stor8[stor6][s].field_256:
                    mem[_3548 + 64] = _3549
                    _3576 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6][s].field_512) + 32
                    mem[_3576] = stor8[stor6][s].field_512
                    if stor8[stor6][s].field_512:
                        mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * s) + 2
                        mem[_3576 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * s) + 2)].field_0
                        u = _3576 + 32
                        v = sha3(mem[0])
                        while _3576 + (32 * stor8[stor6][s].field_512) > u:
                            mem[u + 32] = stor1[v]
                            u = u + 32
                            v = v + 1
                            continue 
                    mem[_3548 + 96] = _3576
                else:
                    mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * s) + 1
                    mem[_3549 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * s) + 1)].field_0
                    u = _3549 + 32
                    v = sha3(mem[0])
                    while _3549 + (32 * stor8[stor6][s].field_256) > u:
                        mem[u + 32] = stor1[v]
                        u = u + 32
                        v = v + 1
                        continue 
                    mem[_3548 + 64] = _3549
                    _4296 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6][s].field_512) + 32
                    mem[_4296] = stor8[stor6][s].field_512
                    if stor8[stor6][s].field_512:
                        mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * s) + 2
                        mem[_4296 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * s) + 2)].field_0
                        u = _4296 + 32
                        v = sha3(mem[0])
                        while _4296 + (32 * stor8[stor6][s].field_512) > u:
                            mem[u + 32] = stor1[v]
                            u = u + 32
                            v = v + 1
                            continue 
                    mem[_3548 + 96] = _4296
                mem[t] = _3548
                t = t + 32
                s = s + 1
                continue 
            mem[_3183] = _3184
            _3546 = mem[64]
            mem[64] = mem[64] + (32 * stor8[stor6].field_256) + 32
            mem[_3546] = stor8[stor6].field_256
            s = _3546 + 32
            idx = 0
            while idx < stor8[stor6].field_256:
                mem[0] = sha3(sub_e275c997, 8) + 1
                _3971 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3971] = address(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_0)
                mem[_3971 + 32] = uint16(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_160)
                _3972 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256) + 32
                mem[_3972] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256
                if not stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256:
                    mem[_3971 + 64] = _3972
                    _4015 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                    mem[_4015] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512
                    if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                        mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 2
                        mem[_4015 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                        t = _4015 + 32
                        u = sha3(mem[0])
                        while _4015 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_3971 + 96] = _4015
                else:
                    mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 1
                    mem[_3972 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 1)].field_0
                    t = _3972 + 32
                    u = sha3(mem[0])
                    while _3972 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256) > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_3971 + 64] = _3972
                    _4551 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                    mem[_4551] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512
                    if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                        mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 2
                        mem[_4551 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                        t = _4551 + 32
                        u = sha3(mem[0])
                        while _4551 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_3971 + 96] = _4551
                mem[s] = _3971
                s = s + 32
                idx = idx + 1
                continue 
            mem[_3183 + 32] = _3546
            mem[_3183 + 64] = address(stor8[stor6].field_512)
            mem[_3183 + 96] = address(stor8[stor6].field_768)
            mem[_3183 + 128] = bool(uint8(stor8[stor6].field_928))
            mem[_3183 + 160] = stor8[stor6].field_1024
            _3969 = mem[64]
            mem[mem[64]] = 32
            _4014 = mem[_3183]
            mem[mem[64] + 32] = 192
            _4038 = mem[_4014]
            mem[mem[64] + 224] = mem[_4014]
            idx = 0
            s = _4014 + 32
            t = mem[64] + (32 * _4038) + 256
            u = mem[64] + 256
            while idx < _4038:
                mem[u] = t + -_3969 - 256
                _4308 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_4308 + 62 len 2]
                _4311 = mem[_4308 + 64]
                mem[t + 64] = 128
                _4354 = mem[_4311]
                mem[t + 128] = mem[_4311]
                v = 0
                w = _4311 + 32
                x = t + 160
                while v < _4354:
                    mem[x] = mem[w]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                _4613 = mem[_4308 + 96]
                mem[t + 96] = (32 * _4354) + 160
                _4633 = mem[_4613]
                mem[t + (32 * _4354) + 160] = mem[_4613]
                v = 0
                w = _4613 + 32
                x = t + (32 * _4354) + 192
                while v < _4633:
                    mem[x] = mem[w]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (32 * _4354) + (32 * _4633) + 192
                u = u + 32
                continue 
            _4353 = mem[_3183 + 32]
            mem[_3969 + 64] = t + -_3969 - 32
            _4374 = mem[_4353]
            mem[t] = mem[_4353]
            idx = 0
            s = _4353 + 32
            u = t + (32 * _4374) + 32
            v = t + 32
            while idx < _4374:
                mem[v] = u + -t - 32
                _4566 = mem[s]
                mem[u] = mem[mem[s] + 12 len 20]
                mem[u + 32] = mem[_4566 + 62 len 2]
                _4569 = mem[_4566 + 64]
                mem[u + 64] = 128
                _4612 = mem[_4569]
                mem[u + 128] = mem[_4569]
                t = 0
                w = _4569 + 32
                x = u + 160
                while t < _4612:
                    mem[x] = mem[w]
                    t = t + 1
                    w = w + 32
                    x = x + 32
                    continue 
                _4764 = mem[_4566 + 96]
                mem[u + 96] = (32 * _4612) + 160
                _4785 = mem[_4764]
                mem[u + (32 * _4612) + 160] = mem[_4764]
                t = 0
                w = _4764 + 32
                x = u + (32 * _4612) + 192
                while t < _4785:
                    mem[x] = mem[w]
                    t = t + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                u = u + (32 * _4612) + (32 * _4785) + 192
                v = v + 32
                continue 
            mem[_3969 + 96] = mem[_3183 + 76 len 20]
            mem[_3969 + 128] = mem[_3183 + 108 len 20]
            mem[_3969 + 160] = bool(mem[_3183 + 128])
            mem[_3969 + 192] = mem[_3183 + 160]
        else:
            _2292 = mem[96]
            s = 0
            while uint8(s) < _2292:
                if uint8(s) >= mem[96]:
                    revert with 0, 50
                if uint8(s) >= mem[96]:
                    revert with 0, 50
                if 20 == mem[mem[(32 * uint8(s)) + 128] + 62 len 2]:
                    _2369 = mem[mem[(32 * uint8(s)) + 128]]
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    if 0 >= mem[mem[mem[(32 * uint8(s)) + 128] + 96]]:
                        revert with 0, 50
                    _2403 = mem[mem[mem[(32 * uint8(s)) + 128] + 96] + 32]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _2403
                    require ext_code.size(address(_2369))
                    call address(_2369).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _2403
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2544 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2544] == bool(mem[_2544])
                else:
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    if 777 == mem[mem[(32 * uint8(s)) + 128] + 62 len 2]:
                        _2408 = mem[mem[(32 * uint8(s)) + 128]]
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        if 0 >= mem[mem[mem[(32 * uint8(s)) + 128] + 96]]:
                            revert with 0, 50
                        _2472 = mem[mem[mem[(32 * uint8(s)) + 128] + 96] + 32]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _2472
                        require ext_code.size(address(_2408))
                        call address(_2408).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _2472
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2631 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2631] == bool(mem[_2631])
                    else:
                        if 721 == mem[mem[(32 * uint8(s)) + 128] + 62 len 2]:
                            if uint8(s) < mem[96]:
                                if uint8(var67003) >= mem[mem[mem[(32 * uint8(s)) + 128] + 64]]:
                                    if uint8(s) == 255:
                                        revert with 0, 17
                                    s = uint8(s) + 1
                                    continue 
                                if uint8(s) < mem[96]:
                                    if uint8(s) < mem[96]:
                                        _4554 = mem[mem[(32 * uint8(s)) + 128] + 64]
                                        _4555 = mem[mem[mem[(32 * uint8(s)) + 128] + 64]]
                                        t = mem[mem[(32 * uint8(s)) + 128] + 12 len 20]
                                        idx = var71003
                                        while uint8(idx) < _4555:
                                            _4578 = mem[(32 * uint8(idx)) + _4554 + 32]
                                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            mem[mem[64] + 68] = _4578
                                            require ext_code.size(t)
                                            call t.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), _4578
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
                            _2623 = mem[mem[(32 * uint8(s)) + 128]]
                            if uint8(s) >= mem[96]:
                                revert with 0, 50
                            if 0 >= mem[mem[mem[(32 * uint8(s)) + 128] + 64]]:
                                revert with 0, 50
                            _2717 = mem[mem[mem[(32 * uint8(s)) + 128] + 64] + 32]
                            if uint8(s) >= mem[96]:
                                revert with 0, 50
                            if 0 >= mem[mem[mem[(32 * uint8(s)) + 128] + 96]]:
                                revert with 0, 50
                            _2779 = mem[mem[mem[(32 * uint8(s)) + 128] + 96] + 32]
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = _2717
                            mem[mem[64] + 100] = _2779
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            require ext_code.size(address(_2623))
                            call address(_2623).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), _2717, _2779, 160, 0
                        else:
                            _2626 = mem[mem[(32 * uint8(s)) + 128]]
                            if uint8(s) >= mem[96]:
                                revert with 0, 50
                            _2679 = mem[mem[(32 * uint8(s)) + 128] + 64]
                            if uint8(s) >= mem[96]:
                                revert with 0, 50
                            _2720 = mem[mem[(32 * uint8(s)) + 128] + 96]
                            _2721 = mem[64]
                            mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = 160
                            _2781 = mem[_2679]
                            mem[mem[64] + 164] = mem[_2679]
                            t = 0
                            u = _2679 + 32
                            v = mem[64] + 196
                            while t < _2781:
                                mem[v] = mem[u]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2721 + 100] = (32 * _2781) + 192
                            _3107 = mem[_2720]
                            mem[_2721 + (32 * _2781) + 196] = mem[_2720]
                            t = 0
                            u = _2720 + 32
                            v = _2721 + (32 * _2781) + 228
                            while t < _3107:
                                mem[v] = mem[u]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2721 + 132] = (32 * _2781) + (32 * _3107) + 224
                            mem[_2721 + (32 * _2781) + (32 * _3107) + 228] = 0
                            require ext_code.size(address(_2626))
                            call address(_2626).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2721 + (32 * _2781) + (32 * _3107) + -mem[64] + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if uint8(s) == 255:
                    revert with 0, 17
                s = uint8(s) + 1
                continue 
            if sub_e275c997 == -1:
                revert with 0, 17
            sub_e275c997++
            mem[0] = sub_e275c997
            mem[32] = 8
            u = 0
            while uint8(u) < mem[96]:
                if uint8(u) >= mem[96]:
                    revert with 0, 50
                stor8[stor6].field_0++
                mem[0] = sha3(sub_e275c997, 8)
                address(stor8[stor6][stor8[stor6].field_0].field_0) = mem[mem[(32 * uint8(u)) + 128] + 12 len 20]
                uint16(stor8[stor6][stor8[stor6].field_0].field_160) = mem[mem[(32 * uint8(u)) + 128] + 62 len 2]
                _3072 = mem[mem[mem[(32 * uint8(u)) + 128] + 64]]
                stor8[stor6][stor8[stor6].field_0].field_256 = mem[mem[mem[(32 * uint8(u)) + 128] + 64]]
                mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1
                if not _3072:
                    idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    _3620 = mem[mem[mem[(32 * uint8(u)) + 128] + 96]]
                    stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(u)) + 128] + 96]]
                    mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                    if not _3620:
                        idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                        t = mem[mem[(32 * uint8(u)) + 128] + 96] + 32
                        while mem[mem[(32 * uint8(u)) + 128] + 96] + (32 * _3620) + 32 > t:
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
                    s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                    v = mem[mem[(32 * uint8(u)) + 128] + 64] + 32
                    while mem[mem[(32 * uint8(u)) + 128] + 64] + (32 * _3072) + 32 > v:
                        stor[s] = mem[v]
                        s = s + 1
                        v = v + 32
                        continue 
                    idx = s
                    while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    _4050 = mem[mem[mem[(32 * uint8(u)) + 128] + 96]]
                    stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(u)) + 128] + 96]]
                    mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                    if not _4050:
                        idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                        v = mem[mem[(32 * uint8(u)) + 128] + 96] + 32
                        while mem[mem[(32 * uint8(u)) + 128] + 96] + (32 * _4050) + 32 > v:
                            stor[s] = mem[v]
                            s = s + 1
                            v = v + 32
                            continue 
                        idx = s
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                if uint8(u) == 255:
                    revert with 0, 17
                u = uint8(u) + 1
                continue 
            _3534 = mem[_767]
            u = 0
            while uint8(u) < _3534:
                if uint8(u) >= mem[_767]:
                    revert with 0, 50
                stor8[stor6].field_256++
                mem[0] = sha3(sub_e275c997, 8) + 1
                address(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_0) = mem[mem[(32 * uint8(u)) + _767 + 32] + 12 len 20]
                uint16(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_160) = mem[mem[(32 * uint8(u)) + _767 + 32] + 62 len 2]
                _3583 = mem[mem[mem[(32 * uint8(u)) + _767 + 32] + 64]]
                stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 = mem[mem[mem[(32 * uint8(u)) + _767 + 32] + 64]]
                mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1
                if not _3583:
                    idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    _4048 = mem[mem[mem[(32 * uint8(u)) + _767 + 32] + 96]]
                    stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(u)) + _767 + 32] + 96]]
                    mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                    if not _4048:
                        idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                        v = mem[mem[(32 * uint8(u)) + _767 + 32] + 96] + 32
                        while mem[mem[(32 * uint8(u)) + _767 + 32] + 96] + (32 * _4048) + 32 > v:
                            stor[s] = mem[v]
                            s = s + 1
                            v = v + 32
                            continue 
                        idx = s
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    t = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                    v = mem[mem[(32 * uint8(u)) + _767 + 32] + 64] + 32
                    while mem[mem[(32 * uint8(u)) + _767 + 32] + 64] + (32 * _3583) + 32 > v:
                        stor[t] = mem[v]
                        t = t + 1
                        v = v + 32
                        continue 
                    idx = t
                    while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    _4378 = mem[mem[mem[(32 * uint8(u)) + _767 + 32] + 96]]
                    stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(u)) + _767 + 32] + 96]]
                    mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                    if not _4378:
                        idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                        t = mem[mem[(32 * uint8(u)) + _767 + 32] + 96] + 32
                        while mem[mem[(32 * uint8(u)) + _767 + 32] + 96] + (32 * _4378) + 32 > t:
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
            stor8[stor6].field_512 = Mask(96, 0, stor8[stor6].field_672)
            address(stor8[stor6].field_768) = address(cd[4])
            if block.timestamp > !cd[36]:
                revert with 0, 17
            stor8[stor6].field_1024 = block.timestamp + cd[36]
            if sub_e275c997 == -1:
                revert with 0, 17
            _3712 = mem[64]
            mem[64] = mem[64] + 192
            _3713 = mem[64]
            mem[64] = mem[64] + (32 * stor8[stor6].field_0) + 32
            mem[_3713] = stor8[stor6].field_0
            t = _3713 + 32
            s = 0
            while s < stor8[stor6].field_0:
                mem[0] = sha3(sub_e275c997, 8)
                _3977 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3977] = address(stor8[stor6][s].field_0)
                mem[_3977 + 32] = uint16(stor8[stor6][s].field_160)
                _3978 = mem[64]
                mem[64] = mem[64] + (32 * stor8[stor6][s].field_256) + 32
                mem[_3978] = stor8[stor6][s].field_256
                if not stor8[stor6][s].field_256:
                    mem[_3977 + 64] = _3978
                    _4017 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6][s].field_512) + 32
                    mem[_4017] = stor8[stor6][s].field_512
                    if stor8[stor6][s].field_512:
                        mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * s) + 2
                        mem[_4017 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * s) + 2)].field_0
                        u = _4017 + 32
                        v = sha3(mem[0])
                        while _4017 + (32 * stor8[stor6][s].field_512) > u:
                            mem[u + 32] = stor1[v]
                            u = u + 32
                            v = v + 1
                            continue 
                    mem[_3977 + 96] = _4017
                else:
                    mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * s) + 1
                    mem[_3978 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * s) + 1)].field_0
                    u = _3978 + 32
                    v = sha3(mem[0])
                    while _3978 + (32 * stor8[stor6][s].field_256) > u:
                        mem[u + 32] = stor1[v]
                        u = u + 32
                        v = v + 1
                        continue 
                    mem[_3977 + 64] = _3978
                    _4552 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6][s].field_512) + 32
                    mem[_4552] = stor8[stor6][s].field_512
                    if stor8[stor6][s].field_512:
                        mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * s) + 2
                        mem[_4552 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * s) + 2)].field_0
                        u = _4552 + 32
                        v = sha3(mem[0])
                        while _4552 + (32 * stor8[stor6][s].field_512) > u:
                            mem[u + 32] = stor1[v]
                            u = u + 32
                            v = v + 1
                            continue 
                    mem[_3977 + 96] = _4552
                mem[t] = _3977
                t = t + 32
                s = s + 1
                continue 
            mem[_3712] = _3713
            _3975 = mem[64]
            mem[64] = mem[64] + (32 * stor8[stor6].field_256) + 32
            mem[_3975] = stor8[stor6].field_256
            t = _3975 + 32
            s = 0
            while s < stor8[stor6].field_256:
                mem[0] = sha3(sub_e275c997, 8) + 1
                _4316 = mem[64]
                mem[64] = mem[64] + 128
                mem[_4316] = address(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_0)
                mem[_4316 + 32] = uint16(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_160)
                _4317 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_256) + 32
                mem[_4317] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_256
                if not stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_256:
                    mem[_4316 + 64] = _4317
                    _4356 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512) + 32
                    mem[_4356] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512
                    if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512:
                        mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * s) + 2
                        mem[_4356 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s) + 2)].field_0
                        u = _4356 + 32
                        v = sha3(mem[0])
                        while _4356 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512) > u:
                            mem[u + 32] = stor1[v]
                            u = u + 32
                            v = v + 1
                            continue 
                    mem[_4316 + 96] = _4356
                else:
                    mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * s) + 1
                    mem[_4317 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s) + 1)].field_0
                    u = _4317 + 32
                    v = sha3(mem[0])
                    while _4317 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_256) > u:
                        mem[u + 32] = stor1[v]
                        u = u + 32
                        v = v + 1
                        continue 
                    mem[_4316 + 64] = _4317
                    _4737 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512) + 32
                    mem[_4737] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512
                    if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512:
                        mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * s) + 2
                        mem[_4737 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s) + 2)].field_0
                        u = _4737 + 32
                        v = sha3(mem[0])
                        while _4737 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512) > u:
                            mem[u + 32] = stor1[v]
                            u = u + 32
                            v = v + 1
                            continue 
                    mem[_4316 + 96] = _4737
                mem[t] = _4316
                t = t + 32
                s = s + 1
                continue 
            mem[_3712 + 32] = _3975
            mem[_3712 + 64] = address(stor8[stor6].field_512)
            mem[_3712 + 96] = address(stor8[stor6].field_768)
            mem[_3712 + 128] = bool(uint8(stor8[stor6].field_928))
            mem[_3712 + 160] = stor8[stor6].field_1024
            _4314 = mem[64]
            mem[mem[64]] = 32
            _4355 = mem[_3712]
            mem[mem[64] + 32] = 192
            _4375 = mem[_4355]
            mem[mem[64] + 224] = mem[_4355]
            idx = 0
            s = _4355 + 32
            t = mem[64] + (32 * _4375) + 256
            u = mem[64] + 256
            while idx < _4375:
                mem[u] = t + -_4314 - 256
                _4572 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_4572 + 62 len 2]
                _4575 = mem[_4572 + 64]
                mem[t + 64] = 128
                _4615 = mem[_4575]
                mem[t + 128] = mem[_4575]
                v = 0
                w = _4575 + 32
                x = t + 160
                while v < _4615:
                    mem[x] = mem[w]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                _4770 = mem[_4572 + 96]
                mem[t + 96] = (32 * _4615) + 160
                _4787 = mem[_4770]
                mem[t + (32 * _4615) + 160] = mem[_4770]
                v = 0
                w = _4770 + 32
                x = t + (32 * _4615) + 192
                while v < _4787:
                    mem[x] = mem[w]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (32 * _4615) + (32 * _4787) + 192
                u = u + 32
                continue 
            _4614 = mem[_3712 + 32]
            mem[_4314 + 64] = t + -_4314 - 32
            _4634 = mem[_4614]
            mem[t] = mem[_4614]
            idx = 0
            s = _4614 + 32
            u = t + (32 * _4634) + 32
            v = t + 32
            while idx < _4634:
                mem[v] = u + -t - 32
                _4742 = mem[s]
                mem[u] = mem[mem[s] + 12 len 20]
                mem[u + 32] = mem[_4742 + 62 len 2]
                _4745 = mem[_4742 + 64]
                mem[u + 64] = 128
                _4769 = mem[_4745]
                mem[u + 128] = mem[_4745]
                t = 0
                w = _4745 + 32
                x = u + 160
                while t < _4769:
                    mem[x] = mem[w]
                    t = t + 1
                    w = w + 32
                    x = x + 32
                    continue 
                _4821 = mem[_4742 + 96]
                mem[u + 96] = (32 * _4769) + 160
                _4824 = mem[_4821]
                mem[u + (32 * _4769) + 160] = mem[_4821]
                t = 0
                w = _4821 + 32
                x = u + (32 * _4769) + 192
                while t < _4824:
                    mem[x] = mem[w]
                    t = t + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                u = u + (32 * _4769) + (32 * _4824) + 192
                v = v + 32
                continue 
            mem[_4314 + 96] = mem[_3712 + 76 len 20]
            mem[_4314 + 128] = mem[_3712 + 108 len 20]
            mem[_4314 + 160] = bool(mem[_3712 + 128])
            mem[_4314 + 192] = mem[_3712 + 160]
    else:
        mem[0] = msg.sender
        mem[32] = 7
        if stor7[msg.sender]:
            if 0 >= mem[96]:
                revert with 0, 50
            if not mem[mem[128] + 12 len 20]:
                if sub_e275c997 == -1:
                    revert with 0, 17
                sub_e275c997++
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
                    _2318 = mem[mem[mem[(32 * uint8(s)) + 128] + 64]]
                    stor8[stor6][stor8[stor6].field_0].field_256 = mem[mem[mem[(32 * uint8(s)) + 128] + 64]]
                    mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1
                    if not _2318:
                        idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _3113 = mem[mem[mem[(32 * uint8(s)) + 128] + 96]]
                        stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(s)) + 128] + 96]]
                        mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                        if not _3113:
                            idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            t = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            u = mem[mem[(32 * uint8(s)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(s)) + 128] + 96] + (32 * _3113) + 32 > u:
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
                        while mem[mem[(32 * uint8(s)) + 128] + 64] + (32 * _2318) + 32 > u:
                            stor[t] = mem[u]
                            t = t + 1
                            u = u + 32
                            continue 
                        idx = t
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _3633 = mem[mem[mem[(32 * uint8(s)) + 128] + 96]]
                        stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(s)) + 128] + 96]]
                        mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                        if not _3633:
                            idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            t = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            u = mem[mem[(32 * uint8(s)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(s)) + 128] + 96] + (32 * _3633) + 32 > u:
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
                _3033 = mem[_767]
                s = 0
                while uint8(s) < _3033:
                    if uint8(s) >= mem[_767]:
                        revert with 0, 50
                    stor8[stor6].field_256++
                    mem[0] = sha3(sub_e275c997, 8) + 1
                    address(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_0) = mem[mem[(32 * uint8(s)) + _767 + 32] + 12 len 20]
                    uint16(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_160) = mem[mem[(32 * uint8(s)) + _767 + 32] + 62 len 2]
                    _3079 = mem[mem[mem[(32 * uint8(s)) + _767 + 32] + 64]]
                    stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 = mem[mem[mem[(32 * uint8(s)) + _767 + 32] + 64]]
                    mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1
                    if not _3079:
                        idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _3631 = mem[mem[mem[(32 * uint8(s)) + _767 + 32] + 96]]
                        stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(s)) + _767 + 32] + 96]]
                        mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                        if not _3631:
                            idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            t = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            u = mem[mem[(32 * uint8(s)) + _767 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(s)) + _767 + 32] + 96] + (32 * _3631) + 32 > u:
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
                        t = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                        u = mem[mem[(32 * uint8(s)) + _767 + 32] + 64] + 32
                        while mem[mem[(32 * uint8(s)) + _767 + 32] + 64] + (32 * _3079) + 32 > u:
                            stor[t] = mem[u]
                            t = t + 1
                            u = u + 32
                            continue 
                        idx = t
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _4056 = mem[mem[mem[(32 * uint8(s)) + _767 + 32] + 96]]
                        stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(s)) + _767 + 32] + 96]]
                        mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                        if not _4056:
                            idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            t = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            u = mem[mem[(32 * uint8(s)) + _767 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(s)) + _767 + 32] + 96] + (32 * _4056) + 32 > u:
                                stor[t] = mem[u]
                                t = t + 1
                                u = u + 32
                                continue 
                            idx = t
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    if uint8(s) == 255:
                        revert with 0, 17
                    s = uint8(s) + 1
                    continue 
                stor8[stor6].field_512 = Mask(96, 0, stor8[stor6].field_672)
                address(stor8[stor6].field_768) = address(cd[4])
                if block.timestamp > !cd[36]:
                    revert with 0, 17
                stor8[stor6].field_1024 = block.timestamp + cd[36]
                if sub_e275c997 == -1:
                    revert with 0, 17
                _3189 = mem[64]
                mem[64] = mem[64] + 192
                _3190 = mem[64]
                mem[64] = mem[64] + (32 * stor8[stor6].field_0) + 32
                mem[_3190] = stor8[stor6].field_0
                t = _3190 + 32
                s = 0
                while s < stor8[stor6].field_0:
                    mem[0] = sha3(sub_e275c997, 8)
                    _3558 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3558] = address(stor8[stor6][s].field_0)
                    mem[_3558 + 32] = uint16(stor8[stor6][s].field_160)
                    _3559 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6][s].field_256) + 32
                    mem[_3559] = stor8[stor6][s].field_256
                    if not stor8[stor6][s].field_256:
                        mem[_3558 + 64] = _3559
                        _3587 = mem[64]
                        mem[64] = mem[64] + (32 * stor8[stor6][s].field_512) + 32
                        mem[_3587] = stor8[stor6][s].field_512
                        if stor8[stor6][s].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * s) + 2
                            mem[_3587 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * s) + 2)].field_0
                            u = _3587 + 32
                            v = sha3(mem[0])
                            while _3587 + (32 * stor8[stor6][s].field_512) > u:
                                mem[u + 32] = stor1[v]
                                u = u + 32
                                v = v + 1
                                continue 
                        mem[_3558 + 96] = _3587
                    else:
                        mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * s) + 1
                        mem[_3559 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * s) + 1)].field_0
                        u = _3559 + 32
                        v = sha3(mem[0])
                        while _3559 + (32 * stor8[stor6][s].field_256) > u:
                            mem[u + 32] = stor1[v]
                            u = u + 32
                            v = v + 1
                            continue 
                        mem[_3558 + 64] = _3559
                        _4300 = mem[64]
                        mem[64] = mem[64] + (32 * stor8[stor6][s].field_512) + 32
                        mem[_4300] = stor8[stor6][s].field_512
                        if stor8[stor6][s].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * s) + 2
                            mem[_4300 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * s) + 2)].field_0
                            u = _4300 + 32
                            v = sha3(mem[0])
                            while _4300 + (32 * stor8[stor6][s].field_512) > u:
                                mem[u + 32] = stor1[v]
                                u = u + 32
                                v = v + 1
                                continue 
                        mem[_3558 + 96] = _4300
                    mem[t] = _3558
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_3189] = _3190
                _3556 = mem[64]
                mem[64] = mem[64] + (32 * stor8[stor6].field_256) + 32
                mem[_3556] = stor8[stor6].field_256
                t = _3556 + 32
                s = 0
                while s < stor8[stor6].field_256:
                    mem[0] = sha3(sub_e275c997, 8) + 1
                    _3986 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3986] = address(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_0)
                    mem[_3986 + 32] = uint16(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_160)
                    _3987 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_256) + 32
                    mem[_3987] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_256
                    if not stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_256:
                        mem[_3986 + 64] = _3987
                        _4023 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512) + 32
                        mem[_4023] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512
                        if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * s) + 2
                            mem[_4023 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s) + 2)].field_0
                            u = _4023 + 32
                            v = sha3(mem[0])
                            while _4023 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512) > u:
                                mem[u + 32] = stor1[v]
                                u = u + 32
                                v = v + 1
                                continue 
                        mem[_3986 + 96] = _4023
                    else:
                        mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * s) + 1
                        mem[_3987 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s) + 1)].field_0
                        u = _3987 + 32
                        v = sha3(mem[0])
                        while _3987 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_256) > u:
                            mem[u + 32] = stor1[v]
                            u = u + 32
                            v = v + 1
                            continue 
                        mem[_3986 + 64] = _3987
                        _4556 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512) + 32
                        mem[_4556] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512
                        if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * s) + 2
                            mem[_4556 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s) + 2)].field_0
                            u = _4556 + 32
                            v = sha3(mem[0])
                            while _4556 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * s)].field_512) > u:
                                mem[u + 32] = stor1[v]
                                u = u + 32
                                v = v + 1
                                continue 
                        mem[_3986 + 96] = _4556
                    mem[t] = _3986
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_3189 + 32] = _3556
                mem[_3189 + 64] = address(stor8[stor6].field_512)
                mem[_3189 + 96] = address(stor8[stor6].field_768)
                mem[_3189 + 128] = bool(uint8(stor8[stor6].field_928))
                mem[_3189 + 160] = stor8[stor6].field_1024
                _3984 = mem[64]
                mem[mem[64]] = 32
                _4022 = mem[_3189]
                mem[mem[64] + 32] = 192
                _4053 = mem[_4022]
                mem[mem[64] + 224] = mem[_4022]
                idx = 0
                s = _4022 + 32
                t = mem[64] + (32 * _4053) + 256
                u = mem[64] + 256
                while idx < _4053:
                    mem[u] = t + -_3984 - 256
                    _4323 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_4323 + 62 len 2]
                    _4326 = mem[_4323 + 64]
                    mem[t + 64] = 128
                    _4361 = mem[_4326]
                    mem[t + 128] = mem[_4326]
                    v = 0
                    w = _4326 + 32
                    x = t + 160
                    while v < _4361:
                        mem[x] = mem[w]
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    _4621 = mem[_4323 + 96]
                    mem[t + 96] = (32 * _4361) + 160
                    _4637 = mem[_4621]
                    mem[t + (32 * _4361) + 160] = mem[_4621]
                    v = 0
                    w = _4621 + 32
                    x = t + (32 * _4361) + 192
                    while v < _4637:
                        mem[x] = mem[w]
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = t + (32 * _4361) + (32 * _4637) + 192
                    u = u + 32
                    continue 
                _4360 = mem[_3189 + 32]
                mem[_3984 + 64] = t + -_3984 - 32
                _4379 = mem[_4360]
                mem[t] = mem[_4360]
                idx = 0
                s = _4360 + 32
                u = t + (32 * _4379) + 32
                v = t + 32
                while idx < _4379:
                    mem[v] = u + -t - 32
                    _4580 = mem[s]
                    mem[u] = mem[mem[s] + 12 len 20]
                    mem[u + 32] = mem[_4580 + 62 len 2]
                    _4583 = mem[_4580 + 64]
                    mem[u + 64] = 128
                    _4620 = mem[_4583]
                    mem[u + 128] = mem[_4583]
                    t = 0
                    w = _4583 + 32
                    x = u + 160
                    while t < _4620:
                        mem[x] = mem[w]
                        t = t + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    _4771 = mem[_4580 + 96]
                    mem[u + 96] = (32 * _4620) + 160
                    _4788 = mem[_4771]
                    mem[u + (32 * _4620) + 160] = mem[_4771]
                    t = 0
                    w = _4771 + 32
                    x = u + (32 * _4620) + 192
                    while t < _4788:
                        mem[x] = mem[w]
                        t = t + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    u = u + (32 * _4620) + (32 * _4788) + 192
                    v = v + 32
                    continue 
                mem[_3984 + 96] = mem[_3189 + 76 len 20]
                mem[_3984 + 128] = mem[_3189 + 108 len 20]
                mem[_3984 + 160] = bool(mem[_3189 + 128])
                mem[_3984 + 192] = mem[_3189 + 160]
            else:
                _2294 = mem[96]
                s = 0
                while uint8(s) < _2294:
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    if 20 == mem[mem[(32 * uint8(s)) + 128] + 62 len 2]:
                        _2374 = mem[mem[(32 * uint8(s)) + 128]]
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        if 0 >= mem[mem[mem[(32 * uint8(s)) + 128] + 96]]:
                            revert with 0, 50
                        _2411 = mem[mem[mem[(32 * uint8(s)) + 128] + 96] + 32]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _2411
                        require ext_code.size(address(_2374))
                        call address(_2374).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _2411
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2560 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2560] == bool(mem[_2560])
                    else:
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        if 777 == mem[mem[(32 * uint8(s)) + 128] + 62 len 2]:
                            _2416 = mem[mem[(32 * uint8(s)) + 128]]
                            if uint8(s) >= mem[96]:
                                revert with 0, 50
                            if 0 >= mem[mem[mem[(32 * uint8(s)) + 128] + 96]]:
                                revert with 0, 50
                            _2484 = mem[mem[mem[(32 * uint8(s)) + 128] + 96] + 32]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = _2484
                            require ext_code.size(address(_2416))
                            call address(_2416).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), _2484
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2650 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2650] == bool(mem[_2650])
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
                                            _4559 = mem[mem[(32 * uint8(s)) + 128] + 64]
                                            _4560 = mem[mem[mem[(32 * uint8(s)) + 128] + 64]]
                                            t = mem[mem[(32 * uint8(s)) + 128] + 12 len 20]
                                            idx = var72003
                                            while uint8(idx) < _4560:
                                                _4592 = mem[(32 * uint8(idx)) + _4559 + 32]
                                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = this.address
                                                mem[mem[64] + 68] = _4592
                                                require ext_code.size(t)
                                                call t.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(this.address), _4592
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
                                _2642 = mem[mem[(32 * uint8(s)) + 128]]
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(s)) + 128] + 64]]:
                                    revert with 0, 50
                                _2731 = mem[mem[mem[(32 * uint8(s)) + 128] + 64] + 32]
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(s)) + 128] + 96]]:
                                    revert with 0, 50
                                _2795 = mem[mem[mem[(32 * uint8(s)) + 128] + 96] + 32]
                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _2731
                                mem[mem[64] + 100] = _2795
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(address(_2642))
                                call address(_2642).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _2731, _2795, 160, 0
                            else:
                                _2645 = mem[mem[(32 * uint8(s)) + 128]]
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                _2692 = mem[mem[(32 * uint8(s)) + 128] + 64]
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                _2734 = mem[mem[(32 * uint8(s)) + 128] + 96]
                                _2735 = mem[64]
                                mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = 160
                                _2797 = mem[_2692]
                                mem[mem[64] + 164] = mem[_2692]
                                idx = 0
                                t = _2692 + 32
                                u = mem[64] + 196
                                while idx < _2797:
                                    mem[u] = mem[t]
                                    idx = idx + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2735 + 100] = (32 * _2797) + 192
                                _3116 = mem[_2734]
                                mem[_2735 + (32 * _2797) + 196] = mem[_2734]
                                idx = 0
                                t = _2734 + 32
                                u = _2735 + (32 * _2797) + 228
                                while idx < _3116:
                                    mem[u] = mem[t]
                                    idx = idx + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2735 + 132] = (32 * _2797) + (32 * _3116) + 224
                                mem[_2735 + (32 * _2797) + (32 * _3116) + 228] = 0
                                require ext_code.size(address(_2645))
                                call address(_2645).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2735 + (32 * _2797) + (32 * _3116) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if uint8(s) == 255:
                        revert with 0, 17
                    s = uint8(s) + 1
                    continue 
                if sub_e275c997 == -1:
                    revert with 0, 17
                sub_e275c997++
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
                    _3086 = mem[mem[mem[(32 * uint8(t)) + 128] + 64]]
                    stor8[stor6][stor8[stor6].field_0].field_256 = mem[mem[mem[(32 * uint8(t)) + 128] + 64]]
                    mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1
                    if not _3086:
                        idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _3636 = mem[mem[mem[(32 * uint8(t)) + 128] + 96]]
                        stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(t)) + 128] + 96]]
                        mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                        if not _3636:
                            idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            u = mem[mem[(32 * uint8(t)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(t)) + 128] + 96] + (32 * _3636) + 32 > u:
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
                        while mem[mem[(32 * uint8(t)) + 128] + 64] + (32 * _3086) + 32 > u:
                            stor[s] = mem[u]
                            s = s + 1
                            u = u + 32
                            continue 
                        idx = s
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _4065 = mem[mem[mem[(32 * uint8(t)) + 128] + 96]]
                        stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(t)) + 128] + 96]]
                        mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                        if not _4065:
                            idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            u = mem[mem[(32 * uint8(t)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(t)) + 128] + 96] + (32 * _4065) + 32 > u:
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
                _3538 = mem[_767]
                t = 0
                while uint8(t) < _3538:
                    if uint8(t) >= mem[_767]:
                        revert with 0, 50
                    stor8[stor6].field_256++
                    mem[0] = sha3(sub_e275c997, 8) + 1
                    address(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_0) = mem[mem[(32 * uint8(t)) + _767 + 32] + 12 len 20]
                    uint16(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_160) = mem[mem[(32 * uint8(t)) + _767 + 32] + 62 len 2]
                    _3594 = mem[mem[mem[(32 * uint8(t)) + _767 + 32] + 64]]
                    stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 = mem[mem[mem[(32 * uint8(t)) + _767 + 32] + 64]]
                    mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1
                    if not _3594:
                        idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _4063 = mem[mem[mem[(32 * uint8(t)) + _767 + 32] + 96]]
                        stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(t)) + _767 + 32] + 96]]
                        mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                        if not _4063:
                            idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            u = mem[mem[(32 * uint8(t)) + _767 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(t)) + _767 + 32] + 96] + (32 * _4063) + 32 > u:
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
                        u = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                        v = mem[mem[(32 * uint8(t)) + _767 + 32] + 64] + 32
                        while mem[mem[(32 * uint8(t)) + _767 + 32] + 64] + (32 * _3594) + 32 > v:
                            stor[u] = mem[v]
                            u = u + 1
                            v = v + 32
                            continue 
                        idx = u
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _4383 = mem[mem[mem[(32 * uint8(t)) + _767 + 32] + 96]]
                        stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(t)) + _767 + 32] + 96]]
                        mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                        if not _4383:
                            idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            u = mem[mem[(32 * uint8(t)) + _767 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(t)) + _767 + 32] + 96] + (32 * _4383) + 32 > u:
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
                stor8[stor6].field_512 = Mask(96, 0, stor8[stor6].field_672)
                address(stor8[stor6].field_768) = address(cd[4])
                if block.timestamp > !cd[36]:
                    revert with 0, 17
                stor8[stor6].field_1024 = block.timestamp + cd[36]
                if sub_e275c997 == -1:
                    revert with 0, 17
                _3723 = mem[64]
                mem[64] = mem[64] + 192
                _3724 = mem[64]
                mem[64] = mem[64] + (32 * stor8[stor6].field_0) + 32
                mem[_3724] = stor8[stor6].field_0
                t = _3724 + 32
                s = 0
                while s < stor8[stor6].field_0:
                    mem[0] = sha3(sub_e275c997, 8)
                    _3992 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3992] = address(stor8[stor6][s].field_0)
                    mem[_3992 + 32] = uint16(stor8[stor6][s].field_160)
                    _3993 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6][s].field_256) + 32
                    mem[_3993] = stor8[stor6][s].field_256
                    if not stor8[stor6][s].field_256:
                        mem[_3992 + 64] = _3993
                        _4025 = mem[64]
                        mem[64] = mem[64] + (32 * stor8[stor6][s].field_512) + 32
                        mem[_4025] = stor8[stor6][s].field_512
                        if stor8[stor6][s].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * s) + 2
                            mem[_4025 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * s) + 2)].field_0
                            u = _4025 + 32
                            v = sha3(mem[0])
                            while _4025 + (32 * stor8[stor6][s].field_512) > u:
                                mem[u + 32] = stor1[v]
                                u = u + 32
                                v = v + 1
                                continue 
                        mem[_3992 + 96] = _4025
                    else:
                        mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * s) + 1
                        mem[_3993 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * s) + 1)].field_0
                        u = _3993 + 32
                        v = sha3(mem[0])
                        while _3993 + (32 * stor8[stor6][s].field_256) > u:
                            mem[u + 32] = stor1[v]
                            u = u + 32
                            v = v + 1
                            continue 
                        mem[_3992 + 64] = _3993
                        _4557 = mem[64]
                        mem[64] = mem[64] + (32 * stor8[stor6][s].field_512) + 32
                        mem[_4557] = stor8[stor6][s].field_512
                        if stor8[stor6][s].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * s) + 2
                            mem[_4557 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * s) + 2)].field_0
                            u = _4557 + 32
                            v = sha3(mem[0])
                            while _4557 + (32 * stor8[stor6][s].field_512) > u:
                                mem[u + 32] = stor1[v]
                                u = u + 32
                                v = v + 1
                                continue 
                        mem[_3992 + 96] = _4557
                    mem[t] = _3992
                    t = t + 32
                    s = s + 1
                    continue 
                mem[_3723] = _3724
                _3990 = mem[64]
                mem[64] = mem[64] + (32 * stor8[stor6].field_256) + 32
                mem[_3990] = stor8[stor6].field_256
                s = _3990 + 32
                idx = 0
                while idx < stor8[stor6].field_256:
                    mem[0] = sha3(sub_e275c997, 8) + 1
                    _4331 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_4331] = address(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_0)
                    mem[_4331 + 32] = uint16(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_160)
                    _4332 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256) + 32
                    mem[_4332] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256
                    if not stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256:
                        mem[_4331 + 64] = _4332
                        _4363 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                        mem[_4363] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512
                        if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 2
                            mem[_4363 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                            t = _4363 + 32
                            u = sha3(mem[0])
                            while _4363 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_4331 + 96] = _4363
                    else:
                        mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 1
                        mem[_4332 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 1)].field_0
                        t = _4332 + 32
                        u = sha3(mem[0])
                        while _4332 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_4331 + 64] = _4332
                        _4738 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                        mem[_4738] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512
                        if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 2
                            mem[_4738 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                            t = _4738 + 32
                            u = sha3(mem[0])
                            while _4738 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_4331 + 96] = _4738
                    mem[s] = _4331
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[_3723 + 32] = _3990
                mem[_3723 + 64] = address(stor8[stor6].field_512)
                mem[_3723 + 96] = address(stor8[stor6].field_768)
                mem[_3723 + 128] = bool(uint8(stor8[stor6].field_928))
                mem[_3723 + 160] = stor8[stor6].field_1024
                _4329 = mem[64]
                mem[mem[64]] = 32
                _4362 = mem[_3723]
                mem[mem[64] + 32] = 192
                _4380 = mem[_4362]
                mem[mem[64] + 224] = mem[_4362]
                idx = 0
                s = _4362 + 32
                t = mem[64] + (32 * _4380) + 256
                u = mem[64] + 256
                while idx < _4380:
                    mem[u] = t + -_4329 - 256
                    _4586 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_4586 + 62 len 2]
                    _4589 = mem[_4586 + 64]
                    mem[t + 64] = 128
                    _4623 = mem[_4589]
                    mem[t + 128] = mem[_4589]
                    v = 0
                    w = _4589 + 32
                    x = t + 160
                    while v < _4623:
                        mem[x] = mem[w]
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    _4777 = mem[_4586 + 96]
                    mem[t + 96] = (32 * _4623) + 160
                    _4790 = mem[_4777]
                    mem[t + (32 * _4623) + 160] = mem[_4777]
                    v = 0
                    w = _4777 + 32
                    x = t + (32 * _4623) + 192
                    while v < _4790:
                        mem[x] = mem[w]
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = t + (32 * _4623) + (32 * _4790) + 192
                    u = u + 32
                    continue 
                _4622 = mem[_3723 + 32]
                mem[_4329 + 64] = t + -_4329 - 32
                _4638 = mem[_4622]
                mem[t] = mem[_4622]
                idx = 0
                s = _4622 + 32
                u = t + (32 * _4638) + 32
                v = t + 32
                while idx < _4638:
                    mem[v] = u + -t - 32
                    _4750 = mem[s]
                    mem[u] = mem[mem[s] + 12 len 20]
                    mem[u + 32] = mem[_4750 + 62 len 2]
                    _4753 = mem[_4750 + 64]
                    mem[u + 64] = 128
                    _4776 = mem[_4753]
                    mem[u + 128] = mem[_4753]
                    t = 0
                    w = _4753 + 32
                    x = u + 160
                    while t < _4776:
                        mem[x] = mem[w]
                        t = t + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    _4822 = mem[_4750 + 96]
                    mem[u + 96] = (32 * _4776) + 160
                    _4825 = mem[_4822]
                    mem[u + (32 * _4776) + 160] = mem[_4822]
                    t = 0
                    w = _4822 + 32
                    x = u + (32 * _4776) + 192
                    while t < _4825:
                        mem[x] = mem[w]
                        t = t + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    u = u + (32 * _4776) + (32 * _4825) + 192
                    v = v + 32
                    continue 
                mem[_4329 + 96] = mem[_3723 + 76 len 20]
                mem[_4329 + 128] = mem[_3723 + 108 len 20]
                mem[_4329 + 160] = bool(mem[_3723 + 128])
                mem[_4329 + 192] = mem[_3723 + 160]
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
            _1546 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1546] == bool(mem[_1546])
            if 0 >= mem[96]:
                revert with 0, 50
            if not mem[mem[128] + 12 len 20]:
                if sub_e275c997 == -1:
                    revert with 0, 17
                sub_e275c997++
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
                    _2327 = mem[mem[mem[(32 * uint8(s)) + 128] + 64]]
                    stor8[stor6][stor8[stor6].field_0].field_256 = mem[mem[mem[(32 * uint8(s)) + 128] + 64]]
                    mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1
                    if not _2327:
                        idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _3122 = mem[mem[mem[(32 * uint8(s)) + 128] + 96]]
                        stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(s)) + 128] + 96]]
                        mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                        if not _3122:
                            idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            t = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            u = mem[mem[(32 * uint8(s)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(s)) + 128] + 96] + (32 * _3122) + 32 > u:
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
                        while mem[mem[(32 * uint8(s)) + 128] + 64] + (32 * _2327) + 32 > u:
                            stor[t] = mem[u]
                            t = t + 1
                            u = u + 32
                            continue 
                        u = t
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > u:
                            stor[u] = 0
                            u = u + 1
                            continue 
                        _3649 = mem[mem[mem[(32 * uint8(s)) + 128] + 96]]
                        stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(s)) + 128] + 96]]
                        mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                        if not _3649:
                            idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            t = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            u = mem[mem[(32 * uint8(s)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(s)) + 128] + 96] + (32 * _3649) + 32 > u:
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
                _3036 = mem[_767]
                s = 0
                while uint8(s) < _3036:
                    if uint8(s) >= mem[_767]:
                        revert with 0, 50
                    stor8[stor6].field_256++
                    mem[0] = sha3(sub_e275c997, 8) + 1
                    address(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_0) = mem[mem[(32 * uint8(s)) + _767 + 32] + 12 len 20]
                    uint16(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_160) = mem[mem[(32 * uint8(s)) + _767 + 32] + 62 len 2]
                    _3093 = mem[mem[mem[(32 * uint8(s)) + _767 + 32] + 64]]
                    stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 = mem[mem[mem[(32 * uint8(s)) + _767 + 32] + 64]]
                    mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1
                    if not _3093:
                        t = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                        _3647 = mem[mem[mem[(32 * uint8(s)) + _767 + 32] + 96]]
                        stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(s)) + _767 + 32] + 96]]
                        mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                        if not _3647:
                            idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            t = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            u = mem[mem[(32 * uint8(s)) + _767 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(s)) + _767 + 32] + 96] + (32 * _3647) + 32 > u:
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
                        t = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                        u = mem[mem[(32 * uint8(s)) + _767 + 32] + 64] + 32
                        while mem[mem[(32 * uint8(s)) + _767 + 32] + 64] + (32 * _3093) + 32 > u:
                            stor[t] = mem[u]
                            t = t + 1
                            u = u + 32
                            continue 
                        idx = t
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _4071 = mem[mem[mem[(32 * uint8(s)) + _767 + 32] + 96]]
                        stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(s)) + _767 + 32] + 96]]
                        mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                        if not _4071:
                            idx = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            t = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            u = mem[mem[(32 * uint8(s)) + _767 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(s)) + _767 + 32] + 96] + (32 * _4071) + 32 > u:
                                stor[t] = mem[u]
                                t = t + 1
                                u = u + 32
                                continue 
                            idx = t
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    if uint8(s) == 255:
                        revert with 0, 17
                    s = uint8(s) + 1
                    continue 
                stor8[stor6].field_512 = Mask(96, 0, stor8[stor6].field_672)
                address(stor8[stor6].field_768) = address(cd[4])
                if block.timestamp > !cd[36]:
                    revert with 0, 17
                stor8[stor6].field_1024 = block.timestamp + cd[36]
                if sub_e275c997 == -1:
                    revert with 0, 17
                _3195 = mem[64]
                mem[64] = mem[64] + 192
                _3196 = mem[64]
                mem[64] = mem[64] + (32 * stor8[stor6].field_0) + 32
                mem[_3196] = stor8[stor6].field_0
                s = _3196 + 32
                idx = 0
                while idx < stor8[stor6].field_0:
                    mem[0] = sha3(sub_e275c997, 8)
                    _3568 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3568] = address(stor8[stor6][idx].field_0)
                    mem[_3568 + 32] = uint16(stor8[stor6][idx].field_160)
                    _3569 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6][idx].field_256) + 32
                    mem[_3569] = stor8[stor6][idx].field_256
                    if not stor8[stor6][idx].field_256:
                        mem[_3568 + 64] = _3569
                        _3598 = mem[64]
                        mem[64] = mem[64] + (32 * stor8[stor6][idx].field_512) + 32
                        mem[_3598] = stor8[stor6][idx].field_512
                        if stor8[stor6][idx].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * idx) + 2
                            mem[_3598 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                            t = _3598 + 32
                            u = sha3(mem[0])
                            while _3598 + (32 * stor8[stor6][idx].field_512) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_3568 + 96] = _3598
                    else:
                        mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * idx) + 1
                        mem[_3569 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * idx) + 1)].field_0
                        t = _3569 + 32
                        u = sha3(mem[0])
                        while _3569 + (32 * stor8[stor6][idx].field_256) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_3568 + 64] = _3569
                        _4304 = mem[64]
                        mem[64] = mem[64] + (32 * stor8[stor6][idx].field_512) + 32
                        mem[_4304] = stor8[stor6][idx].field_512
                        if stor8[stor6][idx].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * idx) + 2
                            mem[_4304 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                            t = _4304 + 32
                            u = sha3(mem[0])
                            while _4304 + (32 * stor8[stor6][idx].field_512) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_3568 + 96] = _4304
                    mem[s] = _3568
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[_3195] = _3196
                _3566 = mem[64]
                mem[64] = mem[64] + (32 * stor8[stor6].field_256) + 32
                mem[_3566] = stor8[stor6].field_256
                s = _3566 + 32
                idx = 0
                while idx < stor8[stor6].field_256:
                    mem[0] = sha3(sub_e275c997, 8) + 1
                    _4001 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_4001] = address(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_0)
                    mem[_4001 + 32] = uint16(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_160)
                    _4002 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256) + 32
                    mem[_4002] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256
                    if not stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256:
                        mem[_4001 + 64] = _4002
                        _4031 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                        mem[_4031] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512
                        if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 2
                            mem[_4031 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                            t = _4031 + 32
                            u = sha3(mem[0])
                            while _4031 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_4001 + 96] = _4031
                    else:
                        mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 1
                        mem[_4002 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 1)].field_0
                        t = _4002 + 32
                        u = sha3(mem[0])
                        while _4002 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_4001 + 64] = _4002
                        _4561 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                        mem[_4561] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512
                        if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 2
                            mem[_4561 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                            t = _4561 + 32
                            u = sha3(mem[0])
                            while _4561 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_4001 + 96] = _4561
                    mem[s] = _4001
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[_3195 + 32] = _3566
                mem[_3195 + 64] = address(stor8[stor6].field_512)
                mem[_3195 + 96] = address(stor8[stor6].field_768)
                mem[_3195 + 128] = bool(uint8(stor8[stor6].field_928))
                mem[_3195 + 160] = stor8[stor6].field_1024
                _3999 = mem[64]
                mem[mem[64]] = 32
                _4030 = mem[_3195]
                mem[mem[64] + 32] = 192
                _4068 = mem[_4030]
                mem[mem[64] + 224] = mem[_4030]
                idx = 0
                s = _4030 + 32
                t = mem[64] + (32 * _4068) + 256
                u = mem[64] + 256
                while idx < _4068:
                    mem[u] = t + -_3999 - 256
                    _4338 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_4338 + 62 len 2]
                    _4341 = mem[_4338 + 64]
                    mem[t + 64] = 128
                    _4368 = mem[_4341]
                    mem[t + 128] = mem[_4341]
                    v = 0
                    w = _4341 + 32
                    x = t + 160
                    while v < _4368:
                        mem[x] = mem[w]
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    _4629 = mem[_4338 + 96]
                    mem[t + 96] = (32 * _4368) + 160
                    _4641 = mem[_4629]
                    mem[t + (32 * _4368) + 160] = mem[_4629]
                    v = 0
                    w = _4629 + 32
                    x = t + (32 * _4368) + 192
                    while v < _4641:
                        mem[x] = mem[w]
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = t + (32 * _4368) + (32 * _4641) + 192
                    u = u + 32
                    continue 
                _4367 = mem[_3195 + 32]
                mem[_3999 + 64] = t + -_3999 - 32
                _4384 = mem[_4367]
                mem[t] = mem[_4367]
                idx = 0
                s = _4367 + 32
                u = t + (32 * _4384) + 32
                v = t + 32
                while idx < _4384:
                    mem[v] = u + -t - 32
                    _4594 = mem[s]
                    mem[u] = mem[mem[s] + 12 len 20]
                    mem[u + 32] = mem[_4594 + 62 len 2]
                    _4597 = mem[_4594 + 64]
                    mem[u + 64] = 128
                    _4628 = mem[_4597]
                    mem[u + 128] = mem[_4597]
                    t = 0
                    w = _4597 + 32
                    x = u + 160
                    while t < _4628:
                        mem[x] = mem[w]
                        t = t + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    _4778 = mem[_4594 + 96]
                    mem[u + 96] = (32 * _4628) + 160
                    _4791 = mem[_4778]
                    mem[u + (32 * _4628) + 160] = mem[_4778]
                    t = 0
                    w = _4778 + 32
                    x = u + (32 * _4628) + 192
                    while t < _4791:
                        mem[x] = mem[w]
                        t = t + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    u = u + (32 * _4628) + (32 * _4791) + 192
                    v = v + 32
                    continue 
                mem[_3999 + 96] = mem[_3195 + 76 len 20]
                mem[_3999 + 128] = mem[_3195 + 108 len 20]
                mem[_3999 + 160] = bool(mem[_3195 + 128])
                mem[_3999 + 192] = mem[_3195 + 160]
            else:
                _2296 = mem[96]
                s = 0
                while uint8(s) < _2296:
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    if 20 == mem[mem[(32 * uint8(s)) + 128] + 62 len 2]:
                        _2379 = mem[mem[(32 * uint8(s)) + 128]]
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        if 0 >= mem[mem[mem[(32 * uint8(s)) + 128] + 96]]:
                            revert with 0, 50
                        _2419 = mem[mem[mem[(32 * uint8(s)) + 128] + 96] + 32]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _2419
                        require ext_code.size(address(_2379))
                        call address(_2379).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _2419
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2576 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2576] == bool(mem[_2576])
                    else:
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        if 777 == mem[mem[(32 * uint8(s)) + 128] + 62 len 2]:
                            _2424 = mem[mem[(32 * uint8(s)) + 128]]
                            if uint8(s) >= mem[96]:
                                revert with 0, 50
                            if 0 >= mem[mem[mem[(32 * uint8(s)) + 128] + 96]]:
                                revert with 0, 50
                            _2496 = mem[mem[mem[(32 * uint8(s)) + 128] + 96] + 32]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = _2496
                            require ext_code.size(address(_2424))
                            call address(_2424).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), _2496
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2669 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2669] == bool(mem[_2669])
                        else:
                            if 721 == mem[mem[(32 * uint8(s)) + 128] + 62 len 2]:
                                if uint8(s) < mem[96]:
                                    if uint8(var77003) >= mem[mem[mem[(32 * uint8(s)) + 128] + 64]]:
                                        if uint8(s) == 255:
                                            revert with 0, 17
                                        s = uint8(s) + 1
                                        continue 
                                    if uint8(s) < mem[96]:
                                        if uint8(s) < mem[96]:
                                            _4564 = mem[mem[(32 * uint8(s)) + 128] + 64]
                                            _4565 = mem[mem[mem[(32 * uint8(s)) + 128] + 64]]
                                            t = mem[mem[(32 * uint8(s)) + 128] + 12 len 20]
                                            idx = var81003
                                            while uint8(idx) < _4565:
                                                _4606 = mem[(32 * uint8(idx)) + _4564 + 32]
                                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = this.address
                                                mem[mem[64] + 68] = _4606
                                                require ext_code.size(t)
                                                call t.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(this.address), _4606
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
                                _2661 = mem[mem[(32 * uint8(s)) + 128]]
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(s)) + 128] + 64]]:
                                    revert with 0, 50
                                _2745 = mem[mem[mem[(32 * uint8(s)) + 128] + 64] + 32]
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                if 0 >= mem[mem[mem[(32 * uint8(s)) + 128] + 96]]:
                                    revert with 0, 50
                                _2811 = mem[mem[mem[(32 * uint8(s)) + 128] + 96] + 32]
                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _2745
                                mem[mem[64] + 100] = _2811
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(address(_2661))
                                call address(_2661).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _2745, _2811, 160, 0
                            else:
                                _2664 = mem[mem[(32 * uint8(s)) + 128]]
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                _2705 = mem[mem[(32 * uint8(s)) + 128] + 64]
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                _2748 = mem[mem[(32 * uint8(s)) + 128] + 96]
                                mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = 160
                                _2813 = mem[_2705]
                                mem[mem[64] + 164] = mem[_2705]
                                idx = 0
                                t = _2705 + 32
                                u = mem[64] + 196
                                while idx < _2813:
                                    mem[u] = mem[t]
                                    idx = idx + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[mem[64] + 100] = (32 * _2813) + 192
                                _3125 = mem[_2748]
                                mem[mem[64] + (32 * _2813) + 196] = mem[_2748]
                                idx = 0
                                t = _2748 + 32
                                u = mem[64] + (32 * _2813) + 228
                                while idx < _3125:
                                    mem[u] = mem[t]
                                    idx = idx + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[mem[64] + 132] = (32 * _2813) + (32 * _3125) + 224
                                mem[mem[64] + (32 * _2813) + (32 * _3125) + 228] = 0
                                require ext_code.size(address(_2664))
                                call address(_2664).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), 160, (32 * _2813) + 192, (32 * _2813) + (32 * _3125) + 224, mem[mem[64] + 164 len (32 * _2813) + (32 * _3125) + 64], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if uint8(s) == 255:
                        revert with 0, 17
                    s = uint8(s) + 1
                    continue 
                if sub_e275c997 == -1:
                    revert with 0, 17
                sub_e275c997++
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
                    _3100 = mem[mem[mem[(32 * uint8(t)) + 128] + 64]]
                    stor8[stor6][stor8[stor6].field_0].field_256 = mem[mem[mem[(32 * uint8(t)) + 128] + 64]]
                    mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1
                    if not _3100:
                        s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1)
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        _3652 = mem[mem[mem[(32 * uint8(t)) + 128] + 96]]
                        stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(t)) + 128] + 96]]
                        mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                        if not _3652:
                            idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            u = mem[mem[(32 * uint8(t)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(t)) + 128] + 96] + (32 * _3652) + 32 > u:
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
                        while mem[mem[(32 * uint8(t)) + 128] + 64] + (32 * _3100) + 32 > u:
                            stor[s] = mem[u]
                            s = s + 1
                            u = u + 32
                            continue 
                        idx = s
                        while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 1) + stor8[stor6][stor8[stor6].field_0].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _4080 = mem[mem[mem[(32 * uint8(t)) + 128] + 96]]
                        stor8[stor6][stor8[stor6].field_0].field_512 = mem[mem[mem[(32 * uint8(t)) + 128] + 96]]
                        mem[0] = (3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2
                        if not _4080:
                            idx = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            while sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2) + stor8[stor6][stor8[stor6].field_0].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3((3 * stor8[stor6].field_0) + sha3(sha3(sub_e275c997, 8)) + 2)
                            u = mem[mem[(32 * uint8(t)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(t)) + 128] + 96] + (32 * _4080) + 32 > u:
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
                _3542 = mem[_767]
                idx = 0
                while uint8(idx) < _3542:
                    if uint8(idx) >= mem[_767]:
                        revert with 0, 50
                    stor8[stor6].field_256++
                    mem[0] = sha3(sub_e275c997, 8) + 1
                    address(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_0) = mem[mem[(32 * uint8(idx)) + _767 + 32] + 12 len 20]
                    uint16(stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_160) = mem[mem[(32 * uint8(idx)) + _767 + 32] + 62 len 2]
                    _3605 = mem[mem[mem[(32 * uint8(idx)) + _767 + 32] + 64]]
                    stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 = mem[mem[mem[(32 * uint8(idx)) + _767 + 32] + 64]]
                    mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1
                    if not _3605:
                        s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        _4078 = mem[mem[mem[(32 * uint8(idx)) + _767 + 32] + 96]]
                        stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _767 + 32] + 96]]
                        mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                        if not _4078:
                            s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            t = mem[mem[(32 * uint8(idx)) + _767 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(idx)) + _767 + 32] + 96] + (32 * _4078) + 32 > t:
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
                        t = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1)
                        u = mem[mem[(32 * uint8(idx)) + _767 + 32] + 64] + 32
                        while mem[mem[(32 * uint8(idx)) + _767 + 32] + 64] + (32 * _3605) + 32 > u:
                            stor[t] = mem[u]
                            t = t + 1
                            u = u + 32
                            continue 
                        u = t
                        while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 1) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_256 > u:
                            stor[u] = 0
                            u = u + 1
                            continue 
                        _4388 = mem[mem[mem[(32 * uint8(idx)) + _767 + 32] + 96]]
                        stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 = mem[mem[mem[(32 * uint8(idx)) + _767 + 32] + 96]]
                        mem[0] = (3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2
                        if not _4388:
                            s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            while sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2) + stor[(3 * stor8[stor6].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)))].field_512 > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            s = sha3((3 * stor8[stor6].field_256) + sha3(sha3(sub_e275c997, 8) + 1) + 2)
                            t = mem[mem[(32 * uint8(idx)) + _767 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(idx)) + _767 + 32] + 96] + (32 * _4388) + 32 > t:
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
                stor8[stor6].field_512 = Mask(96, 0, stor8[stor6].field_672)
                address(stor8[stor6].field_768) = address(cd[4])
                if block.timestamp > !cd[36]:
                    revert with 0, 17
                stor8[stor6].field_1024 = block.timestamp + cd[36]
                if sub_e275c997 == -1:
                    revert with 0, 17
                _3734 = mem[64]
                mem[64] = mem[64] + 192
                _3735 = mem[64]
                mem[64] = mem[64] + (32 * stor8[stor6].field_0) + 32
                mem[_3735] = stor8[stor6].field_0
                s = _3735 + 32
                idx = 0
                while idx < stor8[stor6].field_0:
                    mem[0] = sha3(sub_e275c997, 8)
                    _4007 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_4007] = address(stor8[stor6][idx].field_0)
                    mem[_4007 + 32] = uint16(stor8[stor6][idx].field_160)
                    _4008 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[stor6][idx].field_256) + 32
                    mem[_4008] = stor8[stor6][idx].field_256
                    if not stor8[stor6][idx].field_256:
                        mem[_4007 + 64] = _4008
                        _4033 = mem[64]
                        mem[64] = mem[64] + (32 * stor8[stor6][idx].field_512) + 32
                        mem[_4033] = stor8[stor6][idx].field_512
                        if stor8[stor6][idx].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * idx) + 2
                            mem[_4033 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                            t = _4033 + 32
                            u = sha3(mem[0])
                            while _4033 + (32 * stor8[stor6][idx].field_512) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_4007 + 96] = _4033
                    else:
                        mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * idx) + 1
                        mem[_4008 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * idx) + 1)].field_0
                        t = _4008 + 32
                        u = sha3(mem[0])
                        while _4008 + (32 * stor8[stor6][idx].field_256) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_4007 + 64] = _4008
                        _4562 = mem[64]
                        mem[64] = mem[64] + (32 * stor8[stor6][idx].field_512) + 32
                        mem[_4562] = stor8[stor6][idx].field_512
                        if stor8[stor6][idx].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8)) + (3 * idx) + 2
                            mem[_4562 + 32] = stor[sha3(('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8)) + (3 * idx) + 2)].field_0
                            t = _4562 + 32
                            u = sha3(mem[0])
                            while _4562 + (32 * stor8[stor6][idx].field_512) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_4007 + 96] = _4562
                    mem[s] = _4007
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[_3734] = _3735
                _4005 = mem[64]
                mem[64] = mem[64] + (32 * stor8[stor6].field_256) + 32
                mem[_4005] = stor8[stor6].field_256
                s = _4005 + 32
                idx = 0
                while idx < stor8[stor6].field_256:
                    mem[0] = sha3(sub_e275c997, 8) + 1
                    _4346 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_4346] = address(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_0)
                    mem[_4346 + 32] = uint16(stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_160)
                    _4347 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256) + 32
                    mem[_4347] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256
                    if not stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256:
                        mem[_4346 + 64] = _4347
                        _4370 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                        mem[_4370] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512
                        if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 2
                            mem[_4370 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                            t = _4370 + 32
                            u = sha3(mem[0])
                            while _4370 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_4346 + 96] = _4370
                    else:
                        mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 1
                        mem[_4347 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 1)].field_0
                        t = _4347 + 32
                        u = sha3(mem[0])
                        while _4347 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_256) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_4346 + 64] = _4347
                        _4739 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) + 32
                        mem[_4739] = stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512
                        if stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512:
                            mem[0] = sha3(sha3(sub_e275c997, 8) + 1) + (3 * idx) + 2
                            mem[_4739 + 32] = stor[sha3(('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx) + 2)].field_0
                            t = _4739 + 32
                            u = sha3(mem[0])
                            while _4739 + (32 * stor[('array', 1, ('map', ('stor', ('name', 'stor6', 6)), ('name', 'stor8', 8))) + (3 * idx)].field_512) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_4346 + 96] = _4739
                    mem[s] = _4346
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[_3734 + 32] = _4005
                mem[_3734 + 64] = address(stor8[stor6].field_512)
                mem[_3734 + 96] = address(stor8[stor6].field_768)
                mem[_3734 + 128] = bool(uint8(stor8[stor6].field_928))
                mem[_3734 + 160] = stor8[stor6].field_1024
                _4344 = mem[64]
                mem[mem[64]] = 32
                _4369 = mem[_3734]
                mem[mem[64] + 32] = 192
                _4385 = mem[_4369]
                mem[mem[64] + 224] = mem[_4369]
                idx = 0
                s = _4369 + 32
                t = mem[64] + (32 * _4385) + 256
                u = mem[64] + 256
                while idx < _4385:
                    mem[u] = t + -_4344 - 256
                    _4600 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_4600 + 62 len 2]
                    _4603 = mem[_4600 + 64]
                    mem[t + 64] = 128
                    _4631 = mem[_4603]
                    mem[t + 128] = mem[_4603]
                    v = 0
                    w = _4603 + 32
                    x = t + 160
                    while v < _4631:
                        mem[x] = mem[w]
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    _4784 = mem[_4600 + 96]
                    mem[t + 96] = (32 * _4631) + 160
                    _4793 = mem[_4784]
                    mem[t + (32 * _4631) + 160] = mem[_4784]
                    v = 0
                    w = _4784 + 32
                    x = t + (32 * _4631) + 192
                    while v < _4793:
                        mem[x] = mem[w]
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = t + (32 * _4631) + (32 * _4793) + 192
                    u = u + 32
                    continue 
                _4630 = mem[_3734 + 32]
                mem[_4344 + 64] = t + -_4344 - 32
                _4642 = mem[_4630]
                mem[t] = mem[_4630]
                idx = 0
                s = _4630 + 32
                u = t + (32 * _4642) + 32
                v = t + 32
                while idx < _4642:
                    mem[v] = u + -t - 32
                    _4758 = mem[s]
                    mem[u] = mem[mem[s] + 12 len 20]
                    mem[u + 32] = mem[_4758 + 62 len 2]
                    _4761 = mem[_4758 + 64]
                    mem[u + 64] = 128
                    _4783 = mem[_4761]
                    mem[u + 128] = mem[_4761]
                    t = 0
                    w = _4761 + 32
                    x = u + 160
                    while t < _4783:
                        mem[x] = mem[w]
                        t = t + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    _4823 = mem[_4758 + 96]
                    mem[u + 96] = (32 * _4783) + 160
                    _4826 = mem[_4823]
                    mem[u + (32 * _4783) + 160] = mem[_4823]
                    t = 0
                    w = _4823 + 32
                    x = u + (32 * _4783) + 192
                    while t < _4826:
                        mem[x] = mem[w]
                        t = t + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    u = u + (32 * _4783) + (32 * _4826) + 192
                    v = v + 32
                    continue 
                mem[_4344 + 96] = mem[_3734 + 76 len 20]
                mem[_4344 + 128] = mem[_3734 + 108 len 20]
                mem[_4344 + 160] = bool(mem[_3734 + 128])
                mem[_4344 + 192] = mem[_3734 + 160]
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
                                        mem[mem[64] + 100] = (32 * _13049) + 192
                                        _14057 = mem[_12678]
                                        mem[mem[64] + (32 * _13049) + 196] = mem[_12678]
                                        s = 0
                                        t = _12678 + 32
                                        u = mem[64] + (32 * _13049) + 228
                                        while s < _14057:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[mem[64] + 132] = (32 * _13049) + (32 * _14057) + 224
                                        mem[mem[64] + (32 * _13049) + (32 * _14057) + 228] = 0
                                        require ext_code.size(address(_12092))
                                        call address(_12092).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, 160, (32 * _13049) + 192, (32 * _13049) + (32 * _14057) + 224, mem[mem[64] + 164 len (32 * _13049) + (32 * _14057) + 64], 0
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
                                    _12691 = mem[64]
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
                                    mem[_12691 + 100] = (32 * _13059) + 192
                                    _14062 = mem[_12690]
                                    mem[_12691 + (32 * _13059) + 196] = mem[_12690]
                                    s = 0
                                    t = _12690 + 32
                                    u = _12691 + (32 * _13059) + 228
                                    while s < _14062:
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_12691 + 132] = (32 * _13059) + (32 * _14062) + 224
                                    mem[_12691 + (32 * _13059) + (32 * _14062) + 228] = 0
                                    require ext_code.size(address(_12110))
                                    call address(_12110).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _12691 + (32 * _13059) + (32 * _14062) + -mem[64] + 256]
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
                                        mem[_15153 + 100] = (32 * _15271) + 192
                                        _15633 = mem[_15152]
                                        mem[_15153 + (32 * _15271) + 196] = mem[_15152]
                                        s = 0
                                        t = _15152 + 32
                                        u = _15153 + (32 * _15271) + 228
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
                                            mem[mem[64] + 100] = (32 * _13062) + 192
                                            _14066 = mem[_12696]
                                            mem[mem[64] + (32 * _13062) + 196] = mem[_12696]
                                            s = 0
                                            t = _12696 + 32
                                            u = mem[64] + (32 * _13062) + 228
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
                                            mem[_12751 + 100] = (32 * _13101) + 192
                                            _14093 = mem[_12750]
                                            mem[_12751 + (32 * _13101) + 196] = mem[_12750]
                                            s = 0
                                            t = _12750 + 32
                                            u = _12751 + (32 * _13101) + 228
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
                                        mem[_12763 + 100] = (32 * _13111) + 192
                                        _14098 = mem[_12762]
                                        mem[_12763 + (32 * _13111) + 196] = mem[_12762]
                                        s = 0
                                        t = _12762 + 32
                                        u = _12763 + (32 * _13111) + 228
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
                                            _15177 = mem[64]
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
                                            mem[_15177 + 100] = (32 * _15283) + 192
                                            _15681 = mem[_15176]
                                            mem[_15177 + (32 * _15283) + 196] = mem[_15176]
                                            s = 0
                                            t = _15176 + 32
                                            u = _15177 + (32 * _15283) + 228
                                            while s < _15681:
                                                mem[u] = mem[t]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_15177 + 132] = (32 * _15283) + (32 * _15681) + 224
                                            mem[_15177 + (32 * _15283) + (32 * _15681) + 228] = 0
                                            require ext_code.size(address(_14955))
                                            call address(_14955).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _15177 + (32 * _15283) + (32 * _15681) + -mem[64] + 256]
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
                                        mem[mem[64] + 100] = (32 * _13124) + 192
                                        _14107 = mem[_12780]
                                        mem[mem[64] + (32 * _13124) + 196] = mem[_12780]
                                        s = 0
                                        t = _12780 + 32
                                        u = mem[64] + (32 * _13124) + 228
                                        while s < _14107:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[mem[64] + 132] = (32 * _13124) + (32 * _14107) + 224
                                        mem[mem[64] + (32 * _13124) + (32 * _14107) + 228] = 0
                                        require ext_code.size(address(_12255))
                                        call address(_12255).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(stor8[arg1].field_512), 160, (32 * _13124) + 192, (32 * _13124) + (32 * _14107) + 224, mem[mem[64] + 164 len (32 * _13124) + (32 * _14107) + 64], 0
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
                                            mem[_15183 + 100] = (32 * _15286) + 192
                                            _15693 = mem[_15182]
                                            mem[_15183 + (32 * _15286) + 196] = mem[_15182]
                                            s = 0
                                            t = _15182 + 32
                                            u = _15183 + (32 * _15286) + 228
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
                                        mem[_12787 + 100] = (32 * _13127) + 192
                                        _14111 = mem[_12786]
                                        mem[_12787 + (32 * _13127) + 196] = mem[_12786]
                                        s = 0
                                        t = _12786 + 32
                                        u = _12787 + (32 * _13127) + 228
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
                                        mem[_15189 + 100] = (32 * _15289) + 192
                                        _15705 = mem[_15188]
                                        mem[_15189 + (32 * _15289) + 196] = mem[_15188]
                                        s = 0
                                        t = _15188 + 32
                                        u = _15189 + (32 * _15289) + 228
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
                                            mem[_12805 + 100] = (32 * _13140) + 192
                                            _14120 = mem[_12804]
                                            mem[_12805 + (32 * _13140) + 196] = mem[_12804]
                                            s = 0
                                            t = _12804 + 32
                                            u = _12805 + (32 * _13140) + 228
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
                                            mem[_15195 + 100] = (32 * _15292) + 192
                                            _15717 = mem[_15194]
                                            mem[_15195 + (32 * _15292) + 196] = mem[_15194]
                                            s = 0
                                            t = _15194 + 32
                                            u = _15195 + (32 * _15292) + 228
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
                                    mem[mem[64] + 100] = (32 * _13176) + 192
                                    _14143 = mem[_12852]
                                    mem[mem[64] + (32 * _13176) + 196] = mem[_12852]
                                    s = 0
                                    t = _12852 + 32
                                    u = mem[64] + (32 * _13176) + 228
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
                                        _15207 = mem[64]
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
                                        mem[_15207 + 132] = (32 * _15298) + (32 * _15741) + 224
                                        mem[_15207 + (32 * _15298) + (32 * _15741) + 228] = 0
                                        require ext_code.size(address(_15020))
                                        call address(_15020).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _15207 + (32 * _15298) + (32 * _15741) + -mem[64] + 256]
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
                                        _12871 = mem[64]
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
                                        mem[_12871 + 100] = (32 * _13189) + 192
                                        _14152 = mem[_12870]
                                        mem[_12871 + (32 * _13189) + 196] = mem[_12870]
                                        s = 0
                                        t = _12870 + 32
                                        u = _12871 + (32 * _13189) + 228
                                        while s < _14152:
                                            mem[u] = mem[t]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_12871 + 132] = (32 * _13189) + (32 * _14152) + 224
                                        mem[_12871 + (32 * _13189) + (32 * _14152) + 228] = 0
                                        require ext_code.size(address(_12400))
                                        call address(_12400).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _12871 + (32 * _13189) + (32 * _14152) + -mem[64] + 256]
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
                                            mem[mem[64] + 100] = (32 * _15301) + 192
                                            _15753 = mem[_15212]
                                            mem[mem[64] + (32 * _15301) + 196] = mem[_15212]
                                            s = 0
                                            t = _15212 + 32
                                            u = mem[64] + (32 * _15301) + 228
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
