contract main {




// =====================  Runtime code  =====================


#
#  - acceptTrade(uint256 arg1)
#
address owner;
array of uint256 stor1;
address sub_270e5326Address;
uint256 sub_4c822e6b;
uint256 serviceFee;
address stor5;
uint256 sub_bdbd96ef;
uint256 sub_e275c997;
uint256 sub_445c9e0d;
mapping of uint8 stor9;
mapping of struct stor10;
mapping of struct userHistory;

function userHistory(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userHistory[arg1].field_0, userHistory[arg1].field_256, userHistory[arg1].field_512
}

function sub_270e5326(?) {
    return sub_270e5326Address
}

function sub_445c9e0d(?) {
    return sub_445c9e0d
}

function sub_4c822e6b(?) {
    return sub_4c822e6b
}

function sub_678e74de(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return userHistory[address(arg1)][3][arg2].field_0
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
    return bool(stor9[arg1])
}

function sub_9f0b0ef3(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return userHistory[address(arg1)][4][arg2].field_0
}

function sub_bdbd96ef(?) {
    return sub_bdbd96ef
}

function sub_e275c997(?) {
    return sub_e275c997
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function setServiceFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    serviceFee = arg1
    emit 0x67c99114: arg1
}

function setFeeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = arg1
    emit NewFeeReceiver(arg1);
}

function setBypassAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4c822e6b = arg1
    emit 0xb1860c32: arg1
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

function onERC721Received(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    return 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
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
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
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

function sub_1ebd4266(?) payable {
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    if stor9[address(msg.sender)]:
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
    stor9[address(msg.sender)] = 1
    emit 0x5932ce16: msg.sender, sub_4c822e6b, sub_270e5326Address
    stor1.length = 1
}

function sub_65b6c33d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 10
    mem[64] = (32 * stor10[arg1].field_0) + 352
    mem[320] = stor10[arg1].field_0
    s = 352
    idx = 0
    while idx < stor10[arg1].field_0:
        mem[0] = sha3(arg1, 10)
        _48 = mem[64]
        mem[64] = mem[64] + 128
        mem[_48] = address(stor10[arg1][idx].field_0)
        mem[_48 + 32] = uint16(stor10[arg1][idx].field_160)
        _49 = mem[64]
        mem[64] = mem[64] + (32 * stor10[arg1][idx].field_256) + 32
        mem[_49] = stor10[arg1][idx].field_256
        if not stor10[arg1][idx].field_256:
            mem[_48 + 64] = _49
            _50 = mem[64]
            mem[64] = mem[64] + (32 * stor10[arg1][idx].field_512) + 32
            mem[_50] = stor10[arg1][idx].field_512
            if stor10[arg1][idx].field_512:
                mem[0] = (3 * idx) + sha3(sha3(arg1, 10)) + 2
                mem[_50 + 32] = stor[sha3((3 * idx) + ('map', ('param', 'arg1'), ('name', 'stor10', 10)) + 2)].field_0
                t = _50 + 32
                u = sha3(mem[0])
                while _50 + (32 * stor10[arg1][idx].field_512) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_48 + 96] = _50
        else:
            mem[0] = (3 * idx) + sha3(sha3(arg1, 10)) + 1
            mem[_49 + 32] = stor[sha3((3 * idx) + ('map', ('param', 'arg1'), ('name', 'stor10', 10)) + 1)].field_0
            t = _49 + 32
            u = sha3(mem[0])
            while _49 + (32 * stor10[arg1][idx].field_256) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_48 + 64] = _49
            _123 = mem[64]
            mem[64] = mem[64] + (32 * stor10[arg1][idx].field_512) + 32
            mem[_123] = stor10[arg1][idx].field_512
            if stor10[arg1][idx].field_512:
                mem[0] = (3 * idx) + sha3(sha3(arg1, 10)) + 2
                mem[_123 + 32] = stor[sha3((3 * idx) + ('map', ('param', 'arg1'), ('name', 'stor10', 10)) + 2)].field_0
                t = _123 + 32
                u = sha3(mem[0])
                while _123 + (32 * stor10[arg1][idx].field_512) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_48 + 96] = _123
        mem[s] = _48
        s = s + 32
        idx = idx + 1
        continue 
    mem[96] = 320
    _46 = mem[64]
    mem[64] = mem[64] + (32 * stor10[arg1].field_256) + 32
    mem[_46] = stor10[arg1].field_256
    s = _46 + 32
    idx = 0
    while idx < stor10[arg1].field_256:
        mem[0] = sha3(arg1, 10) + 1
        _96 = mem[64]
        mem[64] = mem[64] + 128
        mem[_96] = address(stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_0)
        mem[_96 + 32] = uint16(stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_160)
        _97 = mem[64]
        mem[64] = mem[64] + (32 * stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_256) + 32
        mem[_97] = stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_256
        if not stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_256:
            mem[_96 + 64] = _97
            _99 = mem[64]
            mem[64] = mem[64] + (32 * stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_512) + 32
            mem[_99] = stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_512
            if stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_512:
                mem[0] = (3 * idx) + sha3(sha3(arg1, 10) + 1) + 2
                mem[_99 + 32] = stor[sha3((3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10))) + 2)].field_0
                t = _99 + 32
                u = sha3(mem[0])
                while _99 + (32 * stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_512) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_96 + 96] = _99
        else:
            mem[0] = (3 * idx) + sha3(sha3(arg1, 10) + 1) + 1
            mem[_97 + 32] = stor[sha3((3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10))) + 1)].field_0
            t = _97 + 32
            u = sha3(mem[0])
            while _97 + (32 * stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_256) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_96 + 64] = _97
            _145 = mem[64]
            mem[64] = mem[64] + (32 * stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_512) + 32
            mem[_145] = stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_512
            if stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_512:
                mem[0] = (3 * idx) + sha3(sha3(arg1, 10) + 1) + 2
                mem[_145 + 32] = stor[sha3((3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10))) + 2)].field_0
                t = _145 + 32
                u = sha3(mem[0])
                while _145 + (32 * stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_512) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_96 + 96] = _145
        mem[s] = _96
        s = s + 32
        idx = idx + 1
        continue 
    mem[128] = _46
    mem[160] = address(stor10[arg1].field_512)
    mem[192] = address(stor10[arg1].field_768)
    mem[224] = bool(uint8(stor10[arg1].field_928))
    mem[256] = stor10[arg1].field_1024
    mem[288] = stor10[arg1].field_1280
    _88 = mem[96]
    _98 = mem[64]
    mem[mem[64]] = 224
    _102 = mem[_88]
    mem[mem[64] + 224] = mem[_88]
    idx = 0
    s = _88 + 32
    t = mem[64] + (32 * _102) + 256
    u = mem[64] + 256
    while idx < _102:
        mem[u] = t + -_98 - 256
        _124 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_124 + 62 len 2]
        _131 = mem[_124 + 64]
        mem[t + 64] = 128
        _132 = mem[_131]
        mem[t + 128] = mem[_131]
        v = 0
        w = _131 + 32
        x = t + 160
        while v < _132:
            mem[x] = mem[w]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        _149 = mem[_124 + 96]
        mem[t + 96] = (32 * _132) + 160
        _151 = mem[_149]
        mem[t + (32 * _132) + 160] = mem[_149]
        v = 0
        w = _149 + 32
        x = t + (32 * _132) + 192
        while v < _151:
            mem[x] = mem[w]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        idx = idx + 1
        s = s + 32
        t = t + (32 * _132) + (32 * _151) + 192
        u = u + 32
        continue 
    mem[_98 + 32] = t - _98
    _127 = mem[_46]
    mem[t] = mem[_46]
    idx = 0
    s = _46 + 32
    u = t + (32 * _127) + 32
    v = t + 32
    while idx < _127:
        mem[v] = u + -t - 32
        _146 = mem[s]
        mem[u] = mem[mem[s] + 12 len 20]
        mem[u + 32] = mem[_146 + 62 len 2]
        _154 = mem[_146 + 64]
        mem[u + 64] = 128
        _155 = mem[_154]
        mem[u + 128] = mem[_154]
        t = 0
        w = _154 + 32
        x = u + 160
        while t < _155:
            mem[x] = mem[w]
            t = t + 1
            w = w + 32
            x = x + 32
            continue 
        _163 = mem[_146 + 96]
        mem[u + 96] = (32 * _155) + 160
        _164 = mem[_163]
        mem[u + (32 * _155) + 160] = mem[_163]
        t = 0
        w = _163 + 32
        x = u + (32 * _155) + 192
        while t < _164:
            mem[x] = mem[w]
            t = t + 1
            w = w + 32
            x = x + 32
            continue 
        idx = idx + 1
        s = s + 32
        u = u + (32 * _155) + (32 * _164) + 192
        v = v + 32
        continue 
    mem[_98 + 64] = address(stor10[arg1].field_512)
    mem[_98 + 96] = address(stor10[arg1].field_768)
    mem[_98 + 128] = bool(uint8(stor10[arg1].field_928))
    mem[_98 + 160] = stor10[arg1].field_1280
    mem[_98 + 192] = stor10[arg1].field_1024
    return memory
      from mem[64]
       len u - mem[64]
}

function cancelTrade(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    mem[0] = arg1
    mem[32] = 10
    mem[64] = (32 * stor10[arg1].field_0) + 352
    mem[320] = stor10[arg1].field_0
    s = 352
    idx = 0
    while idx < stor10[arg1].field_0:
        mem[0] = sha3(arg1, 10)
        _129 = mem[64]
        mem[64] = mem[64] + 128
        mem[_129] = address(stor10[arg1][idx].field_0)
        mem[_129 + 32] = uint16(stor10[arg1][idx].field_160)
        _130 = mem[64]
        mem[64] = mem[64] + (32 * stor10[arg1][idx].field_256) + 32
        mem[_130] = stor10[arg1][idx].field_256
        if not stor10[arg1][idx].field_256:
            mem[_129 + 64] = _130
            _131 = mem[64]
            mem[64] = mem[64] + (32 * stor10[arg1][idx].field_512) + 32
            mem[_131] = stor10[arg1][idx].field_512
            if stor10[arg1][idx].field_512:
                mem[0] = (3 * idx) + sha3(sha3(arg1, 10)) + 2
                mem[_131 + 32] = stor[sha3((3 * idx) + ('map', ('param', 'arg1'), ('name', 'stor10', 10)) + 2)].field_0
                t = _131 + 32
                u = sha3(mem[0])
                while _131 + (32 * stor10[arg1][idx].field_512) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_129 + 96] = _131
        else:
            mem[0] = (3 * idx) + sha3(sha3(arg1, 10)) + 1
            mem[_130 + 32] = stor[sha3((3 * idx) + ('map', ('param', 'arg1'), ('name', 'stor10', 10)) + 1)].field_0
            t = _130 + 32
            u = sha3(mem[0])
            while _130 + (32 * stor10[arg1][idx].field_256) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_129 + 64] = _130
            _363 = mem[64]
            mem[64] = mem[64] + (32 * stor10[arg1][idx].field_512) + 32
            mem[_363] = stor10[arg1][idx].field_512
            if stor10[arg1][idx].field_512:
                mem[0] = (3 * idx) + sha3(sha3(arg1, 10)) + 2
                mem[_363 + 32] = stor[sha3((3 * idx) + ('map', ('param', 'arg1'), ('name', 'stor10', 10)) + 2)].field_0
                t = _363 + 32
                u = sha3(mem[0])
                while _363 + (32 * stor10[arg1][idx].field_512) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_129 + 96] = _363
        mem[s] = _129
        s = s + 32
        idx = idx + 1
        continue 
    mem[96] = 320
    _127 = mem[64]
    mem[64] = mem[64] + (32 * stor10[arg1].field_256) + 32
    mem[_127] = stor10[arg1].field_256
    s = _127 + 32
    idx = 0
    while idx < stor10[arg1].field_256:
        mem[0] = sha3(arg1, 10) + 1
        _249 = mem[64]
        mem[64] = mem[64] + 128
        mem[_249] = address(stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_0)
        mem[_249 + 32] = uint16(stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_160)
        _250 = mem[64]
        mem[64] = mem[64] + (32 * stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_256) + 32
        mem[_250] = stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_256
        if not stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_256:
            mem[_249 + 64] = _250
            _253 = mem[64]
            mem[64] = mem[64] + (32 * stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_512) + 32
            mem[_253] = stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_512
            if stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_512:
                mem[0] = (3 * idx) + sha3(sha3(arg1, 10) + 1) + 2
                mem[_253 + 32] = stor[sha3((3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10))) + 2)].field_0
                t = _253 + 32
                u = sha3(mem[0])
                while _253 + (32 * stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_512) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_249 + 96] = _253
        else:
            mem[0] = (3 * idx) + sha3(sha3(arg1, 10) + 1) + 1
            mem[_250 + 32] = stor[sha3((3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10))) + 1)].field_0
            t = _250 + 32
            u = sha3(mem[0])
            while _250 + (32 * stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_256) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_249 + 64] = _250
            _456 = mem[64]
            mem[64] = mem[64] + (32 * stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_512) + 32
            mem[_456] = stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_512
            if stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_512:
                mem[0] = (3 * idx) + sha3(sha3(arg1, 10) + 1) + 2
                mem[_456 + 32] = stor[sha3((3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10))) + 2)].field_0
                t = _456 + 32
                u = sha3(mem[0])
                while _456 + (32 * stor[(3 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_512) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_249 + 96] = _456
        mem[s] = _249
        s = s + 32
        idx = idx + 1
        continue 
    mem[128] = _127
    mem[160] = address(stor10[arg1].field_512)
    mem[192] = address(stor10[arg1].field_768)
    mem[224] = bool(uint8(stor10[arg1].field_928))
    mem[256] = stor10[arg1].field_1024
    mem[288] = stor10[arg1].field_1280
    if sub_e275c997 < arg1:
        revert with 0, 'cancelTrade: trade non-existent'
    if uint8(stor10[arg1].field_928):
        revert with 0, 'cancelTrade: trade non-existent'
    if address(stor10[arg1].field_512) != msg.sender:
        revert with 0, 'cancelTrade: must be creator'
    Mask(96, 0, stor10[arg1].field_928) = 1
    if 0 >= mem[_127]:
        revert with 'NH{q', 50
    if not mem[mem[_127 + 32] + 12 len 20]:
        emit TradeCanceled(arg1, address(stor10[arg1].field_512), address(stor10[arg1].field_768));
    else:
        _362 = mem[_127]
        idx = 0
        while uint8(idx) < _362:
            if uint8(idx) >= mem[_127]:
                revert with 'NH{q', 50
            if uint8(idx) >= mem[_127]:
                revert with 'NH{q', 50
            if mem[mem[(32 * uint8(idx)) + _127 + 32] + 62 len 2] == 20:
                _377 = mem[mem[(32 * uint8(idx)) + _127 + 32]]
                if uint8(idx) >= mem[_127]:
                    revert with 'NH{q', 50
                if 0 >= mem[mem[mem[(32 * uint8(idx)) + _127 + 32] + 96]]:
                    revert with 'NH{q', 50
                _384 = mem[mem[mem[(32 * uint8(idx)) + _127 + 32] + 96] + 32]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(stor10[arg1].field_512)
                mem[mem[64] + 68] = _384
                require ext_code.size(address(_377))
                call address(_377).0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), address(stor10[arg1].field_512), _384
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _443 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_443] == bool(mem[_443])
            else:
                if uint8(idx) >= mem[_127]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * uint8(idx)) + _127 + 32] + 62 len 2] == 777:
                    _389 = mem[mem[(32 * uint8(idx)) + _127 + 32]]
                    if uint8(idx) >= mem[_127]:
                        revert with 'NH{q', 50
                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + _127 + 32] + 96]]:
                        revert with 'NH{q', 50
                    _398 = mem[mem[mem[(32 * uint8(idx)) + _127 + 32] + 96] + 32]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(stor10[arg1].field_512)
                    mem[mem[64] + 68] = _398
                    require ext_code.size(address(_389))
                    call address(_389).0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), address(stor10[arg1].field_512), _398
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _445 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_445] == bool(mem[_445])
                else:
                    if mem[mem[(32 * uint8(idx)) + _127 + 32] + 62 len 2] == 721:
                        if uint8(idx) < mem[_127]:
                            if uint8(var70003) >= mem[mem[mem[(32 * uint8(idx)) + _127 + 32] + 64]]:
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            if uint8(idx) < mem[_127]:
                                if uint8(idx) < mem[_127]:
                                    _528 = mem[mem[(32 * uint8(idx)) + _127 + 32] + 64]
                                    _529 = mem[mem[mem[(32 * uint8(idx)) + _127 + 32] + 64]]
                                    t = mem[mem[(32 * uint8(idx)) + _127 + 32] + 12 len 20]
                                    s = var74003
                                    while uint8(s) < _529:
                                        _530 = mem[(32 * uint8(s)) + _528 + 32]
                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(stor10[arg1].field_512)
                                        mem[mem[64] + 68] = _530
                                        require ext_code.size(t)
                                        call t.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), address(stor10[arg1].field_512), _530
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if uint8(s) == 255:
                                            revert with 'NH{q', 17
                                        if uint8(idx) >= mem[_127]:
                                            revert with 'NH{q', 50
                                        if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + _127 + 32] + 64]]:
                                            if uint8(idx) == 255:
                                                revert with 'NH{q', 17
                                            idx = uint8(idx) + 1
                                            continue 
                                        if uint8(idx) >= mem[_127]:
                                            revert with 'NH{q', 50
                                        if uint8(idx) >= mem[_127]:
                                            revert with 'NH{q', 50
                                        t = mem[mem[(32 * uint8(idx)) + _127 + 32] + 12 len 20]
                                        s = uint8(s) + 1
                                        continue 
                        revert with 'NH{q', 50
                    if uint8(idx) >= mem[_127]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * uint8(idx)) + _127 + 32] + 62 len 2] != 1155:
                        revert with 0, 'createTrade: unsupported erc type'
                    if uint8(idx) >= mem[_127]:
                        revert with 'NH{q', 50
                    if uint8(idx) >= mem[_127]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[(32 * uint8(idx)) + _127 + 32] + 64]] <= 1:
                        _415 = mem[mem[(32 * uint8(idx)) + _127 + 32]]
                        if uint8(idx) >= mem[_127]:
                            revert with 'NH{q', 50
                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _127 + 32] + 64]]:
                            revert with 'NH{q', 50
                        _431 = mem[mem[mem[(32 * uint8(idx)) + _127 + 32] + 64] + 32]
                        if uint8(idx) >= mem[_127]:
                            revert with 'NH{q', 50
                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + _127 + 32] + 96]]:
                            revert with 'NH{q', 50
                        _439 = mem[mem[mem[(32 * uint8(idx)) + _127 + 32] + 96] + 32]
                        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(stor10[arg1].field_512)
                        mem[mem[64] + 68] = _431
                        mem[mem[64] + 100] = _439
                        mem[mem[64] + 132] = 160
                        mem[mem[64] + 164] = 0
                        require ext_code.size(address(_415))
                        call address(_415).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), address(stor10[arg1].field_512), _431, _439, 160, 0
                    else:
                        _418 = mem[mem[(32 * uint8(idx)) + _127 + 32]]
                        if uint8(idx) >= mem[_127]:
                            revert with 'NH{q', 50
                        _427 = mem[mem[(32 * uint8(idx)) + _127 + 32] + 64]
                        if uint8(idx) >= mem[_127]:
                            revert with 'NH{q', 50
                        _434 = mem[mem[(32 * uint8(idx)) + _127 + 32] + 96]
                        mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(stor10[arg1].field_512)
                        mem[mem[64] + 68] = 160
                        _447 = mem[_427]
                        mem[mem[64] + 164] = mem[_427]
                        s = 0
                        t = _427 + 32
                        u = mem[64] + 196
                        while s < _447:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = (32 * _447) + 192
                        _466 = mem[_434]
                        mem[mem[64] + (32 * _447) + 196] = mem[_434]
                        s = 0
                        t = _434 + 32
                        u = mem[64] + (32 * _447) + 228
                        while s < _466:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 132] = (32 * _447) + (32 * _466) + 224
                        mem[mem[64] + (32 * _447) + (32 * _466) + 228] = 0
                        require ext_code.size(address(_418))
                        call address(_418).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), address(stor10[arg1].field_512), 160, (32 * _447) + 192, (32 * _447) + (32 * _466) + 224, mem[mem[64] + 164 len (32 * _447) + (32 * _466) + 64], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
        emit TradeCanceled(arg1, mem[172 len 20], mem[204 len 20]);
    stor1.length = 1
}

function sub_a780073c(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 68).length) + 97
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = 128
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        require cd[idx] <= test266151307()
        require calldata.size + -cd[68] + -cd[idx] - 36 >= 128
        _556 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require cd[(cd[68] + cd[idx] + 36)] == address(cd[(cd[68] + cd[idx] + 36)])
        mem[_556] = cd[(cd[68] + cd[idx] + 36)]
        require cd[(cd[68] + cd[idx] + 68)] == uint16(cd[(cd[68] + cd[idx] + 68)])
        mem[_556 + 32] = cd[(cd[68] + cd[idx] + 68)]
        require cd[(cd[68] + cd[idx] + 100)] <= test266151307()
        require cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 67 < calldata.size
        if cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _636 = mem[64]
        if mem[64] + floor32(cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)]) + 1
        mem[_636] = cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)]
        require cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + (32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)]) + 68 <= calldata.size
        t = cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 68
        u = _636 + 32
        while t < cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + (32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 100)] + 36)]) + 68:
            require cd[t] == cd[t]
            mem[u] = cd[t]
            t = t + 32
            u = u + 32
            continue 
        mem[_556 + 64] = _636
        require cd[(cd[68] + cd[idx] + 132)] <= test266151307()
        require cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 67 < calldata.size
        if cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _1124 = mem[64]
        if mem[64] + floor32(cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)]) + 1
        mem[_1124] = cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)]
        require cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + (32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)]) + 68 <= calldata.size
        t = cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 68
        u = _1124 + 32
        while t < cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + (32 * cd[(cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 132)] + 36)]) + 68:
            require cd[t] == cd[t]
            mem[u] = cd[t]
            t = t + 32
            u = u + 32
            continue 
        mem[_556 + 96] = _1124
        mem[s] = _556
        idx = idx + 32
        s = s + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    _557 = mem[64]
    if mem[64] + floor32(('cd', 100).length) + 1 > test266151307() or mem[64] + floor32(('cd', 100).length) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(('cd', 100).length) + 1
    mem[_557] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = cd[100] + 36
    s = _557 + 32
    while idx < cd[100] + (32 * ('cd', 100).length) + 36:
        require cd[idx] <= test266151307()
        require calldata.size + -cd[100] + -cd[idx] - 36 >= 128
        _1111 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require cd[(cd[100] + cd[idx] + 36)] == address(cd[(cd[100] + cd[idx] + 36)])
        mem[_1111] = cd[(cd[100] + cd[idx] + 36)]
        require cd[(cd[100] + cd[idx] + 68)] == uint16(cd[(cd[100] + cd[idx] + 68)])
        mem[_1111 + 32] = cd[(cd[100] + cd[idx] + 68)]
        require cd[(cd[100] + cd[idx] + 100)] <= test266151307()
        require cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 67 < calldata.size
        if cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _1445 = mem[64]
        if mem[64] + floor32(cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)]) + 1
        mem[_1445] = cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)]
        require cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + (32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)]) + 68 <= calldata.size
        t = cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 68
        u = _1445 + 32
        while t < cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + (32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 100)] + 36)]) + 68:
            require cd[t] == cd[t]
            mem[u] = cd[t]
            t = t + 32
            u = u + 32
            continue 
        mem[_1111 + 64] = _1445
        require cd[(cd[100] + cd[idx] + 132)] <= test266151307()
        require cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 67 < calldata.size
        if cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _1946 = mem[64]
        if mem[64] + floor32(cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)]) + 1
        mem[_1946] = cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)]
        require cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + (32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)]) + 68 <= calldata.size
        t = cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 68
        u = _1946 + 32
        while t < cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + (32 * cd[(cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 132)] + 36)]) + 68:
            require cd[t] == cd[t]
            mem[u] = cd[t]
            t = t + 32
            u = u + 32
            continue 
        mem[_1111 + 96] = _1946
        mem[s] = _1111
        idx = idx + 32
        s = s + 32
        continue 
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    if not sub_270e5326Address:
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if not mem[mem[128] + 12 len 20]:
            mem[0] = sub_e275c997
            mem[32] = 10
            idx = 0
            while uint8(idx) < mem[96]:
                if uint8(idx) >= mem[96]:
                    revert with 'NH{q', 50
                stor10[stor7].field_0++
                mem[0] = sha3(sub_e275c997, 10)
                address(stor10[stor7][stor10[stor7].field_0].field_0) = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                uint16(stor10[stor7][stor10[stor7].field_0].field_160) = mem[mem[(32 * uint8(idx)) + 128] + 62 len 2]
                _1679 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                stor10[stor7][stor10[stor7].field_0].field_256 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                mem[0] = (3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1
                if not _1679:
                    s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1)
                    while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1) + stor10[stor7][stor10[stor7].field_0].field_256 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    _2264 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                    stor10[stor7][stor10[stor7].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                    mem[0] = (3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2
                    if not _2264:
                        s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2)
                        while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2) + stor10[stor7][stor10[stor7].field_0].field_512 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2)
                        t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                        while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _2264) + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        t = s
                        while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2) + stor10[stor7][stor10[stor7].field_0].field_512 > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                else:
                    s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1)
                    t = mem[mem[(32 * uint8(idx)) + 128] + 64] + 32
                    while mem[mem[(32 * uint8(idx)) + 128] + 64] + (32 * _1679) + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    t = s
                    while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1) + stor10[stor7][stor10[stor7].field_0].field_256 > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                    _2544 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                    stor10[stor7][stor10[stor7].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                    mem[0] = (3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2
                    if not _2544:
                        s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2)
                        while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2) + stor10[stor7][stor10[stor7].field_0].field_512 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2)
                        t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                        while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _2544) + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        t = s
                        while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2) + stor10[stor7][stor10[stor7].field_0].field_512 > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                continue 
            _2190 = mem[_557]
            s = 0
            while uint8(s) < _2190:
                if uint8(s) >= mem[_557]:
                    revert with 'NH{q', 50
                stor10[stor7].field_256++
                mem[0] = sha3(sub_e275c997, 10) + 1
                address(stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_0) = mem[mem[(32 * uint8(s)) + _557 + 32] + 12 len 20]
                uint16(stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_160) = mem[mem[(32 * uint8(s)) + _557 + 32] + 62 len 2]
                _2225 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 64]]
                stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_256 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 64]]
                mem[0] = (3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1
                if not _2225:
                    idx = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1)
                    while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_256 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    _2542 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 96]]
                    stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 96]]
                    mem[0] = (3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2
                    if not _2542:
                        idx = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2)
                        while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        t = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2)
                        u = mem[mem[(32 * uint8(s)) + _557 + 32] + 96] + 32
                        while mem[mem[(32 * uint8(s)) + _557 + 32] + 96] + (32 * _2542) + 32 > u:
                            stor[t] = mem[u]
                            t = t + 1
                            u = u + 32
                            continue 
                        idx = t
                        while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    t = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1)
                    u = mem[mem[(32 * uint8(s)) + _557 + 32] + 64] + 32
                    while mem[mem[(32 * uint8(s)) + _557 + 32] + 64] + (32 * _2225) + 32 > u:
                        stor[t] = mem[u]
                        t = t + 1
                        u = u + 32
                        continue 
                    u = t
                    while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_256 > u:
                        stor[u] = 0
                        u = u + 1
                        continue 
                    _2722 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 96]]
                    stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 96]]
                    mem[0] = (3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2
                    if not _2722:
                        idx = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2)
                        while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        t = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2)
                        u = mem[mem[(32 * uint8(s)) + _557 + 32] + 96] + 32
                        while mem[mem[(32 * uint8(s)) + _557 + 32] + 96] + (32 * _2722) + 32 > u:
                            stor[t] = mem[u]
                            t = t + 1
                            u = u + 32
                            continue 
                        u = t
                        while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 > u:
                            stor[u] = 0
                            u = u + 1
                            continue 
                if uint8(s) == 255:
                    revert with 'NH{q', 17
                s = uint8(s) + 1
                continue 
        else:
            _1662 = mem[96]
            idx = 0
            while uint8(idx) < _1662:
                if uint8(idx) >= mem[96]:
                    revert with 'NH{q', 50
                if uint8(idx) >= mem[96]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] == 20:
                    _1745 = mem[mem[(32 * uint8(idx)) + 128]]
                    if uint8(idx) >= mem[96]:
                        revert with 'NH{q', 50
                    if 0 >= mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]:
                        revert with 'NH{q', 50
                    _1798 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96] + 32]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _1798
                    require ext_code.size(address(_1745))
                    call address(_1745).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _1798
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2141 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2141] == bool(mem[_2141])
                else:
                    if uint8(idx) >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] == 777:
                        _1803 = mem[mem[(32 * uint8(idx)) + 128]]
                        if uint8(idx) >= mem[96]:
                            revert with 'NH{q', 50
                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]:
                            revert with 'NH{q', 50
                        _1862 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96] + 32]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _1862
                        require ext_code.size(address(_1803))
                        call address(_1803).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _1862
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2151 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2151] == bool(mem[_2151])
                    else:
                        if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] == 721:
                            if uint8(idx) < mem[96]:
                                if uint8(var114003) >= mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]:
                                    if uint8(idx) == 255:
                                        revert with 'NH{q', 17
                                    idx = uint8(idx) + 1
                                    continue 
                                if uint8(idx) < mem[96]:
                                    if uint8(idx) < mem[96]:
                                        _2866 = mem[mem[(32 * uint8(idx)) + 128] + 64]
                                        _2867 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                                        t = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                                        s = var118003
                                        while uint8(s) < _2867:
                                            _2875 = mem[(32 * uint8(s)) + _2866 + 32]
                                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            mem[mem[64] + 68] = _2875
                                            require ext_code.size(t)
                                            call t.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), _2875
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if uint8(s) == 255:
                                                revert with 'NH{q', 17
                                            if uint8(idx) >= mem[96]:
                                                revert with 'NH{q', 50
                                            if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]:
                                                if uint8(idx) == 255:
                                                    revert with 'NH{q', 17
                                                idx = uint8(idx) + 1
                                                continue 
                                            if uint8(idx) >= mem[96]:
                                                revert with 'NH{q', 50
                                            if uint8(idx) >= mem[96]:
                                                revert with 'NH{q', 50
                                            t = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                                            s = uint8(s) + 1
                                            continue 
                            revert with 'NH{q', 50
                        if uint8(idx) >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] != 1155:
                            revert with 0, 'createTrade: unsupported erc type'
                        if uint8(idx) >= mem[96]:
                            revert with 'NH{q', 50
                        if uint8(idx) >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[mem[mem[(32 * uint8(idx)) + 128] + 64]] <= 1:
                            _1952 = mem[mem[(32 * uint8(idx)) + 128]]
                            if uint8(idx) >= mem[96]:
                                revert with 'NH{q', 50
                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]:
                                revert with 'NH{q', 50
                            _2024 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64] + 32]
                            if uint8(idx) >= mem[96]:
                                revert with 'NH{q', 50
                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]:
                                revert with 'NH{q', 50
                            _2072 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96] + 32]
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = _2024
                            mem[mem[64] + 100] = _2072
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            require ext_code.size(address(_1952))
                            call address(_1952).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), _2024, _2072, 160, 0
                        else:
                            _1955 = mem[mem[(32 * uint8(idx)) + 128]]
                            if uint8(idx) >= mem[96]:
                                revert with 'NH{q', 50
                            _1993 = mem[mem[(32 * uint8(idx)) + 128] + 64]
                            if uint8(idx) >= mem[96]:
                                revert with 'NH{q', 50
                            _2027 = mem[mem[(32 * uint8(idx)) + 128] + 96]
                            _2028 = mem[64]
                            mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = 160
                            _2156 = mem[_1993]
                            mem[mem[64] + 164] = mem[_1993]
                            s = 0
                            t = _1993 + 32
                            u = mem[64] + 196
                            while s < _2156:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_2028 + 100] = (32 * _2156) + 192
                            _2293 = mem[_2027]
                            mem[_2028 + (32 * _2156) + 196] = mem[_2027]
                            s = 0
                            t = _2027 + 32
                            u = _2028 + (32 * _2156) + 228
                            while s < _2293:
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_2028 + 132] = (32 * _2156) + (32 * _2293) + 224
                            mem[_2028 + (32 * _2156) + (32 * _2293) + 228] = 0
                            require ext_code.size(address(_1955))
                            call address(_1955).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2028 + (32 * _2156) + (32 * _2293) + -mem[64] + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                continue 
            mem[0] = sub_e275c997
            mem[32] = 10
            idx = 0
            while uint8(idx) < mem[96]:
                if uint8(idx) >= mem[96]:
                    revert with 'NH{q', 50
                stor10[stor7].field_0++
                mem[0] = sha3(sub_e275c997, 10)
                address(stor10[stor7][stor10[stor7].field_0].field_0) = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                uint16(stor10[stor7][stor10[stor7].field_0].field_160) = mem[mem[(32 * uint8(idx)) + 128] + 62 len 2]
                _2232 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                stor10[stor7][stor10[stor7].field_0].field_256 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                mem[0] = (3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1
                if not _2232:
                    s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1)
                    while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1) + stor10[stor7][stor10[stor7].field_0].field_256 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    _2547 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                    stor10[stor7][stor10[stor7].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                    mem[0] = (3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2
                    if not _2547:
                        s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2)
                        while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2) + stor10[stor7][stor10[stor7].field_0].field_512 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2)
                        t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                        while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _2547) + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        t = s
                        while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2) + stor10[stor7][stor10[stor7].field_0].field_512 > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                else:
                    s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1)
                    t = mem[mem[(32 * uint8(idx)) + 128] + 64] + 32
                    while mem[mem[(32 * uint8(idx)) + 128] + 64] + (32 * _2232) + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    t = s
                    while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1) + stor10[stor7][stor10[stor7].field_0].field_256 > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                    _2726 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                    stor10[stor7][stor10[stor7].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                    mem[0] = (3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2
                    if not _2726:
                        s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2)
                        while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2) + stor10[stor7][stor10[stor7].field_0].field_512 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2)
                        t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                        while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _2726) + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        t = s
                        while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2) + stor10[stor7][stor10[stor7].field_0].field_512 > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                continue 
            _2484 = mem[_557]
            s = 0
            while uint8(s) < _2484:
                if uint8(s) >= mem[_557]:
                    revert with 'NH{q', 50
                stor10[stor7].field_256++
                mem[0] = sha3(sub_e275c997, 10) + 1
                address(stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_0) = mem[mem[(32 * uint8(s)) + _557 + 32] + 12 len 20]
                uint16(stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_160) = mem[mem[(32 * uint8(s)) + _557 + 32] + 62 len 2]
                _2519 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 64]]
                stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_256 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 64]]
                mem[0] = (3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1
                if not _2519:
                    idx = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1)
                    while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_256 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    _2724 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 96]]
                    stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 96]]
                    mem[0] = (3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2
                    if not _2724:
                        idx = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2)
                        while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        t = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2)
                        u = mem[mem[(32 * uint8(s)) + _557 + 32] + 96] + 32
                        while mem[mem[(32 * uint8(s)) + _557 + 32] + 96] + (32 * _2724) + 32 > u:
                            stor[t] = mem[u]
                            t = t + 1
                            u = u + 32
                            continue 
                        idx = t
                        while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    t = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1)
                    u = mem[mem[(32 * uint8(s)) + _557 + 32] + 64] + 32
                    while mem[mem[(32 * uint8(s)) + _557 + 32] + 64] + (32 * _2519) + 32 > u:
                        stor[t] = mem[u]
                        t = t + 1
                        u = u + 32
                        continue 
                    u = t
                    while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_256 > u:
                        stor[u] = 0
                        u = u + 1
                        continue 
                    _2827 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 96]]
                    stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 96]]
                    mem[0] = (3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2
                    if not _2827:
                        idx = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2)
                        while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        t = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2)
                        u = mem[mem[(32 * uint8(s)) + _557 + 32] + 96] + 32
                        while mem[mem[(32 * uint8(s)) + _557 + 32] + 96] + (32 * _2827) + 32 > u:
                            stor[t] = mem[u]
                            t = t + 1
                            u = u + 32
                            continue 
                        u = t
                        while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 > u:
                            stor[u] = 0
                            u = u + 1
                            continue 
                if uint8(s) == 255:
                    revert with 'NH{q', 17
                s = uint8(s) + 1
                continue 
    else:
        mem[0] = msg.sender
        mem[32] = 9
        if stor9[address(msg.sender)]:
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            if not mem[mem[128] + 12 len 20]:
                mem[0] = sub_e275c997
                mem[32] = 10
                idx = 0
                while uint8(idx) < mem[96]:
                    if uint8(idx) >= mem[96]:
                        revert with 'NH{q', 50
                    stor10[stor7].field_0++
                    mem[0] = sha3(sub_e275c997, 10)
                    address(stor10[stor7][stor10[stor7].field_0].field_0) = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                    uint16(stor10[stor7][stor10[stor7].field_0].field_160) = mem[mem[(32 * uint8(idx)) + 128] + 62 len 2]
                    _1688 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                    stor10[stor7][stor10[stor7].field_0].field_256 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                    mem[0] = (3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1
                    if not _1688:
                        s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1)
                        while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1) + stor10[stor7][stor10[stor7].field_0].field_256 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        _2272 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                        stor10[stor7][stor10[stor7].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                        mem[0] = (3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2
                        if not _2272:
                            s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2)
                            while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2) + stor10[stor7][stor10[stor7].field_0].field_512 > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2)
                            t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _2272) + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            t = s
                            while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2) + stor10[stor7][stor10[stor7].field_0].field_512 > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                    else:
                        s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1)
                        t = mem[mem[(32 * uint8(idx)) + 128] + 64] + 32
                        while mem[mem[(32 * uint8(idx)) + 128] + 64] + (32 * _1688) + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        t = s
                        while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1) + stor10[stor7][stor10[stor7].field_0].field_256 > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                        _2554 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                        stor10[stor7][stor10[stor7].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                        mem[0] = (3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2
                        if not _2554:
                            s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2)
                            while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2) + stor10[stor7][stor10[stor7].field_0].field_512 > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2)
                            t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _2554) + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            t = s
                            while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2) + stor10[stor7][stor10[stor7].field_0].field_512 > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    continue 
                _2193 = mem[_557]
                s = 0
                while uint8(s) < _2193:
                    if uint8(s) >= mem[_557]:
                        revert with 'NH{q', 50
                    stor10[stor7].field_256++
                    mem[0] = sha3(sub_e275c997, 10) + 1
                    address(stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_0) = mem[mem[(32 * uint8(s)) + _557 + 32] + 12 len 20]
                    uint16(stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_160) = mem[mem[(32 * uint8(s)) + _557 + 32] + 62 len 2]
                    _2239 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 64]]
                    stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_256 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 64]]
                    mem[0] = (3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1
                    if not _2239:
                        idx = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1)
                        while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _2552 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 96]]
                        stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 96]]
                        mem[0] = (3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2
                        if not _2552:
                            idx = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2)
                            while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            t = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2)
                            u = mem[mem[(32 * uint8(s)) + _557 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(s)) + _557 + 32] + 96] + (32 * _2552) + 32 > u:
                                stor[t] = mem[u]
                                t = t + 1
                                u = u + 32
                                continue 
                            idx = t
                            while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    else:
                        t = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1)
                        u = mem[mem[(32 * uint8(s)) + _557 + 32] + 64] + 32
                        while mem[mem[(32 * uint8(s)) + _557 + 32] + 64] + (32 * _2239) + 32 > u:
                            stor[t] = mem[u]
                            t = t + 1
                            u = u + 32
                            continue 
                        u = t
                        while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_256 > u:
                            stor[u] = 0
                            u = u + 1
                            continue 
                        _2730 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 96]]
                        stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 96]]
                        mem[0] = (3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2
                        if not _2730:
                            idx = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2)
                            while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            t = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2)
                            u = mem[mem[(32 * uint8(s)) + _557 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(s)) + _557 + 32] + 96] + (32 * _2730) + 32 > u:
                                stor[t] = mem[u]
                                t = t + 1
                                u = u + 32
                                continue 
                            u = t
                            while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 > u:
                                stor[u] = 0
                                u = u + 1
                                continue 
                    if uint8(s) == 255:
                        revert with 'NH{q', 17
                    s = uint8(s) + 1
                    continue 
            else:
                _1664 = mem[96]
                idx = 0
                while uint8(idx) < _1664:
                    if uint8(idx) >= mem[96]:
                        revert with 'NH{q', 50
                    if uint8(idx) >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] == 20:
                        _1750 = mem[mem[(32 * uint8(idx)) + 128]]
                        if uint8(idx) >= mem[96]:
                            revert with 'NH{q', 50
                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]:
                            revert with 'NH{q', 50
                        _1807 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96] + 32]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _1807
                        require ext_code.size(address(_1750))
                        call address(_1750).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _1807
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2145 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2145] == bool(mem[_2145])
                    else:
                        if uint8(idx) >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] == 777:
                            _1812 = mem[mem[(32 * uint8(idx)) + 128]]
                            if uint8(idx) >= mem[96]:
                                revert with 'NH{q', 50
                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]:
                                revert with 'NH{q', 50
                            _1870 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96] + 32]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = _1870
                            require ext_code.size(address(_1812))
                            call address(_1812).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), _1870
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2152 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2152] == bool(mem[_2152])
                        else:
                            if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] == 721:
                                if uint8(idx) < mem[96]:
                                    if uint8(var116003) >= mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]:
                                        if uint8(idx) == 255:
                                            revert with 'NH{q', 17
                                        idx = uint8(idx) + 1
                                        continue 
                                    if uint8(idx) < mem[96]:
                                        if uint8(idx) < mem[96]:
                                            _2869 = mem[mem[(32 * uint8(idx)) + 128] + 64]
                                            _2870 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                                            t = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                                            s = var120003
                                            while uint8(s) < _2870:
                                                _2878 = mem[(32 * uint8(s)) + _2869 + 32]
                                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = this.address
                                                mem[mem[64] + 68] = _2878
                                                require ext_code.size(t)
                                                call t.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(this.address), _2878
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if uint8(s) == 255:
                                                    revert with 'NH{q', 17
                                                if uint8(idx) >= mem[96]:
                                                    revert with 'NH{q', 50
                                                if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 'NH{q', 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) >= mem[96]:
                                                    revert with 'NH{q', 50
                                                if uint8(idx) >= mem[96]:
                                                    revert with 'NH{q', 50
                                                t = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                                                s = uint8(s) + 1
                                                continue 
                                revert with 'NH{q', 50
                            if uint8(idx) >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] != 1155:
                                revert with 0, 'createTrade: unsupported erc type'
                            if uint8(idx) >= mem[96]:
                                revert with 'NH{q', 50
                            if uint8(idx) >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[mem[mem[(32 * uint8(idx)) + 128] + 64]] <= 1:
                                _1965 = mem[mem[(32 * uint8(idx)) + 128]]
                                if uint8(idx) >= mem[96]:
                                    revert with 'NH{q', 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]:
                                    revert with 'NH{q', 50
                                _2034 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64] + 32]
                                if uint8(idx) >= mem[96]:
                                    revert with 'NH{q', 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]:
                                    revert with 'NH{q', 50
                                _2076 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96] + 32]
                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _2034
                                mem[mem[64] + 100] = _2076
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(address(_1965))
                                call address(_1965).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _2034, _2076, 160, 0
                            else:
                                _1968 = mem[mem[(32 * uint8(idx)) + 128]]
                                if uint8(idx) >= mem[96]:
                                    revert with 'NH{q', 50
                                _2004 = mem[mem[(32 * uint8(idx)) + 128] + 64]
                                if uint8(idx) >= mem[96]:
                                    revert with 'NH{q', 50
                                _2037 = mem[mem[(32 * uint8(idx)) + 128] + 96]
                                mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = 160
                                _2159 = mem[_2004]
                                mem[mem[64] + 164] = mem[_2004]
                                s = 0
                                t = _2004 + 32
                                u = mem[64] + 196
                                while s < _2159:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[mem[64] + 100] = (32 * _2159) + 192
                                _2304 = mem[_2037]
                                mem[mem[64] + (32 * _2159) + 196] = mem[_2037]
                                s = 0
                                t = _2037 + 32
                                u = mem[64] + (32 * _2159) + 228
                                while s < _2304:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[mem[64] + 132] = (32 * _2159) + (32 * _2304) + 224
                                mem[mem[64] + (32 * _2159) + (32 * _2304) + 228] = 0
                                require ext_code.size(address(_1968))
                                call address(_1968).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), 160, (32 * _2159) + 192, (32 * _2159) + (32 * _2304) + 224, mem[mem[64] + 164 len (32 * _2159) + (32 * _2304) + 64], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    continue 
                mem[0] = sub_e275c997
                mem[32] = 10
                idx = 0
                while uint8(idx) < mem[96]:
                    if uint8(idx) >= mem[96]:
                        revert with 'NH{q', 50
                    stor10[stor7].field_0++
                    mem[0] = sha3(sub_e275c997, 10)
                    address(stor10[stor7][stor10[stor7].field_0].field_0) = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                    uint16(stor10[stor7][stor10[stor7].field_0].field_160) = mem[mem[(32 * uint8(idx)) + 128] + 62 len 2]
                    _2246 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                    stor10[stor7][stor10[stor7].field_0].field_256 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                    mem[0] = (3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1
                    if not _2246:
                        s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1)
                        while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1) + stor10[stor7][stor10[stor7].field_0].field_256 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        _2557 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                        stor10[stor7][stor10[stor7].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                        mem[0] = (3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2
                        if not _2557:
                            s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2)
                            while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2) + stor10[stor7][stor10[stor7].field_0].field_512 > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2)
                            t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _2557) + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            t = s
                            while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2) + stor10[stor7][stor10[stor7].field_0].field_512 > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                    else:
                        s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1)
                        t = mem[mem[(32 * uint8(idx)) + 128] + 64] + 32
                        while mem[mem[(32 * uint8(idx)) + 128] + 64] + (32 * _2246) + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        t = s
                        while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1) + stor10[stor7][stor10[stor7].field_0].field_256 > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                        _2734 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                        stor10[stor7][stor10[stor7].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                        mem[0] = (3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2
                        if not _2734:
                            s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2)
                            while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2) + stor10[stor7][stor10[stor7].field_0].field_512 > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2)
                            t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _2734) + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            t = s
                            while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2) + stor10[stor7][stor10[stor7].field_0].field_512 > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    continue 
                _2488 = mem[_557]
                s = 0
                while uint8(s) < _2488:
                    if uint8(s) >= mem[_557]:
                        revert with 'NH{q', 50
                    stor10[stor7].field_256++
                    mem[0] = sha3(sub_e275c997, 10) + 1
                    address(stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_0) = mem[mem[(32 * uint8(s)) + _557 + 32] + 12 len 20]
                    uint16(stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_160) = mem[mem[(32 * uint8(s)) + _557 + 32] + 62 len 2]
                    _2528 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 64]]
                    stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_256 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 64]]
                    mem[0] = (3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1
                    if not _2528:
                        idx = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1)
                        while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _2732 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 96]]
                        stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 96]]
                        mem[0] = (3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2
                        if not _2732:
                            idx = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2)
                            while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            t = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2)
                            u = mem[mem[(32 * uint8(s)) + _557 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(s)) + _557 + 32] + 96] + (32 * _2732) + 32 > u:
                                stor[t] = mem[u]
                                t = t + 1
                                u = u + 32
                                continue 
                            idx = t
                            while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    else:
                        t = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1)
                        u = mem[mem[(32 * uint8(s)) + _557 + 32] + 64] + 32
                        while mem[mem[(32 * uint8(s)) + _557 + 32] + 64] + (32 * _2528) + 32 > u:
                            stor[t] = mem[u]
                            t = t + 1
                            u = u + 32
                            continue 
                        u = t
                        while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_256 > u:
                            stor[u] = 0
                            u = u + 1
                            continue 
                        _2829 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 96]]
                        stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 96]]
                        mem[0] = (3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2
                        if not _2829:
                            idx = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2)
                            while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            t = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2)
                            u = mem[mem[(32 * uint8(s)) + _557 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(s)) + _557 + 32] + 96] + (32 * _2829) + 32 > u:
                                stor[t] = mem[u]
                                t = t + 1
                                u = u + 32
                                continue 
                            u = t
                            while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 > u:
                                stor[u] = 0
                                u = u + 1
                                continue 
                    if uint8(s) == 255:
                        revert with 'NH{q', 17
                    s = uint8(s) + 1
                    continue 
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
            _1436 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1436] == bool(mem[_1436])
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            if not mem[mem[128] + 12 len 20]:
                mem[0] = sub_e275c997
                mem[32] = 10
                idx = 0
                while uint8(idx) < mem[96]:
                    if uint8(idx) >= mem[96]:
                        revert with 'NH{q', 50
                    stor10[stor7].field_0++
                    mem[0] = sha3(sub_e275c997, 10)
                    address(stor10[stor7][stor10[stor7].field_0].field_0) = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                    uint16(stor10[stor7][stor10[stor7].field_0].field_160) = mem[mem[(32 * uint8(idx)) + 128] + 62 len 2]
                    _1697 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                    stor10[stor7][stor10[stor7].field_0].field_256 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                    mem[0] = (3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1
                    if not _1697:
                        s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1)
                        while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1) + stor10[stor7][stor10[stor7].field_0].field_256 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        _2280 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                        stor10[stor7][stor10[stor7].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                        mem[0] = (3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2
                        if not _2280:
                            s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2)
                            while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2) + stor10[stor7][stor10[stor7].field_0].field_512 > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2)
                            t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _2280) + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            t = s
                            while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2) + stor10[stor7][stor10[stor7].field_0].field_512 > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                    else:
                        s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1)
                        t = mem[mem[(32 * uint8(idx)) + 128] + 64] + 32
                        while mem[mem[(32 * uint8(idx)) + 128] + 64] + (32 * _1697) + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        t = s
                        while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1) + stor10[stor7][stor10[stor7].field_0].field_256 > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                        _2564 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                        stor10[stor7][stor10[stor7].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                        mem[0] = (3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2
                        if not _2564:
                            s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2)
                            while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2) + stor10[stor7][stor10[stor7].field_0].field_512 > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2)
                            t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _2564) + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            t = s
                            while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2) + stor10[stor7][stor10[stor7].field_0].field_512 > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    continue 
                _2196 = mem[_557]
                t = 0
                while uint8(t) < _2196:
                    if uint8(t) >= mem[_557]:
                        revert with 'NH{q', 50
                    stor10[stor7].field_256++
                    mem[0] = sha3(sub_e275c997, 10) + 1
                    address(stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_0) = mem[mem[(32 * uint8(t)) + _557 + 32] + 12 len 20]
                    uint16(stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_160) = mem[mem[(32 * uint8(t)) + _557 + 32] + 62 len 2]
                    _2253 = mem[mem[mem[(32 * uint8(t)) + _557 + 32] + 64]]
                    stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_256 = mem[mem[mem[(32 * uint8(t)) + _557 + 32] + 64]]
                    mem[0] = (3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1
                    if not _2253:
                        idx = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1)
                        while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _2562 = mem[mem[mem[(32 * uint8(t)) + _557 + 32] + 96]]
                        stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 = mem[mem[mem[(32 * uint8(t)) + _557 + 32] + 96]]
                        mem[0] = (3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2
                        if not _2562:
                            idx = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2)
                            while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            u = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2)
                            v = mem[mem[(32 * uint8(t)) + _557 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(t)) + _557 + 32] + 96] + (32 * _2562) + 32 > v:
                                stor[u] = mem[v]
                                u = u + 1
                                v = v + 32
                                continue 
                            idx = u
                            while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    else:
                        s = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1)
                        u = mem[mem[(32 * uint8(t)) + _557 + 32] + 64] + 32
                        while mem[mem[(32 * uint8(t)) + _557 + 32] + 64] + (32 * _2253) + 32 > u:
                            stor[s] = mem[u]
                            s = s + 1
                            u = u + 32
                            continue 
                        u = s
                        while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_256 > u:
                            stor[u] = 0
                            u = u + 1
                            continue 
                        _2738 = mem[mem[mem[(32 * uint8(t)) + _557 + 32] + 96]]
                        stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 = mem[mem[mem[(32 * uint8(t)) + _557 + 32] + 96]]
                        mem[0] = (3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2
                        if not _2738:
                            idx = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2)
                            while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2)
                            u = mem[mem[(32 * uint8(t)) + _557 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(t)) + _557 + 32] + 96] + (32 * _2738) + 32 > u:
                                stor[s] = mem[u]
                                s = s + 1
                                u = u + 32
                                continue 
                            u = s
                            while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 > u:
                                stor[u] = 0
                                u = u + 1
                                continue 
                    if uint8(t) == 255:
                        revert with 'NH{q', 17
                    t = uint8(t) + 1
                    continue 
            else:
                _1666 = mem[96]
                idx = 0
                while uint8(idx) < _1666:
                    if uint8(idx) >= mem[96]:
                        revert with 'NH{q', 50
                    if uint8(idx) >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] == 20:
                        _1755 = mem[mem[(32 * uint8(idx)) + 128]]
                        if uint8(idx) >= mem[96]:
                            revert with 'NH{q', 50
                        if 0 >= mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]:
                            revert with 'NH{q', 50
                        _1816 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96] + 32]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _1816
                        require ext_code.size(address(_1755))
                        call address(_1755).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _1816
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2149 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2149] == bool(mem[_2149])
                    else:
                        if uint8(idx) >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] == 777:
                            _1821 = mem[mem[(32 * uint8(idx)) + 128]]
                            if uint8(idx) >= mem[96]:
                                revert with 'NH{q', 50
                            if 0 >= mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]:
                                revert with 'NH{q', 50
                            _1878 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96] + 32]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = _1878
                            require ext_code.size(address(_1821))
                            call address(_1821).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), _1878
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2153 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2153] == bool(mem[_2153])
                        else:
                            if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] == 721:
                                if uint8(idx) < mem[96]:
                                    if uint8(var155003) >= mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]:
                                        if uint8(idx) == 255:
                                            revert with 'NH{q', 17
                                        idx = uint8(idx) + 1
                                        continue 
                                    if uint8(idx) < mem[96]:
                                        if uint8(idx) < mem[96]:
                                            _2872 = mem[mem[(32 * uint8(idx)) + 128] + 64]
                                            _2873 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                                            t = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                                            s = var159003
                                            while uint8(s) < _2873:
                                                _2881 = mem[(32 * uint8(s)) + _2872 + 32]
                                                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = this.address
                                                mem[mem[64] + 68] = _2881
                                                require ext_code.size(t)
                                                call t.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(this.address), _2881
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if uint8(s) == 255:
                                                    revert with 'NH{q', 17
                                                if uint8(idx) >= mem[96]:
                                                    revert with 'NH{q', 50
                                                if uint8(uint8(s) + 1) >= mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]:
                                                    if uint8(idx) == 255:
                                                        revert with 'NH{q', 17
                                                    idx = uint8(idx) + 1
                                                    continue 
                                                if uint8(idx) >= mem[96]:
                                                    revert with 'NH{q', 50
                                                if uint8(idx) >= mem[96]:
                                                    revert with 'NH{q', 50
                                                t = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                                                s = uint8(s) + 1
                                                continue 
                                revert with 'NH{q', 50
                            if uint8(idx) >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * uint8(idx)) + 128] + 62 len 2] != 1155:
                                revert with 0, 'createTrade: unsupported erc type'
                            if uint8(idx) >= mem[96]:
                                revert with 'NH{q', 50
                            if uint8(idx) >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[mem[mem[(32 * uint8(idx)) + 128] + 64]] <= 1:
                                _1978 = mem[mem[(32 * uint8(idx)) + 128]]
                                if uint8(idx) >= mem[96]:
                                    revert with 'NH{q', 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]:
                                    revert with 'NH{q', 50
                                _2044 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64] + 32]
                                if uint8(idx) >= mem[96]:
                                    revert with 'NH{q', 50
                                if 0 >= mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]:
                                    revert with 'NH{q', 50
                                _2080 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96] + 32]
                                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _2044
                                mem[mem[64] + 100] = _2080
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(address(_1978))
                                call address(_1978).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _2044, _2080, 160, 0
                            else:
                                _1981 = mem[mem[(32 * uint8(idx)) + 128]]
                                if uint8(idx) >= mem[96]:
                                    revert with 'NH{q', 50
                                _2015 = mem[mem[(32 * uint8(idx)) + 128] + 64]
                                if uint8(idx) >= mem[96]:
                                    revert with 'NH{q', 50
                                _2047 = mem[mem[(32 * uint8(idx)) + 128] + 96]
                                mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = 160
                                _2162 = mem[_2015]
                                mem[mem[64] + 164] = mem[_2015]
                                s = 0
                                t = _2015 + 32
                                u = mem[64] + 196
                                while s < _2162:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[mem[64] + 100] = (32 * _2162) + 192
                                _2315 = mem[_2047]
                                mem[mem[64] + (32 * _2162) + 196] = mem[_2047]
                                s = 0
                                t = _2047 + 32
                                u = mem[64] + (32 * _2162) + 228
                                while s < _2315:
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[mem[64] + 132] = (32 * _2162) + (32 * _2315) + 224
                                mem[mem[64] + (32 * _2162) + (32 * _2315) + 228] = 0
                                require ext_code.size(address(_1981))
                                call address(_1981).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), 160, (32 * _2162) + 192, (32 * _2162) + (32 * _2315) + 224, mem[mem[64] + 164 len (32 * _2162) + (32 * _2315) + 64], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    continue 
                mem[0] = sub_e275c997
                mem[32] = 10
                idx = 0
                while uint8(idx) < mem[96]:
                    if uint8(idx) >= mem[96]:
                        revert with 'NH{q', 50
                    stor10[stor7].field_0++
                    mem[0] = sha3(sub_e275c997, 10)
                    address(stor10[stor7][stor10[stor7].field_0].field_0) = mem[mem[(32 * uint8(idx)) + 128] + 12 len 20]
                    uint16(stor10[stor7][stor10[stor7].field_0].field_160) = mem[mem[(32 * uint8(idx)) + 128] + 62 len 2]
                    _2260 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                    stor10[stor7][stor10[stor7].field_0].field_256 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
                    mem[0] = (3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1
                    if not _2260:
                        s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1)
                        while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1) + stor10[stor7][stor10[stor7].field_0].field_256 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        _2567 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                        stor10[stor7][stor10[stor7].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                        mem[0] = (3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2
                        if not _2567:
                            s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2)
                            while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2) + stor10[stor7][stor10[stor7].field_0].field_512 > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2)
                            t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _2567) + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            t = s
                            while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2) + stor10[stor7][stor10[stor7].field_0].field_512 > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                    else:
                        s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1)
                        t = mem[mem[(32 * uint8(idx)) + 128] + 64] + 32
                        while mem[mem[(32 * uint8(idx)) + 128] + 64] + (32 * _2260) + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        t = s
                        while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 1) + stor10[stor7][stor10[stor7].field_0].field_256 > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                        _2742 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                        stor10[stor7][stor10[stor7].field_0].field_512 = mem[mem[mem[(32 * uint8(idx)) + 128] + 96]]
                        mem[0] = (3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2
                        if not _2742:
                            s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2)
                            while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2) + stor10[stor7][stor10[stor7].field_0].field_512 > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            s = sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2)
                            t = mem[mem[(32 * uint8(idx)) + 128] + 96] + 32
                            while mem[mem[(32 * uint8(idx)) + 128] + 96] + (32 * _2742) + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            t = s
                            while sha3((3 * stor10[stor7].field_0) + sha3(sha3(sub_e275c997, 10)) + 2) + stor10[stor7][stor10[stor7].field_0].field_512 > t:
                                stor[t] = 0
                                t = t + 1
                                continue 
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    continue 
                _2492 = mem[_557]
                s = 0
                while uint8(s) < _2492:
                    if uint8(s) >= mem[_557]:
                        revert with 'NH{q', 50
                    stor10[stor7].field_256++
                    mem[0] = sha3(sub_e275c997, 10) + 1
                    address(stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_0) = mem[mem[(32 * uint8(s)) + _557 + 32] + 12 len 20]
                    uint16(stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_160) = mem[mem[(32 * uint8(s)) + _557 + 32] + 62 len 2]
                    _2537 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 64]]
                    stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_256 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 64]]
                    mem[0] = (3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1
                    if not _2537:
                        idx = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1)
                        while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_256 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        _2740 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 96]]
                        stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 96]]
                        mem[0] = (3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2
                        if not _2740:
                            idx = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2)
                            while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            t = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2)
                            u = mem[mem[(32 * uint8(s)) + _557 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(s)) + _557 + 32] + 96] + (32 * _2740) + 32 > u:
                                stor[t] = mem[u]
                                t = t + 1
                                u = u + 32
                                continue 
                            idx = t
                            while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    else:
                        t = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1)
                        u = mem[mem[(32 * uint8(s)) + _557 + 32] + 64] + 32
                        while mem[mem[(32 * uint8(s)) + _557 + 32] + 64] + (32 * _2537) + 32 > u:
                            stor[t] = mem[u]
                            t = t + 1
                            u = u + 32
                            continue 
                        u = t
                        while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 1) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_256 > u:
                            stor[u] = 0
                            u = u + 1
                            continue 
                        _2831 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 96]]
                        stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 = mem[mem[mem[(32 * uint8(s)) + _557 + 32] + 96]]
                        mem[0] = (3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2
                        if not _2831:
                            idx = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2)
                            while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            t = sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2)
                            u = mem[mem[(32 * uint8(s)) + _557 + 32] + 96] + 32
                            while mem[mem[(32 * uint8(s)) + _557 + 32] + 96] + (32 * _2831) + 32 > u:
                                stor[t] = mem[u]
                                t = t + 1
                                u = u + 32
                                continue 
                            u = t
                            while sha3((3 * stor10[stor7].field_256) + sha3(sha3(sub_e275c997, 10) + 1) + 2) + stor[(3 * stor10[stor7].field_256) + ('array', 1, ('map', ('stor', ('name', 'stor7', 7)), ('name', 'stor10', 10)))].field_512 > u:
                                stor[u] = 0
                                u = u + 1
                                continue 
                    if uint8(s) == 255:
                        revert with 'NH{q', 17
                    s = uint8(s) + 1
                    continue 
    address(stor10[stor7].field_512) = msg.sender
    address(stor10[stor7].field_768) = address(cd[4])
    if block.timestamp > -cd[36] - 1:
        revert with 'NH{q', 17
    stor10[stor7].field_1280 = block.timestamp + cd[36]
    if sub_e275c997 == -1:
        revert with 'NH{q', 17
    if userHistory[address(msg.sender)].field_256 == -1:
        revert with 'NH{q', 17
    userHistory[address(msg.sender)].field_256++
    userHistory[address(msg.sender)][3][userHistory[address(msg.sender)].field_256].field_0 = sub_e275c997 + 1
    if address(cd[4]):
        if userHistory[address(cd[4])].field_512 == -1:
            revert with 'NH{q', 17
        userHistory[address(cd[4])].field_512++
        userHistory[address(cd[4])][4][userHistory[address(cd[4])].field_512].field_0 = sub_e275c997 + 1
    emit NewTrade(sub_e275c997 + 1, msg.sender, address(cd[4]));
    stor1.length = 1
}



}
