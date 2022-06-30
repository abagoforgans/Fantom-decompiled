contract main {




// =====================  Runtime code  =====================


#
#  - sub_24856bc3(?)
#
const getChainID = chainid


uint8 stor1;
uint8 stor1; offset 8
uint256 stor1; offset 8
address owner;
mapping of uint8 stor102;
address bridgeAddress;
uint8 stor104;
uint256 stor104;
uint256 stor105;

function owner() payable {
    return owner
}

function cache(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor102[arg1])
}

function bridge() payable {
    return bridgeAddress
}

function _fallback() payable {
    revert
}

function configuration() payable {
    return ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('name', 'stor104', 104))))), stor105
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateBridge(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bridgeAddress = arg1
}

function sub_35c042e0(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 == ('signextend', 0, ('param', 'arg1'))
    uint8(stor104) = uint8(('signextend', 0, ('param', 'arg1')))
    stor105 = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor1.field_8):
        bridgeAddress = arg2
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        if uint8(stor1.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor1.field_8):
            bridgeAddress = arg2
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
        else:
            uint8(stor1.field_0) = 1
            uint8(stor1.field_8) = 1
            Mask(248, 0, stor1.field_8) = 0
            bridgeAddress = arg2
            if uint8(stor1.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor1.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
            else:
                uint8(stor1.field_0) = 1
                uint8(stor1.field_8) = 1
                Mask(248, 0, stor1.field_8) = 0
                if uint8(stor1.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor1.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                else:
                    uint8(stor1.field_0) = 1
                    uint8(stor1.field_8) = 1
                    Mask(248, 0, stor1.field_8) = 0
                    uint8(stor1.field_8) = 0
                    if uint8(stor1.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor1.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                    else:
                        uint8(stor1.field_0) = 1
                        uint8(stor1.field_8) = 1
                        Mask(248, 0, stor1.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint8(stor1.field_8) = 0
                        uint8(stor1.field_8) = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
    if not uint8(stor1.field_8):
        uint8(stor1.field_8) = 0
}

function sub_08d44dac(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg1.length >= 32
    _3 = mem[128]
    require mem[128] <= test266151307()
    require arg1.length - mem[128] >= 288
    if not bool(ceil32(ceil32(arg1.length)) + 385 <= test266151307()):
        revert with 0, 65
    require mem[mem[128] + 128] == mem[mem[128] + 152 len 8]
    mem[ceil32(ceil32(arg1.length)) + 97] = mem[mem[128] + 128]
    require mem[_3 + 160] == mem[_3 + 188 len 4]
    mem[ceil32(ceil32(arg1.length)) + 129] = mem[_3 + 160]
    _7 = mem[_3 + 192]
    require mem[_3 + 192] <= test266151307()
    require _3 + mem[_3 + 192] + 159 < arg1.length + 128
    _8 = mem[_3 + mem[_3 + 192] + 128]
    if mem[_3 + mem[_3 + 192] + 128] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[_3 + mem[_3 + 192] + 128])) + 386 < 385 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(mem[_3 + mem[_3 + 192] + 128])) + 386 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg1.length)) + ceil32(ceil32(mem[_3 + mem[_3 + 192] + 128])) + 386
    mem[ceil32(ceil32(arg1.length)) + 385] = mem[_3 + mem[_3 + 192] + 128]
    require _3 + _7 + _8 + 64 <= arg1.length + 32
    mem[ceil32(ceil32(arg1.length)) + 417 len ceil32(_8)] = mem[_3 + _7 + 160 len ceil32(_8)]
    if ceil32(_8) <= _8:
        mem[ceil32(ceil32(arg1.length)) + 161] = ceil32(ceil32(arg1.length)) + 385
        require mem[_3 + 224] == ('signextend', 0, ('mem', ('range', ('add', 224, ('var', '_3')), 32)))
        mem[ceil32(ceil32(arg1.length)) + 193] = mem[_3 + 224]
        mem[ceil32(ceil32(arg1.length)) + 225] = mem[_3 + 256]
        require mem[_3 + 288] == ('signextend', 0, ('mem', ('range', ('add', 288, ('var', '_3')), 32)))
        mem[ceil32(ceil32(arg1.length)) + 257] = mem[_3 + 288]
        mem[ceil32(ceil32(arg1.length)) + 289] = mem[_3 + 320]
        require mem[_3 + 352] == mem[_3 + 364 len 20]
        mem[ceil32(ceil32(arg1.length)) + 321] = mem[_3 + 352]
        require mem[_3 + 384] == mem[_3 + 412 len 4]
        mem[ceil32(ceil32(arg1.length)) + 353] = mem[_3 + 384]
        _115 = mem[ceil32(ceil32(arg1.length)) + 385]
        require mem[ceil32(ceil32(arg1.length)) + 385] >= 128
        _118 = mem[ceil32(ceil32(arg1.length)) + 417]
        require mem[ceil32(ceil32(arg1.length)) + 417] == ('signextend', 0, ('mem', ('range', ('add', 417, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))), 32)))
        _120 = mem[ceil32(ceil32(arg1.length)) + 449]
        _121 = mem[ceil32(ceil32(arg1.length)) + 481]
        require mem[ceil32(ceil32(arg1.length)) + 481] == mem[ceil32(ceil32(arg1.length)) + 509 len 4]
        _124 = mem[ceil32(ceil32(arg1.length)) + 513]
        require mem[ceil32(ceil32(arg1.length)) + 513] <= test266151307()
        require ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 448 < ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 385] + 417
        _126 = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 417]
        if mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 417] > test266151307():
            revert with 0, 65
        _128 = mem[64]
        if mem[64] + floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 417]) + 1 < mem[64] or mem[64] + floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 417]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 417]) + 1
        mem[_128] = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 417]
        idx = 0
        s = _124 + ceil32(ceil32(arg1.length)) + 449
        t = _128 + 32
        while idx < _126:
            _192 = mem[s]
            require _115 + -_124 + -mem[s] - 32 >= 128
            _195 = mem[64]
            if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 128
            mem[_195] = mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 449]
            require mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 481] == mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 493 len 20]
            mem[_195 + 32] = mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 481]
            _216 = mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 513]
            require mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 513] <= test266151307()
            require _124 + ceil32(ceil32(arg1.length)) + _192 + mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 513] + 480 < ceil32(ceil32(arg1.length)) + _115 + 417
            _219 = mem[_124 + ceil32(ceil32(arg1.length)) + _192 + mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 513] + 449]
            if mem[_124 + ceil32(ceil32(arg1.length)) + _192 + mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 513] + 449] > test266151307():
                revert with 0, 65
            _229 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_124 + ceil32(ceil32(arg1.length)) + _192 + mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 513] + 449])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_124 + ceil32(ceil32(arg1.length)) + _192 + mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 513] + 449])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_124 + ceil32(ceil32(arg1.length)) + _192 + mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 513] + 449])) + 1
            mem[_229] = mem[_124 + ceil32(ceil32(arg1.length)) + _192 + mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 513] + 449]
            require _124 + _192 + _216 + _219 + 96 <= _115 + 32
            u = 0
            while u < _219:
                mem[u + _229 + 32] = mem[u + _124 + ceil32(ceil32(arg1.length)) + _192 + _216 + 481]
                u = u + 32
                continue 
            if ceil32(_219) <= _219:
                mem[_195 + 64] = _229
                _268 = mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 545]
                require mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 545] <= test266151307()
                require _124 + ceil32(ceil32(arg1.length)) + _192 + mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 545] + 480 < ceil32(ceil32(arg1.length)) + _115 + 417
                _274 = mem[_124 + ceil32(ceil32(arg1.length)) + _192 + mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 545] + 449]
                if mem[_124 + ceil32(ceil32(arg1.length)) + _192 + mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 545] + 449] > test266151307():
                    revert with 0, 65
                _287 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_124 + ceil32(ceil32(arg1.length)) + _192 + mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 545] + 449])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_124 + ceil32(ceil32(arg1.length)) + _192 + mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 545] + 449])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_124 + ceil32(ceil32(arg1.length)) + _192 + mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 545] + 449])) + 1
                mem[_287] = mem[_124 + ceil32(ceil32(arg1.length)) + _192 + mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 545] + 449]
                require _124 + _192 + _268 + _274 + 96 <= _115 + 32
                u = 0
                while u < _274:
                    mem[u + _287 + 32] = mem[u + _124 + ceil32(ceil32(arg1.length)) + _192 + _268 + 481]
                    u = u + 32
                    continue 
                if ceil32(_274) > _274:
                    mem[_287 + _274 + 32] = 0
                mem[_195 + 96] = _287
            else:
                mem[_229 + _219 + 32] = 0
                mem[_195 + 64] = _229
                _271 = mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 545]
                require mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 545] <= test266151307()
                require _124 + ceil32(ceil32(arg1.length)) + _192 + mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 545] + 480 < ceil32(ceil32(arg1.length)) + _115 + 417
                _277 = mem[_124 + ceil32(ceil32(arg1.length)) + _192 + mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 545] + 449]
                if mem[_124 + ceil32(ceil32(arg1.length)) + _192 + mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 545] + 449] > test266151307():
                    revert with 0, 65
                _291 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_124 + ceil32(ceil32(arg1.length)) + _192 + mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 545] + 449])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_124 + ceil32(ceil32(arg1.length)) + _192 + mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 545] + 449])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_124 + ceil32(ceil32(arg1.length)) + _192 + mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 545] + 449])) + 1
                mem[_291] = mem[_124 + ceil32(ceil32(arg1.length)) + _192 + mem[_124 + ceil32(ceil32(arg1.length)) + _192 + 545] + 449]
                require _124 + _192 + _271 + _277 + 96 <= _115 + 32
                u = 0
                while u < _277:
                    mem[u + _291 + 32] = mem[u + _124 + ceil32(ceil32(arg1.length)) + _192 + _271 + 481]
                    u = u + 32
                    continue 
                if ceil32(_277) > _277:
                    mem[_291 + _277 + 32] = 0
                mem[_195 + 96] = _291
            mem[t] = _195
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _194 = mem[64]
        mem[mem[64]] = ('signextend', 0, ('var', '_118'))
        mem[mem[64] + 32] = _120
        mem[mem[64] + 64] = uint32(_121)
        mem[mem[64] + 96] = 128
        _198 = mem[_128]
        mem[mem[64] + 128] = mem[_128]
        idx = 0
        s = _128 + 32
        t = mem[64] + 160
        u = mem[64] + (32 * _198) + 160
        while idx < _198:
            mem[t] = u + -_194 - 160
            _254 = mem[s]
            mem[u] = mem[mem[s]]
            mem[u + 32] = mem[_254 + 44 len 20]
            _257 = mem[_254 + 64]
            mem[u + 64] = 128
            _265 = mem[_257]
            mem[u + 128] = mem[_257]
            v = 0
            while v < _265:
                mem[v + u + 160] = mem[v + _257 + 32]
                v = v + 32
                continue 
            if ceil32(_265) <= _265:
                _304 = mem[_254 + 96]
                mem[u + 96] = ceil32(_265) + 160
                _306 = mem[_304]
                mem[ceil32(_265) + u + 160] = mem[_304]
                v = 0
                while v < _306:
                    mem[v + ceil32(_265) + u + 192] = mem[v + _304 + 32]
                    v = v + 32
                    continue 
                if ceil32(_306) > _306:
                    mem[ceil32(_265) + u + _306 + 192] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_306) + ceil32(_265) + u + 192
                continue 
            mem[u + _265 + 160] = 0
            _307 = mem[_254 + 96]
            mem[u + 96] = ceil32(_265) + 160
            _310 = mem[_307]
            mem[ceil32(_265) + u + 160] = mem[_307]
            v = 0
            while v < _310:
                mem[v + ceil32(_265) + u + 192] = mem[v + _307 + 32]
                v = v + 32
                continue 
            if ceil32(_310) > _310:
                mem[ceil32(_265) + u + _310 + 192] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_310) + ceil32(_265) + u + 192
            continue 
    else:
        mem[ceil32(ceil32(arg1.length)) + _8 + 417] = 0
        mem[ceil32(ceil32(arg1.length)) + 161] = ceil32(ceil32(arg1.length)) + 385
        require mem[_3 + 224] == ('signextend', 0, ('mem', ('range', ('add', 224, ('var', '_3')), 32)))
        mem[ceil32(ceil32(arg1.length)) + 193] = mem[_3 + 224]
        mem[ceil32(ceil32(arg1.length)) + 225] = mem[_3 + 256]
        require mem[_3 + 288] == ('signextend', 0, ('mem', ('range', ('add', 288, ('var', '_3')), 32)))
        mem[ceil32(ceil32(arg1.length)) + 257] = mem[_3 + 288]
        mem[ceil32(ceil32(arg1.length)) + 289] = mem[_3 + 320]
        require mem[_3 + 352] == mem[_3 + 364 len 20]
        mem[ceil32(ceil32(arg1.length)) + 321] = mem[_3 + 352]
        require mem[_3 + 384] == mem[_3 + 412 len 4]
        mem[ceil32(ceil32(arg1.length)) + 353] = mem[_3 + 384]
        _117 = mem[ceil32(ceil32(arg1.length)) + 385]
        require mem[ceil32(ceil32(arg1.length)) + 385] >= 128
        _119 = mem[ceil32(ceil32(arg1.length)) + 417]
        require mem[ceil32(ceil32(arg1.length)) + 417] == ('signextend', 0, ('mem', ('range', ('add', 417, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))), 32)))
        _122 = mem[ceil32(ceil32(arg1.length)) + 449]
        _123 = mem[ceil32(ceil32(arg1.length)) + 481]
        require mem[ceil32(ceil32(arg1.length)) + 481] == mem[ceil32(ceil32(arg1.length)) + 509 len 4]
        _125 = mem[ceil32(ceil32(arg1.length)) + 513]
        require mem[ceil32(ceil32(arg1.length)) + 513] <= test266151307()
        require ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 448 < ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 385] + 417
        _127 = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 417]
        if mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 417] > test266151307():
            revert with 0, 65
        _129 = mem[64]
        if mem[64] + floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 417]) + 1 < mem[64] or mem[64] + floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 417]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 417]) + 1
        mem[_129] = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 513] + 417]
        idx = 0
        s = _125 + ceil32(ceil32(arg1.length)) + 449
        t = _129 + 32
        while idx < _127:
            _193 = mem[s]
            require _117 + -_125 + -mem[s] - 32 >= 128
            _197 = mem[64]
            if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 128
            mem[_197] = mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 449]
            require mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 481] == mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 493 len 20]
            mem[_197 + 32] = mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 481]
            _217 = mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 513]
            require mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 513] <= test266151307()
            require _125 + ceil32(ceil32(arg1.length)) + _193 + mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 513] + 480 < ceil32(ceil32(arg1.length)) + _117 + 417
            _221 = mem[_125 + ceil32(ceil32(arg1.length)) + _193 + mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 513] + 449]
            if mem[_125 + ceil32(ceil32(arg1.length)) + _193 + mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 513] + 449] > test266151307():
                revert with 0, 65
            _231 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_125 + ceil32(ceil32(arg1.length)) + _193 + mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 513] + 449])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_125 + ceil32(ceil32(arg1.length)) + _193 + mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 513] + 449])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_125 + ceil32(ceil32(arg1.length)) + _193 + mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 513] + 449])) + 1
            mem[_231] = _221
            require _125 + _193 + _217 + _221 + 96 <= _117 + 32
            u = 0
            while u < _221:
                mem[u + _231 + 32] = mem[u + _125 + ceil32(ceil32(arg1.length)) + _193 + _217 + 481]
                u = u + 32
                continue 
            if ceil32(_221) <= _221:
                mem[_197 + 64] = _231
                _269 = mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 545]
                require mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 545] <= test266151307()
                require _125 + ceil32(ceil32(arg1.length)) + _193 + mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 545] + 480 < ceil32(ceil32(arg1.length)) + _117 + 417
                _275 = mem[_125 + ceil32(ceil32(arg1.length)) + _193 + mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 545] + 449]
                if mem[_125 + ceil32(ceil32(arg1.length)) + _193 + mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 545] + 449] > test266151307():
                    revert with 0, 65
                _289 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_125 + ceil32(ceil32(arg1.length)) + _193 + mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 545] + 449])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_125 + ceil32(ceil32(arg1.length)) + _193 + mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 545] + 449])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_125 + ceil32(ceil32(arg1.length)) + _193 + mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 545] + 449])) + 1
                mem[_289] = _275
                require _125 + _193 + _269 + _275 + 96 <= _117 + 32
                u = 0
                while u < _275:
                    mem[u + _289 + 32] = mem[u + _125 + ceil32(ceil32(arg1.length)) + _193 + _269 + 481]
                    u = u + 32
                    continue 
                if ceil32(_275) > _275:
                    mem[_289 + _275 + 32] = 0
                mem[_197 + 96] = _289
            else:
                mem[_231 + _221 + 32] = 0
                mem[_197 + 64] = _231
                _273 = mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 545]
                require mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 545] <= test266151307()
                require _125 + ceil32(ceil32(arg1.length)) + _193 + mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 545] + 480 < ceil32(ceil32(arg1.length)) + _117 + 417
                _279 = mem[_125 + ceil32(ceil32(arg1.length)) + _193 + mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 545] + 449]
                if mem[_125 + ceil32(ceil32(arg1.length)) + _193 + mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 545] + 449] > test266151307():
                    revert with 0, 65
                _293 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_125 + ceil32(ceil32(arg1.length)) + _193 + mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 545] + 449])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_125 + ceil32(ceil32(arg1.length)) + _193 + mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 545] + 449])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_125 + ceil32(ceil32(arg1.length)) + _193 + mem[_125 + ceil32(ceil32(arg1.length)) + _193 + 545] + 449])) + 1
                mem[_293] = _279
                require _125 + _193 + _273 + _279 + 96 <= _117 + 32
                u = 0
                while u < _279:
                    mem[u + _293 + 32] = mem[u + _125 + ceil32(ceil32(arg1.length)) + _193 + _273 + 481]
                    u = u + 32
                    continue 
                if ceil32(_279) > _279:
                    mem[_293 + _279 + 32] = 0
                mem[_197 + 96] = _293
            mem[t] = _197
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _196 = mem[64]
        mem[mem[64]] = ('signextend', 0, ('var', '_119'))
        mem[mem[64] + 32] = _122
        mem[mem[64] + 64] = uint32(_123)
        mem[mem[64] + 96] = 128
        _199 = mem[_129]
        mem[mem[64] + 128] = mem[_129]
        idx = 0
        s = _129 + 32
        t = mem[64] + 160
        u = mem[64] + (32 * _199) + 160
        while idx < _199:
            mem[t] = u + -_196 - 160
            _259 = mem[s]
            mem[u] = mem[mem[s]]
            mem[u + 32] = mem[_259 + 44 len 20]
            _262 = mem[_259 + 64]
            mem[u + 64] = 128
            _267 = mem[_262]
            mem[u + 128] = mem[_262]
            v = 0
            while v < _267:
                mem[v + u + 160] = mem[v + _262 + 32]
                v = v + 32
                continue 
            if ceil32(_267) <= _267:
                _305 = mem[_259 + 96]
                mem[u + 96] = ceil32(_267) + 160
                _308 = mem[_305]
                mem[ceil32(_267) + u + 160] = mem[_305]
                v = 0
                while v < _308:
                    mem[v + ceil32(_267) + u + 192] = mem[v + _305 + 32]
                    v = v + 32
                    continue 
                if ceil32(_308) > _308:
                    mem[ceil32(_267) + u + _308 + 192] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_308) + ceil32(_267) + u + 192
                continue 
            mem[u + _267 + 160] = 0
            _309 = mem[_259 + 96]
            mem[u + 96] = ceil32(_267) + 160
            _311 = mem[_309]
            mem[ceil32(_267) + u + 160] = mem[_309]
            v = 0
            while v < _311:
                mem[v + ceil32(_267) + u + 192] = mem[v + _309 + 32]
                v = v + 32
                continue 
            if ceil32(_311) > _311:
                mem[ceil32(_267) + u + _311 + 192] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_311) + ceil32(_267) + u + 192
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
