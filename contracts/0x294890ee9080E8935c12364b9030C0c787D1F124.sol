contract main {




// =====================  Runtime code  =====================


address _owner;
uint256 stor1;
mapping of struct gems;

function owner() payable {
    return _owner
}

function gems(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(gems[arg1].field_0), gems[arg1].field_8
}

function _owner() payable {
    return _owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _owner = 0
    emit OwnershipTransferred(_owner, 0);
}

function sub_55cb517e(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == bool(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    gems[arg2].field_0 = uint8(bool(arg1))
    gems[arg2].field_8 = address(arg3)
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x4e2312e000000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    _owner = arg1
    emit OwnershipTransferred(_owner, arg1);
}

function nonce(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70ae92d2 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    stor1 = 1
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
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
    revert with 0, 'not supported'
}

function sub_3742a9e0(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'E2(!e)'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 2
        if gems[mem[(32 * idx) + 128]].field_0:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 50
            _264 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            mem[mem[64] + 36] = _264
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).luck(uint256 arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], _264
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _269 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _270 = mem[_269]
            require mem[_269] == mem[_269]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _272 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0xa1f0406d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _272
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0xa1f0406d with:
                    gas gas_remaining wei
                   args _272
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _275 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _276 = mem[_275]
            require mem[_275] <= test266151307()
            require _275 + mem[_275] + 31 < _275 + return_data.size
            _277 = mem[_275 + mem[_275]]
            if mem[_275 + mem[_275]] > test266151307():
                revert with 'NH{q', 65
            if _275 + ceil32(return_data.size) + ceil32(ceil32(mem[_275 + mem[_275]])) + 1 > test266151307() or ceil32(ceil32(mem[_275 + mem[_275]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _275 + ceil32(return_data.size) + ceil32(ceil32(mem[_275 + mem[_275]])) + 1
            mem[_275 + ceil32(return_data.size)] = _277
            require _276 + _277 + 32 <= return_data.size
            s = 0
            while s < _277:
                mem[_275 + ceil32(return_data.size) + s + 32] = mem[_275 + _276 + s + 32]
                s = s + 32
                continue 
            if ceil32(_277) <= _277:
                _347 = mem[_275 + 32]
                require mem[_275 + 32] <= test266151307()
                require _275 + mem[_275 + 32] + 31 < _275 + return_data.size
                _349 = mem[_275 + mem[_275 + 32]]
                if mem[_275 + mem[_275 + 32]] > test266151307():
                    revert with 'NH{q', 65
                _351 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_275 + mem[_275 + 32]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_275 + mem[_275 + 32]])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_275 + mem[_275 + 32]])) + 1
                mem[_351] = _349
                require _347 + _349 + 32 <= return_data.size
                s = 0
                while s < _349:
                    mem[_351 + s + 32] = mem[_275 + _347 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_349) <= _349:
                    require mem[_275 + 64] == mem[_275 + 64]
                    require mem[_275 + 96] == mem[_275 + 96]
                    require mem[_275 + 128] == mem[_275 + 128]
                    require mem[_275 + 160] == mem[_275 + 160]
                    require mem[_275 + 192] == mem[_275 + 204 len 20]
                    require mem[_275 + 224] == mem[_275 + 236 len 20]
                    require mem[_275 + 256] == mem[_275 + 268 len 20]
                    if not mem[_275 + 96]:
                        revert with 'NH{q', 18
                    if _270 <= -1 / mem[_275 + 96]:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _443 = mem[(32 * idx) + 128]
                        if idx >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        _449 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
                        mem[mem[64]] = 0x71e950300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _443
                        mem[mem[64] + 36] = _449
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).mine(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args _443, _449
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = 10000
                else:
                    mem[_351 + _349 + 32] = 0
                    require mem[_275 + 64] == mem[_275 + 64]
                    require mem[_275 + 96] == mem[_275 + 96]
                    require mem[_275 + 128] == mem[_275 + 128]
                    require mem[_275 + 160] == mem[_275 + 160]
                    require mem[_275 + 192] == mem[_275 + 204 len 20]
                    require mem[_275 + 224] == mem[_275 + 236 len 20]
                    require mem[_275 + 256] == mem[_275 + 268 len 20]
                    if not mem[_275 + 96]:
                        revert with 'NH{q', 18
                    if _270 <= -1 / mem[_275 + 96]:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _451 = mem[(32 * idx) + 128]
                        if idx >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        _457 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
                        mem[mem[64]] = 0x71e950300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _451
                        mem[mem[64] + 36] = _457
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).mine(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args _451, _457
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = 10000
            else:
                mem[_275 + ceil32(return_data.size) + _277 + 32] = 0
                _348 = mem[_275 + 32]
                require mem[_275 + 32] <= test266151307()
                require _275 + mem[_275 + 32] + 31 < _275 + return_data.size
                _350 = mem[_275 + mem[_275 + 32]]
                if mem[_275 + mem[_275 + 32]] > test266151307():
                    revert with 'NH{q', 65
                _352 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_275 + mem[_275 + 32]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_275 + mem[_275 + 32]])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_275 + mem[_275 + 32]])) + 1
                mem[_352] = _350
                require _348 + _350 + 32 <= return_data.size
                s = 0
                while s < _350:
                    mem[_352 + s + 32] = mem[_275 + _348 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_350) <= _350:
                    require mem[_275 + 64] == mem[_275 + 64]
                    require mem[_275 + 96] == mem[_275 + 96]
                    require mem[_275 + 128] == mem[_275 + 128]
                    require mem[_275 + 160] == mem[_275 + 160]
                    require mem[_275 + 192] == mem[_275 + 204 len 20]
                    require mem[_275 + 224] == mem[_275 + 236 len 20]
                    require mem[_275 + 256] == mem[_275 + 268 len 20]
                    if not mem[_275 + 96]:
                        revert with 'NH{q', 18
                    if _270 <= -1 / mem[_275 + 96]:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _446 = mem[(32 * idx) + 128]
                        if idx >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        _453 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
                        mem[mem[64]] = 0x71e950300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _446
                        mem[mem[64] + 36] = _453
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).mine(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args _446, _453
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = 10000
                else:
                    mem[_352 + _350 + 32] = 0
                    require mem[_275 + 64] == mem[_275 + 64]
                    require mem[_275 + 96] == mem[_275 + 96]
                    require mem[_275 + 128] == mem[_275 + 128]
                    require mem[_275 + 160] == mem[_275 + 160]
                    require mem[_275 + 192] == mem[_275 + 204 len 20]
                    require mem[_275 + 224] == mem[_275 + 236 len 20]
                    require mem[_275 + 256] == mem[_275 + 268 len 20]
                    if not mem[_275 + 96]:
                        revert with 'NH{q', 18
                    if _270 <= -1 / mem[_275 + 96]:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _455 = mem[(32 * idx) + 128]
                        if idx >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        _459 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
                        mem[mem[64]] = 0x71e950300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _455
                        mem[mem[64] + 36] = _459
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).mine(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args _455, _459
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = 10000
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
