contract main {




// =====================  Runtime code  =====================


#
#  - sub_1c62094c(?)
#
address owner;
uint256 name;
address sub_e13b7f5cAddress;
address burnAddress;
uint256 joinFee;
uint256 sub_d2adbe79;
array of struct sub_cf41a724;
mapping of uint256 sub_0324acc4;

function sub_0324acc4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_0324acc4[arg1]
}

function name() payable {
    return name
}

function burnAddress() payable {
    return burnAddress
}

function owner() payable {
    return owner
}

function sub_cf41a724(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_cf41a724.length
    return sub_cf41a724[arg1].field_0
}

function sub_d2adbe79(?) payable {
    return sub_d2adbe79
}

function sub_e13b7f5c(?) payable {
    return sub_e13b7f5cAddress
}

function joinFee() payable {
    return joinFee
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

function sub_3d659705(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AuraSwapProfile::updateJoinFee: Fee must be greater than 0'
    joinFee = arg1
    emit 0x9d2026a9: arg1, msg.sender
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

function sub_b2137033(?) payable {
    mem[64] = (32 * sub_cf41a724.length) + 128
    mem[96] = sub_cf41a724.length
    if not sub_cf41a724.length:
        mem[(32 * sub_cf41a724.length) + 128] = 32
        mem[(32 * sub_cf41a724.length) + 160] = sub_cf41a724.length
        idx = 0
        s = (32 * sub_cf41a724.length) + 192
        t = 128
        while idx < sub_cf41a724.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_cf41a724.length) + 128
           len (96 * sub_cf41a724.length) + 64
    mem[128] = address(sub_cf41a724.field_0)
    idx = 128
    s = 0
    while (32 * sub_cf41a724.length) + 96 > idx:
        mem[idx + 32] = sub_cf41a724[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_cf41a724.length) + 128] = 32
    mem[(32 * sub_cf41a724.length) + 160] = sub_cf41a724.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_cf41a724.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_cf41a724.length) + -mem[64] + 192
}



}
