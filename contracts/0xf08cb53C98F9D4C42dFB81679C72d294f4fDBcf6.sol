contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg5.length)) + 97 > test266151307() or ceil32(ceil32(arg5.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function sub_cadda4ba(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    if ('cd', 4).length:
        mem[floor32(('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = eth.balance(mem[(32 * idx) + 128])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=('cd', 4).length, data=mem[floor32(('cd', 4).length) + 129 len 32 * ('cd', 4).length])
}

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
            else:
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                Mask(248, 0, stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                else:
                    Mask(248, 0, stor0.field_8) = 1
                    uint8(stor0.field_0) = 1
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    Mask(248, 0, stor0.field_8) = 0
                    Mask(248, 0, stor0.field_8) = 0
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + 97 > test266151307() or floor32(arg3.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + floor32(arg4.length) + 98 > test266151307() or floor32(arg4.length) + 98 < 97:
        revert with 'NH{q', 65
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = floor32(arg3.length) + 129
    while idx < arg4.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 > test266151307() or ceil32(ceil32(arg5.length)) + 99 < 98:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function sub_2631d58c(?) payable {
    require calldata.size - 4 >= 64
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
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 36).length
    mem[64] = floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 129
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _59 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(_59)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_69] == mem[_69]
            if idx >= mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 36).length) + 129] = mem[_69]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _64 = mem[floor32(('cd', 36).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + 97]
        mem[mem[64] + 64 len 32 * _64] = mem[floor32(('cd', 36).length) + 129 len 32 * _64]
        return 32, mem[mem[64] + 32 len (32 * _64) + 32]
    mem[floor32(('cd', 36).length) + 129 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _62 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(_62)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_71] == mem[_71]
        if idx >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 36).length) + 129] = mem[_71]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _65 = mem[floor32(('cd', 36).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + 97]
    mem[mem[64] + 64 len 32 * _65] = mem[floor32(('cd', 36).length) + 129 len 32 * _65]
    return 32, mem[mem[64] + 32 len (32 * _65) + 32]
}

function sub_322c4e46(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 68).length) + 97] = ('cd', 68).length
    mem[64] = floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 129
    if not ('cd', 68).length:
        idx = 0
        while idx < ('cd', 68).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 36] = cd[36]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).balanceOf(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], cd[36]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _72 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_72] == mem[_72]
            if idx >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 68).length) + 129] = mem[_72]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _64 = mem[floor32(('cd', 68).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 68).length) + 97]
        mem[mem[64] + 64 len 32 * _64] = mem[floor32(('cd', 68).length) + 129 len 32 * _64]
        return 32, mem[mem[64] + 32 len (32 * _64) + 32]
    mem[floor32(('cd', 68).length) + 129 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
    idx = 0
    while idx < ('cd', 68).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = cd[36]
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], cd[36]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _73 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_73] == mem[_73]
        if idx >= mem[floor32(('cd', 68).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 68).length) + 129] = mem[_73]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _65 = mem[floor32(('cd', 68).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 68).length) + 97]
    mem[mem[64] + 64 len 32 * _65] = mem[floor32(('cd', 68).length) + 129 len 32 * _65]
    return 32, mem[mem[64] + 32 len (32 * _65) + 32]
}

function sub_b5117731(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + 97 > test266151307() or floor32(('cd', 100).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[floor32(('cd', 100).length) + 101] = this.address
    mem[floor32(('cd', 100).length) + 133] = cd[36]
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(this.address), cd[36]
    mem[floor32(('cd', 100).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 100).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    while idx < ('cd', 100).length:
        if ext_call.return_data[0] >= cd[68]:
            require ext_code.size(address(cd[4]))
            call address(cd[4]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, cd[36], ext_call.return_data[0], 160, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = this.address
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).isApprovedForAll(address arg1, address arg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_71] == bool(mem[_71])
        if mem[_71]:
            if ext_call.return_data[0] < cd[68]:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 36] = cd[36]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).balanceOf(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], cd[36]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _79 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _80 = mem[_79]
            require mem[_79] == mem[_79]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[_79] >= ext_call.return_data[0] - cd[68]:
                _82 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_82)
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = cd[36]
                mem[mem[64] + 100] = ext_call.return_data[0] - cd[68]
                mem[mem[64] + 132] = 160
                mem[mem[64] + 164] = 0
                require ext_code.size(address(cd[4]))
                call address(cd[4]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args address(_82), address(this.address), cd[36], ext_call.return_data[0] - cd[68], 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] > -ext_call.return_data[0] + cd[68] - 1:
                    revert with 'NH{q', 17
            else:
                _85 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_85)
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = cd[36]
                mem[mem[64] + 100] = _80
                mem[mem[64] + 132] = 160
                mem[mem[64] + 164] = 0
                require ext_code.size(address(cd[4]))
                call address(cd[4]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args address(_85), address(this.address), cd[36], _80, 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] > -_80 - 1:
                    revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    require ext_code.size(address(cd[4]))
    call address(cd[4]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, cd[36], ext_call.return_data[0], 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
