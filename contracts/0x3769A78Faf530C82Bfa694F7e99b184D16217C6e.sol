contract main {




// =====================  Runtime code  =====================


#
#  - sub_01768052(?)
#  - sub_2717473f(?)
#
mapping of uint8 stor0;
uint8 stor1;
uint8 stor1; offset 8
address stor1; offset 16
uint256 stor1; offset 8

function isInitialized() payable {
    return bool(address(stor1.field_16))
}

function isController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[address(arg1)])
}

function migrate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not address(stor1.field_16):
        revert with 0, 'Lootbox is not initialized'
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    require ext_code.size(address(stor1.field_16))
    call address(stor1.field_16).0xa7fc7a07 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0xc4d66de8 with:
         gas gas_remaining wei
        args address(stor1.field_16)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    selfdestruct(arg1)
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

function sub_516d16b9(?) payable {
    if not address(stor1.field_16):
        revert with 0, 'Lootbox is not initialized'
    require ext_code.size(address(stor1.field_16))
    staticcall address(stor1.field_16).0x516d16b9 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor1.field_8):
        if uint8(stor1.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor1.field_8):
            uint8(stor1.field_0) = 1
            uint8(stor1.field_8) = 1
            Mask(248, 0, stor1.field_8) = 0
    require ext_code.size(arg1)
    staticcall arg1.0xb429afeb with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Lootbox data must be controlled by this lootbox factory'
    address(stor1.field_16) = arg1
    if not uint8(stor1.field_8):
        uint8(stor1.field_8) = 0
}

function sub_5d610177(?) payable {
    if not address(stor1.field_16):
        revert with 0, 'Lootbox is not initialized'
    mem[96] = 0x5d61017700000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(stor1.field_16))
    staticcall address(stor1.field_16).0x5d610177 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _7 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (32 * mem[mem[96] + 96]) + 32 < 0 or ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _7
    idx = 0
    s = _6 + 128
    t = ceil32(return_data.size) + 128
    while idx < _7:
        _186 = mem[s]
        require return_data.size + -_6 + -mem[s] - 32 >= 480
        _189 = mem[64]
        if mem[64] + 480 < mem[64] or mem[64] + 480 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + 480
        require mem[_6 + _186 + 128] == mem[_6 + _186 + 140 len 20]
        mem[_189] = mem[_6 + _186 + 128]
        require mem[_6 + _186 + 160] == mem[_6 + _186 + 172 len 20]
        mem[_189 + 32] = mem[_6 + _186 + 160]
        require mem[_6 + _186 + 192] == mem[_6 + _186 + 204 len 20]
        mem[_189 + 64] = mem[_6 + _186 + 192]
        require mem[_6 + _186 + 224] == mem[_6 + _186 + 236 len 20]
        mem[_189 + 96] = mem[_6 + _186 + 224]
        mem[_189 + 128] = mem[_6 + _186 + 256]
        _210 = mem[_6 + _186 + 288]
        require mem[_6 + _186 + 288] <= test266151307()
        require _6 + _186 + mem[_6 + _186 + 288] + 159 < return_data.size + 96
        _213 = mem[_6 + _186 + mem[_6 + _186 + 288] + 128]
        if mem[_6 + _186 + mem[_6 + _186 + 288] + 128] > test266151307():
            revert with 'NH{q', 65
        _222 = mem[64]
        if mem[64] + ceil32(mem[_6 + _186 + mem[_6 + _186 + 288] + 128]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + _186 + mem[_6 + _186 + 288] + 128]) + 32 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(mem[_6 + _186 + mem[_6 + _186 + 288] + 128]) + 32
        mem[_222] = _213
        require _6 + _186 + _210 + _213 + 64 <= return_data.size
        u = 0
        while u < _213:
            mem[u + _222 + 32] = mem[u + _6 + _186 + _210 + 160]
            u = u + 32
            continue 
        if ceil32(_213) <= _213:
            mem[_189 + 160] = _222
            _368 = mem[_6 + _186 + 320]
            require mem[_6 + _186 + 320] <= test266151307()
            require _6 + _186 + mem[_6 + _186 + 320] + 159 < return_data.size + 96
            _371 = mem[_6 + _186 + mem[_6 + _186 + 320] + 128]
            if mem[_6 + _186 + mem[_6 + _186 + 320] + 128] > test266151307():
                revert with 'NH{q', 65
            _377 = mem[64]
            if mem[64] + ceil32(mem[_6 + _186 + mem[_6 + _186 + 320] + 128]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + _186 + mem[_6 + _186 + 320] + 128]) + 32 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(mem[_6 + _186 + mem[_6 + _186 + 320] + 128]) + 32
            mem[_377] = _371
            require _6 + _186 + _368 + _371 + 64 <= return_data.size
            u = 0
            while u < _371:
                mem[u + _377 + 32] = mem[u + _6 + _186 + _368 + 160]
                u = u + 32
                continue 
            if ceil32(_371) <= _371:
                mem[_189 + 192] = _377
                _532 = mem[_6 + _186 + 352]
                require mem[_6 + _186 + 352] <= test266151307()
                require _6 + _186 + mem[_6 + _186 + 352] + 159 < return_data.size + 96
                _539 = mem[_6 + _186 + mem[_6 + _186 + 352] + 128]
                if mem[_6 + _186 + mem[_6 + _186 + 352] + 128] > test266151307():
                    revert with 'NH{q', 65
                _546 = mem[64]
                if mem[64] + ceil32(mem[_6 + _186 + mem[_6 + _186 + 352] + 128]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + _186 + mem[_6 + _186 + 352] + 128]) + 32 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(mem[_6 + _186 + mem[_6 + _186 + 352] + 128]) + 32
                mem[_546] = _539
                require _6 + _186 + _532 + _539 + 64 <= return_data.size
                u = 0
                while u < _539:
                    mem[u + _546 + 32] = mem[u + _6 + _186 + _532 + 160]
                    u = u + 32
                    continue 
                if ceil32(_539) > _539:
                    mem[_546 + _539 + 32] = 0
                mem[_189 + 224] = _546
            else:
                mem[_377 + _371 + 32] = 0
                mem[_189 + 192] = _377
                _536 = mem[_6 + _186 + 352]
                require mem[_6 + _186 + 352] <= test266151307()
                require _6 + _186 + mem[_6 + _186 + 352] + 159 < return_data.size + 96
                _542 = mem[_6 + _186 + mem[_6 + _186 + 352] + 128]
                if mem[_6 + _186 + mem[_6 + _186 + 352] + 128] > test266151307():
                    revert with 'NH{q', 65
                _551 = mem[64]
                if mem[64] + ceil32(mem[_6 + _186 + mem[_6 + _186 + 352] + 128]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + _186 + mem[_6 + _186 + 352] + 128]) + 32 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(mem[_6 + _186 + mem[_6 + _186 + 352] + 128]) + 32
                mem[_551] = _542
                require _6 + _186 + _536 + _542 + 64 <= return_data.size
                u = 0
                while u < _542:
                    mem[u + _551 + 32] = mem[u + _6 + _186 + _536 + 160]
                    u = u + 32
                    continue 
                if ceil32(_542) > _542:
                    mem[_551 + _542 + 32] = 0
                mem[_189 + 224] = _551
        else:
            mem[_222 + _213 + 32] = 0
            mem[_189 + 160] = _222
            _369 = mem[_6 + _186 + 320]
            require mem[_6 + _186 + 320] <= test266151307()
            require _6 + _186 + mem[_6 + _186 + 320] + 159 < return_data.size + 96
            _373 = mem[_6 + _186 + mem[_6 + _186 + 320] + 128]
            if mem[_6 + _186 + mem[_6 + _186 + 320] + 128] > test266151307():
                revert with 'NH{q', 65
            _378 = mem[64]
            if mem[64] + ceil32(mem[_6 + _186 + mem[_6 + _186 + 320] + 128]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + _186 + mem[_6 + _186 + 320] + 128]) + 32 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(mem[_6 + _186 + mem[_6 + _186 + 320] + 128]) + 32
            mem[_378] = _373
            require _6 + _186 + _369 + _373 + 64 <= return_data.size
            u = 0
            while u < _373:
                mem[u + _378 + 32] = mem[u + _6 + _186 + _369 + 160]
                u = u + 32
                continue 
            if ceil32(_373) <= _373:
                mem[_189 + 192] = _378
                _533 = mem[_6 + _186 + 352]
                require mem[_6 + _186 + 352] <= test266151307()
                require _6 + _186 + mem[_6 + _186 + 352] + 159 < return_data.size + 96
                _540 = mem[_6 + _186 + mem[_6 + _186 + 352] + 128]
                if mem[_6 + _186 + mem[_6 + _186 + 352] + 128] > test266151307():
                    revert with 'NH{q', 65
                _547 = mem[64]
                if mem[64] + ceil32(mem[_6 + _186 + mem[_6 + _186 + 352] + 128]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + _186 + mem[_6 + _186 + 352] + 128]) + 32 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(mem[_6 + _186 + mem[_6 + _186 + 352] + 128]) + 32
                mem[_547] = _540
                require _6 + _186 + _533 + _540 + 64 <= return_data.size
                u = 0
                while u < _540:
                    mem[u + _547 + 32] = mem[u + _6 + _186 + _533 + 160]
                    u = u + 32
                    continue 
                if ceil32(_540) > _540:
                    mem[_547 + _540 + 32] = 0
                mem[_189 + 224] = _547
            else:
                mem[_378 + _373 + 32] = 0
                mem[_189 + 192] = _378
                _537 = mem[_6 + _186 + 352]
                require mem[_6 + _186 + 352] <= test266151307()
                require _6 + _186 + mem[_6 + _186 + 352] + 159 < return_data.size + 96
                _543 = mem[_6 + _186 + mem[_6 + _186 + 352] + 128]
                if mem[_6 + _186 + mem[_6 + _186 + 352] + 128] > test266151307():
                    revert with 'NH{q', 65
                _552 = mem[64]
                if mem[64] + ceil32(mem[_6 + _186 + mem[_6 + _186 + 352] + 128]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + _186 + mem[_6 + _186 + 352] + 128]) + 32 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(mem[_6 + _186 + mem[_6 + _186 + 352] + 128]) + 32
                mem[_552] = _543
                require _6 + _186 + _537 + _543 + 64 <= return_data.size
                u = 0
                while u < _543:
                    mem[u + _552 + 32] = mem[u + _6 + _186 + _537 + 160]
                    u = u + 32
                    continue 
                if ceil32(_543) > _543:
                    mem[_552 + _543 + 32] = 0
                mem[_189 + 224] = _552
        require mem[_6 + _186 + 384] == mem[_6 + _186 + 415 len 1]
        mem[_189 + 256] = mem[_6 + _186 + 384]
        require mem[_6 + _186 + 416] == mem[_6 + _186 + 447 len 1]
        mem[_189 + 288] = mem[_6 + _186 + 416]
        mem[_189 + 320] = mem[_6 + _186 + 448]
        mem[_189 + 352] = mem[_6 + _186 + 480]
        mem[_189 + 384] = mem[_6 + _186 + 512]
        mem[_189 + 416] = mem[_6 + _186 + 544]
        require mem[_6 + _186 + 576] == bool(mem[_6 + _186 + 576])
        mem[_189 + 448] = mem[_6 + _186 + 576]
        mem[t] = _189
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _187 = mem[64]
    mem[mem[64]] = 32
    _188 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    u = mem[64] + (32 * _188) + 64
    while idx < _188:
        mem[t] = u + -_187 - 64
        _363 = mem[s]
        mem[u] = mem[mem[s] + 12 len 20]
        mem[u + 32] = mem[_363 + 44 len 20]
        mem[u + 64] = mem[_363 + 76 len 20]
        mem[u + 96] = mem[_363 + 108 len 20]
        mem[u + 128] = mem[_363 + 128]
        _375 = mem[_363 + 160]
        mem[u + 160] = 480
        _376 = mem[_375]
        mem[u + 480] = mem[_375]
        v = 0
        while v < _376:
            mem[v + u + 512] = mem[v + _375 + 32]
            v = v + 32
            continue 
        if ceil32(_376) <= _376:
            _531 = mem[_363 + 192]
            mem[u + 192] = ceil32(_376) + 512
            _534 = mem[_531]
            mem[ceil32(_376) + u + 512] = mem[_531]
            v = 0
            while v < _534:
                mem[v + ceil32(_376) + u + 544] = mem[v + _531 + 32]
                v = v + 32
                continue 
            if ceil32(_534) <= _534:
                _683 = mem[_363 + 224]
                mem[u + 224] = ceil32(_534) + ceil32(_376) + 544
                _685 = mem[_683]
                mem[ceil32(_534) + ceil32(_376) + u + 544] = mem[_683]
                v = 0
                while v < _685:
                    mem[v + ceil32(_534) + ceil32(_376) + u + 576] = mem[v + _683 + 32]
                    v = v + 32
                    continue 
                if ceil32(_685) > _685:
                    mem[ceil32(_534) + ceil32(_376) + u + _685 + 576] = 0
                mem[u + 256] = mem[_363 + 287 len 1]
                mem[u + 288] = mem[_363 + 319 len 1]
                mem[u + 320] = mem[_363 + 320]
                mem[u + 352] = mem[_363 + 352]
                mem[u + 384] = mem[_363 + 384]
                mem[u + 416] = mem[_363 + 416]
                mem[u + 448] = bool(mem[_363 + 448])
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_685) + ceil32(_534) + ceil32(_376) + u + 576
                continue 
            mem[ceil32(_376) + u + _534 + 544] = 0
            _686 = mem[_363 + 224]
            mem[u + 224] = ceil32(_534) + ceil32(_376) + 544
            _693 = mem[_686]
            mem[ceil32(_534) + ceil32(_376) + u + 544] = mem[_686]
            v = 0
            while v < _693:
                mem[v + ceil32(_534) + ceil32(_376) + u + 576] = mem[v + _686 + 32]
                v = v + 32
                continue 
            if ceil32(_693) > _693:
                mem[ceil32(_534) + ceil32(_376) + u + _693 + 576] = 0
            mem[u + 256] = mem[_363 + 287 len 1]
            mem[u + 288] = mem[_363 + 319 len 1]
            mem[u + 320] = mem[_363 + 320]
            mem[u + 352] = mem[_363 + 352]
            mem[u + 384] = mem[_363 + 384]
            mem[u + 416] = mem[_363 + 416]
            mem[u + 448] = bool(mem[_363 + 448])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_693) + ceil32(_534) + ceil32(_376) + u + 576
            continue 
        mem[u + _376 + 512] = 0
        _535 = mem[_363 + 192]
        mem[u + 192] = ceil32(_376) + 512
        _538 = mem[_535]
        mem[ceil32(_376) + u + 512] = mem[_535]
        v = 0
        while v < _538:
            mem[v + ceil32(_376) + u + 544] = mem[v + _535 + 32]
            v = v + 32
            continue 
        if ceil32(_538) <= _538:
            _684 = mem[_363 + 224]
            mem[u + 224] = ceil32(_538) + ceil32(_376) + 544
            _687 = mem[_684]
            mem[ceil32(_538) + ceil32(_376) + u + 544] = mem[_684]
            v = 0
            while v < _687:
                mem[v + ceil32(_538) + ceil32(_376) + u + 576] = mem[v + _684 + 32]
                v = v + 32
                continue 
            if ceil32(_687) > _687:
                mem[ceil32(_538) + ceil32(_376) + u + _687 + 576] = 0
            mem[u + 256] = mem[_363 + 287 len 1]
            mem[u + 288] = mem[_363 + 319 len 1]
            mem[u + 320] = mem[_363 + 320]
            mem[u + 352] = mem[_363 + 352]
            mem[u + 384] = mem[_363 + 384]
            mem[u + 416] = mem[_363 + 416]
            mem[u + 448] = bool(mem[_363 + 448])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_687) + ceil32(_538) + ceil32(_376) + u + 576
            continue 
        mem[ceil32(_376) + u + _538 + 544] = 0
        _688 = mem[_363 + 224]
        mem[u + 224] = ceil32(_538) + ceil32(_376) + 544
        _694 = mem[_688]
        mem[ceil32(_538) + ceil32(_376) + u + 544] = mem[_688]
        v = 0
        while v < _694:
            mem[v + ceil32(_538) + ceil32(_376) + u + 576] = mem[v + _688 + 32]
            v = v + 32
            continue 
        if ceil32(_694) > _694:
            mem[ceil32(_538) + ceil32(_376) + u + _694 + 576] = 0
        mem[u + 256] = mem[_363 + 287 len 1]
        mem[u + 288] = mem[_363 + 319 len 1]
        mem[u + 320] = mem[_363 + 320]
        mem[u + 352] = mem[_363 + 352]
        mem[u + 384] = mem[_363 + 384]
        mem[u + 416] = mem[_363 + 416]
        mem[u + 448] = bool(mem[_363 + 448])
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_694) + ceil32(_538) + ceil32(_376) + u + 576
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_5213b7ff(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 96
    mem[288] = 96
    mem[320] = 96
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    if not address(stor1.field_16):
        revert with 0, 'Lootbox is not initialized'
    mem[576] = 0xf09b13e00000000000000000000000000000000000000000000000000000000
    mem[580] = arg1
    require ext_code.size(address(stor1.field_16))
    staticcall address(stor1.field_16).0xf09b13e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _7 = mem[576 len 4], Mask(224, 32, arg1) >> 32
    require mem[576 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[576 len 4], Mask(224, 32, arg1) >> 32 >= 480
    if not bool(ceil32(return_data.size) + 1056 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + 1056
    require mem[mem[576 len 4], Mask(224, 32, arg1) >> 32 + 576] == mem[mem[576 len 4], Mask(224, 32, arg1) >> 32 + 588 len 20]
    mem[ceil32(return_data.size) + 576] = mem[mem[576 len 4], Mask(224, 32, arg1) >> 32 + 576]
    require mem[_7 + 608] == mem[_7 + 620 len 20]
    mem[ceil32(return_data.size) + 608] = mem[_7 + 608]
    require mem[_7 + 640] == mem[_7 + 652 len 20]
    mem[ceil32(return_data.size) + 640] = mem[_7 + 640]
    require mem[_7 + 672] == mem[_7 + 684 len 20]
    mem[ceil32(return_data.size) + 672] = mem[_7 + 672]
    mem[ceil32(return_data.size) + 704] = mem[_7 + 704]
    _14 = mem[_7 + 736]
    require mem[_7 + 736] <= test266151307()
    require _7 + mem[_7 + 736] + 607 < return_data.size + 576
    _15 = mem[_7 + mem[_7 + 736] + 576]
    if mem[_7 + mem[_7 + 736] + 576] > test266151307():
        revert with 'NH{q', 65
    if ceil32(mem[_7 + mem[_7 + 736] + 576]) + 512 < 480 or ceil32(return_data.size) + ceil32(mem[_7 + mem[_7 + 736] + 576]) + 1088 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(mem[_7 + mem[_7 + 736] + 576]) + 1088
    mem[ceil32(return_data.size) + 1056] = _15
    require _7 + _14 + _15 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 1088 len ceil32(_15)] = mem[_7 + _14 + 608 len ceil32(_15)]
    if ceil32(_15) <= _15:
        mem[ceil32(return_data.size) + 736] = ceil32(return_data.size) + 1056
        _827 = mem[_7 + 768]
        require mem[_7 + 768] <= test266151307()
        require _7 + mem[_7 + 768] + 607 < return_data.size + 576
        _829 = mem[_7 + mem[_7 + 768] + 576]
        if mem[_7 + mem[_7 + 768] + 576] > test266151307():
            revert with 'NH{q', 65
        _831 = mem[64]
        if mem[64] + ceil32(mem[_7 + mem[_7 + 768] + 576]) + 32 < mem[64] or mem[64] + ceil32(mem[_7 + mem[_7 + 768] + 576]) + 32 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(mem[_7 + mem[_7 + 768] + 576]) + 32
        mem[_831] = _829
        require _7 + _827 + _829 + 32 <= return_data.size
        mem[_831 + 32 len ceil32(_829)] = mem[_7 + _827 + 608 len ceil32(_829)]
        if ceil32(_829) <= _829:
            mem[ceil32(return_data.size) + 768] = _831
            _1637 = mem[_7 + 800]
            require mem[_7 + 800] <= test266151307()
            require _7 + mem[_7 + 800] + 607 < return_data.size + 576
            _1641 = mem[_7 + mem[_7 + 800] + 576]
            if mem[_7 + mem[_7 + 800] + 576] > test266151307():
                revert with 'NH{q', 65
            _1645 = mem[64]
            if mem[64] + ceil32(mem[_7 + mem[_7 + 800] + 576]) + 32 < mem[64] or mem[64] + ceil32(mem[_7 + mem[_7 + 800] + 576]) + 32 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(mem[_7 + mem[_7 + 800] + 576]) + 32
            mem[_1645] = mem[_7 + mem[_7 + 800] + 576]
            require _7 + _1637 + _1641 + 32 <= return_data.size
            mem[_1645 + 32 len ceil32(_1641)] = mem[_7 + _1637 + 608 len ceil32(_1641)]
            if ceil32(_1641) <= _1641:
                mem[ceil32(return_data.size) + 800] = _1645
                require mem[_7 + 832] == mem[_7 + 863 len 1]
                mem[ceil32(return_data.size) + 832] = mem[_7 + 832]
                require mem[_7 + 864] == mem[_7 + 895 len 1]
                mem[ceil32(return_data.size) + 864] = mem[_7 + 864]
                mem[ceil32(return_data.size) + 896] = mem[_7 + 896]
                mem[ceil32(return_data.size) + 928] = mem[_7 + 928]
                mem[ceil32(return_data.size) + 960] = mem[_7 + 960]
                mem[ceil32(return_data.size) + 992] = mem[_7 + 992]
                require mem[_7 + 1024] == bool(mem[_7 + 1024])
                mem[ceil32(return_data.size) + 1024] = mem[_7 + 1024]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[ceil32(return_data.size) + 588 len 20]
                mem[mem[64] + 64] = mem[ceil32(return_data.size) + 620 len 20]
                mem[mem[64] + 96] = mem[ceil32(return_data.size) + 652 len 20]
                mem[mem[64] + 128] = mem[ceil32(return_data.size) + 684 len 20]
                mem[mem[64] + 160] = mem[ceil32(return_data.size) + 704]
                mem[mem[64] + 192] = 480
                mem[mem[64] + 512] = _15
                mem[mem[64] + 544 len ceil32(_15)] = mem[ceil32(return_data.size) + 1088 len ceil32(_15)]
                if ceil32(_15) <= _15:
                    mem[mem[64] + 224] = ceil32(_15) + 512
                    mem[ceil32(_15) + mem[64] + 544] = _829
                    mem[ceil32(_15) + mem[64] + 576 len ceil32(_829)] = mem[_831 + 32 len ceil32(_829)]
                    if ceil32(_829) <= _829:
                        mem[mem[64] + 256] = ceil32(_829) + ceil32(_15) + 544
                        _3921 = mem[_1645]
                        mem[ceil32(_829) + ceil32(_15) + mem[64] + 576] = mem[_1645]
                        mem[ceil32(_829) + ceil32(_15) + mem[64] + 608 len ceil32(_3921)] = mem[_1645 + 32 len ceil32(_3921)]
                        if ceil32(_3921) > _3921:
                            mem[ceil32(_829) + ceil32(_15) + mem[64] + _3921 + 608] = 0
                        mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
                        mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
                        mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
                        mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
                        mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
                        mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
                        mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
                        return 32, mem[mem[64] + 32 len 160], 
                               480,
                               ceil32(_15) + 512,
                               ceil32(_829) + ceil32(_15) + 544,
                               mem[mem[64] + 288 len 224],
                               _15,
                               mem[mem[64] + 544 len ceil32(_3921) + ceil32(_829) + ceil32(_15) + 64]
                    mem[ceil32(_15) + mem[64] + _829 + 576] = 0
                    mem[mem[64] + 256] = ceil32(_829) + ceil32(_15) + 544
                    _3953 = mem[_1645]
                    mem[ceil32(_829) + ceil32(_15) + mem[64] + 576] = mem[_1645]
                    mem[ceil32(_829) + ceil32(_15) + mem[64] + 608 len ceil32(_3953)] = mem[_1645 + 32 len ceil32(_3953)]
                    if ceil32(_3953) > _3953:
                        mem[ceil32(_829) + ceil32(_15) + mem[64] + _3953 + 608] = 0
                    mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
                    mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
                    mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
                    mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
                    mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
                    mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
                    mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
                    return 32, mem[mem[64] + 32 len 160], 
                           480,
                           ceil32(_15) + 512,
                           ceil32(_829) + ceil32(_15) + 544,
                           mem[mem[64] + 288 len 224],
                           _15,
                           mem[mem[64] + 544 len ceil32(_15) + _829 + 32],
                           0,
                           mem[mem[64] + ceil32(_15) + _829 + 608 len ceil32(_3953) + ceil32(_829) - _829]
                mem[mem[64] + _15 + 544] = 0
                mem[mem[64] + 224] = ceil32(_15) + 512
                mem[ceil32(_15) + mem[64] + 544] = _829
                mem[ceil32(_15) + mem[64] + 576 len ceil32(_829)] = mem[_831 + 32 len ceil32(_829)]
                if ceil32(_829) <= _829:
                    mem[mem[64] + 256] = ceil32(_829) + ceil32(_15) + 544
                    _3923 = mem[_1645]
                    mem[ceil32(_829) + ceil32(_15) + mem[64] + 576] = mem[_1645]
                    mem[ceil32(_829) + ceil32(_15) + mem[64] + 608 len ceil32(_3923)] = mem[_1645 + 32 len ceil32(_3923)]
                    if ceil32(_3923) > _3923:
                        mem[ceil32(_829) + ceil32(_15) + mem[64] + _3923 + 608] = 0
                    mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
                    mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
                    mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
                    mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
                    mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
                    mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
                    mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
                    return 32, mem[mem[64] + 32 len 160], 
                           480,
                           ceil32(_15) + 512,
                           ceil32(_829) + ceil32(_15) + 544,
                           mem[mem[64] + 288 len 224],
                           _15,
                           mem[mem[64] + 544 len ceil32(_3923) + ceil32(_829) + ceil32(_15) + 64]
                mem[ceil32(_15) + mem[64] + _829 + 576] = 0
                mem[mem[64] + 256] = ceil32(_829) + ceil32(_15) + 544
                _3954 = mem[_1645]
                mem[ceil32(_829) + ceil32(_15) + mem[64] + 576] = mem[_1645]
                mem[ceil32(_829) + ceil32(_15) + mem[64] + 608 len ceil32(_3954)] = mem[_1645 + 32 len ceil32(_3954)]
                if ceil32(_3954) > _3954:
                    mem[ceil32(_829) + ceil32(_15) + mem[64] + _3954 + 608] = 0
                mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
                mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
                mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
                mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
                mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
                mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
                mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
                return 32, mem[mem[64] + 32 len 160], 
                       480,
                       ceil32(_15) + 512,
                       ceil32(_829) + ceil32(_15) + 544,
                       mem[mem[64] + 288 len 224],
                       _15,
                       mem[mem[64] + 544 len ceil32(_15) + _829 + 32],
                       0,
                       mem[mem[64] + ceil32(_15) + _829 + 608 len ceil32(_3954) + ceil32(_829) - _829]
            mem[_1645 + _1641 + 32] = 0
            mem[ceil32(return_data.size) + 800] = _1645
            require mem[_7 + 832] == mem[_7 + 863 len 1]
            mem[ceil32(return_data.size) + 832] = mem[_7 + 832]
            require mem[_7 + 864] == mem[_7 + 895 len 1]
            mem[ceil32(return_data.size) + 864] = mem[_7 + 864]
            mem[ceil32(return_data.size) + 896] = mem[_7 + 896]
            mem[ceil32(return_data.size) + 928] = mem[_7 + 928]
            mem[ceil32(return_data.size) + 960] = mem[_7 + 960]
            mem[ceil32(return_data.size) + 992] = mem[_7 + 992]
            require mem[_7 + 1024] == bool(mem[_7 + 1024])
            mem[ceil32(return_data.size) + 1024] = mem[_7 + 1024]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 588 len 20]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 620 len 20]
            mem[mem[64] + 96] = mem[ceil32(return_data.size) + 652 len 20]
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 684 len 20]
            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 704]
            mem[mem[64] + 192] = 480
            mem[mem[64] + 512] = _15
            mem[mem[64] + 544 len ceil32(_15)] = mem[ceil32(return_data.size) + 1088 len ceil32(_15)]
            if ceil32(_15) <= _15:
                mem[mem[64] + 224] = ceil32(_15) + 512
                mem[ceil32(_15) + mem[64] + 544] = _829
                mem[ceil32(_15) + mem[64] + 576 len ceil32(_829)] = mem[_831 + 32 len ceil32(_829)]
                if ceil32(_829) <= _829:
                    mem[mem[64] + 256] = ceil32(_829) + ceil32(_15) + 544
                    _3925 = mem[_1645]
                    mem[ceil32(_829) + ceil32(_15) + mem[64] + 576] = mem[_1645]
                    mem[ceil32(_829) + ceil32(_15) + mem[64] + 608 len ceil32(_3925)] = mem[_1645 + 32 len ceil32(_3925)]
                    if ceil32(_3925) > _3925:
                        mem[ceil32(_829) + ceil32(_15) + mem[64] + _3925 + 608] = 0
                    mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
                    mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
                    mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
                    mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
                    mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
                    mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
                    mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
                    return 32, mem[mem[64] + 32 len 160], 
                           480,
                           ceil32(_15) + 512,
                           ceil32(_829) + ceil32(_15) + 544,
                           mem[mem[64] + 288 len 224],
                           _15,
                           mem[mem[64] + 544 len ceil32(_3925) + ceil32(_829) + ceil32(_15) + 64]
                mem[ceil32(_15) + mem[64] + _829 + 576] = 0
                mem[mem[64] + 256] = ceil32(_829) + ceil32(_15) + 544
                _3955 = mem[_1645]
                mem[ceil32(_829) + ceil32(_15) + mem[64] + 576] = mem[_1645]
                mem[ceil32(_829) + ceil32(_15) + mem[64] + 608 len ceil32(_3955)] = mem[_1645 + 32 len ceil32(_3955)]
                if ceil32(_3955) > _3955:
                    mem[ceil32(_829) + ceil32(_15) + mem[64] + _3955 + 608] = 0
                mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
                mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
                mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
                mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
                mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
                mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
                mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
                return 32, mem[mem[64] + 32 len 160], 
                       480,
                       ceil32(_15) + 512,
                       ceil32(_829) + ceil32(_15) + 544,
                       mem[mem[64] + 288 len 224],
                       _15,
                       mem[mem[64] + 544 len ceil32(_15) + _829 + 32],
                       0,
                       mem[mem[64] + ceil32(_15) + _829 + 608 len ceil32(_3955) + ceil32(_829) - _829]
            mem[mem[64] + _15 + 544] = 0
            mem[mem[64] + 224] = ceil32(_15) + 512
            mem[ceil32(_15) + mem[64] + 544] = _829
            mem[ceil32(_15) + mem[64] + 576 len ceil32(_829)] = mem[_831 + 32 len ceil32(_829)]
            if ceil32(_829) <= _829:
                mem[mem[64] + 256] = ceil32(_829) + ceil32(_15) + 544
                _3927 = mem[_1645]
                mem[ceil32(_829) + ceil32(_15) + mem[64] + 576] = mem[_1645]
                mem[ceil32(_829) + ceil32(_15) + mem[64] + 608 len ceil32(_3927)] = mem[_1645 + 32 len ceil32(_3927)]
                if ceil32(_3927) > _3927:
                    mem[ceil32(_829) + ceil32(_15) + mem[64] + _3927 + 608] = 0
                mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
                mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
                mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
                mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
                mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
                mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
                mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
                return 32, mem[mem[64] + 32 len 160], 
                       480,
                       ceil32(_15) + 512,
                       ceil32(_829) + ceil32(_15) + 544,
                       mem[mem[64] + 288 len 224],
                       _15,
                       mem[mem[64] + 544 len ceil32(_3927) + ceil32(_829) + ceil32(_15) + 64]
            mem[ceil32(_15) + mem[64] + _829 + 576] = 0
            mem[mem[64] + 256] = ceil32(_829) + ceil32(_15) + 544
            _3956 = mem[_1645]
            mem[ceil32(_829) + ceil32(_15) + mem[64] + 576] = mem[_1645]
            mem[ceil32(_829) + ceil32(_15) + mem[64] + 608 len ceil32(_3956)] = mem[_1645 + 32 len ceil32(_3956)]
            if ceil32(_3956) > _3956:
                mem[ceil32(_829) + ceil32(_15) + mem[64] + _3956 + 608] = 0
            mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
            mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
            mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
            mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
            mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
            mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
            mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
            return 32, mem[mem[64] + 32 len 160], 
                   480,
                   ceil32(_15) + 512,
                   ceil32(_829) + ceil32(_15) + 544,
                   mem[mem[64] + 288 len 224],
                   _15,
                   mem[mem[64] + 544 len ceil32(_15) + _829 + 32],
                   0,
                   mem[mem[64] + ceil32(_15) + _829 + 608 len ceil32(_3956) + ceil32(_829) - _829]
        mem[_831 + _829 + 32] = 0
        mem[ceil32(return_data.size) + 768] = _831
        _1639 = mem[_7 + 800]
        require mem[_7 + 800] <= test266151307()
        require _7 + mem[_7 + 800] + 607 < return_data.size + 576
        _1643 = mem[_7 + mem[_7 + 800] + 576]
        if mem[_7 + mem[_7 + 800] + 576] > test266151307():
            revert with 'NH{q', 65
        _1647 = mem[64]
        if mem[64] + ceil32(mem[_7 + mem[_7 + 800] + 576]) + 32 < mem[64] or mem[64] + ceil32(mem[_7 + mem[_7 + 800] + 576]) + 32 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(mem[_7 + mem[_7 + 800] + 576]) + 32
        mem[_1647] = mem[_7 + mem[_7 + 800] + 576]
        require _7 + _1639 + _1643 + 32 <= return_data.size
        mem[_1647 + 32 len ceil32(_1643)] = mem[_7 + _1639 + 608 len ceil32(_1643)]
        if ceil32(_1643) <= _1643:
            mem[ceil32(return_data.size) + 800] = _1647
            require mem[_7 + 832] == mem[_7 + 863 len 1]
            mem[ceil32(return_data.size) + 832] = mem[_7 + 832]
            require mem[_7 + 864] == mem[_7 + 895 len 1]
            mem[ceil32(return_data.size) + 864] = mem[_7 + 864]
            mem[ceil32(return_data.size) + 896] = mem[_7 + 896]
            mem[ceil32(return_data.size) + 928] = mem[_7 + 928]
            mem[ceil32(return_data.size) + 960] = mem[_7 + 960]
            mem[ceil32(return_data.size) + 992] = mem[_7 + 992]
            require mem[_7 + 1024] == bool(mem[_7 + 1024])
            mem[ceil32(return_data.size) + 1024] = mem[_7 + 1024]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 588 len 20]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 620 len 20]
            mem[mem[64] + 96] = mem[ceil32(return_data.size) + 652 len 20]
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 684 len 20]
            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 704]
            mem[mem[64] + 192] = 480
            mem[mem[64] + 512] = _15
            mem[mem[64] + 544 len ceil32(_15)] = mem[ceil32(return_data.size) + 1088 len ceil32(_15)]
            if ceil32(_15) <= _15:
                mem[mem[64] + 224] = ceil32(_15) + 512
                mem[ceil32(_15) + mem[64] + 544] = _829
                mem[ceil32(_15) + mem[64] + 576 len ceil32(_829)] = mem[_831 + 32 len ceil32(_829)]
                if ceil32(_829) <= _829:
                    mem[mem[64] + 256] = ceil32(_829) + ceil32(_15) + 544
                    _3929 = mem[_1647]
                    mem[ceil32(_829) + ceil32(_15) + mem[64] + 576] = mem[_1647]
                    mem[ceil32(_829) + ceil32(_15) + mem[64] + 608 len ceil32(_3929)] = mem[_1647 + 32 len ceil32(_3929)]
                    if ceil32(_3929) > _3929:
                        mem[ceil32(_829) + ceil32(_15) + mem[64] + _3929 + 608] = 0
                    mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
                    mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
                    mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
                    mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
                    mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
                    mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
                    mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
                    return 32, mem[mem[64] + 32 len 160], 
                           480,
                           ceil32(_15) + 512,
                           ceil32(_829) + ceil32(_15) + 544,
                           mem[mem[64] + 288 len 224],
                           _15,
                           mem[mem[64] + 544 len ceil32(_3929) + ceil32(_829) + ceil32(_15) + 64]
                mem[ceil32(_15) + mem[64] + _829 + 576] = 0
                mem[mem[64] + 256] = ceil32(_829) + ceil32(_15) + 544
                _3957 = mem[_1647]
                mem[ceil32(_829) + ceil32(_15) + mem[64] + 576] = mem[_1647]
                mem[ceil32(_829) + ceil32(_15) + mem[64] + 608 len ceil32(_3957)] = mem[_1647 + 32 len ceil32(_3957)]
                if ceil32(_3957) > _3957:
                    mem[ceil32(_829) + ceil32(_15) + mem[64] + _3957 + 608] = 0
                mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
                mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
                mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
                mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
                mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
                mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
                mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
                return 32, mem[mem[64] + 32 len 160], 
                       480,
                       ceil32(_15) + 512,
                       ceil32(_829) + ceil32(_15) + 544,
                       mem[mem[64] + 288 len 224],
                       _15,
                       mem[mem[64] + 544 len ceil32(_15) + _829 + 32],
                       0,
                       mem[mem[64] + ceil32(_15) + _829 + 608 len ceil32(_3957) + ceil32(_829) - _829]
            mem[mem[64] + _15 + 544] = 0
            mem[mem[64] + 224] = ceil32(_15) + 512
            mem[ceil32(_15) + mem[64] + 544] = _829
            mem[ceil32(_15) + mem[64] + 576 len ceil32(_829)] = mem[_831 + 32 len ceil32(_829)]
            if ceil32(_829) <= _829:
                mem[mem[64] + 256] = ceil32(_829) + ceil32(_15) + 544
                _3931 = mem[_1647]
                mem[ceil32(_829) + ceil32(_15) + mem[64] + 576] = mem[_1647]
                mem[ceil32(_829) + ceil32(_15) + mem[64] + 608 len ceil32(_3931)] = mem[_1647 + 32 len ceil32(_3931)]
                if ceil32(_3931) > _3931:
                    mem[ceil32(_829) + ceil32(_15) + mem[64] + _3931 + 608] = 0
                mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
                mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
                mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
                mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
                mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
                mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
                mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
                return 32, mem[mem[64] + 32 len 160], 
                       480,
                       ceil32(_15) + 512,
                       ceil32(_829) + ceil32(_15) + 544,
                       mem[mem[64] + 288 len 224],
                       _15,
                       mem[mem[64] + 544 len ceil32(_3931) + ceil32(_829) + ceil32(_15) + 64]
            mem[ceil32(_15) + mem[64] + _829 + 576] = 0
            mem[mem[64] + 256] = ceil32(_829) + ceil32(_15) + 544
            _3958 = mem[_1647]
            mem[ceil32(_829) + ceil32(_15) + mem[64] + 576] = mem[_1647]
            mem[ceil32(_829) + ceil32(_15) + mem[64] + 608 len ceil32(_3958)] = mem[_1647 + 32 len ceil32(_3958)]
            if ceil32(_3958) > _3958:
                mem[ceil32(_829) + ceil32(_15) + mem[64] + _3958 + 608] = 0
            mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
            mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
            mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
            mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
            mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
            mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
            mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
            return 32, mem[mem[64] + 32 len 160], 
                   480,
                   ceil32(_15) + 512,
                   ceil32(_829) + ceil32(_15) + 544,
                   mem[mem[64] + 288 len 224],
                   _15,
                   mem[mem[64] + 544 len ceil32(_15) + _829 + 32],
                   0,
                   mem[mem[64] + ceil32(_15) + _829 + 608 len ceil32(_3958) + ceil32(_829) - _829]
        mem[_1647 + _1643 + 32] = 0
        mem[ceil32(return_data.size) + 800] = _1647
        require mem[_7 + 832] == mem[_7 + 863 len 1]
        mem[ceil32(return_data.size) + 832] = mem[_7 + 832]
        require mem[_7 + 864] == mem[_7 + 895 len 1]
        mem[ceil32(return_data.size) + 864] = mem[_7 + 864]
        mem[ceil32(return_data.size) + 896] = mem[_7 + 896]
        mem[ceil32(return_data.size) + 928] = mem[_7 + 928]
        mem[ceil32(return_data.size) + 960] = mem[_7 + 960]
        mem[ceil32(return_data.size) + 992] = mem[_7 + 992]
        require mem[_7 + 1024] == bool(mem[_7 + 1024])
        mem[ceil32(return_data.size) + 1024] = mem[_7 + 1024]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 588 len 20]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 620 len 20]
        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 652 len 20]
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 684 len 20]
        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 704]
        mem[mem[64] + 192] = 480
        mem[mem[64] + 512] = _15
        mem[mem[64] + 544 len ceil32(_15)] = mem[ceil32(return_data.size) + 1088 len ceil32(_15)]
        if ceil32(_15) <= _15:
            mem[mem[64] + 224] = ceil32(_15) + 512
            mem[ceil32(_15) + mem[64] + 544] = _829
            mem[ceil32(_15) + mem[64] + 576 len ceil32(_829)] = mem[_831 + 32 len ceil32(_829)]
            if ceil32(_829) <= _829:
                mem[mem[64] + 256] = ceil32(_829) + ceil32(_15) + 544
                _3933 = mem[_1647]
                mem[ceil32(_829) + ceil32(_15) + mem[64] + 576] = mem[_1647]
                mem[ceil32(_829) + ceil32(_15) + mem[64] + 608 len ceil32(_3933)] = mem[_1647 + 32 len ceil32(_3933)]
                if ceil32(_3933) > _3933:
                    mem[ceil32(_829) + ceil32(_15) + mem[64] + _3933 + 608] = 0
                mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
                mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
                mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
                mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
                mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
                mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
                mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
                return 32, mem[mem[64] + 32 len 160], 
                       480,
                       ceil32(_15) + 512,
                       ceil32(_829) + ceil32(_15) + 544,
                       mem[mem[64] + 288 len 224],
                       _15,
                       mem[mem[64] + 544 len ceil32(_3933) + ceil32(_829) + ceil32(_15) + 64]
            mem[ceil32(_15) + mem[64] + _829 + 576] = 0
            mem[mem[64] + 256] = ceil32(_829) + ceil32(_15) + 544
            _3959 = mem[_1647]
            mem[ceil32(_829) + ceil32(_15) + mem[64] + 576] = mem[_1647]
            mem[ceil32(_829) + ceil32(_15) + mem[64] + 608 len ceil32(_3959)] = mem[_1647 + 32 len ceil32(_3959)]
            if ceil32(_3959) > _3959:
                mem[ceil32(_829) + ceil32(_15) + mem[64] + _3959 + 608] = 0
            mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
            mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
            mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
            mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
            mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
            mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
            mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
            return 32, mem[mem[64] + 32 len 160], 
                   480,
                   ceil32(_15) + 512,
                   ceil32(_829) + ceil32(_15) + 544,
                   mem[mem[64] + 288 len 224],
                   _15,
                   mem[mem[64] + 544 len ceil32(_15) + _829 + 32],
                   0,
                   mem[mem[64] + ceil32(_15) + _829 + 608 len ceil32(_3959) + ceil32(_829) - _829]
        mem[mem[64] + _15 + 544] = 0
        mem[mem[64] + 224] = ceil32(_15) + 512
        mem[ceil32(_15) + mem[64] + 544] = _829
        mem[ceil32(_15) + mem[64] + 576 len ceil32(_829)] = mem[_831 + 32 len ceil32(_829)]
        if ceil32(_829) <= _829:
            mem[mem[64] + 256] = ceil32(_829) + ceil32(_15) + 544
            _3935 = mem[_1647]
            mem[ceil32(_829) + ceil32(_15) + mem[64] + 576] = mem[_1647]
            mem[ceil32(_829) + ceil32(_15) + mem[64] + 608 len ceil32(_3935)] = mem[_1647 + 32 len ceil32(_3935)]
            if ceil32(_3935) > _3935:
                mem[ceil32(_829) + ceil32(_15) + mem[64] + _3935 + 608] = 0
            mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
            mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
            mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
            mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
            mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
            mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
            mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
            return 32, mem[mem[64] + 32 len 160], 
                   480,
                   ceil32(_15) + 512,
                   ceil32(_829) + ceil32(_15) + 544,
                   mem[mem[64] + 288 len 224],
                   _15,
                   mem[mem[64] + 544 len ceil32(_3935) + ceil32(_829) + ceil32(_15) + 64]
        mem[ceil32(_15) + mem[64] + _829 + 576] = 0
        mem[mem[64] + 256] = ceil32(_829) + ceil32(_15) + 544
        _3960 = mem[_1647]
        mem[ceil32(_829) + ceil32(_15) + mem[64] + 576] = mem[_1647]
        mem[ceil32(_829) + ceil32(_15) + mem[64] + 608 len ceil32(_3960)] = mem[_1647 + 32 len ceil32(_3960)]
        if ceil32(_3960) > _3960:
            mem[ceil32(_829) + ceil32(_15) + mem[64] + _3960 + 608] = 0
        mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
        mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
        mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
        mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
        mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
        mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
        mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
        return 32, mem[mem[64] + 32 len 160], 
               480,
               ceil32(_15) + 512,
               ceil32(_829) + ceil32(_15) + 544,
               mem[mem[64] + 288 len 224],
               _15,
               mem[mem[64] + 544 len ceil32(_15) + _829 + 32],
               0,
               mem[mem[64] + ceil32(_15) + _829 + 608 len ceil32(_3960) + ceil32(_829) - _829]
    mem[ceil32(return_data.size) + _15 + 1088] = 0
    mem[ceil32(return_data.size) + 736] = ceil32(return_data.size) + 1056
    _828 = mem[_7 + 768]
    require mem[_7 + 768] <= test266151307()
    require _7 + mem[_7 + 768] + 607 < return_data.size + 576
    _830 = mem[_7 + mem[_7 + 768] + 576]
    if mem[_7 + mem[_7 + 768] + 576] > test266151307():
        revert with 'NH{q', 65
    _832 = mem[64]
    if mem[64] + ceil32(mem[_7 + mem[_7 + 768] + 576]) + 32 < mem[64] or mem[64] + ceil32(mem[_7 + mem[_7 + 768] + 576]) + 32 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + ceil32(mem[_7 + mem[_7 + 768] + 576]) + 32
    mem[_832] = _830
    require _7 + _828 + _830 + 32 <= return_data.size
    mem[_832 + 32 len ceil32(_830)] = mem[_7 + _828 + 608 len ceil32(_830)]
    if ceil32(_830) <= _830:
        mem[ceil32(return_data.size) + 768] = _832
        _1638 = mem[_7 + 800]
        require mem[_7 + 800] <= test266151307()
        require _7 + mem[_7 + 800] + 607 < return_data.size + 576
        _1642 = mem[_7 + mem[_7 + 800] + 576]
        if mem[_7 + mem[_7 + 800] + 576] > test266151307():
            revert with 'NH{q', 65
        _1646 = mem[64]
        if mem[64] + ceil32(mem[_7 + mem[_7 + 800] + 576]) + 32 < mem[64] or mem[64] + ceil32(mem[_7 + mem[_7 + 800] + 576]) + 32 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(mem[_7 + mem[_7 + 800] + 576]) + 32
        mem[_1646] = mem[_7 + mem[_7 + 800] + 576]
        require _7 + _1638 + _1642 + 32 <= return_data.size
        mem[_1646 + 32 len ceil32(_1642)] = mem[_7 + _1638 + 608 len ceil32(_1642)]
        if ceil32(_1642) <= _1642:
            mem[ceil32(return_data.size) + 800] = _1646
            require mem[_7 + 832] == mem[_7 + 863 len 1]
            mem[ceil32(return_data.size) + 832] = mem[_7 + 832]
            require mem[_7 + 864] == mem[_7 + 895 len 1]
            mem[ceil32(return_data.size) + 864] = mem[_7 + 864]
            mem[ceil32(return_data.size) + 896] = mem[_7 + 896]
            mem[ceil32(return_data.size) + 928] = mem[_7 + 928]
            mem[ceil32(return_data.size) + 960] = mem[_7 + 960]
            mem[ceil32(return_data.size) + 992] = mem[_7 + 992]
            require mem[_7 + 1024] == bool(mem[_7 + 1024])
            mem[ceil32(return_data.size) + 1024] = mem[_7 + 1024]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 588 len 20]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 620 len 20]
            mem[mem[64] + 96] = mem[ceil32(return_data.size) + 652 len 20]
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 684 len 20]
            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 704]
            mem[mem[64] + 192] = 480
            mem[mem[64] + 512] = _15
            mem[mem[64] + 544 len ceil32(_15)] = mem[ceil32(return_data.size) + 1088 len ceil32(_15)]
            if ceil32(_15) <= _15:
                mem[mem[64] + 224] = ceil32(_15) + 512
                mem[ceil32(_15) + mem[64] + 544] = _830
                mem[ceil32(_15) + mem[64] + 576 len ceil32(_830)] = mem[_832 + 32 len ceil32(_830)]
                if ceil32(_830) <= _830:
                    mem[mem[64] + 256] = ceil32(_830) + ceil32(_15) + 544
                    _3937 = mem[_1646]
                    mem[ceil32(_830) + ceil32(_15) + mem[64] + 576] = mem[_1646]
                    mem[ceil32(_830) + ceil32(_15) + mem[64] + 608 len ceil32(_3937)] = mem[_1646 + 32 len ceil32(_3937)]
                    if ceil32(_3937) > _3937:
                        mem[ceil32(_830) + ceil32(_15) + mem[64] + _3937 + 608] = 0
                    mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
                    mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
                    mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
                    mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
                    mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
                    mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
                    mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
                    return 32, mem[mem[64] + 32 len 160], 
                           480,
                           ceil32(_15) + 512,
                           ceil32(_830) + ceil32(_15) + 544,
                           mem[mem[64] + 288 len 224],
                           _15,
                           mem[mem[64] + 544 len ceil32(_3937) + ceil32(_830) + ceil32(_15) + 64]
                mem[ceil32(_15) + mem[64] + _830 + 576] = 0
                mem[mem[64] + 256] = ceil32(_830) + ceil32(_15) + 544
                _3961 = mem[_1646]
                mem[ceil32(_830) + ceil32(_15) + mem[64] + 576] = mem[_1646]
                mem[ceil32(_830) + ceil32(_15) + mem[64] + 608 len ceil32(_3961)] = mem[_1646 + 32 len ceil32(_3961)]
                if ceil32(_3961) > _3961:
                    mem[ceil32(_830) + ceil32(_15) + mem[64] + _3961 + 608] = 0
                mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
                mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
                mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
                mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
                mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
                mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
                mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
                return 32, mem[mem[64] + 32 len 160], 
                       480,
                       ceil32(_15) + 512,
                       ceil32(_830) + ceil32(_15) + 544,
                       mem[mem[64] + 288 len 224],
                       _15,
                       mem[mem[64] + 544 len ceil32(_15) + _830 + 32],
                       0,
                       mem[mem[64] + ceil32(_15) + _830 + 608 len ceil32(_3961) + ceil32(_830) - _830]
            mem[mem[64] + _15 + 544] = 0
            mem[mem[64] + 224] = ceil32(_15) + 512
            mem[ceil32(_15) + mem[64] + 544] = _830
            mem[ceil32(_15) + mem[64] + 576 len ceil32(_830)] = mem[_832 + 32 len ceil32(_830)]
            if ceil32(_830) <= _830:
                mem[mem[64] + 256] = ceil32(_830) + ceil32(_15) + 544
                _3939 = mem[_1646]
                mem[ceil32(_830) + ceil32(_15) + mem[64] + 576] = mem[_1646]
                mem[ceil32(_830) + ceil32(_15) + mem[64] + 608 len ceil32(_3939)] = mem[_1646 + 32 len ceil32(_3939)]
                if ceil32(_3939) > _3939:
                    mem[ceil32(_830) + ceil32(_15) + mem[64] + _3939 + 608] = 0
                mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
                mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
                mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
                mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
                mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
                mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
                mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
                return 32, mem[mem[64] + 32 len 160], 
                       480,
                       ceil32(_15) + 512,
                       ceil32(_830) + ceil32(_15) + 544,
                       mem[mem[64] + 288 len 224],
                       _15,
                       mem[mem[64] + 544 len ceil32(_3939) + ceil32(_830) + ceil32(_15) + 64]
            mem[ceil32(_15) + mem[64] + _830 + 576] = 0
            mem[mem[64] + 256] = ceil32(_830) + ceil32(_15) + 544
            _3962 = mem[_1646]
            mem[ceil32(_830) + ceil32(_15) + mem[64] + 576] = mem[_1646]
            mem[ceil32(_830) + ceil32(_15) + mem[64] + 608 len ceil32(_3962)] = mem[_1646 + 32 len ceil32(_3962)]
            if ceil32(_3962) > _3962:
                mem[ceil32(_830) + ceil32(_15) + mem[64] + _3962 + 608] = 0
            mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
            mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
            mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
            mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
            mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
            mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
            mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
            return 32, mem[mem[64] + 32 len 160], 
                   480,
                   ceil32(_15) + 512,
                   ceil32(_830) + ceil32(_15) + 544,
                   mem[mem[64] + 288 len 224],
                   _15,
                   mem[mem[64] + 544 len ceil32(_15) + _830 + 32],
                   0,
                   mem[mem[64] + ceil32(_15) + _830 + 608 len ceil32(_3962) + ceil32(_830) - _830]
        mem[_1646 + _1642 + 32] = 0
        mem[ceil32(return_data.size) + 800] = _1646
        require mem[_7 + 832] == mem[_7 + 863 len 1]
        mem[ceil32(return_data.size) + 832] = mem[_7 + 832]
        require mem[_7 + 864] == mem[_7 + 895 len 1]
        mem[ceil32(return_data.size) + 864] = mem[_7 + 864]
        mem[ceil32(return_data.size) + 896] = mem[_7 + 896]
        mem[ceil32(return_data.size) + 928] = mem[_7 + 928]
        mem[ceil32(return_data.size) + 960] = mem[_7 + 960]
        mem[ceil32(return_data.size) + 992] = mem[_7 + 992]
        require mem[_7 + 1024] == bool(mem[_7 + 1024])
        mem[ceil32(return_data.size) + 1024] = mem[_7 + 1024]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 588 len 20]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 620 len 20]
        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 652 len 20]
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 684 len 20]
        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 704]
        mem[mem[64] + 192] = 480
        mem[mem[64] + 512] = _15
        mem[mem[64] + 544 len ceil32(_15)] = mem[ceil32(return_data.size) + 1088 len ceil32(_15)]
        if ceil32(_15) <= _15:
            mem[mem[64] + 224] = ceil32(_15) + 512
            mem[ceil32(_15) + mem[64] + 544] = _830
            mem[ceil32(_15) + mem[64] + 576 len ceil32(_830)] = mem[_832 + 32 len ceil32(_830)]
            if ceil32(_830) <= _830:
                mem[mem[64] + 256] = ceil32(_830) + ceil32(_15) + 544
                _3941 = mem[_1646]
                mem[ceil32(_830) + ceil32(_15) + mem[64] + 576] = mem[_1646]
                mem[ceil32(_830) + ceil32(_15) + mem[64] + 608 len ceil32(_3941)] = mem[_1646 + 32 len ceil32(_3941)]
                if ceil32(_3941) > _3941:
                    mem[ceil32(_830) + ceil32(_15) + mem[64] + _3941 + 608] = 0
                mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
                mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
                mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
                mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
                mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
                mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
                mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
                return 32, mem[mem[64] + 32 len 160], 
                       480,
                       ceil32(_15) + 512,
                       ceil32(_830) + ceil32(_15) + 544,
                       mem[mem[64] + 288 len 224],
                       _15,
                       mem[mem[64] + 544 len ceil32(_3941) + ceil32(_830) + ceil32(_15) + 64]
            mem[ceil32(_15) + mem[64] + _830 + 576] = 0
            mem[mem[64] + 256] = ceil32(_830) + ceil32(_15) + 544
            _3963 = mem[_1646]
            mem[ceil32(_830) + ceil32(_15) + mem[64] + 576] = mem[_1646]
            mem[ceil32(_830) + ceil32(_15) + mem[64] + 608 len ceil32(_3963)] = mem[_1646 + 32 len ceil32(_3963)]
            if ceil32(_3963) > _3963:
                mem[ceil32(_830) + ceil32(_15) + mem[64] + _3963 + 608] = 0
            mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
            mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
            mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
            mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
            mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
            mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
            mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
            return 32, mem[mem[64] + 32 len 160], 
                   480,
                   ceil32(_15) + 512,
                   ceil32(_830) + ceil32(_15) + 544,
                   mem[mem[64] + 288 len 224],
                   _15,
                   mem[mem[64] + 544 len ceil32(_15) + _830 + 32],
                   0,
                   mem[mem[64] + ceil32(_15) + _830 + 608 len ceil32(_3963) + ceil32(_830) - _830]
        mem[mem[64] + _15 + 544] = 0
        mem[mem[64] + 224] = ceil32(_15) + 512
        mem[ceil32(_15) + mem[64] + 544] = _830
        mem[ceil32(_15) + mem[64] + 576 len ceil32(_830)] = mem[_832 + 32 len ceil32(_830)]
        if ceil32(_830) <= _830:
            mem[mem[64] + 256] = ceil32(_830) + ceil32(_15) + 544
            _3943 = mem[_1646]
            mem[ceil32(_830) + ceil32(_15) + mem[64] + 576] = mem[_1646]
            mem[ceil32(_830) + ceil32(_15) + mem[64] + 608 len ceil32(_3943)] = mem[_1646 + 32 len ceil32(_3943)]
            if ceil32(_3943) > _3943:
                mem[ceil32(_830) + ceil32(_15) + mem[64] + _3943 + 608] = 0
            mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
            mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
            mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
            mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
            mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
            mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
            mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
            return 32, mem[mem[64] + 32 len 160], 
                   480,
                   ceil32(_15) + 512,
                   ceil32(_830) + ceil32(_15) + 544,
                   mem[mem[64] + 288 len 224],
                   _15,
                   mem[mem[64] + 544 len ceil32(_3943) + ceil32(_830) + ceil32(_15) + 64]
        mem[ceil32(_15) + mem[64] + _830 + 576] = 0
        mem[mem[64] + 256] = ceil32(_830) + ceil32(_15) + 544
        _3964 = mem[_1646]
        mem[ceil32(_830) + ceil32(_15) + mem[64] + 576] = mem[_1646]
        mem[ceil32(_830) + ceil32(_15) + mem[64] + 608 len ceil32(_3964)] = mem[_1646 + 32 len ceil32(_3964)]
        if ceil32(_3964) > _3964:
            mem[ceil32(_830) + ceil32(_15) + mem[64] + _3964 + 608] = 0
        mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
        mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
        mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
        mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
        mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
        mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
        mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
        return 32, mem[mem[64] + 32 len 160], 
               480,
               ceil32(_15) + 512,
               ceil32(_830) + ceil32(_15) + 544,
               mem[mem[64] + 288 len 224],
               _15,
               mem[mem[64] + 544 len ceil32(_15) + _830 + 32],
               0,
               mem[mem[64] + ceil32(_15) + _830 + 608 len ceil32(_3964) + ceil32(_830) - _830]
    mem[_832 + _830 + 32] = 0
    mem[ceil32(return_data.size) + 768] = _832
    _1640 = mem[_7 + 800]
    require mem[_7 + 800] <= test266151307()
    require _7 + mem[_7 + 800] + 607 < return_data.size + 576
    _1644 = mem[_7 + mem[_7 + 800] + 576]
    if mem[_7 + mem[_7 + 800] + 576] > test266151307():
        revert with 'NH{q', 65
    _1648 = mem[64]
    if mem[64] + ceil32(mem[_7 + mem[_7 + 800] + 576]) + 32 < mem[64] or mem[64] + ceil32(mem[_7 + mem[_7 + 800] + 576]) + 32 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + ceil32(mem[_7 + mem[_7 + 800] + 576]) + 32
    mem[_1648] = mem[_7 + mem[_7 + 800] + 576]
    require _7 + _1640 + _1644 + 32 <= return_data.size
    mem[_1648 + 32 len ceil32(_1644)] = mem[_7 + _1640 + 608 len ceil32(_1644)]
    if ceil32(_1644) <= _1644:
        mem[ceil32(return_data.size) + 800] = _1648
        require mem[_7 + 832] == mem[_7 + 863 len 1]
        mem[ceil32(return_data.size) + 832] = mem[_7 + 832]
        require mem[_7 + 864] == mem[_7 + 895 len 1]
        mem[ceil32(return_data.size) + 864] = mem[_7 + 864]
        mem[ceil32(return_data.size) + 896] = mem[_7 + 896]
        mem[ceil32(return_data.size) + 928] = mem[_7 + 928]
        mem[ceil32(return_data.size) + 960] = mem[_7 + 960]
        mem[ceil32(return_data.size) + 992] = mem[_7 + 992]
        require mem[_7 + 1024] == bool(mem[_7 + 1024])
        mem[ceil32(return_data.size) + 1024] = mem[_7 + 1024]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 588 len 20]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 620 len 20]
        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 652 len 20]
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 684 len 20]
        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 704]
        mem[mem[64] + 192] = 480
        mem[mem[64] + 512] = _15
        mem[mem[64] + 544 len ceil32(_15)] = mem[ceil32(return_data.size) + 1088 len ceil32(_15)]
        if ceil32(_15) <= _15:
            mem[mem[64] + 224] = ceil32(_15) + 512
            mem[ceil32(_15) + mem[64] + 544] = _830
            mem[ceil32(_15) + mem[64] + 576 len ceil32(_830)] = mem[_832 + 32 len ceil32(_830)]
            if ceil32(_830) <= _830:
                mem[mem[64] + 256] = ceil32(_830) + ceil32(_15) + 544
                _3945 = mem[_1648]
                mem[ceil32(_830) + ceil32(_15) + mem[64] + 576] = mem[_1648]
                mem[ceil32(_830) + ceil32(_15) + mem[64] + 608 len ceil32(_3945)] = mem[_1648 + 32 len ceil32(_3945)]
                if ceil32(_3945) > _3945:
                    mem[ceil32(_830) + ceil32(_15) + mem[64] + _3945 + 608] = 0
                mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
                mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
                mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
                mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
                mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
                mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
                mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
                return 32, mem[mem[64] + 32 len 160], 
                       480,
                       ceil32(_15) + 512,
                       ceil32(_830) + ceil32(_15) + 544,
                       mem[mem[64] + 288 len 224],
                       _15,
                       mem[mem[64] + 544 len ceil32(_3945) + ceil32(_830) + ceil32(_15) + 64]
            mem[ceil32(_15) + mem[64] + _830 + 576] = 0
            mem[mem[64] + 256] = ceil32(_830) + ceil32(_15) + 544
            _3965 = mem[_1648]
            mem[ceil32(_830) + ceil32(_15) + mem[64] + 576] = mem[_1648]
            mem[ceil32(_830) + ceil32(_15) + mem[64] + 608 len ceil32(_3965)] = mem[_1648 + 32 len ceil32(_3965)]
            if ceil32(_3965) > _3965:
                mem[ceil32(_830) + ceil32(_15) + mem[64] + _3965 + 608] = 0
            mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
            mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
            mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
            mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
            mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
            mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
            mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
            return 32, mem[mem[64] + 32 len 160], 
                   480,
                   ceil32(_15) + 512,
                   ceil32(_830) + ceil32(_15) + 544,
                   mem[mem[64] + 288 len 224],
                   _15,
                   mem[mem[64] + 544 len ceil32(_15) + _830 + 32],
                   0,
                   mem[mem[64] + ceil32(_15) + _830 + 608 len ceil32(_3965) + ceil32(_830) - _830]
        mem[mem[64] + _15 + 544] = 0
        mem[mem[64] + 224] = ceil32(_15) + 512
        mem[ceil32(_15) + mem[64] + 544] = _830
        mem[ceil32(_15) + mem[64] + 576 len ceil32(_830)] = mem[_832 + 32 len ceil32(_830)]
        if ceil32(_830) <= _830:
            mem[mem[64] + 256] = ceil32(_830) + ceil32(_15) + 544
            _3947 = mem[_1648]
            mem[ceil32(_830) + ceil32(_15) + mem[64] + 576] = mem[_1648]
            mem[ceil32(_830) + ceil32(_15) + mem[64] + 608 len ceil32(_3947)] = mem[_1648 + 32 len ceil32(_3947)]
            if ceil32(_3947) > _3947:
                mem[ceil32(_830) + ceil32(_15) + mem[64] + _3947 + 608] = 0
            mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
            mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
            mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
            mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
            mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
            mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
            mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
            return 32, mem[mem[64] + 32 len 160], 
                   480,
                   ceil32(_15) + 512,
                   ceil32(_830) + ceil32(_15) + 544,
                   mem[mem[64] + 288 len 224],
                   _15,
                   mem[mem[64] + 544 len ceil32(_3947) + ceil32(_830) + ceil32(_15) + 64]
        mem[ceil32(_15) + mem[64] + _830 + 576] = 0
        mem[mem[64] + 256] = ceil32(_830) + ceil32(_15) + 544
        _3966 = mem[_1648]
        mem[ceil32(_830) + ceil32(_15) + mem[64] + 576] = mem[_1648]
        mem[ceil32(_830) + ceil32(_15) + mem[64] + 608 len ceil32(_3966)] = mem[_1648 + 32 len ceil32(_3966)]
        if ceil32(_3966) > _3966:
            mem[ceil32(_830) + ceil32(_15) + mem[64] + _3966 + 608] = 0
        mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
        mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
        mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
        mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
        mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
        mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
        mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
        return 32, mem[mem[64] + 32 len 160], 
               480,
               ceil32(_15) + 512,
               ceil32(_830) + ceil32(_15) + 544,
               mem[mem[64] + 288 len 224],
               _15,
               mem[mem[64] + 544 len ceil32(_15) + _830 + 32],
               0,
               mem[mem[64] + ceil32(_15) + _830 + 608 len ceil32(_3966) + ceil32(_830) - _830]
    mem[_1648 + _1644 + 32] = 0
    mem[ceil32(return_data.size) + 800] = _1648
    require mem[_7 + 832] == mem[_7 + 863 len 1]
    mem[ceil32(return_data.size) + 832] = mem[_7 + 832]
    require mem[_7 + 864] == mem[_7 + 895 len 1]
    mem[ceil32(return_data.size) + 864] = mem[_7 + 864]
    mem[ceil32(return_data.size) + 896] = mem[_7 + 896]
    mem[ceil32(return_data.size) + 928] = mem[_7 + 928]
    mem[ceil32(return_data.size) + 960] = mem[_7 + 960]
    mem[ceil32(return_data.size) + 992] = mem[_7 + 992]
    require mem[_7 + 1024] == bool(mem[_7 + 1024])
    mem[ceil32(return_data.size) + 1024] = mem[_7 + 1024]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 588 len 20]
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 620 len 20]
    mem[mem[64] + 96] = mem[ceil32(return_data.size) + 652 len 20]
    mem[mem[64] + 128] = mem[ceil32(return_data.size) + 684 len 20]
    mem[mem[64] + 160] = mem[ceil32(return_data.size) + 704]
    mem[mem[64] + 192] = 480
    mem[mem[64] + 512] = _15
    mem[mem[64] + 544 len ceil32(_15)] = mem[ceil32(return_data.size) + 1088 len ceil32(_15)]
    if ceil32(_15) <= _15:
        mem[mem[64] + 224] = ceil32(_15) + 512
        mem[ceil32(_15) + mem[64] + 544] = _830
        mem[ceil32(_15) + mem[64] + 576 len ceil32(_830)] = mem[_832 + 32 len ceil32(_830)]
        if ceil32(_830) <= _830:
            mem[mem[64] + 256] = ceil32(_830) + ceil32(_15) + 544
            _3949 = mem[_1648]
            mem[ceil32(_830) + ceil32(_15) + mem[64] + 576] = mem[_1648]
            mem[ceil32(_830) + ceil32(_15) + mem[64] + 608 len ceil32(_3949)] = mem[_1648 + 32 len ceil32(_3949)]
            if ceil32(_3949) > _3949:
                mem[ceil32(_830) + ceil32(_15) + mem[64] + _3949 + 608] = 0
            mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
            mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
            mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
            mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
            mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
            mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
            mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
            return 32, mem[mem[64] + 32 len 160], 
                   480,
                   ceil32(_15) + 512,
                   ceil32(_830) + ceil32(_15) + 544,
                   mem[mem[64] + 288 len 224],
                   _15,
                   mem[mem[64] + 544 len ceil32(_3949) + ceil32(_830) + ceil32(_15) + 64]
        mem[ceil32(_15) + mem[64] + _830 + 576] = 0
        mem[mem[64] + 256] = ceil32(_830) + ceil32(_15) + 544
        _3967 = mem[_1648]
        mem[ceil32(_830) + ceil32(_15) + mem[64] + 576] = mem[_1648]
        mem[ceil32(_830) + ceil32(_15) + mem[64] + 608 len ceil32(_3967)] = mem[_1648 + 32 len ceil32(_3967)]
        if ceil32(_3967) > _3967:
            mem[ceil32(_830) + ceil32(_15) + mem[64] + _3967 + 608] = 0
        mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
        mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
        mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
        mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
        mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
        mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
        mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
        return 32, mem[mem[64] + 32 len 160], 
               480,
               ceil32(_15) + 512,
               ceil32(_830) + ceil32(_15) + 544,
               mem[mem[64] + 288 len 224],
               _15,
               mem[mem[64] + 544 len ceil32(_15) + _830 + 32],
               0,
               mem[mem[64] + ceil32(_15) + _830 + 608 len ceil32(_3967) + ceil32(_830) - _830]
    mem[mem[64] + _15 + 544] = 0
    mem[mem[64] + 224] = ceil32(_15) + 512
    mem[ceil32(_15) + mem[64] + 544] = _830
    mem[ceil32(_15) + mem[64] + 576 len ceil32(_830)] = mem[_832 + 32 len ceil32(_830)]
    if ceil32(_830) <= _830:
        mem[mem[64] + 256] = ceil32(_830) + ceil32(_15) + 544
        _3951 = mem[_1648]
        mem[ceil32(_830) + ceil32(_15) + mem[64] + 576] = mem[_1648]
        mem[ceil32(_830) + ceil32(_15) + mem[64] + 608 len ceil32(_3951)] = mem[_1648 + 32 len ceil32(_3951)]
        if ceil32(_3951) > _3951:
            mem[ceil32(_830) + ceil32(_15) + mem[64] + _3951 + 608] = 0
        mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
        mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
        mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
        mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
        mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
        mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
        mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
        return 32, mem[mem[64] + 32 len 160], 
               480,
               ceil32(_15) + 512,
               ceil32(_830) + ceil32(_15) + 544,
               mem[mem[64] + 288 len 224],
               _15,
               mem[mem[64] + 544 len ceil32(_3951) + ceil32(_830) + ceil32(_15) + 64]
    mem[ceil32(_15) + mem[64] + _830 + 576] = 0
    mem[mem[64] + 256] = ceil32(_830) + ceil32(_15) + 544
    _3968 = mem[_1648]
    mem[ceil32(_830) + ceil32(_15) + mem[64] + 576] = mem[_1648]
    mem[ceil32(_830) + ceil32(_15) + mem[64] + 608 len ceil32(_3968)] = mem[_1648 + 32 len ceil32(_3968)]
    if ceil32(_3968) > _3968:
        mem[ceil32(_830) + ceil32(_15) + mem[64] + _3968 + 608] = 0
    mem[mem[64] + 288] = mem[ceil32(return_data.size) + 863 len 1]
    mem[mem[64] + 320] = mem[ceil32(return_data.size) + 895 len 1]
    mem[mem[64] + 352] = mem[ceil32(return_data.size) + 896]
    mem[mem[64] + 384] = mem[ceil32(return_data.size) + 928]
    mem[mem[64] + 416] = mem[ceil32(return_data.size) + 960]
    mem[mem[64] + 448] = mem[ceil32(return_data.size) + 992]
    mem[mem[64] + 480] = bool(mem[ceil32(return_data.size) + 1024])
    return 32, mem[mem[64] + 32 len 160], 
           480,
           ceil32(_15) + 512,
           ceil32(_830) + ceil32(_15) + 544,
           mem[mem[64] + 288 len 224],
           _15,
           mem[mem[64] + 544 len ceil32(_15) + _830 + 32],
           0,
           mem[mem[64] + ceil32(_15) + _830 + 608 len ceil32(_3968) + ceil32(_830) - _830]
}



}
