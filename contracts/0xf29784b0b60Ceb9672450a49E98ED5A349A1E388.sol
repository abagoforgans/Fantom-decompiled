contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
uint256 stor7;
mapping of uint256 inviteOf;
mapping of uint8 permissionsOf;
uint256 stor10;
uint256 currentEpochId;
mapping of address currentEpoch;
uint256 minimumVouches;
mapping of uint256 vouchesOf;
mapping of uint8 stor15;
array of struct stor16;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function permissionsOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return permissionsOf[stor8[address(arg1)]]
}

function inviteOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return inviteOf[address(arg1)]
}

function vouchesOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return vouchesOf[address(arg1)]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function currentEpochAddress() payable {
    return currentEpoch[stor11]
}

function minimumVouches() payable {
    return minimumVouches
}

function epochAddress(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return currentEpoch[arg1]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function currentEpochId() payable {
    return currentEpochId
}

function _fallback() payable {
    revert
}

function totalSupply() payable {
    if stor7 < stor10:
        revert with 0, 17
    return (stor7 - stor10)
}

function membersCount() payable {
    if stor7 < stor10:
        revert with 0, 17
    return (stor7 - stor10)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMinimumVouches(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minimumVouches = arg1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
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

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function edit(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg1)] < 1:
        revert with 0, 'recipient is not invited.'
    if not arg2:
        revert with 0, 'call revoke to remove user.'
    if not bool(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'permissions must contain at least 'PARTICIPANT'.'
    permissionsOf[stor8[address(arg1)]] = arg2
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function vouch(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(msg.sender)] < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'method can only be called by an invited user.'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg1)]:
        revert with 0, 'recipient is already invited.'
    if stor15[msg.sender][address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender already vouched for recipient.'
    if vouchesOf[address(arg1)] > -2:
        revert with 0, 17
    vouchesOf[address(arg1)]++
    stor15[msg.sender][address(arg1)] = 1
    emit VouchCreated(arg1, msg.sender);
}

function startEpoch(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if currentEpochId > 0:
        require ext_code.size(currentEpoch[stor11])
        staticcall currentEpoch[stor11].ended() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'another epoch is already in progress.'
    if block.number >= arg2:
        revert with 0, 'end block must be in the future.'
    currentEpochId++
    create contract with 0 wei
                    code: code.data[10408 len 6906], arg1, arg2
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    currentEpoch[stor11] = address(create.new_address)
    emit EpochCreated(address(create.new_address), arg2, currentEpochId);
    return address(create.new_address)
}

function leaveCurrentEpoch() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(msg.sender)] < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'method can only be called by an invited user.'
    if currentEpochId <= 0:
        revert with 0, 'no epoch currently in progress.'
    require ext_code.size(currentEpoch[stor11])
    staticcall currentEpoch[stor11].ended() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'no epoch currently in progress.'
    require ext_code.size(currentEpoch[stor11])
    call currentEpoch[stor11].removeParticipant(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function joinCurrentEpoch() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(msg.sender)] < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'method can only be called by an invited user.'
    if currentEpochId <= 0:
        revert with 0, 'no epoch currently in progress.'
    require ext_code.size(currentEpoch[stor11])
    staticcall currentEpoch[stor11].ended() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'no epoch currently in progress.'
    require ext_code.size(currentEpoch[stor11])
    call currentEpoch[stor11].addParticipant(address rg1, uint8 rg2) with:
         gas gas_remaining wei
        args msg.sender, permissionsOf[stor8[msg.sender]]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function revoke(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg1)] < 1:
        revert with 0, 'recipient is not invited.'
    if not ownerOf[stor8[address(arg1)]]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    inviteOf[stor2[inviteOf[address(arg1)]]] = 0
    inviteOf[0] = inviteOf[address(arg1)]
    stor10++
    approved[stor8[address(arg1)]] = 0
    if not ownerOf[stor8[address(arg1)]]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[stor8[address(arg1)]], 0, inviteOf[address(arg1)]);
    if balanceOf[stor2[stor8[address(arg1)]]] < 1:
        revert with 0, 17
    balanceOf[stor2[stor8[address(arg1)]]]--
    ownerOf[stor8[address(arg1)]] = 0
    emit Transfer(ownerOf[stor8[address(arg1)]], 0, inviteOf[address(arg1)]);
    permissionsOf[stor8[address(arg1)]] = 0
    inviteOf[address(arg1)] = 0
    emit InviteRevoked(arg1);
}

function members() payable {
    if stor7 < stor10:
        revert with 0, 17
    if stor7 - stor10 > test266151307():
        revert with 0, 65
    mem[96] = stor7 - stor10
    mem[64] = (32 * stor7 - stor10) + 128
    if stor7 - stor10:
        mem[128 len 32 * stor7 - stor10] = call.data[calldata.size len 32 * stor7 - stor10]
    idx = 1
    s = 0
    while idx <= stor7:
        mem[0] = idx
        mem[32] = 2
        if not ownerOf[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 2
        if not ownerOf[idx]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if s == -1:
            revert with 0, 17
        if s >= stor7 - stor10:
            revert with 0, 50
        mem[(32 * s) + 128] = ownerOf[idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * stor7 - stor10) + 128] = 32
    mem[(32 * stor7 - stor10) + 160] = stor7 - stor10
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor7 - stor10:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor7 - stor10) + -mem[64] + 192
}

function invite(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg1)]:
        revert with 0, 'recipient is already invited.'
    vouchesOf[address(arg1)] = minimumVouches
    stor7++
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if not arg1:
        inviteOf[0] = 0
        inviteOf[arg1] = stor7
        stor10++
    else:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[address(arg1)]:
            revert with 0, 'recipient is already invited.'
        if not arg1:
            inviteOf[0] = 0
            inviteOf[arg1] = stor7
            stor10++
        else:
            if vouchesOf[address(arg1)] < minimumVouches:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'recipient didn't receive minimum vouches.'
            inviteOf[0] = 0
            inviteOf[arg1] = stor7
            if not arg1:
                stor10++
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor7] = arg1
    emit Transfer(0, arg1, stor7);
    permissionsOf[stor7] = 1
    inviteOf[address(arg1)] = stor7
    vouchesOf[address(arg1)] = 0
    emit InviteIssued(1, arg1);
}

function enter() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(msg.sender)]:
        revert with 0, 'sender is already invited.'
    if vouchesOf[msg.sender] < minimumVouches:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender didn't receive minimum vouches.'
    stor7++
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if not msg.sender:
        inviteOf[0] = 0
        inviteOf[msg.sender] = stor7
        stor10++
    else:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[address(msg.sender)]:
            revert with 0, 'recipient is already invited.'
        if not msg.sender:
            inviteOf[0] = 0
            inviteOf[msg.sender] = stor7
            stor10++
        else:
            if vouchesOf[address(msg.sender)] < minimumVouches:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'recipient didn't receive minimum vouches.'
            inviteOf[0] = 0
            inviteOf[msg.sender] = stor7
            if not msg.sender:
                stor10++
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor7] = msg.sender
    emit Transfer(0, msg.sender, stor7);
    permissionsOf[stor7] = 1
    inviteOf[address(msg.sender)] = stor7
    vouchesOf[address(msg.sender)] = 0
    emit InviteIssued(1, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg2)]:
        revert with 0, 'recipient is already invited.'
    if not arg2:
        inviteOf[address(arg1)] = 0
        inviteOf[arg2] = arg3
        stor10++
    else:
        if vouchesOf[address(arg2)] < minimumVouches:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'recipient didn't receive minimum vouches.'
        inviteOf[address(arg1)] = 0
        inviteOf[arg2] = arg3
        if not arg2:
            stor10++
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg2:
        revert with 0, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg2)]:
        revert with 0, 'recipient is already invited.'
    if not arg2:
        inviteOf[address(arg1)] = 0
        inviteOf[arg2] = arg3
        stor10++
    else:
        if vouchesOf[address(arg2)] < minimumVouches:
            revert with 0, 'recipient didn't receive minimum vouches.'
        inviteOf[address(arg1)] = 0
        inviteOf[arg2] = arg3
        if not arg2:
            stor10++
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg2:
        revert with 0, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg2)]:
        revert with 0, 'recipient is already invited.'
    if not arg2:
        inviteOf[address(arg1)] = 0
        inviteOf[arg2] = arg3
        stor10++
    else:
        if vouchesOf[address(arg2)] < minimumVouches:
            revert with 0, 'recipient didn't receive minimum vouches.'
        inviteOf[address(arg1)] = 0
        inviteOf[arg2] = arg3
        if not arg2:
            stor10++
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function name() payable {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() payable {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        mem[96] = stor16.length.field_1
        if bool(stor16.length):
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 0, 34
            if not stor16.length.field_1:
                if stor16.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                    mem[mem[ceil32(stor16.length.field_1) + 192] + ceil32(stor16.length.field_1) + stor16.length.field_1 + 289] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 0, 65
                mem[ceil32(stor16.length.field_1) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                        mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                        if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                            _3686 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3686)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3686)]
                            if ceil32(_3686) > _3686:
                                mem[_3686 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                            return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3686) + 32], 
                        _3687 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3687)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3687)]
                        if ceil32(_3687) > _3687:
                            mem[_3687 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3687) + 32], 
                    mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + ceil32(s) + 192] = 0
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        _3688 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3688)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3688)]
                        if ceil32(_3688) > _3688:
                            mem[_3688 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3688) + 32], 
                    _3689 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3689)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3689)]
                    if ceil32(_3689) > _3689:
                        mem[_3689 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3689) + 32], 
                mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        _3690 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3690)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3690)]
                        if ceil32(_3690) > _3690:
                            mem[_3690 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3690) + 32], 
                    _3691 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3691)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3691)]
                    if ceil32(_3691) > _3691:
                        mem[_3691 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3691) + 32], 
                mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3692 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3692)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3692)]
                    if ceil32(_3692) > _3692:
                        mem[_3692 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3692) + 32], 
                _3693 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3693)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3693)]
                if ceil32(_3693) > _3693:
                    mem[_3693 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3693) + 32], 
            if 31 >= stor16.length.field_1:
                mem[128] = 256 * stor16.length.field_8
                if stor16.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                    mem[mem[ceil32(stor16.length.field_1) + 192] + ceil32(stor16.length.field_1) + stor16.length.field_1 + 289] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 0, 65
                mem[ceil32(stor16.length.field_1) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                        mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                        if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                            _3694 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3694)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3694)]
                            if ceil32(_3694) > _3694:
                                mem[_3694 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                            return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3694) + 32], 
                        _3695 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3695)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3695)]
                        if ceil32(_3695) > _3695:
                            mem[_3695 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3695) + 32], 
                    mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + ceil32(s) + 192] = 0
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        _3696 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3696)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3696)]
                        if ceil32(_3696) > _3696:
                            mem[_3696 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3696) + 32], 
                    _3697 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3697)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3697)]
                    if ceil32(_3697) > _3697:
                        mem[_3697 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3697) + 32], 
                mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        _3698 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3698)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3698)]
                        if ceil32(_3698) > _3698:
                            mem[_3698 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3698) + 32], 
                    _3699 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3699)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3699)]
                    if ceil32(_3699) > _3699:
                        mem[_3699 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3699) + 32], 
                mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3700 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3700)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3700)]
                    if ceil32(_3700) > _3700:
                        mem[_3700 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3700) + 32], 
                _3701 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3701)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3701)]
                if ceil32(_3701) > _3701:
                    mem[_3701 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3701) + 32], 
            mem[0] = 16
            mem[128] = uint256(stor16.field_0)
            idx = 128
            s = 0
            while stor16.length.field_1 + 96 > idx:
                mem[idx + 32] = stor16[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if stor16.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                mem[mem[ceil32(stor16.length.field_1) + 192] + ceil32(stor16.length.field_1) + stor16.length.field_1 + 289] = 0
                return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor16.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                        _4406 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4406)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4406)]
                        if ceil32(_4406) > _4406:
                            mem[_4406 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4406) + 32], 
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                    mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                    _4407 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4407)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4407)]
                    if ceil32(_4407) > _4407:
                        mem[_4407 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4407) + 32], 
                mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                    _4408 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4408)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4408)]
                    if ceil32(_4408) > _4408:
                        mem[_4408 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4408) + 32], 
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                _4409 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4409)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4409)]
                if ceil32(_4409) > _4409:
                    mem[_4409 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4409) + 32], 
            mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                    _4410 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4410)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4410)]
                    if ceil32(_4410) > _4410:
                        mem[_4410 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4410) + 32], 
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                _4411 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4411)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4411)]
                if ceil32(_4411) > _4411:
                    mem[_4411 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4411) + 32], 
            mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                _4412 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4412)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4412)]
                if ceil32(_4412) > _4412:
                    mem[_4412 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4412) + 32], 
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
            _4413 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4413)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4413)]
            if ceil32(_4413) > _4413:
                mem[_4413 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4413) + 32], 
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        if not stor16.length.field_1:
            if stor16.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                mem[mem[ceil32(stor16.length.field_1) + 192] + ceil32(stor16.length.field_1) + stor16.length.field_1 + 289] = 0
                return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor16.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        _3702 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3702)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3702)]
                        if ceil32(_3702) > _3702:
                            mem[_3702 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3702) + 32], 
                    _3703 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3703)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3703)]
                    if ceil32(_3703) > _3703:
                        mem[_3703 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3703) + 32], 
                mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3704 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3704)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3704)]
                    if ceil32(_3704) > _3704:
                        mem[_3704 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3704) + 32], 
                _3705 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3705)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3705)]
                if ceil32(_3705) > _3705:
                    mem[_3705 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3705) + 32], 
            mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3706 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3706)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3706)]
                    if ceil32(_3706) > _3706:
                        mem[_3706 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3706) + 32], 
                _3707 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3707)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3707)]
                if ceil32(_3707) > _3707:
                    mem[_3707 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3707) + 32], 
            mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _3708 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3708)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3708)]
                if ceil32(_3708) > _3708:
                    mem[_3708 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3708) + 32], 
            _3709 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3709)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3709)]
            if ceil32(_3709) > _3709:
                mem[_3709 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3709) + 32], 
        if 31 >= stor16.length.field_1:
            mem[128] = 256 * stor16.length.field_8
            if stor16.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                mem[mem[ceil32(stor16.length.field_1) + 192] + ceil32(stor16.length.field_1) + stor16.length.field_1 + 289] = 0
                return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor16.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        _3710 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3710)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3710)]
                        if ceil32(_3710) > _3710:
                            mem[_3710 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3710) + 32], 
                    _3711 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3711)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3711)]
                    if ceil32(_3711) > _3711:
                        mem[_3711 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3711) + 32], 
                mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3712 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3712)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3712)]
                    if ceil32(_3712) > _3712:
                        mem[_3712 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3712) + 32], 
                _3713 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3713)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3713)]
                if ceil32(_3713) > _3713:
                    mem[_3713 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3713) + 32], 
            mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3714 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3714)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3714)]
                    if ceil32(_3714) > _3714:
                        mem[_3714 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3714) + 32], 
                _3715 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3715)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3715)]
                if ceil32(_3715) > _3715:
                    mem[_3715 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3715) + 32], 
            mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _3716 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3716)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3716)]
                if ceil32(_3716) > _3716:
                    mem[_3716 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3716) + 32], 
            _3717 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3717)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3717)]
            if ceil32(_3717) > _3717:
                mem[_3717 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3717) + 32], 
        mem[0] = 16
        mem[128] = uint256(stor16.field_0)
        idx = 128
        s = 0
        while stor16.length.field_1 + 96 > idx:
            mem[idx + 32] = stor16[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor16.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
            mem[mem[ceil32(stor16.length.field_1) + 192] + ceil32(stor16.length.field_1) + stor16.length.field_1 + 289] = 0
            return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor16.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                    _4414 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4414)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4414)]
                    if ceil32(_4414) > _4414:
                        mem[_4414 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4414) + 32], 
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                _4415 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4415)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4415)]
                if ceil32(_4415) > _4415:
                    mem[_4415 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4415) + 32], 
            mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                _4416 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4416)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4416)]
                if ceil32(_4416) > _4416:
                    mem[_4416 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4416) + 32], 
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
            _4417 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4417)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4417)]
            if ceil32(_4417) > _4417:
                mem[_4417 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4417) + 32], 
        mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        if ceil32(stor16.length.field_1) <= stor16.length.field_1:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                _4418 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4418)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4418)]
                if ceil32(_4418) > _4418:
                    mem[_4418 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4418) + 32], 
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
            _4419 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4419)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4419)]
            if ceil32(_4419) > _4419:
                mem[_4419 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4419) + 32], 
        mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
            mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
            _4420 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4420)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4420)]
            if ceil32(_4420) > _4420:
                mem[_4420 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4420) + 32], 
        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
        mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
        _4421 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4421)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4421)]
        if ceil32(_4421) > _4421:
            mem[_4421 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4421) + 32], 
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 0, 34
    mem[96] = stor16.length.field_1
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        if not stor16.length.field_1:
            if stor16.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                mem[mem[ceil32(stor16.length.field_1) + 192] + ceil32(stor16.length.field_1) + stor16.length.field_1 + 289] = 0
                return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor16.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        _3718 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3718)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3718)]
                        if ceil32(_3718) > _3718:
                            mem[_3718 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3718) + 32], 
                    _3719 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3719)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3719)]
                    if ceil32(_3719) > _3719:
                        mem[_3719 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3719) + 32], 
                mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3720 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3720)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3720)]
                    if ceil32(_3720) > _3720:
                        mem[_3720 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3720) + 32], 
                _3721 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3721)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3721)]
                if ceil32(_3721) > _3721:
                    mem[_3721 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3721) + 32], 
            mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3722 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3722)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3722)]
                    if ceil32(_3722) > _3722:
                        mem[_3722 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3722) + 32], 
                _3723 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3723)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3723)]
                if ceil32(_3723) > _3723:
                    mem[_3723 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3723) + 32], 
            mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _3724 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3724)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3724)]
                if ceil32(_3724) > _3724:
                    mem[_3724 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3724) + 32], 
            _3725 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3725)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3725)]
            if ceil32(_3725) > _3725:
                mem[_3725 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3725) + 32], 
        if 31 >= stor16.length.field_1:
            mem[128] = 256 * stor16.length.field_8
            if stor16.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                mem[mem[ceil32(stor16.length.field_1) + 192] + ceil32(stor16.length.field_1) + stor16.length.field_1 + 289] = 0
                return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor16.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        _3726 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3726)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3726)]
                        if ceil32(_3726) > _3726:
                            mem[_3726 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3726) + 32], 
                    _3727 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3727)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3727)]
                    if ceil32(_3727) > _3727:
                        mem[_3727 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3727) + 32], 
                mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3728 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3728)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3728)]
                    if ceil32(_3728) > _3728:
                        mem[_3728 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3728) + 32], 
                _3729 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3729)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3729)]
                if ceil32(_3729) > _3729:
                    mem[_3729 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3729) + 32], 
            mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3730 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3730)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3730)]
                    if ceil32(_3730) > _3730:
                        mem[_3730 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3730) + 32], 
                _3731 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3731)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3731)]
                if ceil32(_3731) > _3731:
                    mem[_3731 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3731) + 32], 
            mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _3732 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3732)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3732)]
                if ceil32(_3732) > _3732:
                    mem[_3732 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3732) + 32], 
            _3733 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3733)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3733)]
            if ceil32(_3733) > _3733:
                mem[_3733 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3733) + 32], 
        mem[0] = 16
        mem[128] = uint256(stor16.field_0)
        idx = 128
        s = 0
        while stor16.length.field_1 + 96 > idx:
            mem[idx + 32] = stor16[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor16.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
            mem[mem[ceil32(stor16.length.field_1) + 192] + ceil32(stor16.length.field_1) + stor16.length.field_1 + 289] = 0
            return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor16.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                    _4422 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4422)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4422)]
                    if ceil32(_4422) > _4422:
                        mem[_4422 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4422) + 32], 
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                _4423 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4423)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4423)]
                if ceil32(_4423) > _4423:
                    mem[_4423 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4423) + 32], 
            mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                _4424 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4424)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4424)]
                if ceil32(_4424) > _4424:
                    mem[_4424 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4424) + 32], 
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
            _4425 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4425)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4425)]
            if ceil32(_4425) > _4425:
                mem[_4425 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4425) + 32], 
        mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        if ceil32(stor16.length.field_1) <= stor16.length.field_1:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                _4426 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4426)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4426)]
                if ceil32(_4426) > _4426:
                    mem[_4426 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4426) + 32], 
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
            _4427 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4427)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4427)]
            if ceil32(_4427) > _4427:
                mem[_4427 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4427) + 32], 
        mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
            mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
            _4428 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4428)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4428)]
            if ceil32(_4428) > _4428:
                mem[_4428 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4428) + 32], 
        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
        mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
        _4429 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4429)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4429)]
        if ceil32(_4429) > _4429:
            mem[_4429 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4429) + 32], 
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 0, 34
    if not stor16.length.field_1:
        if stor16.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
            mem[mem[ceil32(stor16.length.field_1) + 192] + ceil32(stor16.length.field_1) + stor16.length.field_1 + 289] = 0
            return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor16.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3734 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3734)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3734)]
                    if ceil32(_3734) > _3734:
                        mem[_3734 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3734) + 32], 
                _3735 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3735)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3735)]
                if ceil32(_3735) > _3735:
                    mem[_3735 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3735) + 32], 
            mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _3736 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3736)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3736)]
                if ceil32(_3736) > _3736:
                    mem[_3736 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3736) + 32], 
            _3737 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3737)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3737)]
            if ceil32(_3737) > _3737:
                mem[_3737 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3737) + 32], 
        mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        if ceil32(stor16.length.field_1) <= stor16.length.field_1:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _3738 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3738)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3738)]
                if ceil32(_3738) > _3738:
                    mem[_3738 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3738) + 32], 
            _3739 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3739)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3739)]
            if ceil32(_3739) > _3739:
                mem[_3739 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3739) + 32], 
        mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
            _3740 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3740)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3740)]
            if ceil32(_3740) > _3740:
                mem[_3740 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3740) + 32], 
        _3741 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3741)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3741)]
        if ceil32(_3741) > _3741:
            mem[_3741 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3741) + 32], 
    if 31 >= stor16.length.field_1:
        mem[128] = 256 * stor16.length.field_8
        if stor16.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
            mem[mem[ceil32(stor16.length.field_1) + 192] + ceil32(stor16.length.field_1) + stor16.length.field_1 + 289] = 0
            return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor16.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3742 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3742)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3742)]
                    if ceil32(_3742) > _3742:
                        mem[_3742 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3742) + 32], 
                _3743 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3743)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3743)]
                if ceil32(_3743) > _3743:
                    mem[_3743 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3743) + 32], 
            mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _3744 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3744)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3744)]
                if ceil32(_3744) > _3744:
                    mem[_3744 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3744) + 32], 
            _3745 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3745)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3745)]
            if ceil32(_3745) > _3745:
                mem[_3745 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3745) + 32], 
        mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        if ceil32(stor16.length.field_1) <= stor16.length.field_1:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _3746 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3746)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3746)]
                if ceil32(_3746) > _3746:
                    mem[_3746 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3746) + 32], 
            _3747 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3747)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3747)]
            if ceil32(_3747) > _3747:
                mem[_3747 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3747) + 32], 
        mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
            _3748 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3748)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3748)]
            if ceil32(_3748) > _3748:
                mem[_3748 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3748) + 32], 
        _3749 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_3749)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3749)]
        if ceil32(_3749) > _3749:
            mem[_3749 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_3749) + 32], 
    mem[0] = 16
    mem[128] = uint256(stor16.field_0)
    idx = 128
    s = 0
    while stor16.length.field_1 + 96 > idx:
        mem[idx + 32] = stor16[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor16.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
            return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
        mem[mem[ceil32(stor16.length.field_1) + 192] + ceil32(stor16.length.field_1) + stor16.length.field_1 + 289] = 0
        return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[ceil32(stor16.length.field_1) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        if ceil32(stor16.length.field_1) <= stor16.length.field_1:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
                _4430 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4430)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4430)]
                if ceil32(_4430) > _4430:
                    mem[_4430 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4430) + 32], 
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
            _4431 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4431)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4431)]
            if ceil32(_4431) > _4431:
                mem[_4431 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4431) + 32], 
        mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
            mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
            _4432 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4432)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4432)]
            if ceil32(_4432) > _4432:
                mem[_4432 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4432) + 32], 
        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
        mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
        _4433 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4433)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4433)]
        if ceil32(_4433) > _4433:
            mem[_4433 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4433) + 32], 
    mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
            revert with 0, 50
        mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
    if ceil32(stor16.length.field_1) <= stor16.length.field_1:
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
            mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
            _4434 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4434)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4434)]
            if ceil32(_4434) > _4434:
                mem[_4434 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4434) + 32], 
        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
        mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
        _4435 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4435)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4435)]
        if ceil32(_4435) > _4435:
            mem[_4435 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4435) + 32], 
    mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + ceil32(s) + 192] = 0
    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
        mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
        _4436 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4436)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4436)]
        if ceil32(_4436) > _4436:
            mem[_4436 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4436) + 32], 
    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
    mem[64] = mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192
    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 32
    _4437 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
    mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256 len ceil32(_4437)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4437)]
    if ceil32(_4437) > _4437:
        mem[_4437 + mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 256] = 0
    return 32, mem[mem[ceil32(stor16.length.field_1) + 128] + ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 224 len ceil32(_4437) + 32], 
}



}
