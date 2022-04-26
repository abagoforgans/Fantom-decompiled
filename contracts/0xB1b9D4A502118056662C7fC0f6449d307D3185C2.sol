contract main {




// =====================  Runtime code  =====================


#
#  - sub_5e3261d0(?)
#
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
    require arg2 == arg2
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
    require arg1 == arg1
    return bool(ownerOfTicket[arg1].field_512)
}

function getOwnerOfTicket(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return ownerOfTicket[arg1].field_0
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
    require arg1 == arg1
    require timerAddress
    require ext_code.size(timerAddress)
    call timerAddress.0x22f8e566 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function getCurrentTime() payable {
    if not timerAddress:
        return block.timestamp
    require ext_code.size(timerAddress)
    staticcall timerAddress.0x29cb924d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getUserTickets(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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
    require arg1 == arg1
    require arg2 == arg2
    if stor6 != msg.sender:
        revert with 0, 'Only Lotto can mint'
    if ownerOfTicket[arg1].field_512:
        revert with 0, 'Ticket already claimed'
    if ownerOfTicket[arg1].field_768 != arg2:
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
    ownerOfTicket[arg1].field_512 = 1
    return 1
}

function getTicketNumbers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[64] = (32 * ownerOfTicket[arg1].field_256) + 128
    mem[96] = ownerOfTicket[arg1].field_256
    if not ownerOfTicket[arg1].field_256:
        mem[(32 * ownerOfTicket[arg1].field_256) + 128] = 32
        mem[(32 * ownerOfTicket[arg1].field_256) + 160] = ownerOfTicket[arg1].field_256
        idx = 0
        s = 128
        t = (32 * ownerOfTicket[arg1].field_256) + 192
        while idx < ownerOfTicket[arg1].field_256:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * ownerOfTicket[arg1].field_256) + 128
           len (96 * ownerOfTicket[arg1].field_256) + 64
    mem[128] = ownerOfTicket[arg1][1].field_0
    idx = 128
    s = 0
    while (32 * ownerOfTicket[arg1].field_256) + 96 > idx:
        mem[idx + 32] = ownerOfTicket[arg1][1].field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
        idx = idx + 32
        s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
        continue 
    mem[(32 * ownerOfTicket[arg1].field_256) + 128] = 32
    mem[(32 * ownerOfTicket[arg1].field_256) + 160] = ownerOfTicket[arg1].field_256
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < ownerOfTicket[arg1].field_256:
        mem[t] = mem[s + 30 len 2]
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
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if arg4 <= stor9[address(arg1)][arg2].field_0 - arg3:
        require arg4 <= test266151307()
        if arg4:
            mem[128 len 32 * arg4] = call.data[calldata.size len 32 * arg4]
        idx = 0
        while idx < arg4:
            mem[32] = sha3(address(arg1), 9)
            require arg3 + idx < stor9[address(arg1)][arg2].field_0
            mem[0] = sha3(arg2, sha3(address(arg1), 9))
            require idx < arg4
            mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9))) + arg3 + idx].field_0
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
        require arg3 + idx < stor9[address(arg1)][arg2].field_0
        mem[0] = sha3(arg2, sha3(address(arg1), 9))
        require idx < mem[96]
        mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9))) + arg3 + idx].field_0
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
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require ceil32(arg5.length) + 128 <= test266151307() and ceil32(arg5.length) + 128 >= 96
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
    if balanceOf[arg3][address(arg2)] + arg4 < balanceOf[arg3][address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[arg3][address(arg2)] += arg4
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2) > 0:
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
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307() and (32 * arg2.length) + 160 >= 128
    mem[(32 * arg1.length) + 128] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: accounts and ids length mismatch'
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    if arg1.length:
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
    return Array(len=arg1.length, data=mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length])
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require (32 * arg3.length) + 128 <= test266151307() and (32 * arg3.length) + 128 >= 96
    mem[96] = arg3.length
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
    require arg4.length <= test266151307()
    require (32 * arg3.length) + (32 * arg4.length) + 160 <= test266151307() and (32 * arg4.length) + 160 >= 128
    mem[(32 * arg3.length) + 128] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = (32 * arg3.length) + 160
    while idx < arg4.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require (32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192 <= test266151307() and ceil32(arg5.length) + 192 >= 160
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
            _559 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _563 = mem[(32 * idx) + (32 * arg3.length) + 160]
            _564 = mem[64]
            mem[64] = mem[64] + 96
            mem[_564] = 42
            mem[_564 + 32 len 42] = 0xfe455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
            mem[32] = sha3(_559, 1)
            if _563 <= balanceOf[_559][address(arg1)]:
                balanceOf[_559][address(arg1)] -= _563
                if balanceOf[_559][address(arg2)] + _563 < balanceOf[_559][address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg2
                mem[32] = sha3(_559, 1)
                balanceOf[_559][address(arg2)] += _563
                idx = idx + 1
                continue 
            _573 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 42
            idx = 0
            while idx < 42:
                mem[_573 + idx + 68] = mem[_564 + idx + 32]
                idx = idx + 32
                continue 
            mem[_573 + 110] = 0
            revert with memory
              from mem[64]
               len _573 + -mem[64] + 132
        _555 = mem[64]
        mem[mem[64]] = 64
        _571 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        var96001 = mem[96]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _729 = mem[(32 * arg3.length) + 128]
        mem[_555 + (32 * mem[96]) + 96] = mem[(32 * arg3.length) + 128]
        mem[_555 + (32 * _571) + 128 len 32 * _729] = mem[(32 * arg3.length) + 160 len 32 * _729]
        emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                           mem[mem[64] len _555 + (32 * _571) + (32 * _729) + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           arg2,
        if ext_code.size(arg2) <= 0:
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = 160
        _863 = mem[96]
        mem[mem[64] + 164] = mem[96]
        mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 100] = (32 * mem[96]) + 192
        _981 = mem[(32 * arg3.length) + 128]
        mem[mem[64] + (32 * mem[96]) + 196] = mem[(32 * arg3.length) + 128]
        mem[mem[64] + (32 * mem[96]) + 228 len 32 * _981] = mem[(32 * arg3.length) + 160 len 32 * _981]
        mem[mem[64] + 132] = (32 * mem[96]) + (32 * _981) + 224
        _1095 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        mem[mem[64] + (32 * mem[96]) + (32 * _981) + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        mem[mem[64] + (32 * _863) + (32 * _981) + 260 len ceil32(_1095)] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(_1095)]
        if ceil32(_1095) <= _1095:
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _863) + (32 * _981) + 224, mem[mem[64] + 164 len (32 * _863) + (32 * _981) + ceil32(_1095) + 96]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _1209 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1209] == Mask(32, 224, mem[_1209])
                if Mask(32, 224, mem[_1209]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _1221 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
            if not _1221 + ext_call.return_data[0]:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _1255 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1271 = mem[_1221 + ext_call.return_data[0]]
            mem[mem[64] + 36] = mem[_1221 + ext_call.return_data[0]]
            mem[mem[64] + 68 len ceil32(_1271)] = mem[_1221 + ext_call.return_data[0] + 32 len ceil32(_1271)]
            if ceil32(_1271) <= _1271:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_1271) + 32]
            mem[mem[64] + _1271 + 68] = 0
            revert with memory
              from mem[64]
               len _1255 + ceil32(_1271) + -mem[64] + 68
        mem[mem[64] + (32 * _863) + (32 * _981) + _1095 + 260] = 0
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _863) + (32 * _981) + 224, mem[mem[64] + 164 len (32 * _863) + (32 * _981) + ceil32(_1095) + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _1211 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1211] == Mask(32, 224, mem[_1211])
            if Mask(32, 224, mem[_1211]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _1227 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _1227 + ext_call.return_data[0]:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1278 = mem[_1227 + ext_call.return_data[0]]
        mem[mem[64] + 36] = mem[_1227 + ext_call.return_data[0]]
        mem[mem[64] + 68 len ceil32(_1278)] = mem[_1227 + ext_call.return_data[0] + 32 len ceil32(_1278)]
        if ceil32(_1278) > _1278:
            mem[mem[64] + _1278 + 68] = 0
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_1278) + 32]
    mem[0] = msg.sender
    mem[32] = sha3(address(arg1), 2)
    if not stor2[address(arg1)][address(msg.sender)]:
        revert with 0, 'ERC1155: transfer caller is not owner nor approved'
    idx = 0
    while idx < arg3.length:
        require idx < mem[96]
        _561 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg3.length) + 128]
        _567 = mem[(32 * idx) + (32 * arg3.length) + 160]
        _568 = mem[64]
        mem[64] = mem[64] + 96
        mem[_568] = 42
        mem[_568 + 32 len 42] = 0xfe455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
        mem[32] = sha3(_561, 1)
        if _567 <= balanceOf[_561][address(arg1)]:
            balanceOf[_561][address(arg1)] -= _567
            if balanceOf[_561][address(arg2)] + _567 < balanceOf[_561][address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg2
            mem[32] = sha3(_561, 1)
            balanceOf[_561][address(arg2)] += _567
            idx = idx + 1
            continue 
        _574 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 42
        idx = 0
        while idx < 42:
            mem[_574 + idx + 68] = mem[_568 + idx + 32]
            idx = idx + 32
            continue 
        mem[_574 + 110] = 0
        revert with memory
          from mem[64]
           len _574 + -mem[64] + 132
    _557 = mem[64]
    mem[mem[64]] = 64
    _572 = mem[96]
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    _730 = mem[(32 * arg3.length) + 128]
    mem[_557 + (32 * mem[96]) + 96] = mem[(32 * arg3.length) + 128]
    mem[_557 + (32 * _572) + 128 len 32 * _730] = mem[(32 * arg3.length) + 160 len 32 * _730]
    emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                       mem[mem[64] len _557 + (32 * _572) + (32 * _730) + -mem[64] + 128],
                       msg.sender,
                       arg1,
                       arg2,
    if ext_code.size(arg2) <= 0:
    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68] = 160
    _864 = mem[96]
    mem[mem[64] + 164] = mem[96]
    mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 100] = (32 * mem[96]) + 192
    _982 = mem[(32 * arg3.length) + 128]
    mem[mem[64] + (32 * mem[96]) + 196] = mem[(32 * arg3.length) + 128]
    mem[mem[64] + (32 * mem[96]) + 228 len 32 * _982] = mem[(32 * arg3.length) + 160 len 32 * _982]
    mem[mem[64] + 132] = (32 * mem[96]) + (32 * _982) + 224
    _1096 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    mem[mem[64] + (32 * mem[96]) + (32 * _982) + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    mem[mem[64] + (32 * _864) + (32 * _982) + 260 len ceil32(_1096)] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(_1096)]
    if ceil32(_1096) <= _1096:
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _864) + (32 * _982) + 224, mem[mem[64] + 164 len (32 * _864) + (32 * _982) + ceil32(_1096) + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _1210 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1210] == Mask(32, 224, mem[_1210])
            if Mask(32, 224, mem[_1210]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
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
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1274 = mem[_1223 + ext_call.return_data[0]]
        mem[mem[64] + 36] = mem[_1223 + ext_call.return_data[0]]
        mem[mem[64] + 68 len ceil32(_1274)] = mem[_1223 + ext_call.return_data[0] + 32 len ceil32(_1274)]
        if ceil32(_1274) > _1274:
            mem[mem[64] + _1274 + 68] = 0
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_1274) + 32]
    mem[mem[64] + (32 * _864) + (32 * _982) + _1096 + 260] = 0
    require ext_code.size(arg2)
    call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _864) + (32 * _982) + 224, mem[mem[64] + 164 len (32 * _864) + (32 * _982) + ceil32(_1096) + 96]
    mem[mem[64]] = ext_call.return_data[0]
    if ext_call.success:
        _1212 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1212] == Mask(32, 224, mem[_1212])
        if Mask(32, 224, mem[_1212]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    _1231 = mem[64]
    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
    if not _1231 + ext_call.return_data[0]:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    _1266 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _1281 = mem[_1231 + ext_call.return_data[0]]
    mem[mem[64] + 36] = mem[_1231 + ext_call.return_data[0]]
    mem[mem[64] + 68 len ceil32(_1281)] = mem[_1231 + ext_call.return_data[0] + 32 len ceil32(_1281)]
    if ceil32(_1281) <= _1281:
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_1281) + 32]
    mem[mem[64] + _1281 + 68] = 0
    revert with memory
      from mem[64]
       len _1266 + ceil32(_1281) + -mem[64] + 68
}



}
