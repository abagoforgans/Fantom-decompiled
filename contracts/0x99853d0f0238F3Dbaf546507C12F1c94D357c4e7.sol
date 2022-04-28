contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
array of uint256 uri;
address owner;
address timerAddress;
address stor6;
uint256 totalSupply;

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

function timerAddress() payable {
    return timerAddress
}

function owner() payable {
    return owner
}

function getTicketClaimStatus(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(uint8(ownerOfTicket[arg1].field_512))
}

function getOwnerOfTicket(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return address(ownerOfTicket[arg1].field_0)
}

function getTotalSupply() payable {
    return totalSupply
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

function setCurrentTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require timerAddress
    require ext_code.size(timerAddress)
    call timerAddress.0x22f8e566 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getCurrentTime() payable {
    if not timerAddress:
        return block.timestamp
    require ext_code.size(timerAddress)
    staticcall timerAddress.0x29cb924d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function getUserTickets(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor9[address(arg2)][arg1].field_0:
        mem[128] = stor9[address(arg2)][arg1].field_0
        idx = 128
        s = 0
        while (32 * stor9[address(arg2)][arg1].field_0) + 96 > idx:
            mem[idx + 32] = stor9[address(arg2)][arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor9[address(arg2)][arg1].field_0, data=mem[128 len 32 * stor9[address(arg2)][arg1].field_0])
    mem[(32 * stor9[address(arg2)][arg1].field_0) + 128] = 32
    mem[(32 * stor9[address(arg2)][arg1].field_0) + 160] = stor9[address(arg2)][arg1].field_0
    mem[(32 * stor9[address(arg2)][arg1].field_0) + 192 len 32 * stor9[address(arg2)][arg1].field_0] = mem[128 len 32 * stor9[address(arg2)][arg1].field_0]
    return memory
      from (32 * stor9[address(arg2)][arg1].field_0) + 128
       len (96 * stor9[address(arg2)][arg1].field_0) + 64
}

function claimTicket(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor6 != msg.sender:
        revert with 0, 'Only Lotto can mint'
    if uint8(ownerOfTicket[arg1].field_512):
        revert with 0, 'Ticket already claimed'
    if arg2 != ownerOfTicket[arg1].field_768:
        revert with 0, 'Ticket not for this lottery'
    require ext_code.size(stor6)
    staticcall stor6.0xe59bbab5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    idx = 0
    while idx < ownerOfTicket[arg1].field_256:
        require idx < ownerOfTicket[arg1].field_256
        if stor((0.0625 / idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor8', 8))))[uint8(idx)] > ext_call.return_data[28 len 4]:
            return 0
        mem[0] = arg1
        mem[32] = 8
        idx = idx + 1
        continue 
    uint8(ownerOfTicket[arg1].field_512) = 1
    return 1
}

function getTicketNumbers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[64] = (32 * ownerOfTicket[arg1].field_256) + 128
    mem[96] = ownerOfTicket[arg1].field_256
    if not ownerOfTicket[arg1].field_256:
        mem[(32 * ownerOfTicket[arg1].field_256) + 128] = 32
        mem[(32 * ownerOfTicket[arg1].field_256) + 160] = ownerOfTicket[arg1].field_256
        idx = 0
        s = (32 * ownerOfTicket[arg1].field_256) + 192
        t = 128
        while idx < ownerOfTicket[arg1].field_256:
            mem[s] = mem[t + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * ownerOfTicket[arg1].field_256) + 128
           len (96 * ownerOfTicket[arg1].field_256) + 64
    mem[128] = uint16(ownerOfTicket[arg1][1].field_0)
    idx = 128
    s = 0
    while (32 * ownerOfTicket[arg1].field_256) + 96 > idx:
        mem[idx + 32] = uint16(ownerOfTicket[arg1][1].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
        idx = idx + 32
        s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
        continue 
    mem[(32 * ownerOfTicket[arg1].field_256) + 128] = 32
    mem[(32 * ownerOfTicket[arg1].field_256) + 160] = ownerOfTicket[arg1].field_256
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < ownerOfTicket[arg1].field_256:
        mem[s] = mem[t + 30 len 2]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * ownerOfTicket[arg1].field_256) + -mem[64] + 192
}

function getUserTicketsPagination(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    if arg4 <= stor9[address(arg1)][arg2].field_0 - arg3:
        require arg4 <= test266151307()
        if arg4:
            mem[128 len 32 * arg4] = call.data[calldata.size len 32 * arg4]
        idx = 0
        while idx < arg4:
            mem[32] = sha3(address(arg1), 9)
            require idx + arg3 < stor9[address(arg1)][arg2].field_0
            mem[0] = sha3(arg2, sha3(address(arg1), 9))
            require idx < arg4
            mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9))) + idx + arg3].field_0
            idx = idx + 1
            continue 
        return Array(len=arg4, data=mem[128 len 32 * arg4]), arg3 + arg4
    require stor9[address(arg1)][arg2].field_0 - arg3 <= test266151307()
    mem[96] = stor9[address(arg1)][arg2].field_0 - arg3
    if stor9[address(arg1)][arg2].field_0 - arg3:
        mem[128 len 32 * stor9[address(arg1)][arg2].field_0 - arg3] = call.data[calldata.size len 32 * stor9[address(arg1)][arg2].field_0 - arg3]
    idx = 0
    while idx < stor9[address(arg1)][arg2].field_0 - arg3:
        mem[32] = sha3(address(arg1), 9)
        require idx + arg3 < stor9[address(arg1)][arg2].field_0
        mem[0] = sha3(arg2, sha3(address(arg1), 9))
        require idx < mem[96]
        mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9))) + idx + arg3].field_0
        idx = idx + 1
        continue 
    mem[(32 * stor9[address(arg1)][arg2].field_0 - arg3) + 128] = 64
    mem[(32 * stor9[address(arg1)][arg2].field_0 - arg3) + 192] = mem[96]
    mem[(32 * stor9[address(arg1)][arg2].field_0 - arg3) + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 64, 
           stor9[address(arg1)][arg2].field_0,
           mem[(32 * stor9[address(arg1)][arg2].field_0 - arg3) + 192 len (32 * mem[96]) + 32]
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
        call arg2.onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
        emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                           mem[mem[64] len _549 + (32 * _557) + (32 * _721) + -mem[64] + 128],
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
        _973 = mem[(32 * arg3.length) + 128]
        mem[mem[64] + (32 * mem[96]) + 196] = mem[(32 * arg3.length) + 128]
        mem[mem[64] + (32 * mem[96]) + 228 len 32 * _973] = mem[(32 * arg3.length) + 160 len 32 * _973]
        mem[mem[64] + 132] = (32 * mem[96]) + (32 * _973) + 224
        _1087 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        mem[mem[64] + (32 * mem[96]) + (32 * _973) + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        mem[mem[64] + (32 * mem[96]) + (32 * _973) + 260 len ceil32(_1087)] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(_1087)]
        if ceil32(_1087) <= _1087:
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 160, mem[mem[64] + 100 len ceil32(_1087) + (32 * mem[96]) + (32 * _973) + 160]
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
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
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
        mem[mem[64] + (32 * mem[96]) + (32 * _973) + _1087 + 260] = 0
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100 len ceil32(_1087) + (32 * mem[96]) + (32 * _973) + 160]
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
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
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
        _1250 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1273 = mem[_1219 + ext_call.return_data[0]]
        mem[mem[64] + 36] = mem[_1219 + ext_call.return_data[0]]
        mem[mem[64] + 68 len ceil32(_1273)] = mem[_1219 + ext_call.return_data[0] + 32 len ceil32(_1273)]
        if ceil32(_1273) <= _1273:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_1273) + 32]
        mem[mem[64] + _1273 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_1273) + _1250 + -mem[64] + 68
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
    emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                       mem[mem[64] len _551 + (32 * _562) + (32 * _722) + -mem[64] + 128],
                       msg.sender,
                       arg1,
                       arg2,
    if not ext_code.size(arg2):
    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68] = 160
    _856 = mem[96]
    mem[mem[64] + 164] = mem[96]
    mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 100] = (32 * mem[96]) + 192
    _974 = mem[(32 * arg3.length) + 128]
    mem[mem[64] + (32 * mem[96]) + 196] = mem[(32 * arg3.length) + 128]
    mem[mem[64] + (32 * mem[96]) + 228 len 32 * _974] = mem[(32 * arg3.length) + 160 len 32 * _974]
    mem[mem[64] + 132] = (32 * mem[96]) + (32 * _974) + 224
    _1088 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    mem[mem[64] + (32 * mem[96]) + (32 * _974) + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    mem[mem[64] + (32 * _856) + (32 * _974) + 260 len ceil32(_1088)] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(_1088)]
    if ceil32(_1088) <= _1088:
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100 len ceil32(_1088) + (32 * _856) + (32 * _974) + 160]
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
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
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
    mem[mem[64] + (32 * _856) + (32 * _974) + _1088 + 260] = 0
    require ext_code.size(arg2)
    call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), 160, mem[mem[64] + 100 len ceil32(_1088) + (32 * _856) + (32 * _974) + 160]
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
    if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
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

function sub_5e3261d0(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg3 == uint8(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 == uint8(arg5)
    if stor6 != msg.sender:
        revert with 0, 'Only Lotto can mint'
    require uint8(arg3) <= test266151307()
    mem[96] = uint8(arg3)
    if not uint8(arg3):
        require uint8(arg3) <= test266151307()
        mem[(32 * uint8(arg3)) + 128] = uint8(arg3)
        mem[64] = (64 * uint8(arg3)) + 160
        if not uint8(arg3):
            idx = 0
            while uint8(idx) < uint8(arg3):
                if totalSupply + 1 < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply++
                require uint8(idx) < mem[(32 * uint8(arg3)) + 128]
                mem[(32 * uint8(idx)) + (32 * uint8(arg3)) + 160] = totalSupply + 1
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = 1
                if uint8(idx):
                    if uint8(uint8(arg5 * uint8(idx)) / uint8(idx)) != uint8(arg5):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if uint8(uint8(idx) + 1) < uint8(idx):
                        revert with 0, 'SafeMath: addition overflow'
                    if not uint8(uint8(idx) + 1):
                        require uint8(arg5 * uint8(idx)) <= 0
                        require 0 <= arg4.length
                        _722 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_722] = address(arg1)
                        _723 = mem[64]
                        mem[64] = mem[64] + (32 * -uint8(arg5 * uint8(idx))) + 32
                        mem[_723] = -uint8(arg5 * uint8(idx))
                        mem[_723 + 32 len 32 * -uint8(arg5 * uint8(idx))] = call.data[(32 * uint8(arg5 * uint8(idx))) + arg4 + 36 len 32 * -uint8(arg5 * uint8(idx))]
                        mem[_723 + (32 * -uint8(arg5 * uint8(idx))) + 32] = 0
                        mem[_722 + 32] = _723
                        mem[_722 + 64] = 0
                        mem[_722 + 96] = arg2
                        mem[0] = totalSupply
                        mem[32] = 8
                        address(ownerOfTicket[stor7].field_0) = address(arg1)
                        ownerOfTicket[stor7].field_256 = Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256
                        if not Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256:
                            s = sha3(sha3(totalSupply, 8) + 1)
                            while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            s = 0
                            t = _723 + 32
                            while _723 + (32 * Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256) + 32 > t:
                                ownerOfTicket[stor7][1].field_0 = mem[t + 30 len 2] * 256^s or !(65535 * 256^s) and ownerOfTicket[stor7][1].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                t = t + 32
                                continue 
                            s = floor32(Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256) >> 4
                            t = sha3(sha3(totalSupply, 8) + 1)
                            while s:
                                stor[t] = !(65535 * 256^s) and stor[t]
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                t = (s + 3 / 32) + t
                                continue 
                            s = sha3(sha3(totalSupply, 8) + 1) + ((floor32(Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256) >> 4) + Mask(254, 1, None + -(floor32(Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256) >> 4) + 3) >> 1)
                            while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if uint8(uint8(arg5 * uint8(uint8(idx) + 1)) / uint8(uint8(idx) + 1)) != uint8(arg5):
                            revert with 0, 'SafeMath: multiplication overflow'
                        require uint8(arg5 * uint8(idx)) <= uint8(arg5 * uint8(uint8(idx) + 1))
                        require uint8(arg5 * uint8(uint8(idx) + 1)) <= arg4.length
                        _774 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_774] = address(arg1)
                        _775 = mem[64]
                        mem[64] = mem[64] + (32 * uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) + 32
                        mem[_775] = uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))
                        mem[_775 + 32 len 32 * uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))] = call.data[(32 * uint8(arg5 * uint8(idx))) + arg4 + 36 len 32 * uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))]
                        mem[_775 + (32 * uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) + 32] = 0
                        mem[_774 + 32] = _775
                        mem[_774 + 64] = 0
                        mem[_774 + 96] = arg2
                        mem[0] = totalSupply
                        mem[32] = 8
                        address(ownerOfTicket[stor7].field_0) = address(arg1)
                        ownerOfTicket[stor7].field_256 = uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))
                        if not uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx)):
                            s = sha3(sha3(totalSupply, 8) + 1)
                            while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            s = 0
                            t = _775 + 32
                            while _775 + (32 * uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) + 32 > t:
                                ownerOfTicket[stor7][1].field_0 = mem[t + 30 len 2] * 256^s or !(65535 * 256^s) and ownerOfTicket[stor7][1].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                t = t + 32
                                continue 
                            s = floor32(uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) >> 4
                            t = sha3(sha3(totalSupply, 8) + 1)
                            while s:
                                stor[t] = !(65535 * 256^s) and stor[t]
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                t = (s + 3 / 32) + t
                                continue 
                            s = sha3(sha3(totalSupply, 8) + 1) + ((floor32(uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) >> 4) + Mask(254, 1, None + -(floor32(uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) >> 4) + 3) >> 1)
                            while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                else:
                    if uint8(uint8(idx) + 1) < uint8(idx):
                        revert with 0, 'SafeMath: addition overflow'
                    if not uint8(uint8(idx) + 1):
                        require 0 <= arg4.length
                        _698 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_698] = address(arg1)
                        _699 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_699] = 0
                        mem[_699 + 32] = 0
                        mem[_698 + 32] = _699
                        mem[_698 + 64] = 0
                        mem[_698 + 96] = arg2
                        address(ownerOfTicket[stor7].field_0) = address(arg1)
                        ownerOfTicket[stor7].field_256 = 0
                        s = sha3(sha3(totalSupply, 8) + 1)
                        while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        if uint8(uint8(arg5 * uint8(uint8(idx) + 1)) / uint8(uint8(idx) + 1)) != uint8(arg5):
                            revert with 0, 'SafeMath: multiplication overflow'
                        require 0 <= uint8(arg5 * uint8(uint8(idx) + 1))
                        require uint8(arg5 * uint8(uint8(idx) + 1)) <= arg4.length
                        _728 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_728] = address(arg1)
                        _729 = mem[64]
                        mem[64] = mem[64] + (32 * uint8(arg5 * uint8(uint8(idx) + 1))) + 32
                        mem[_729] = uint8(arg5 * uint8(uint8(idx) + 1))
                        mem[_729 + 32 len 32 * uint8(arg5 * uint8(uint8(idx) + 1))] = call.data[arg4 + 36 len 32 * uint8(arg5 * uint8(uint8(idx) + 1))]
                        mem[_729 + (32 * uint8(arg5 * uint8(uint8(idx) + 1))) + 32] = 0
                        mem[_728 + 32] = _729
                        mem[_728 + 64] = 0
                        mem[_728 + 96] = arg2
                        mem[0] = totalSupply
                        mem[32] = 8
                        address(ownerOfTicket[stor7].field_0) = address(arg1)
                        uint8(ownerOfTicket[stor7].field_256) = uint8(arg5 * uint8(uint8(idx) + 1))
                        Mask(248, 0, ownerOfTicket[stor7].field_264) = 0
                        if not uint8(arg5 * uint8(uint8(idx) + 1)):
                            s = sha3(sha3(totalSupply, 8) + 1)
                            while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            s = 0
                            t = _729 + 32
                            while _729 + (32 * uint8(arg5 * uint8(uint8(idx) + 1))) + 32 > t:
                                ownerOfTicket[stor7][1].field_0 = mem[t + 30 len 2] * 256^s or !(65535 * 256^s) and ownerOfTicket[stor7][1].field_0
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                t = t + 32
                                continue 
                            s = Mask(3, 5, arg5 * uint8(uint8(idx) + 1)) >> 4
                            t = sha3(sha3(totalSupply, 8) + 1)
                            while s:
                                stor[t] = !(65535 * 256^s) and stor[t]
                                s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                                t = (s + 3 / 32) + t
                                continue 
                            s = sha3(sha3(totalSupply, 8) + 1) + ((Mask(3, 5, arg5 * uint8(uint8(idx) + 1)) >> 4) + Mask(254, 1, None + -(Mask(3, 5, arg5 * uint8(uint8(idx) + 1)) >> 4) + 3) + 3 / 32 * uint255(None + -(Mask(3, 5, arg5 * uint8(uint8(idx) + 1)) >> 4) + 3) >> 1)
                            while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                uint8(ownerOfTicket[stor7].field_512) = 0
                ownerOfTicket[stor7].field_768 = arg2
                mem[32] = sha3(address(arg1), 9)
                stor9[address(arg1)][arg2].field_0++
                mem[0] = sha3(arg2, sha3(address(arg1), 9))
                stor9[address(arg1)][arg2][stor9[address(arg1)][arg2].field_0].field_0 = totalSupply
                idx = idx + 1
                continue 
            _538 = mem[64]
            mem[64] = mem[64] + ceil32(calldata.size) + 32
            mem[_538] = calldata.size
            mem[_538 + 32 len calldata.size] = call.data[0 len calldata.size]
            mem[_538 + calldata.size + 32] = 0
            if not address(arg1):
                revert with 0, 'ERC1155: mint to the zero address'
            if mem[(32 * uint8(arg3)) + 128] != mem[96]:
                revert with 0, 'ERC1155: ids and amounts length mismatch'
            idx = 0
            while idx < mem[(32 * uint8(arg3)) + 128]:
                require idx < mem[(32 * uint8(arg3)) + 128]
                require idx < mem[96]
                if balanceOf[mem[(32 * idx) + (32 * uint8(arg3)) + 160]][address(arg1)] + mem[(32 * idx) + 128] < mem[(32 * idx) + 128]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < mem[(32 * uint8(arg3)) + 128]
                mem[0] = address(arg1)
                mem[32] = sha3(mem[(32 * idx) + (32 * uint8(arg3)) + 160], 1)
                balanceOf[mem[(32 * idx) + (32 * uint8(arg3)) + 160]][address(arg1)] += mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            _1322 = mem[64]
            mem[mem[64]] = 64
            _1362 = mem[(32 * uint8(arg3)) + 128]
            mem[mem[64] + 64] = mem[(32 * uint8(arg3)) + 128]
            mem[mem[64] + 96 len 32 * _1362] = mem[(32 * uint8(arg3)) + 160 len 32 * _1362]
            mem[mem[64] + 32] = (32 * _1362) + 96
            _1906 = mem[96]
            mem[_1322 + (32 * _1362) + 96] = mem[96]
            mem[_1322 + (32 * _1362) + 128 len 32 * _1906] = mem[128 len 32 * _1906]
            emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                               mem[mem[64] len _1322 + (32 * _1362) + (32 * _1906) + -mem[64] + 128],
                               msg.sender,
                               0,
                               address(arg1),
            if not ext_code.size(address(arg1)):
                mem[mem[64]] = arg2
                mem[mem[64] + 32] = uint8(arg3)
                mem[mem[64] + 64] = 96
                _2430 = mem[(32 * uint8(arg3)) + 128]
                mem[mem[64] + 96] = mem[(32 * uint8(arg3)) + 128]
                mem[mem[64] + 128 len 32 * _2430] = mem[(32 * uint8(arg3)) + 160 len 32 * _2430]
                emit InfoBatchMint(address rg1, uint256 rg2, uint256 rg3, uint256[] rg4):
                                   arg2,
                                   arg3 << 248,
                                   96,
                                   mem[mem[64] + 96 len (32 * _2430) + 32],
                                   address(arg1),
                mem[mem[64]] = 32
                _2774 = mem[(32 * uint8(arg3)) + 128]
                mem[mem[64] + 32] = mem[(32 * uint8(arg3)) + 128]
                mem[mem[64] + 64 len 32 * _2774] = mem[(32 * uint8(arg3)) + 160 len 32 * _2774]
                return 32, mem[mem[64] + 32 len (32 * _2774) + 32]
            mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _2423 = mem[(32 * uint8(arg3)) + 128]
            mem[mem[64] + 164] = mem[(32 * uint8(arg3)) + 128]
            mem[mem[64] + 196 len 32 * _2423] = mem[(32 * uint8(arg3)) + 160 len 32 * _2423]
            mem[mem[64] + 100] = (32 * _2423) + 192
            mem[mem[64] + (32 * _2423) + 196] = mem[96]
            mem[mem[64] + (32 * _2423) + 228 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 132] = (32 * _2423) + (32 * mem[96]) + 224
            _3075 = mem[_538]
            mem[mem[64] + (32 * _2423) + (32 * mem[96]) + 228] = mem[_538]
            mem[mem[64] + (32 * _2423) + (32 * mem[96]) + 260 len ceil32(_3075)] = mem[_538 + 32 len ceil32(_3075)]
            if ceil32(_3075) <= _3075:
                require ext_code.size(address(arg1))
                call address(arg1).onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args msg.sender, 0, 160, (32 * _2423) + 192, mem[mem[64] + 132 len ceil32(_3075) + (32 * _2423) + (32 * mem[96]) + 128]
                mem[mem[64]] = ext_call.return_data[0]
                if ext_call.success:
                    _3370 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3370] == Mask(32, 224, mem[_3370])
                    if Mask(32, 224, mem[_3370]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    mem[mem[64]] = arg2
                    mem[mem[64] + 32] = uint8(arg3)
                    mem[mem[64] + 64] = 96
                    _3497 = mem[(32 * uint8(arg3)) + 128]
                    mem[mem[64] + 96] = mem[(32 * uint8(arg3)) + 128]
                    mem[mem[64] + 128 len 32 * _3497] = mem[(32 * uint8(arg3)) + 160 len 32 * _3497]
                    emit InfoBatchMint(address rg1, uint256 rg2, uint256 rg3, uint256[] rg4):
                                       arg2,
                                       arg3 << 248,
                                       96,
                                       mem[mem[64] + 96 len (32 * _3497) + 32],
                                       address(arg1),
                    mem[mem[64]] = 32
                    _3682 = mem[(32 * uint8(arg3)) + 128]
                    mem[mem[64] + 32] = mem[(32 * uint8(arg3)) + 128]
                    mem[mem[64] + 64 len 32 * _3682] = mem[(32 * uint8(arg3)) + 160 len 32 * _3682]
                    return 32, mem[mem[64] + 32 len (32 * _3682) + 32]
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                _3394 = mem[64]
                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
                if not _3394 + ext_call.return_data[0]:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _3494 = mem[_3394 + ext_call.return_data[0]]
                mem[mem[64] + 36] = mem[_3394 + ext_call.return_data[0]]
                mem[mem[64] + 68 len ceil32(_3494)] = mem[_3394 + ext_call.return_data[0] + 32 len ceil32(_3494)]
                if ceil32(_3494) > _3494:
                    mem[mem[64] + _3494 + 68] = 0
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_3494) + 32]
            mem[mem[64] + (32 * _2423) + (32 * mem[96]) + _3075 + 260] = 0
            require ext_code.size(address(arg1))
            call address(arg1).onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, 160, (32 * _2423) + 192, mem[mem[64] + 132 len ceil32(_3075) + (32 * _2423) + (32 * mem[96]) + 128]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _3374 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3374] == Mask(32, 224, mem[_3374])
                if Mask(32, 224, mem[_3374]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                mem[mem[64]] = arg2
                mem[mem[64] + 32] = uint8(arg3)
                mem[mem[64] + 64] = 96
                _3527 = mem[(32 * uint8(arg3)) + 128]
                mem[mem[64] + 96] = mem[(32 * uint8(arg3)) + 128]
                mem[mem[64] + 128 len 32 * _3527] = mem[(32 * uint8(arg3)) + 160 len 32 * _3527]
                emit InfoBatchMint(address rg1, uint256 rg2, uint256 rg3, uint256[] rg4):
                                   arg2,
                                   arg3 << 248,
                                   96,
                                   mem[mem[64] + 96 len (32 * _3527) + 32],
                                   address(arg1),
                mem[mem[64]] = 32
                _3683 = mem[(32 * uint8(arg3)) + 128]
                mem[mem[64] + 32] = mem[(32 * uint8(arg3)) + 128]
                mem[mem[64] + 64 len 32 * _3683] = mem[(32 * uint8(arg3)) + 160 len 32 * _3683]
                return 32, mem[mem[64] + 32 len (32 * _3683) + 32]
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _3404 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
            if not _3404 + ext_call.return_data[0]:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _3524 = mem[_3404 + ext_call.return_data[0]]
            mem[mem[64] + 36] = mem[_3404 + ext_call.return_data[0]]
            mem[mem[64] + 68 len ceil32(_3524)] = mem[_3404 + ext_call.return_data[0] + 32 len ceil32(_3524)]
            if ceil32(_3524) > _3524:
                mem[mem[64] + _3524 + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_3524) + 32]
        mem[(32 * uint8(arg3)) + 160 len 32 * uint8(arg3)] = call.data[calldata.size len 32 * uint8(arg3)]
        idx = 0
        while uint8(idx) < uint8(arg3):
            if totalSupply + 1 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply++
            require uint8(idx) < mem[(32 * uint8(arg3)) + 128]
            mem[(32 * uint8(idx)) + (32 * uint8(arg3)) + 160] = totalSupply + 1
            require uint8(idx) < mem[96]
            mem[(32 * uint8(idx)) + 128] = 1
            if uint8(idx):
                if uint8(uint8(arg5 * uint8(idx)) / uint8(idx)) != uint8(arg5):
                    revert with 0, 'SafeMath: multiplication overflow'
                if uint8(uint8(idx) + 1) < uint8(idx):
                    revert with 0, 'SafeMath: addition overflow'
                if not uint8(uint8(idx) + 1):
                    require uint8(arg5 * uint8(idx)) <= 0
                    require 0 <= arg4.length
                    _735 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_735] = address(arg1)
                    _736 = mem[64]
                    mem[64] = mem[64] + (32 * -uint8(arg5 * uint8(idx))) + 32
                    mem[_736] = -uint8(arg5 * uint8(idx))
                    mem[_736 + 32 len 32 * -uint8(arg5 * uint8(idx))] = call.data[(32 * uint8(arg5 * uint8(idx))) + arg4 + 36 len 32 * -uint8(arg5 * uint8(idx))]
                    mem[_736 + (32 * -uint8(arg5 * uint8(idx))) + 32] = 0
                    mem[_735 + 32] = _736
                    mem[_735 + 64] = 0
                    mem[_735 + 96] = arg2
                    mem[0] = totalSupply
                    mem[32] = 8
                    address(ownerOfTicket[stor7].field_0) = address(arg1)
                    ownerOfTicket[stor7].field_256 = Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256
                    if not Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256:
                        s = sha3(sha3(totalSupply, 8) + 1)
                        while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        s = 0
                        t = _736 + 32
                        while _736 + (32 * Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256) + 32 > t:
                            ownerOfTicket[stor7][1].field_0 = mem[t + 30 len 2] * 256^s or !(65535 * 256^s) and ownerOfTicket[stor7][1].field_0
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            t = t + 32
                            continue 
                        s = floor32(Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256) >> 4
                        t = sha3(sha3(totalSupply, 8) + 1)
                        while s:
                            stor[t] = !(65535 * 256^s) and stor[t]
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            t = (s + 3 / 32) + t
                            continue 
                        s = sha3(sha3(totalSupply, 8) + 1) + ((floor32(Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256) >> 4) + Mask(254, 1, None + -(floor32(Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256) >> 4) + 3) >> 1)
                        while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                else:
                    if uint8(uint8(arg5 * uint8(uint8(idx) + 1)) / uint8(uint8(idx) + 1)) != uint8(arg5):
                        revert with 0, 'SafeMath: multiplication overflow'
                    require uint8(arg5 * uint8(idx)) <= uint8(arg5 * uint8(uint8(idx) + 1))
                    require uint8(arg5 * uint8(uint8(idx) + 1)) <= arg4.length
                    _782 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_782] = address(arg1)
                    _783 = mem[64]
                    mem[64] = mem[64] + (32 * uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) + 32
                    mem[_783] = uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))
                    mem[_783 + 32 len 32 * uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))] = call.data[(32 * uint8(arg5 * uint8(idx))) + arg4 + 36 len 32 * uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))]
                    mem[_783 + (32 * uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) + 32] = 0
                    mem[_782 + 32] = _783
                    mem[_782 + 64] = 0
                    mem[_782 + 96] = arg2
                    mem[0] = totalSupply
                    mem[32] = 8
                    address(ownerOfTicket[stor7].field_0) = address(arg1)
                    ownerOfTicket[stor7].field_256 = uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))
                    if not uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx)):
                        s = sha3(sha3(totalSupply, 8) + 1)
                        while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        s = 0
                        t = _783 + 32
                        while _783 + (32 * uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) + 32 > t:
                            ownerOfTicket[stor7][1].field_0 = mem[t + 30 len 2] * 256^s or !(65535 * 256^s) and ownerOfTicket[stor7][1].field_0
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            t = t + 32
                            continue 
                        s = floor32(uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) >> 4
                        t = sha3(sha3(totalSupply, 8) + 1)
                        while s:
                            stor[t] = !(65535 * 256^s) and stor[t]
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            t = (s + 3 / 32) + t
                            continue 
                        s = sha3(sha3(totalSupply, 8) + 1) + ((floor32(uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) >> 4) + Mask(254, 1, None + -(floor32(uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) >> 4) + 3) >> 1)
                        while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
            else:
                if uint8(uint8(idx) + 1) < uint8(idx):
                    revert with 0, 'SafeMath: addition overflow'
                if not uint8(uint8(idx) + 1):
                    require 0 <= arg4.length
                    _704 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_704] = address(arg1)
                    _705 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_705] = 0
                    mem[_705 + 32] = 0
                    mem[_704 + 32] = _705
                    mem[_704 + 64] = 0
                    mem[_704 + 96] = arg2
                    address(ownerOfTicket[stor7].field_0) = address(arg1)
                    ownerOfTicket[stor7].field_256 = 0
                    s = sha3(sha3(totalSupply, 8) + 1)
                    while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    if uint8(uint8(arg5 * uint8(uint8(idx) + 1)) / uint8(uint8(idx) + 1)) != uint8(arg5):
                        revert with 0, 'SafeMath: multiplication overflow'
                    require 0 <= uint8(arg5 * uint8(uint8(idx) + 1))
                    require uint8(arg5 * uint8(uint8(idx) + 1)) <= arg4.length
                    _741 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_741] = address(arg1)
                    _742 = mem[64]
                    mem[64] = mem[64] + (32 * uint8(arg5 * uint8(uint8(idx) + 1))) + 32
                    mem[_742] = uint8(arg5 * uint8(uint8(idx) + 1))
                    mem[_742 + 32 len 32 * uint8(arg5 * uint8(uint8(idx) + 1))] = call.data[arg4 + 36 len 32 * uint8(arg5 * uint8(uint8(idx) + 1))]
                    mem[_742 + (32 * uint8(arg5 * uint8(uint8(idx) + 1))) + 32] = 0
                    mem[_741 + 32] = _742
                    mem[_741 + 64] = 0
                    mem[_741 + 96] = arg2
                    mem[0] = totalSupply
                    mem[32] = 8
                    address(ownerOfTicket[stor7].field_0) = address(arg1)
                    uint8(ownerOfTicket[stor7].field_256) = uint8(arg5 * uint8(uint8(idx) + 1))
                    Mask(248, 0, ownerOfTicket[stor7].field_264) = 0
                    if not uint8(arg5 * uint8(uint8(idx) + 1)):
                        s = sha3(sha3(totalSupply, 8) + 1)
                        while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        s = 0
                        t = _742 + 32
                        while _742 + (32 * uint8(arg5 * uint8(uint8(idx) + 1))) + 32 > t:
                            ownerOfTicket[stor7][1].field_0 = mem[t + 30 len 2] * 256^s or !(65535 * 256^s) and ownerOfTicket[stor7][1].field_0
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            t = t + 32
                            continue 
                        s = Mask(3, 5, arg5 * uint8(uint8(idx) + 1)) >> 4
                        t = sha3(sha3(totalSupply, 8) + 1)
                        while s:
                            stor[t] = !(65535 * 256^s) and stor[t]
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            t = (s + 3 / 32) + t
                            continue 
                        s = sha3(sha3(totalSupply, 8) + 1) + ((Mask(3, 5, arg5 * uint8(uint8(idx) + 1)) >> 4) + Mask(254, 1, None + -(Mask(3, 5, arg5 * uint8(uint8(idx) + 1)) >> 4) + 3) + 3 / 32 * uint255(None + -(Mask(3, 5, arg5 * uint8(uint8(idx) + 1)) >> 4) + 3) >> 1)
                        while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
            uint8(ownerOfTicket[stor7].field_512) = 0
            ownerOfTicket[stor7].field_768 = arg2
            mem[32] = sha3(address(arg1), 9)
            stor9[address(arg1)][arg2].field_0++
            mem[0] = sha3(arg2, sha3(address(arg1), 9))
            stor9[address(arg1)][arg2][stor9[address(arg1)][arg2].field_0].field_0 = totalSupply
            idx = idx + 1
            continue 
        _539 = mem[64]
        mem[64] = mem[64] + ceil32(calldata.size) + 32
        mem[_539] = calldata.size
        mem[_539 + 32 len calldata.size] = call.data[0 len calldata.size]
        mem[_539 + calldata.size + 32] = 0
        if not address(arg1):
            revert with 0, 'ERC1155: mint to the zero address'
        if mem[(32 * uint8(arg3)) + 128] != mem[96]:
            revert with 0, 'ERC1155: ids and amounts length mismatch'
        idx = 0
        while idx < mem[(32 * uint8(arg3)) + 128]:
            require idx < mem[(32 * uint8(arg3)) + 128]
            require idx < mem[96]
            if balanceOf[mem[(32 * idx) + (32 * uint8(arg3)) + 160]][address(arg1)] + mem[(32 * idx) + 128] < mem[(32 * idx) + 128]:
                revert with 0, 'SafeMath: addition overflow'
            require idx < mem[(32 * uint8(arg3)) + 128]
            mem[0] = address(arg1)
            mem[32] = sha3(mem[(32 * idx) + (32 * uint8(arg3)) + 160], 1)
            balanceOf[mem[(32 * idx) + (32 * uint8(arg3)) + 160]][address(arg1)] += mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        _1328 = mem[64]
        mem[mem[64]] = 64
        _1384 = mem[(32 * uint8(arg3)) + 128]
        mem[mem[64] + 64] = mem[(32 * uint8(arg3)) + 128]
        mem[mem[64] + 96 len 32 * _1384] = mem[(32 * uint8(arg3)) + 160 len 32 * _1384]
        mem[mem[64] + 32] = (32 * _1384) + 96
        _1907 = mem[96]
        mem[_1328 + (32 * _1384) + 96] = mem[96]
        mem[_1328 + (32 * _1384) + 128 len 32 * _1907] = mem[128 len 32 * _1907]
        emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                           mem[mem[64] len _1328 + (32 * _1384) + (32 * _1907) + -mem[64] + 128],
                           msg.sender,
                           0,
                           address(arg1),
        if not ext_code.size(address(arg1)):
            mem[mem[64]] = arg2
            mem[mem[64] + 32] = uint8(arg3)
            mem[mem[64] + 64] = 96
            _2432 = mem[(32 * uint8(arg3)) + 128]
            mem[mem[64] + 96] = mem[(32 * uint8(arg3)) + 128]
            mem[mem[64] + 128 len 32 * _2432] = mem[(32 * uint8(arg3)) + 160 len 32 * _2432]
            emit InfoBatchMint(address rg1, uint256 rg2, uint256 rg3, uint256[] rg4):
                               arg2,
                               arg3 << 248,
                               96,
                               mem[mem[64] + 96 len (32 * _2432) + 32],
                               address(arg1),
            mem[mem[64]] = 32
            _2775 = mem[(32 * uint8(arg3)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint8(arg3)) + 128]
            mem[mem[64] + 64 len 32 * _2775] = mem[(32 * uint8(arg3)) + 160 len 32 * _2775]
            return 32, mem[mem[64] + 32 len (32 * _2775) + 32]
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _2425 = mem[(32 * uint8(arg3)) + 128]
        mem[mem[64] + 164] = mem[(32 * uint8(arg3)) + 128]
        mem[mem[64] + 196 len 32 * _2425] = mem[(32 * uint8(arg3)) + 160 len 32 * _2425]
        mem[mem[64] + 100] = (32 * _2425) + 192
        mem[mem[64] + (32 * _2425) + 196] = mem[96]
        mem[mem[64] + (32 * _2425) + 228 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 132] = (32 * _2425) + (32 * mem[96]) + 224
        _3077 = mem[_539]
        mem[mem[64] + (32 * _2425) + (32 * mem[96]) + 228] = mem[_539]
        mem[mem[64] + (32 * _2425) + (32 * mem[96]) + 260 len ceil32(_3077)] = mem[_539 + 32 len ceil32(_3077)]
        if ceil32(_3077) <= _3077:
            require ext_code.size(address(arg1))
            call address(arg1).onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, 160, (32 * _2425) + 192, mem[mem[64] + 132 len ceil32(_3077) + (32 * _2425) + (32 * mem[96]) + 128]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _3371 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3371] == Mask(32, 224, mem[_3371])
                if Mask(32, 224, mem[_3371]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                mem[mem[64]] = arg2
                mem[mem[64] + 32] = uint8(arg3)
                mem[mem[64] + 64] = 96
                _3504 = mem[(32 * uint8(arg3)) + 128]
                mem[mem[64] + 96] = mem[(32 * uint8(arg3)) + 128]
                mem[mem[64] + 128 len 32 * _3504] = mem[(32 * uint8(arg3)) + 160 len 32 * _3504]
                emit InfoBatchMint(address rg1, uint256 rg2, uint256 rg3, uint256[] rg4):
                                   arg2,
                                   arg3 << 248,
                                   96,
                                   mem[mem[64] + 96 len (32 * _3504) + 32],
                                   address(arg1),
                mem[mem[64]] = 32
                _3684 = mem[(32 * uint8(arg3)) + 128]
                mem[mem[64] + 32] = mem[(32 * uint8(arg3)) + 128]
                mem[mem[64] + 64 len 32 * _3684] = mem[(32 * uint8(arg3)) + 160 len 32 * _3684]
                return 32, mem[mem[64] + 32 len (32 * _3684) + 32]
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _3396 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
            if not _3396 + ext_call.return_data[0]:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _3501 = mem[_3396 + ext_call.return_data[0]]
            mem[mem[64] + 36] = mem[_3396 + ext_call.return_data[0]]
            mem[mem[64] + 68 len ceil32(_3501)] = mem[_3396 + ext_call.return_data[0] + 32 len ceil32(_3501)]
            if ceil32(_3501) > _3501:
                mem[mem[64] + _3501 + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_3501) + 32]
        mem[mem[64] + (32 * _2425) + (32 * mem[96]) + _3077 + 260] = 0
        require ext_code.size(address(arg1))
        call address(arg1).onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 160, (32 * _2425) + 192, mem[mem[64] + 132 len ceil32(_3077) + (32 * _2425) + (32 * mem[96]) + 128]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _3375 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3375] == Mask(32, 224, mem[_3375])
            if Mask(32, 224, mem[_3375]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            mem[mem[64]] = arg2
            mem[mem[64] + 32] = uint8(arg3)
            mem[mem[64] + 64] = 96
            _3533 = mem[(32 * uint8(arg3)) + 128]
            mem[mem[64] + 96] = mem[(32 * uint8(arg3)) + 128]
            mem[mem[64] + 128 len 32 * _3533] = mem[(32 * uint8(arg3)) + 160 len 32 * _3533]
            emit InfoBatchMint(address rg1, uint256 rg2, uint256 rg3, uint256[] rg4):
                               arg2,
                               arg3 << 248,
                               96,
                               mem[mem[64] + 96 len (32 * _3533) + 32],
                               address(arg1),
            mem[mem[64]] = 32
            _3685 = mem[(32 * uint8(arg3)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint8(arg3)) + 128]
            mem[mem[64] + 64 len 32 * _3685] = mem[(32 * uint8(arg3)) + 160 len 32 * _3685]
            return 32, mem[mem[64] + 32 len (32 * _3685) + 32]
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _3408 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _3408 + ext_call.return_data[0]:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _3476 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _3530 = mem[_3408 + ext_call.return_data[0]]
        mem[mem[64] + 36] = mem[_3408 + ext_call.return_data[0]]
        mem[mem[64] + 68 len ceil32(_3530)] = mem[_3408 + ext_call.return_data[0] + 32 len ceil32(_3530)]
        if ceil32(_3530) <= _3530:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_3530) + 32]
        mem[mem[64] + _3530 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_3530) + _3476 + -mem[64] + 68
    mem[128 len 32 * uint8(arg3)] = call.data[calldata.size len 32 * uint8(arg3)]
    require uint8(arg3) <= test266151307()
    mem[(32 * uint8(arg3)) + 128] = uint8(arg3)
    mem[64] = (64 * uint8(arg3)) + 160
    if not uint8(arg3):
        idx = 0
        while uint8(idx) < uint8(arg3):
            if totalSupply + 1 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply++
            require uint8(idx) < mem[(32 * uint8(arg3)) + 128]
            mem[(32 * uint8(idx)) + (32 * uint8(arg3)) + 160] = totalSupply + 1
            require uint8(idx) < mem[96]
            mem[(32 * uint8(idx)) + 128] = 1
            if uint8(idx):
                if uint8(uint8(arg5 * uint8(idx)) / uint8(idx)) != uint8(arg5):
                    revert with 0, 'SafeMath: multiplication overflow'
                if uint8(uint8(idx) + 1) < uint8(idx):
                    revert with 0, 'SafeMath: addition overflow'
                if not uint8(uint8(idx) + 1):
                    require uint8(arg5 * uint8(idx)) <= 0
                    require 0 <= arg4.length
                    _748 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_748] = address(arg1)
                    _749 = mem[64]
                    mem[64] = mem[64] + (32 * -uint8(arg5 * uint8(idx))) + 32
                    mem[_749] = -uint8(arg5 * uint8(idx))
                    mem[_749 + 32 len 32 * -uint8(arg5 * uint8(idx))] = call.data[(32 * uint8(arg5 * uint8(idx))) + arg4 + 36 len 32 * -uint8(arg5 * uint8(idx))]
                    mem[_749 + (32 * -uint8(arg5 * uint8(idx))) + 32] = 0
                    mem[_748 + 32] = _749
                    mem[_748 + 64] = 0
                    mem[_748 + 96] = arg2
                    mem[0] = totalSupply
                    mem[32] = 8
                    address(ownerOfTicket[stor7].field_0) = address(arg1)
                    ownerOfTicket[stor7].field_256 = Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256
                    if not Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256:
                        s = sha3(sha3(totalSupply, 8) + 1)
                        while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        s = 0
                        t = _749 + 32
                        while _749 + (32 * Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256) + 32 > t:
                            ownerOfTicket[stor7][1].field_0 = mem[t + 30 len 2] * 256^s or !(65535 * 256^s) and ownerOfTicket[stor7][1].field_0
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            t = t + 32
                            continue 
                        s = floor32(Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256) >> 4
                        t = sha3(sha3(totalSupply, 8) + 1)
                        while s:
                            stor[t] = !(65535 * 256^s) and stor[t]
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            t = (s + 3 / 32) + t
                            continue 
                        s = sha3(sha3(totalSupply, 8) + 1) + ((floor32(Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256) >> 4) + Mask(254, 1, None + -(floor32(Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256) >> 4) + 3) >> 1)
                        while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                else:
                    if uint8(uint8(arg5 * uint8(uint8(idx) + 1)) / uint8(uint8(idx) + 1)) != uint8(arg5):
                        revert with 0, 'SafeMath: multiplication overflow'
                    require uint8(arg5 * uint8(idx)) <= uint8(arg5 * uint8(uint8(idx) + 1))
                    require uint8(arg5 * uint8(uint8(idx) + 1)) <= arg4.length
                    _790 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_790] = address(arg1)
                    _791 = mem[64]
                    mem[64] = mem[64] + (32 * uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) + 32
                    mem[_791] = uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))
                    mem[_791 + 32 len 32 * uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))] = call.data[(32 * uint8(arg5 * uint8(idx))) + arg4 + 36 len 32 * uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))]
                    mem[_791 + (32 * uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) + 32] = 0
                    mem[_790 + 32] = _791
                    mem[_790 + 64] = 0
                    mem[_790 + 96] = arg2
                    mem[0] = totalSupply
                    mem[32] = 8
                    address(ownerOfTicket[stor7].field_0) = address(arg1)
                    ownerOfTicket[stor7].field_256 = uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))
                    if not uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx)):
                        s = sha3(sha3(totalSupply, 8) + 1)
                        while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        s = 0
                        t = _791 + 32
                        while _791 + (32 * uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) + 32 > t:
                            ownerOfTicket[stor7][1].field_0 = mem[t + 30 len 2] * 256^s or !(65535 * 256^s) and ownerOfTicket[stor7][1].field_0
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            t = t + 32
                            continue 
                        s = floor32(uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) >> 4
                        t = sha3(sha3(totalSupply, 8) + 1)
                        while s:
                            stor[t] = !(65535 * 256^s) and stor[t]
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            t = (s + 3 / 32) + t
                            continue 
                        s = sha3(sha3(totalSupply, 8) + 1) + ((floor32(uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) >> 4) + Mask(254, 1, None + -(floor32(uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) >> 4) + 3) >> 1)
                        while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
            else:
                if uint8(uint8(idx) + 1) < uint8(idx):
                    revert with 0, 'SafeMath: addition overflow'
                if not uint8(uint8(idx) + 1):
                    require 0 <= arg4.length
                    _710 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_710] = address(arg1)
                    _711 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_711] = 0
                    mem[_711 + 32] = 0
                    mem[_710 + 32] = _711
                    mem[_710 + 64] = 0
                    mem[_710 + 96] = arg2
                    address(ownerOfTicket[stor7].field_0) = address(arg1)
                    ownerOfTicket[stor7].field_256 = 0
                    s = sha3(sha3(totalSupply, 8) + 1)
                    while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    if uint8(uint8(arg5 * uint8(uint8(idx) + 1)) / uint8(uint8(idx) + 1)) != uint8(arg5):
                        revert with 0, 'SafeMath: multiplication overflow'
                    require 0 <= uint8(arg5 * uint8(uint8(idx) + 1))
                    require uint8(arg5 * uint8(uint8(idx) + 1)) <= arg4.length
                    _754 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_754] = address(arg1)
                    _755 = mem[64]
                    mem[64] = mem[64] + (32 * uint8(arg5 * uint8(uint8(idx) + 1))) + 32
                    mem[_755] = uint8(arg5 * uint8(uint8(idx) + 1))
                    mem[_755 + 32 len 32 * uint8(arg5 * uint8(uint8(idx) + 1))] = call.data[arg4 + 36 len 32 * uint8(arg5 * uint8(uint8(idx) + 1))]
                    mem[_755 + (32 * uint8(arg5 * uint8(uint8(idx) + 1))) + 32] = 0
                    mem[_754 + 32] = _755
                    mem[_754 + 64] = 0
                    mem[_754 + 96] = arg2
                    mem[0] = totalSupply
                    mem[32] = 8
                    address(ownerOfTicket[stor7].field_0) = address(arg1)
                    uint8(ownerOfTicket[stor7].field_256) = uint8(arg5 * uint8(uint8(idx) + 1))
                    Mask(248, 0, ownerOfTicket[stor7].field_264) = 0
                    if not uint8(arg5 * uint8(uint8(idx) + 1)):
                        s = sha3(sha3(totalSupply, 8) + 1)
                        while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        s = 0
                        t = _755 + 32
                        while _755 + (32 * uint8(arg5 * uint8(uint8(idx) + 1))) + 32 > t:
                            ownerOfTicket[stor7][1].field_0 = mem[t + 30 len 2] * 256^s or !(65535 * 256^s) and ownerOfTicket[stor7][1].field_0
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            t = t + 32
                            continue 
                        s = Mask(3, 5, arg5 * uint8(uint8(idx) + 1)) >> 4
                        t = sha3(sha3(totalSupply, 8) + 1)
                        while s:
                            stor[t] = !(65535 * 256^s) and stor[t]
                            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                            t = (s + 3 / 32) + t
                            continue 
                        s = sha3(sha3(totalSupply, 8) + 1) + ((Mask(3, 5, arg5 * uint8(uint8(idx) + 1)) >> 4) + Mask(254, 1, None + -(Mask(3, 5, arg5 * uint8(uint8(idx) + 1)) >> 4) + 3) + 3 / 32 * uint255(None + -(Mask(3, 5, arg5 * uint8(uint8(idx) + 1)) >> 4) + 3) >> 1)
                        while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
            uint8(ownerOfTicket[stor7].field_512) = 0
            ownerOfTicket[stor7].field_768 = arg2
            mem[32] = sha3(address(arg1), 9)
            stor9[address(arg1)][arg2].field_0++
            mem[0] = sha3(arg2, sha3(address(arg1), 9))
            stor9[address(arg1)][arg2][stor9[address(arg1)][arg2].field_0].field_0 = totalSupply
            idx = idx + 1
            continue 
        _540 = mem[64]
        mem[64] = mem[64] + ceil32(calldata.size) + 32
        mem[_540] = calldata.size
        mem[_540 + 32 len calldata.size] = call.data[0 len calldata.size]
        mem[_540 + calldata.size + 32] = 0
        if not address(arg1):
            revert with 0, 'ERC1155: mint to the zero address'
        if mem[(32 * uint8(arg3)) + 128] != mem[96]:
            revert with 0, 'ERC1155: ids and amounts length mismatch'
        idx = 0
        while idx < mem[(32 * uint8(arg3)) + 128]:
            require idx < mem[(32 * uint8(arg3)) + 128]
            require idx < mem[96]
            if balanceOf[mem[(32 * idx) + (32 * uint8(arg3)) + 160]][address(arg1)] + mem[(32 * idx) + 128] < mem[(32 * idx) + 128]:
                revert with 0, 'SafeMath: addition overflow'
            require idx < mem[(32 * uint8(arg3)) + 128]
            mem[0] = address(arg1)
            mem[32] = sha3(mem[(32 * idx) + (32 * uint8(arg3)) + 160], 1)
            balanceOf[mem[(32 * idx) + (32 * uint8(arg3)) + 160]][address(arg1)] += mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        _1334 = mem[64]
        mem[mem[64]] = 64
        _1406 = mem[(32 * uint8(arg3)) + 128]
        mem[mem[64] + 64] = mem[(32 * uint8(arg3)) + 128]
        mem[mem[64] + 96 len 32 * _1406] = mem[(32 * uint8(arg3)) + 160 len 32 * _1406]
        mem[mem[64] + 32] = (32 * _1406) + 96
        _1908 = mem[96]
        mem[_1334 + (32 * _1406) + 96] = mem[96]
        mem[_1334 + (32 * _1406) + 128 len 32 * _1908] = mem[128 len 32 * _1908]
        emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                           mem[mem[64] len _1334 + (32 * _1406) + (32 * _1908) + -mem[64] + 128],
                           msg.sender,
                           0,
                           address(arg1),
        if not ext_code.size(address(arg1)):
            mem[mem[64]] = arg2
            mem[mem[64] + 32] = uint8(arg3)
            mem[mem[64] + 64] = 96
            _2434 = mem[(32 * uint8(arg3)) + 128]
            mem[mem[64] + 96] = mem[(32 * uint8(arg3)) + 128]
            mem[mem[64] + 128 len 32 * _2434] = mem[(32 * uint8(arg3)) + 160 len 32 * _2434]
            emit InfoBatchMint(address rg1, uint256 rg2, uint256 rg3, uint256[] rg4):
                               arg2,
                               arg3 << 248,
                               96,
                               mem[mem[64] + 96 len (32 * _2434) + 32],
                               address(arg1),
            mem[mem[64]] = 32
            _2776 = mem[(32 * uint8(arg3)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint8(arg3)) + 128]
            mem[mem[64] + 64 len 32 * _2776] = mem[(32 * uint8(arg3)) + 160 len 32 * _2776]
            return 32, mem[mem[64] + 32 len (32 * _2776) + 32]
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _2427 = mem[(32 * uint8(arg3)) + 128]
        mem[mem[64] + 164] = mem[(32 * uint8(arg3)) + 128]
        mem[mem[64] + 196 len 32 * _2427] = mem[(32 * uint8(arg3)) + 160 len 32 * _2427]
        mem[mem[64] + 100] = (32 * _2427) + 192
        mem[mem[64] + (32 * _2427) + 196] = mem[96]
        mem[mem[64] + (32 * _2427) + 228 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 132] = (32 * _2427) + (32 * mem[96]) + 224
        _3079 = mem[_540]
        mem[mem[64] + (32 * _2427) + (32 * mem[96]) + 228] = mem[_540]
        mem[mem[64] + (32 * _2427) + (32 * mem[96]) + 260 len ceil32(_3079)] = mem[_540 + 32 len ceil32(_3079)]
        if ceil32(_3079) <= _3079:
            require ext_code.size(address(arg1))
            call address(arg1).onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, 160, (32 * _2427) + 192, mem[mem[64] + 132 len ceil32(_3079) + (32 * _2427) + (32 * mem[96]) + 128]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _3372 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3372] == Mask(32, 224, mem[_3372])
                if Mask(32, 224, mem[_3372]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                mem[mem[64]] = arg2
                mem[mem[64] + 32] = uint8(arg3)
                mem[mem[64] + 64] = 96
                _3511 = mem[(32 * uint8(arg3)) + 128]
                mem[mem[64] + 96] = mem[(32 * uint8(arg3)) + 128]
                mem[mem[64] + 128 len 32 * _3511] = mem[(32 * uint8(arg3)) + 160 len 32 * _3511]
                emit InfoBatchMint(address rg1, uint256 rg2, uint256 rg3, uint256[] rg4):
                                   arg2,
                                   arg3 << 248,
                                   96,
                                   mem[mem[64] + 96 len (32 * _3511) + 32],
                                   address(arg1),
                mem[mem[64]] = 32
                _3686 = mem[(32 * uint8(arg3)) + 128]
                mem[mem[64] + 32] = mem[(32 * uint8(arg3)) + 128]
                mem[mem[64] + 64 len 32 * _3686] = mem[(32 * uint8(arg3)) + 160 len 32 * _3686]
                return 32, mem[mem[64] + 32 len (32 * _3686) + 32]
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _3398 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
            if not _3398 + ext_call.return_data[0]:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _3508 = mem[_3398 + ext_call.return_data[0]]
            mem[mem[64] + 36] = mem[_3398 + ext_call.return_data[0]]
            mem[mem[64] + 68 len ceil32(_3508)] = mem[_3398 + ext_call.return_data[0] + 32 len ceil32(_3508)]
            if ceil32(_3508) > _3508:
                mem[mem[64] + _3508 + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_3508) + 32]
        mem[mem[64] + (32 * _2427) + (32 * mem[96]) + _3079 + 260] = 0
        require ext_code.size(address(arg1))
        call address(arg1).onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 160, (32 * _2427) + 192, mem[mem[64] + 132 len ceil32(_3079) + (32 * _2427) + (32 * mem[96]) + 128]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _3376 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3376] == Mask(32, 224, mem[_3376])
            if Mask(32, 224, mem[_3376]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            mem[mem[64]] = arg2
            mem[mem[64] + 32] = uint8(arg3)
            mem[mem[64] + 64] = 96
            _3539 = mem[(32 * uint8(arg3)) + 128]
            mem[mem[64] + 96] = mem[(32 * uint8(arg3)) + 128]
            mem[mem[64] + 128 len 32 * _3539] = mem[(32 * uint8(arg3)) + 160 len 32 * _3539]
            emit InfoBatchMint(address rg1, uint256 rg2, uint256 rg3, uint256[] rg4):
                               arg2,
                               arg3 << 248,
                               96,
                               mem[mem[64] + 96 len (32 * _3539) + 32],
                               address(arg1),
            mem[mem[64]] = 32
            _3687 = mem[(32 * uint8(arg3)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint8(arg3)) + 128]
            mem[mem[64] + 64 len 32 * _3687] = mem[(32 * uint8(arg3)) + 160 len 32 * _3687]
            return 32, mem[mem[64] + 32 len (32 * _3687) + 32]
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _3412 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _3412 + ext_call.return_data[0]:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _3536 = mem[_3412 + ext_call.return_data[0]]
        mem[mem[64] + 36] = mem[_3412 + ext_call.return_data[0]]
        mem[mem[64] + 68 len ceil32(_3536)] = mem[_3412 + ext_call.return_data[0] + 32 len ceil32(_3536)]
        if ceil32(_3536) > _3536:
            mem[mem[64] + _3536 + 68] = 0
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_3536) + 32]
    mem[(32 * uint8(arg3)) + 160 len 32 * uint8(arg3)] = call.data[calldata.size len 32 * uint8(arg3)]
    idx = 0
    while uint8(idx) < uint8(arg3):
        if totalSupply + 1 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply++
        require uint8(idx) < mem[(32 * uint8(arg3)) + 128]
        mem[(32 * uint8(idx)) + (32 * uint8(arg3)) + 160] = totalSupply + 1
        require uint8(idx) < mem[96]
        mem[(32 * uint8(idx)) + 128] = 1
        if uint8(idx):
            if uint8(uint8(arg5 * uint8(idx)) / uint8(idx)) != uint8(arg5):
                revert with 0, 'SafeMath: multiplication overflow'
            if uint8(uint8(idx) + 1) < uint8(idx):
                revert with 0, 'SafeMath: addition overflow'
            if not uint8(uint8(idx) + 1):
                require uint8(arg5 * uint8(idx)) <= 0
                require 0 <= arg4.length
                _761 = mem[64]
                mem[64] = mem[64] + 128
                mem[_761] = address(arg1)
                _762 = mem[64]
                mem[64] = mem[64] + (32 * -uint8(arg5 * uint8(idx))) + 32
                mem[_762] = -uint8(arg5 * uint8(idx))
                mem[_762 + 32 len 32 * -uint8(arg5 * uint8(idx))] = call.data[(32 * uint8(arg5 * uint8(idx))) + arg4 + 36 len 32 * -uint8(arg5 * uint8(idx))]
                mem[_762 + (32 * -uint8(arg5 * uint8(idx))) + 32] = 0
                mem[_761 + 32] = _762
                mem[_761 + 64] = 0
                mem[_761 + 96] = arg2
                mem[0] = totalSupply
                mem[32] = 8
                address(ownerOfTicket[stor7].field_0) = address(arg1)
                ownerOfTicket[stor7].field_256 = Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256
                if not Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256:
                    s = sha3(sha3(totalSupply, 8) + 1)
                    while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    s = 0
                    t = _762 + 32
                    while _762 + (32 * Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256) + 32 > t:
                        ownerOfTicket[stor7][1].field_0 = mem[t + 30 len 2] * 256^s or !(65535 * 256^s) and ownerOfTicket[stor7][1].field_0
                        s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                        t = t + 32
                        continue 
                    s = floor32(Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256) >> 4
                    t = sha3(sha3(totalSupply, 8) + 1)
                    while s:
                        stor[t] = !(65535 * 256^s) and stor[t]
                        s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                        t = (s + 3 / 32) + t
                        continue 
                    s = sha3(sha3(totalSupply, 8) + 1) + ((floor32(Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256) >> 4) + Mask(254, 1, None + -(floor32(Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(Mask(8 * (32 * -uint8(arg5 * uint8(idx))) + 32, -(8 * (32 * -uint8(arg5 * uint8(idx))) + 32) + 256, -uint8(arg5 * uint8(idx))) << (8 * (32 * -uint8(arg5 * uint8(idx))) + 32) - 256, Mask(uint8(arg5 * uint8(idx)) << 8, -(uint8(arg5 * uint8(idx)) << 8) + 256, 0) << (uint8(arg5 * uint8(idx)) << 8) - 256) >> 4) + 3) >> 1)
                    while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            else:
                if uint8(uint8(arg5 * uint8(uint8(idx) + 1)) / uint8(uint8(idx) + 1)) != uint8(arg5):
                    revert with 0, 'SafeMath: multiplication overflow'
                require uint8(arg5 * uint8(idx)) <= uint8(arg5 * uint8(uint8(idx) + 1))
                require uint8(arg5 * uint8(uint8(idx) + 1)) <= arg4.length
                _798 = mem[64]
                mem[64] = mem[64] + 128
                mem[_798] = address(arg1)
                _799 = mem[64]
                mem[64] = mem[64] + (32 * uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) + 32
                mem[_799] = uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))
                mem[_799 + 32 len 32 * uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))] = call.data[(32 * uint8(arg5 * uint8(idx))) + arg4 + 36 len 32 * uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))]
                mem[_799 + (32 * uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) + 32] = 0
                mem[_798 + 32] = _799
                mem[_798 + 64] = 0
                mem[_798 + 96] = arg2
                mem[0] = totalSupply
                mem[32] = 8
                address(ownerOfTicket[stor7].field_0) = address(arg1)
                ownerOfTicket[stor7].field_256 = uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))
                if not uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx)):
                    s = sha3(sha3(totalSupply, 8) + 1)
                    while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    s = 0
                    t = _799 + 32
                    while _799 + (32 * uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) + 32 > t:
                        ownerOfTicket[stor7][1].field_0 = mem[t + 30 len 2] * 256^s or !(65535 * 256^s) and ownerOfTicket[stor7][1].field_0
                        s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                        t = t + 32
                        continue 
                    s = floor32(uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) >> 4
                    t = sha3(sha3(totalSupply, 8) + 1)
                    while s:
                        stor[t] = !(65535 * 256^s) and stor[t]
                        s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                        t = (s + 3 / 32) + t
                        continue 
                    s = sha3(sha3(totalSupply, 8) + 1) + ((floor32(uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) >> 4) + Mask(254, 1, None + -(floor32(uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(uint8(arg5 * uint8(uint8(idx) + 1)) - uint8(arg5 * uint8(idx))) >> 4) + 3) >> 1)
                    while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
        else:
            if uint8(uint8(idx) + 1) < uint8(idx):
                revert with 0, 'SafeMath: addition overflow'
            if not uint8(uint8(idx) + 1):
                require 0 <= arg4.length
                _716 = mem[64]
                mem[64] = mem[64] + 128
                mem[_716] = address(arg1)
                _717 = mem[64]
                mem[64] = mem[64] + 32
                mem[_717] = 0
                mem[_717 + 32] = 0
                mem[_716 + 32] = _717
                mem[_716 + 64] = 0
                mem[_716 + 96] = arg2
                address(ownerOfTicket[stor7].field_0) = address(arg1)
                ownerOfTicket[stor7].field_256 = 0
                s = sha3(sha3(totalSupply, 8) + 1)
                while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                if uint8(uint8(arg5 * uint8(uint8(idx) + 1)) / uint8(uint8(idx) + 1)) != uint8(arg5):
                    revert with 0, 'SafeMath: multiplication overflow'
                require 0 <= uint8(arg5 * uint8(uint8(idx) + 1))
                require uint8(arg5 * uint8(uint8(idx) + 1)) <= arg4.length
                _767 = mem[64]
                mem[64] = mem[64] + 128
                mem[_767] = address(arg1)
                _768 = mem[64]
                mem[64] = mem[64] + (32 * uint8(arg5 * uint8(uint8(idx) + 1))) + 32
                mem[_768] = uint8(arg5 * uint8(uint8(idx) + 1))
                mem[_768 + 32 len 32 * uint8(arg5 * uint8(uint8(idx) + 1))] = call.data[arg4 + 36 len 32 * uint8(arg5 * uint8(uint8(idx) + 1))]
                mem[_768 + (32 * uint8(arg5 * uint8(uint8(idx) + 1))) + 32] = 0
                mem[_767 + 32] = _768
                mem[_767 + 64] = 0
                mem[_767 + 96] = arg2
                mem[0] = totalSupply
                mem[32] = 8
                address(ownerOfTicket[stor7].field_0) = address(arg1)
                uint8(ownerOfTicket[stor7].field_256) = uint8(arg5 * uint8(uint8(idx) + 1))
                Mask(248, 0, ownerOfTicket[stor7].field_264) = 0
                if not uint8(arg5 * uint8(uint8(idx) + 1)):
                    s = sha3(sha3(totalSupply, 8) + 1)
                    while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    s = 0
                    t = _768 + 32
                    while _768 + (32 * uint8(arg5 * uint8(uint8(idx) + 1))) + 32 > t:
                        ownerOfTicket[stor7][1].field_0 = mem[t + 30 len 2] * 256^s or !(65535 * 256^s) and ownerOfTicket[stor7][1].field_0
                        s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                        t = t + 32
                        continue 
                    s = Mask(3, 5, arg5 * uint8(uint8(idx) + 1)) >> 4
                    t = sha3(sha3(totalSupply, 8) + 1)
                    while s:
                        stor[t] = !(65535 * 256^s) and stor[t]
                        s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
                        t = (s + 3 / 32) + t
                        continue 
                    s = sha3(sha3(totalSupply, 8) + 1) + ((Mask(3, 5, arg5 * uint8(uint8(idx) + 1)) >> 4) + Mask(254, 1, None + -(Mask(3, 5, arg5 * uint8(uint8(idx) + 1)) >> 4) + 3) + 3 / 32 * uint255(None + -(Mask(3, 5, arg5 * uint8(uint8(idx) + 1)) >> 4) + 3) >> 1)
                    while sha3(sha3(totalSupply, 8) + 1) + (ownerOfTicket[stor7].field_256 + 15 / 16) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
        uint8(ownerOfTicket[stor7].field_512) = 0
        ownerOfTicket[stor7].field_768 = arg2
        mem[32] = sha3(address(arg1), 9)
        stor9[address(arg1)][arg2].field_0++
        mem[0] = sha3(arg2, sha3(address(arg1), 9))
        stor9[address(arg1)][arg2][stor9[address(arg1)][arg2].field_0].field_0 = totalSupply
        idx = idx + 1
        continue 
    _541 = mem[64]
    mem[64] = mem[64] + ceil32(calldata.size) + 32
    mem[_541] = calldata.size
    mem[_541 + 32 len calldata.size] = call.data[0 len calldata.size]
    mem[_541 + calldata.size + 32] = 0
    if not address(arg1):
        revert with 0, 'ERC1155: mint to the zero address'
    if mem[(32 * uint8(arg3)) + 128] != mem[96]:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    idx = 0
    while idx < mem[(32 * uint8(arg3)) + 128]:
        require idx < mem[(32 * uint8(arg3)) + 128]
        require idx < mem[96]
        if balanceOf[mem[(32 * idx) + (32 * uint8(arg3)) + 160]][address(arg1)] + mem[(32 * idx) + 128] < mem[(32 * idx) + 128]:
            revert with 0, 'SafeMath: addition overflow'
        require idx < mem[(32 * uint8(arg3)) + 128]
        mem[0] = address(arg1)
        mem[32] = sha3(mem[(32 * idx) + (32 * uint8(arg3)) + 160], 1)
        balanceOf[mem[(32 * idx) + (32 * uint8(arg3)) + 160]][address(arg1)] += mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    _1340 = mem[64]
    mem[mem[64]] = 64
    _1428 = mem[(32 * uint8(arg3)) + 128]
    mem[mem[64] + 64] = mem[(32 * uint8(arg3)) + 128]
    mem[mem[64] + 96 len 32 * _1428] = mem[(32 * uint8(arg3)) + 160 len 32 * _1428]
    mem[mem[64] + 32] = (32 * _1428) + 96
    _1909 = mem[96]
    mem[_1340 + (32 * _1428) + 96] = mem[96]
    mem[_1340 + (32 * _1428) + 128 len 32 * _1909] = mem[128 len 32 * _1909]
    emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                       mem[mem[64] len _1340 + (32 * _1428) + (32 * _1909) + -mem[64] + 128],
                       msg.sender,
                       0,
                       address(arg1),
    if not ext_code.size(address(arg1)):
        mem[mem[64]] = arg2
        mem[mem[64] + 32] = uint8(arg3)
        mem[mem[64] + 64] = 96
        _2436 = mem[(32 * uint8(arg3)) + 128]
        mem[mem[64] + 96] = mem[(32 * uint8(arg3)) + 128]
        mem[mem[64] + 128 len 32 * _2436] = mem[(32 * uint8(arg3)) + 160 len 32 * _2436]
        emit InfoBatchMint(address rg1, uint256 rg2, uint256 rg3, uint256[] rg4):
                           arg2,
                           arg3 << 248,
                           96,
                           mem[mem[64] + 96 len (32 * _2436) + 32],
                           address(arg1),
        mem[mem[64]] = 32
        _2777 = mem[(32 * uint8(arg3)) + 128]
        mem[mem[64] + 32] = mem[(32 * uint8(arg3)) + 128]
        mem[mem[64] + 64 len 32 * _2777] = mem[(32 * uint8(arg3)) + 160 len 32 * _2777]
        return 32, mem[mem[64] + 32 len (32 * _2777) + 32]
    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _2429 = mem[(32 * uint8(arg3)) + 128]
    mem[mem[64] + 164] = mem[(32 * uint8(arg3)) + 128]
    mem[mem[64] + 196 len 32 * _2429] = mem[(32 * uint8(arg3)) + 160 len 32 * _2429]
    mem[mem[64] + 100] = (32 * _2429) + 192
    mem[mem[64] + (32 * _2429) + 196] = mem[96]
    mem[mem[64] + (32 * _2429) + 228 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 132] = (32 * _2429) + (32 * mem[96]) + 224
    _3081 = mem[_541]
    mem[mem[64] + (32 * _2429) + (32 * mem[96]) + 228] = mem[_541]
    mem[mem[64] + (32 * _2429) + (32 * mem[96]) + 260 len ceil32(_3081)] = mem[_541 + 32 len ceil32(_3081)]
    if ceil32(_3081) <= _3081:
        require ext_code.size(address(arg1))
        call address(arg1).onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 160, (32 * _2429) + 192, mem[mem[64] + 132 len ceil32(_3081) + (32 * _2429) + (32 * mem[96]) + 128]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _3373 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3373] == Mask(32, 224, mem[_3373])
            if Mask(32, 224, mem[_3373]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            mem[mem[64]] = arg2
            mem[mem[64] + 32] = uint8(arg3)
            mem[mem[64] + 64] = 96
            _3518 = mem[(32 * uint8(arg3)) + 128]
            mem[mem[64] + 96] = mem[(32 * uint8(arg3)) + 128]
            mem[mem[64] + 128 len 32 * _3518] = mem[(32 * uint8(arg3)) + 160 len 32 * _3518]
            emit InfoBatchMint(address rg1, uint256 rg2, uint256 rg3, uint256[] rg4):
                               arg2,
                               arg3 << 248,
                               96,
                               mem[mem[64] + 96 len (32 * _3518) + 32],
                               address(arg1),
            mem[mem[64]] = 32
            _3688 = mem[(32 * uint8(arg3)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint8(arg3)) + 128]
            mem[mem[64] + 64 len 32 * _3688] = mem[(32 * uint8(arg3)) + 160 len 32 * _3688]
            return 32, mem[mem[64] + 32 len (32 * _3688) + 32]
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _3400 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _3400 + ext_call.return_data[0]:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _3515 = mem[_3400 + ext_call.return_data[0]]
        mem[mem[64] + 36] = mem[_3400 + ext_call.return_data[0]]
        mem[mem[64] + 68 len ceil32(_3515)] = mem[_3400 + ext_call.return_data[0] + 32 len ceil32(_3515)]
        if ceil32(_3515) > _3515:
            mem[mem[64] + _3515 + 68] = 0
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_3515) + 32]
    mem[mem[64] + (32 * _2429) + (32 * mem[96]) + _3081 + 260] = 0
    require ext_code.size(address(arg1))
    call address(arg1).onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
         gas gas_remaining wei
        args msg.sender, 0, 160, (32 * _2429) + 192, mem[mem[64] + 132 len ceil32(_3081) + (32 * _2429) + (32 * mem[96]) + 128]
    mem[mem[64]] = ext_call.return_data[0]
    if ext_call.success:
        _3377 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_3377] == Mask(32, 224, mem[_3377])
        if Mask(32, 224, mem[_3377]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        mem[mem[64]] = arg2
        mem[mem[64] + 32] = uint8(arg3)
        mem[mem[64] + 64] = 96
        _3545 = mem[(32 * uint8(arg3)) + 128]
        mem[mem[64] + 96] = mem[(32 * uint8(arg3)) + 128]
        mem[mem[64] + 128 len 32 * _3545] = mem[(32 * uint8(arg3)) + 160 len 32 * _3545]
        emit InfoBatchMint(address rg1, uint256 rg2, uint256 rg3, uint256[] rg4):
                           arg2,
                           arg3 << 248,
                           96,
                           mem[mem[64] + 96 len (32 * _3545) + 32],
                           address(arg1),
        mem[mem[64]] = 32
        _3689 = mem[(32 * uint8(arg3)) + 128]
        mem[mem[64] + 32] = mem[(32 * uint8(arg3)) + 128]
        mem[mem[64] + 64 len 32 * _3689] = mem[(32 * uint8(arg3)) + 160 len 32 * _3689]
        return 32, mem[mem[64] + 32 len (32 * _3689) + 32]
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    _3416 = mem[64]
    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
    if not _3416 + ext_call.return_data[0]:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _3542 = mem[_3416 + ext_call.return_data[0]]
    mem[mem[64] + 36] = mem[_3416 + ext_call.return_data[0]]
    mem[mem[64] + 68 len ceil32(_3542)] = mem[_3416 + ext_call.return_data[0] + 32 len ceil32(_3542)]
    if ceil32(_3542) > _3542:
        mem[mem[64] + _3542 + 68] = 0
    revert with 0, 32, mem[mem[64] + 36 len ceil32(_3542) + 32]
}



}
