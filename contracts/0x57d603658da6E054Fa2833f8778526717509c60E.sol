contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
array of uint256 uri;
address owner;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function uri(uint256 arg1) payable {
    return uri[0 len uri.length]
}

function owner() payable {
    return owner
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor2[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor2[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require ceil32(arg5.length) + 128 >= 96 and ceil32(arg5.length) + 128 <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    if arg1 != msg.sender:
        if not stor2[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    mem[ceil32(arg5.length) + 128] = 1
    require 0 < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
    if arg4 > balanceOf[arg3][address(arg1)]:
        revert with 0, 
                    32,
                    42,
                    0xfe455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665, mem[ceil32(arg5.length) + 330 len 22] >> 80,
                    0
    balanceOf[arg3][address(arg1)] -= arg4
    if arg4 + balanceOf[arg3][arg2] < balanceOf[arg3][arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[arg3][address(arg2)] = arg4 + balanceOf[arg3][arg2]
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 160 >= 128 and (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307()
    mem[(32 * arg1.length) + 128] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: accounts and ids length mismatch'
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg2.length
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'ERC1155: balance query for the zero address'
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(mem[(32 * idx) + (32 * arg1.length) + 160], 1)
            require idx < arg1.length
            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = balanceOf[mem[(32 * idx) + (32 * arg1.length) + 160]][address(mem[(32 * idx) + 128])]
            idx = idx + 1
            continue 
        mem[(64 * arg1.length) + (32 * arg2.length) + 192] = 32
        mem[(64 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
        mem[(64 * arg1.length) + (32 * arg2.length) + 256 len 32 * arg1.length] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length]
    else:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg2.length
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'ERC1155: balance query for the zero address'
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(mem[(32 * idx) + (32 * arg1.length) + 160], 1)
            require idx < arg1.length
            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = balanceOf[mem[(32 * idx) + (32 * arg1.length) + 160]][address(mem[(32 * idx) + 128])]
            idx = idx + 1
            continue 
        mem[(64 * arg1.length) + (32 * arg2.length) + 192] = 32
        mem[(64 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
        mem[(64 * arg1.length) + (32 * arg2.length) + 256 len 32 * arg1.length] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length]
        var44001 = arg1.length
    return Array(len=arg1.length, data=mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length])
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require (32 * arg3.length) + 128 >= 96 and (32 * arg3.length) + 128 <= test266151307()
    mem[96] = arg3.length
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require (32 * arg4.length) + 160 >= 128 and (32 * arg3.length) + (32 * arg4.length) + 160 <= test266151307()
    mem[(32 * arg3.length) + 128] = arg4.length
    require calldata.size >= arg4 + (32 * arg4.length) + 36
    idx = 0
    s = arg4 + 36
    t = (32 * arg3.length) + 160
    while idx < arg4.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require ceil32(arg5.length) + 192 >= 160 and (32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192 <= test266151307()
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len arg5.length] = arg5[all]
    mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192] = 0
    if arg3.length != arg4.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    if arg1 == msg.sender:
        idx = 0
        while idx < arg3.length:
            require idx < mem[96]
            _553 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _558 = mem[(32 * idx) + (32 * arg3.length) + 160]
            _559 = mem[64]
            mem[64] = mem[64] + 96
            mem[_559] = 42
            mem[_559 + 32 len 42] = 0xfe455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
            mem[32] = sha3(_553, 1)
            if _558 <= balanceOf[_553][address(arg1)]:
                balanceOf[_553][address(arg1)] -= _558
                if _558 + balanceOf[_553][arg2] < balanceOf[_553][arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg2
                mem[32] = sha3(_553, 1)
                balanceOf[_553][address(arg2)] = _558 + balanceOf[_553][arg2]
                idx = idx + 1
                continue 
            _568 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 42
            idx = 0
            while idx < 42:
                mem[idx + _568 + 68] = mem[_559 + idx + 32]
                idx = idx + 32
                continue 
            mem[_568 + 110] = 0
            revert with memory
              from mem[64]
               len _568 + -mem[64] + 132
        _549 = mem[64]
        mem[mem[64]] = 64
        _557 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _721 = mem[(32 * arg3.length) + 128]
        mem[_549 + (32 * mem[96]) + 96] = mem[(32 * arg3.length) + 128]
        mem[_549 + (32 * _557) + 128 len 32 * _721] = mem[(32 * arg3.length) + 160 len 32 * _721]
        emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                           mem[mem[64] len _549 + (32 * _557) + (32 * _721) + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           arg2,
        if not ext_code.size(arg2):
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = 160
        _855 = mem[96]
        mem[mem[64] + 164] = mem[96]
        mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 100] = (32 * mem[96]) + 192
        _973 = mem[(32 * arg3.length) + 128]
        mem[mem[64] + (32 * mem[96]) + 196] = mem[(32 * arg3.length) + 128]
        mem[mem[64] + (32 * mem[96]) + 228 len 32 * _973] = mem[(32 * arg3.length) + 160 len 32 * _973]
        mem[mem[64] + 132] = (32 * mem[96]) + (32 * _973) + 224
        _1087 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        mem[mem[64] + (32 * mem[96]) + (32 * _973) + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        mem[mem[64] + (32 * _855) + (32 * _973) + 260 len ceil32(_1087)] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(_1087)]
        if ceil32(_1087) <= _1087:
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _855) + (32 * _973) + 224, mem[mem[64] + 164 len ceil32(_1087) + (32 * _855) + (32 * _973) + 96]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _1201 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1201] == Mask(32, 224, mem[_1201])
                if Mask(32, 224, mem[_1201]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _1213 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
            if not _1213 + ext_call.return_data[0]:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1259 = mem[_1213 + ext_call.return_data[0]]
            mem[mem[64] + 36] = mem[_1213 + ext_call.return_data[0]]
            mem[mem[64] + 68 len ceil32(_1259)] = mem[_1213 + ext_call.return_data[0] + 32 len ceil32(_1259)]
            if ceil32(_1259) > _1259:
                mem[mem[64] + _1259 + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_1259) + 32]
        mem[mem[64] + (32 * _855) + (32 * _973) + _1087 + 260] = 0
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _855) + (32 * _973) + 224, mem[mem[64] + 164 len ceil32(_1087) + (32 * _855) + (32 * _973) + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _1203 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1203] == Mask(32, 224, mem[_1203])
            if Mask(32, 224, mem[_1203]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _1219 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _1219 + ext_call.return_data[0]:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1273 = mem[_1219 + ext_call.return_data[0]]
        mem[mem[64] + 36] = mem[_1219 + ext_call.return_data[0]]
        mem[mem[64] + 68 len ceil32(_1273)] = mem[_1219 + ext_call.return_data[0] + 32 len ceil32(_1273)]
        if ceil32(_1273) > _1273:
            mem[mem[64] + _1273 + 68] = 0
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_1273) + 32]
    mem[0] = msg.sender
    mem[32] = sha3(address(arg1), 2)
    if not stor2[address(arg1)][address(msg.sender)]:
        revert with 0, 'ERC1155: transfer caller is not owner nor approved'
    idx = 0
    while idx < arg3.length:
        require idx < mem[96]
        _555 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg3.length) + 128]
        _563 = mem[(32 * idx) + (32 * arg3.length) + 160]
        _564 = mem[64]
        mem[64] = mem[64] + 96
        mem[_564] = 42
        mem[_564 + 32 len 42] = 0xfe455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
        mem[32] = sha3(_555, 1)
        if _563 <= balanceOf[_555][address(arg1)]:
            balanceOf[_555][address(arg1)] -= _563
            if _563 + balanceOf[_555][arg2] < balanceOf[_555][arg2]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg2
            mem[32] = sha3(_555, 1)
            balanceOf[_555][address(arg2)] = _563 + balanceOf[_555][arg2]
            idx = idx + 1
            continue 
        _570 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 42
        idx = 0
        while idx < 42:
            mem[idx + _570 + 68] = mem[_564 + idx + 32]
            idx = idx + 32
            continue 
        mem[_570 + 110] = 0
        revert with memory
          from mem[64]
           len _570 + -mem[64] + 132
    _551 = mem[64]
    mem[mem[64]] = 64
    _562 = mem[96]
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    var70001 = mem[96]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    _722 = mem[(32 * arg3.length) + 128]
    mem[_551 + (32 * mem[96]) + 96] = mem[(32 * arg3.length) + 128]
    mem[_551 + (32 * _562) + 128 len 32 * _722] = mem[(32 * arg3.length) + 160 len 32 * _722]
    emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                       mem[mem[64] len _551 + (32 * _562) + (32 * _722) + -mem[64] + 128],
                       msg.sender,
                       arg1,
                       arg2,
    if not ext_code.size(arg2):
    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = mem[96]
    mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 100] = (32 * mem[96]) + 192
    _974 = mem[(32 * arg3.length) + 128]
    mem[mem[64] + (32 * mem[96]) + 196] = mem[(32 * arg3.length) + 128]
    mem[mem[64] + (32 * mem[96]) + 228 len 32 * _974] = mem[(32 * arg3.length) + 160 len 32 * _974]
    mem[mem[64] + 132] = (32 * mem[96]) + (32 * _974) + 224
    _1088 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    mem[mem[64] + (32 * mem[96]) + (32 * _974) + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    mem[mem[64] + (32 * mem[96]) + (32 * _974) + 260 len ceil32(_1088)] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(_1088)]
    if ceil32(_1088) <= _1088:
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), Array(len=mem[96], data=mem[mem[64] + 196 len ceil32(_1088) + (32 * mem[96]) + (32 * _974) + 64]), (32 * mem[96]) + 192, (32 * mem[96]) + (32 * _974) + 224
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _1202 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1202] == Mask(32, 224, mem[_1202])
            if Mask(32, 224, mem[_1202]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _1215 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _1215 + ext_call.return_data[0]:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1265 = mem[_1215 + ext_call.return_data[0]]
        mem[mem[64] + 36] = mem[_1215 + ext_call.return_data[0]]
        mem[mem[64] + 68 len ceil32(_1265)] = mem[_1215 + ext_call.return_data[0] + 32 len ceil32(_1265)]
        if ceil32(_1265) > _1265:
            mem[mem[64] + _1265 + 68] = 0
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_1265) + 32]
    mem[mem[64] + (32 * mem[96]) + (32 * _974) + _1088 + 260] = 0
    require ext_code.size(arg2)
    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), 160, mem[mem[64] + 100 len ceil32(_1088) + (32 * mem[96]) + (32 * _974) + 160]
    mem[mem[64]] = ext_call.return_data[0]
    if ext_call.success:
        _1204 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1204] == Mask(32, 224, mem[_1204])
        if Mask(32, 224, mem[_1204]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    _1223 = mem[64]
    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
    if not _1223 + ext_call.return_data[0]:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    _1256 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _1278 = mem[_1223 + ext_call.return_data[0]]
    mem[mem[64] + 36] = mem[_1223 + ext_call.return_data[0]]
    mem[mem[64] + 68 len ceil32(_1278)] = mem[_1223 + ext_call.return_data[0] + 32 len ceil32(_1278)]
    if ceil32(_1278) <= _1278:
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_1278) + 32]
    mem[mem[64] + _1278 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_1278) + _1256 + -mem[64] + 68
}



}
