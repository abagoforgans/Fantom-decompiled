contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct members;
mapping of address membersList;
mapping of address memberChild;
uint256 lastMember;
uint256 totalEarn;

function members(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(members[arg1].field_0), 
           members[arg1].field_256,
           members[arg1].field_512,
           members[arg1].field_768,
           members[arg1].field_1024,
           members[arg1].field_1280
}

function membersList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return membersList[arg1]
}

function lastMember() payable {
    return lastMember
}

function getSponsor(address arg1) payable {
    require calldata.size - 4 >= 32
    return membersList[stor1[address(arg1)].field_512]
}

function owner() payable {
    return owner
}

function isMember(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(members[address(arg1)].field_0)
}

function memberChild(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return memberChild[arg1][arg2]
}

function totalEarn() payable {
    return totalEarn
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateEarn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not members[address(arg1)].field_0:
        revert with 0, '!member'
    if arg2 + members[address(arg1)].field_1024 < members[address(arg1)].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    members[address(arg1)].field_1024 += arg2
    if arg2 + totalEarn < totalEarn:
        revert with 0, 'SafeMath: addition overflow'
    totalEarn += arg2
}

function addMember(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if lastMember:
        if not members[address(arg2)].field_0:
            revert with 0, 'Sponsor not exist'
    members[address(arg1)].field_0 = 1
    members[address(arg1)].field_256 = lastMember
    members[address(arg1)].field_512 = members[address(arg2)].field_256
    members[address(arg1)].field_768 = 0
    members[address(arg1)].field_1024 = 0
    members[address(arg1)].field_1280 = block.timestamp
    membersList[stor4] = arg1
    memberChild[stor1[address(arg2)].field_256][stor1[address(arg2)].field_768] = arg1
    members[address(arg2)].field_768++
    lastMember++
    emit eventNewUser(msg.sender, address(arg1), arg2);
}

function getListReferrals(address arg1) payable {
    require calldata.size - 4 >= 32
    require members[address(arg1)].field_768 <= test266151307()
    mem[96] = members[address(arg1)].field_768
    mem[64] = (32 * members[address(arg1)].field_768) + 128
    if not members[address(arg1)].field_768:
        if not members[address(arg1)].field_768:
            mem[(32 * members[address(arg1)].field_768) + 128] = 32
            mem[(32 * members[address(arg1)].field_768) + 160] = members[address(arg1)].field_768
            mem[(32 * members[address(arg1)].field_768) + 192 len floor32(members[address(arg1)].field_768)] = mem[128 len floor32(members[address(arg1)].field_768)]
            return memory
              from (32 * members[address(arg1)].field_768) + 128
               len (96 * members[address(arg1)].field_768) + 64
    else:
        mem[128 len 32 * members[address(arg1)].field_768] = call.data[calldata.size len 32 * members[address(arg1)].field_768]
        if not members[address(arg1)].field_768:
            mem[(32 * members[address(arg1)].field_768) + 128] = 32
            mem[(32 * members[address(arg1)].field_768) + 160] = members[address(arg1)].field_768
            mem[(32 * members[address(arg1)].field_768) + 192 len floor32(members[address(arg1)].field_768)] = call.data[calldata.size len floor32(members[address(arg1)].field_768)]
            return memory
              from (32 * members[address(arg1)].field_768) + 128
               len (96 * members[address(arg1)].field_768) + 64
    ('bool', ('field', 768, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'members', 1)))))
    mem[0] = arg1
    mem[32] = 1
    idx = 0
    while idx < members[address(arg1)].field_768:
        if not memberChild[stor1[address(arg1)].field_256][idx]:
            mem[(32 * members[address(arg1)].field_768) + 128] = 32
            mem[(32 * members[address(arg1)].field_768) + 160] = members[address(arg1)].field_768
            idx = 0
            while idx < 32 * members[address(arg1)].field_768:
                mem[idx + (32 * members[address(arg1)].field_768) + 192] = mem[idx + 128]
                mem[0] = arg1
                mem[32] = 1
                idx = idx + 32
                continue 
            return memory
              from (32 * members[address(arg1)].field_768) + 128
               len (96 * members[address(arg1)].field_768) + 64
        require idx < members[address(arg1)].field_768
        mem[(32 * idx) + 128] = memberChild[stor1[address(arg1)].field_256][idx]
        mem[0] = arg1
        mem[32] = 1
        idx = idx + 1
        continue 
    mem[(32 * members[address(arg1)].field_768) + 192 len floor32(members[address(arg1)].field_768)] = mem[128 len floor32(members[address(arg1)].field_768)]
    return Array(len=members[address(arg1)].field_768, data=mem[128 len floor32(members[address(arg1)].field_768)], mem[(32 * members[address(arg1)].field_768) + floor32(members[address(arg1)].field_768) + 192 len (32 * members[address(arg1)].field_768) - floor32(members[address(arg1)].field_768)]), 
}



}
