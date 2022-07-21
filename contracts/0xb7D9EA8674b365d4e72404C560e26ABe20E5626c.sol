contract main {




// =====================  Runtime code  =====================


#
#  - sub_cdc6e49a(?)
#
address owner;
mapping of struct sub_c0788555;
mapping of address stor2;
mapping of uint256 sub_42e618da;
array of struct sub_0fb4d2e5;
mapping of uint8 userInfo;
mapping of uint256 stor6;
uint256 stor7;
mapping of uint256 stor8;
mapping of uint256 sub_f340efa7;
mapping of uint256 sub_42ac1a56;
mapping of uint256 sub_aecd770d;
uint256 currentPhase;
mapping of uint8 stor13;
mapping of uint256 sub_521a6a7d;
uint256 sub_e44c78e0;
uint256 stor16;

function currentPhase() payable {
    return currentPhase
}

function sub_0fb4d2e5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_0fb4d2e5.length
    return address(sub_0fb4d2e5[arg1].field_0), 
           sub_0fb4d2e5[arg1].field_512,
           sub_0fb4d2e5[arg1].field_1024,
           sub_0fb4d2e5[arg1].field_1792,
           sub_0fb4d2e5[arg1].field_2048,
           sub_0fb4d2e5[arg1].field_2304
}

function sub_42ac1a56(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sub_42ac1a56[arg1][arg2]
}

function sub_42e618da(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_42e618da[arg1]
}

function sub_521a6a7d(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sub_521a6a7d[arg1][arg2]
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return uint256(userInfo[arg1][arg2])
}

function sub_9aaf84e5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor13[arg1])
}

function sub_aecd770d(?) payable {
    require calldata.size - 4 >= 32
    return sub_aecd770d[arg1]
}

function sub_c0788555(?) payable {
    require calldata.size - 4 >= 32
    return sub_c0788555[arg1].field_0, sub_c0788555[arg1].field_256, sub_c0788555[arg1].field_512
}

function sub_e068cb1e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_c0788555[stor8[address(arg1)][arg2][1]].field_0, 
           sub_c0788555[stor8[address(arg1)][arg2][1]].field_256,
           sub_c0788555[stor8[address(arg1)][arg2][1]].field_512
}

function sub_e44c78e0(?) payable {
    return sub_e44c78e0
}

function collectionLength() payable {
    return sub_0fb4d2e5.length
}

function sub_f340efa7(?) payable {
    require calldata.size - 4 >= 32
    return sub_f340efa7[arg1]
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

function sub_3f9574af(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13[address(arg1)] = uint8(bool(arg2))
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

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Can't transfer ERC-721 token here without calling stake'
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function addCollection(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < sub_0fb4d2e5.length:
        mem[0] = 4
        if address(sub_0fb4d2e5[idx].field_0) == arg1:
            revert with 0, 'Collection already exists'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    sub_0fb4d2e5.length++
    if sub_0fb4d2e5.length >= sub_0fb4d2e5.length + 1:
        revert with 'NH{q', 50
    address(sub_0fb4d2e5[sub_0fb4d2e5.length].field_0) = arg1
    sub_0fb4d2e5[sub_0fb4d2e5.length].field_2304 = arg2
    stor[('name', 'sub_0fb4d2e5', 4) + (10 * sub_0fb4d2e5.length) + 1][stor12].field_0 = arg2
    if block.timestamp > sub_aecd770d[stor12]:
        sub_0fb4d2e5[sub_0fb4d2e5.length].field_512 = block.timestamp
    else:
        sub_0fb4d2e5[sub_0fb4d2e5.length].field_512 = sub_aecd770d[stor12]
    stor6[address(arg1)] = sub_0fb4d2e5.length
}

function emergencyWithdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < sub_0fb4d2e5.length:
        mem[0] = 4
        if address(sub_0fb4d2e5[idx].field_0) != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        require ext_code.size(arg1)
        if not stor2[stor6[address(arg1)]][arg2]:
            call arg1.0x42842e0e with:
                 gas gas_remaining wei
                args this.address, msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            call arg1.0x42842e0e with:
                 gas gas_remaining wei
                args this.address, stor2[stor6[address(arg1)]][arg2], arg2
            if not ext_call.success:
                require ext_code.size(arg1)
                call arg1.0x42842e0e with:
                     gas gas_remaining wei
                    args this.address, msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x42842e0e with:
         gas gas_remaining wei
        args this.address, msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function totalScore() payable {
    mem[64] = 96
    idx = 0
    s = sub_e44c78e0
    while idx < sub_0fb4d2e5.length:
        mem[0] = 4
        if block.timestamp <= sub_0fb4d2e5[idx].field_512:
            if sub_0fb4d2e5[idx].field_1024 and sub_0fb4d2e5[idx].field_1792 > -1 / sub_0fb4d2e5[idx].field_1024:
                revert with 'NH{q', 17
            if sub_0fb4d2e5[idx].field_1024 * sub_0fb4d2e5[idx].field_1792 < sub_0fb4d2e5[idx].field_2048:
                revert with 'NH{q', 17
            if s > !((sub_0fb4d2e5[idx].field_1024 * sub_0fb4d2e5[idx].field_1792) - sub_0fb4d2e5[idx].field_2048):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (sub_0fb4d2e5[idx].field_1024 * sub_0fb4d2e5[idx].field_1792) - sub_0fb4d2e5[idx].field_2048
            continue 
        if not sub_0fb4d2e5[idx].field_1024:
            if sub_0fb4d2e5[idx].field_1024 and sub_0fb4d2e5[idx].field_1792 > -1 / sub_0fb4d2e5[idx].field_1024:
                revert with 'NH{q', 17
            if sub_0fb4d2e5[idx].field_1024 * sub_0fb4d2e5[idx].field_1792 < sub_0fb4d2e5[idx].field_2048:
                revert with 'NH{q', 17
            if s > !((sub_0fb4d2e5[idx].field_1024 * sub_0fb4d2e5[idx].field_1792) - sub_0fb4d2e5[idx].field_2048):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (sub_0fb4d2e5[idx].field_1024 * sub_0fb4d2e5[idx].field_1792) - sub_0fb4d2e5[idx].field_2048
            continue 
        mem[0] = 0
        mem[32] = 11
        if block.timestamp < sub_aecd770d[0]:
            if False and sub_0fb4d2e5[idx].field_2304 > 0:
                revert with 'NH{q', 17
            if sub_0fb4d2e5[idx].field_1792 > -1:
                revert with 'NH{q', 17
            if sub_0fb4d2e5[idx].field_1024 and sub_0fb4d2e5[idx].field_1792 > -1 / sub_0fb4d2e5[idx].field_1024:
                revert with 'NH{q', 17
            if sub_0fb4d2e5[idx].field_1024 * sub_0fb4d2e5[idx].field_1792 < sub_0fb4d2e5[idx].field_2048:
                revert with 'NH{q', 17
            if s > !((sub_0fb4d2e5[idx].field_1024 * sub_0fb4d2e5[idx].field_1792) - sub_0fb4d2e5[idx].field_2048):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (sub_0fb4d2e5[idx].field_1024 * sub_0fb4d2e5[idx].field_1792) - sub_0fb4d2e5[idx].field_2048
            continue 
        if sub_0fb4d2e5[idx].field_512 > sub_aecd770d[0]:
            _19 = mem[64]
            mem[64] = mem[64] + 64
            mem[_19] = 23
            mem[_19 + 32] = 'Time calculation failed'
            if sub_0fb4d2e5[idx].field_512 <= block.timestamp:
                if block.timestamp - sub_0fb4d2e5[idx].field_512 and sub_0fb4d2e5[idx].field_2304 > -1 / block.timestamp - sub_0fb4d2e5[idx].field_512:
                    revert with 'NH{q', 17
                if sub_0fb4d2e5[idx].field_1792 > !((block.timestamp * sub_0fb4d2e5[idx].field_2304) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304)):
                    revert with 'NH{q', 17
                if sub_0fb4d2e5[idx].field_1024 and sub_0fb4d2e5[idx].field_1792 + (block.timestamp * sub_0fb4d2e5[idx].field_2304) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304) > -1 / sub_0fb4d2e5[idx].field_1024:
                    revert with 'NH{q', 17
                if (sub_0fb4d2e5[idx].field_1792 * sub_0fb4d2e5[idx].field_1024) + (block.timestamp * sub_0fb4d2e5[idx].field_2304 * sub_0fb4d2e5[idx].field_1024) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304 * sub_0fb4d2e5[idx].field_1024) < sub_0fb4d2e5[idx].field_2048:
                    revert with 'NH{q', 17
                if s > !((sub_0fb4d2e5[idx].field_1792 * sub_0fb4d2e5[idx].field_1024) + (block.timestamp * sub_0fb4d2e5[idx].field_2304 * sub_0fb4d2e5[idx].field_1024) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304 * sub_0fb4d2e5[idx].field_1024) - sub_0fb4d2e5[idx].field_2048):
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + (sub_0fb4d2e5[idx].field_1792 * sub_0fb4d2e5[idx].field_1024) + (block.timestamp * sub_0fb4d2e5[idx].field_2304 * sub_0fb4d2e5[idx].field_1024) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304 * sub_0fb4d2e5[idx].field_1024) - sub_0fb4d2e5[idx].field_2048
                continue 
            _21 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[idx + _21 + 68] = mem[idx + _19 + 32]
                idx = idx + 32
                continue 
            mem[_21 + 91] = 0
            revert with memory
              from mem[64]
               len _21 + -mem[64] + 100
        _20 = mem[64]
        mem[64] = mem[64] + 64
        mem[_20] = 23
        mem[_20 + 32] = 'Time calculation failed'
        if sub_aecd770d[0] <= block.timestamp:
            if block.timestamp - sub_aecd770d[0] and sub_0fb4d2e5[idx].field_2304 > -1 / block.timestamp - sub_aecd770d[0]:
                revert with 'NH{q', 17
            if sub_0fb4d2e5[idx].field_1792 > !((block.timestamp * sub_0fb4d2e5[idx].field_2304) - (sub_aecd770d[0] * sub_0fb4d2e5[idx].field_2304)):
                revert with 'NH{q', 17
            if sub_0fb4d2e5[idx].field_1024 and sub_0fb4d2e5[idx].field_1792 + (block.timestamp * sub_0fb4d2e5[idx].field_2304) - (sub_aecd770d[0] * sub_0fb4d2e5[idx].field_2304) > -1 / sub_0fb4d2e5[idx].field_1024:
                revert with 'NH{q', 17
            if (sub_0fb4d2e5[idx].field_1792 * sub_0fb4d2e5[idx].field_1024) + (block.timestamp * sub_0fb4d2e5[idx].field_2304 * sub_0fb4d2e5[idx].field_1024) - (sub_aecd770d[0] * sub_0fb4d2e5[idx].field_2304 * sub_0fb4d2e5[idx].field_1024) < sub_0fb4d2e5[idx].field_2048:
                revert with 'NH{q', 17
            if s > !((sub_0fb4d2e5[idx].field_1792 * sub_0fb4d2e5[idx].field_1024) + (block.timestamp * sub_0fb4d2e5[idx].field_2304 * sub_0fb4d2e5[idx].field_1024) - (sub_aecd770d[0] * sub_0fb4d2e5[idx].field_2304 * sub_0fb4d2e5[idx].field_1024) - sub_0fb4d2e5[idx].field_2048):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (sub_0fb4d2e5[idx].field_1792 * sub_0fb4d2e5[idx].field_1024) + (block.timestamp * sub_0fb4d2e5[idx].field_2304 * sub_0fb4d2e5[idx].field_1024) - (sub_aecd770d[0] * sub_0fb4d2e5[idx].field_2304 * sub_0fb4d2e5[idx].field_1024) - sub_0fb4d2e5[idx].field_2048
            continue 
        _22 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 23
        idx = 0
        while idx < 23:
            mem[idx + _22 + 68] = mem[idx + _20 + 32]
            idx = idx + 32
            continue 
        mem[_22 + 91] = 0
        revert with memory
          from mem[64]
           len _22 + -mem[64] + 100
    return s
}

function sub_38ee821b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = sha3(stor16, 14)
    idx = 0
    s = stor[sha3(mem[0 len 64])]
    while idx < sub_0fb4d2e5.length:
        if block.timestamp <= sub_0fb4d2e5[idx].field_512:
            mem[0] = stor16
            mem[32] = sha3(address(arg1), sha3(idx, 5)) + 4
            if uint256(userInfo[idx][address(arg1)]) and sub_0fb4d2e5[idx].field_1792 > -1 / uint256(userInfo[idx][address(arg1)]):
                revert with 'NH{q', 17
            if uint256(userInfo[idx][address(arg1)]) * sub_0fb4d2e5[idx].field_1792 < uint256(userInfo[idx][address(arg1)][4][stor16]):
                revert with 'NH{q', 17
            if s > !((uint256(userInfo[idx][address(arg1)]) * sub_0fb4d2e5[idx].field_1792) - uint256(userInfo[idx][address(arg1)][4][stor16])):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (uint256(userInfo[idx][address(arg1)]) * sub_0fb4d2e5[idx].field_1792) - uint256(userInfo[idx][address(arg1)][4][stor16])
            continue 
        if not uint256(userInfo[idx][address(arg1)]):
            mem[0] = stor16
            mem[32] = sha3(address(arg1), sha3(idx, 5)) + 4
            if uint256(userInfo[idx][address(arg1)]) and sub_0fb4d2e5[idx].field_1792 > -1 / uint256(userInfo[idx][address(arg1)]):
                revert with 'NH{q', 17
            if uint256(userInfo[idx][address(arg1)]) * sub_0fb4d2e5[idx].field_1792 < uint256(userInfo[idx][address(arg1)][4][stor16]):
                revert with 'NH{q', 17
            if s > !((uint256(userInfo[idx][address(arg1)]) * sub_0fb4d2e5[idx].field_1792) - uint256(userInfo[idx][address(arg1)][4][stor16])):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (uint256(userInfo[idx][address(arg1)]) * sub_0fb4d2e5[idx].field_1792) - uint256(userInfo[idx][address(arg1)][4][stor16])
            continue 
        mem[0] = 0
        mem[32] = 11
        if block.timestamp < sub_aecd770d[0]:
            if False and sub_0fb4d2e5[idx].field_2304 > 0:
                revert with 'NH{q', 17
            if sub_0fb4d2e5[idx].field_1792 > -1:
                revert with 'NH{q', 17
            mem[0] = stor16
            mem[32] = sha3(address(arg1), sha3(idx, 5)) + 4
            if uint256(userInfo[idx][address(arg1)]) and sub_0fb4d2e5[idx].field_1792 > -1 / uint256(userInfo[idx][address(arg1)]):
                revert with 'NH{q', 17
            if uint256(userInfo[idx][address(arg1)]) * sub_0fb4d2e5[idx].field_1792 < uint256(userInfo[idx][address(arg1)][4][stor16]):
                revert with 'NH{q', 17
            if s > !((uint256(userInfo[idx][address(arg1)]) * sub_0fb4d2e5[idx].field_1792) - uint256(userInfo[idx][address(arg1)][4][stor16])):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (uint256(userInfo[idx][address(arg1)]) * sub_0fb4d2e5[idx].field_1792) - uint256(userInfo[idx][address(arg1)][4][stor16])
            continue 
        if sub_0fb4d2e5[idx].field_512 > sub_aecd770d[0]:
            _33 = mem[64]
            mem[64] = mem[64] + 64
            mem[_33] = 23
            mem[_33 + 32] = 'Time calculation failed'
            if sub_0fb4d2e5[idx].field_512 > block.timestamp:
                _35 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _35 + 68] = mem[idx + _33 + 32]
                    idx = idx + 32
                    continue 
                mem[_35 + 91] = 0
                revert with memory
                  from mem[64]
                   len _35 + -mem[64] + 100
            if block.timestamp - sub_0fb4d2e5[idx].field_512 and sub_0fb4d2e5[idx].field_2304 > -1 / block.timestamp - sub_0fb4d2e5[idx].field_512:
                revert with 'NH{q', 17
            if sub_0fb4d2e5[idx].field_1792 > !((block.timestamp * sub_0fb4d2e5[idx].field_2304) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304)):
                revert with 'NH{q', 17
            mem[0] = stor16
            mem[32] = sha3(address(arg1), sha3(idx, 5)) + 4
            if uint256(userInfo[idx][address(arg1)]) and sub_0fb4d2e5[idx].field_1792 + (block.timestamp * sub_0fb4d2e5[idx].field_2304) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304) > -1 / uint256(userInfo[idx][address(arg1)]):
                revert with 'NH{q', 17
            if (sub_0fb4d2e5[idx].field_1792 * uint256(userInfo[idx][address(arg1)])) + (block.timestamp * sub_0fb4d2e5[idx].field_2304 * uint256(userInfo[idx][address(arg1)])) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304 * uint256(userInfo[idx][address(arg1)])) < uint256(userInfo[idx][address(arg1)][4][stor16]):
                revert with 'NH{q', 17
            if s > !((sub_0fb4d2e5[idx].field_1792 * uint256(userInfo[idx][address(arg1)])) + (block.timestamp * sub_0fb4d2e5[idx].field_2304 * uint256(userInfo[idx][address(arg1)])) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304 * uint256(userInfo[idx][address(arg1)])) - uint256(userInfo[idx][address(arg1)][4][stor16])):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (sub_0fb4d2e5[idx].field_1792 * uint256(userInfo[idx][address(arg1)])) + (block.timestamp * sub_0fb4d2e5[idx].field_2304 * uint256(userInfo[idx][address(arg1)])) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304 * uint256(userInfo[idx][address(arg1)])) - uint256(userInfo[idx][address(arg1)][4][stor16])
            continue 
        _34 = mem[64]
        mem[64] = mem[64] + 64
        mem[_34] = 23
        mem[_34 + 32] = 'Time calculation failed'
        if sub_aecd770d[0] > block.timestamp:
            _36 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[idx + _36 + 68] = mem[idx + _34 + 32]
                idx = idx + 32
                continue 
            mem[_36 + 91] = 0
            revert with memory
              from mem[64]
               len _36 + -mem[64] + 100
        if block.timestamp - sub_aecd770d[0] and sub_0fb4d2e5[idx].field_2304 > -1 / block.timestamp - sub_aecd770d[0]:
            revert with 'NH{q', 17
        if sub_0fb4d2e5[idx].field_1792 > !((block.timestamp * sub_0fb4d2e5[idx].field_2304) - (sub_aecd770d[0] * sub_0fb4d2e5[idx].field_2304)):
            revert with 'NH{q', 17
        mem[0] = stor16
        mem[32] = sha3(address(arg1), sha3(idx, 5)) + 4
        if uint256(userInfo[idx][address(arg1)]) and sub_0fb4d2e5[idx].field_1792 + (block.timestamp * sub_0fb4d2e5[idx].field_2304) - (sub_aecd770d[0] * sub_0fb4d2e5[idx].field_2304) > -1 / uint256(userInfo[idx][address(arg1)]):
            revert with 'NH{q', 17
        if (sub_0fb4d2e5[idx].field_1792 * uint256(userInfo[idx][address(arg1)])) + (block.timestamp * sub_0fb4d2e5[idx].field_2304 * uint256(userInfo[idx][address(arg1)])) - (sub_aecd770d[0] * sub_0fb4d2e5[idx].field_2304 * uint256(userInfo[idx][address(arg1)])) < uint256(userInfo[idx][address(arg1)][4][stor16]):
            revert with 'NH{q', 17
        if s > !((sub_0fb4d2e5[idx].field_1792 * uint256(userInfo[idx][address(arg1)])) + (block.timestamp * sub_0fb4d2e5[idx].field_2304 * uint256(userInfo[idx][address(arg1)])) - (sub_aecd770d[0] * sub_0fb4d2e5[idx].field_2304 * uint256(userInfo[idx][address(arg1)])) - uint256(userInfo[idx][address(arg1)][4][stor16])):
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + (sub_0fb4d2e5[idx].field_1792 * uint256(userInfo[idx][address(arg1)])) + (block.timestamp * sub_0fb4d2e5[idx].field_2304 * uint256(userInfo[idx][address(arg1)])) - (sub_aecd770d[0] * sub_0fb4d2e5[idx].field_2304 * uint256(userInfo[idx][address(arg1)])) - uint256(userInfo[idx][address(arg1)][4][stor16])
        continue 
    return s
}

function sub_1eabbc41(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= sub_0fb4d2e5.length:
        revert with 'NH{q', 50
    if currentPhase >= currentPhase:
        if block.timestamp > sub_0fb4d2e5[arg1].field_512:
            if currentPhase >= currentPhase:
                if sub_0fb4d2e5[arg1].field_512 > sub_aecd770d[stor12]:
                    if block.timestamp < sub_aecd770d[stor12]:
                        if False and sub_0fb4d2e5[arg1].field_2304 > 0:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[arg1].field_1792 > -1:
                            revert with 'NH{q', 17
                    else:
                        if sub_0fb4d2e5[arg1].field_512 > block.timestamp:
                            revert with 0, 'Time calculation failed', 0
                        if block.timestamp - sub_0fb4d2e5[arg1].field_512 and sub_0fb4d2e5[arg1].field_2304 > -1 / block.timestamp - sub_0fb4d2e5[arg1].field_512:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)
                        if sub_0fb4d2e5[arg1].field_1792 > !((block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[arg1].field_1792 = sub_0fb4d2e5[arg1].field_1792 + (block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)
                else:
                    if block.timestamp < sub_aecd770d[stor12]:
                        if False and sub_0fb4d2e5[arg1].field_2304 > 0:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[arg1].field_1792 > -1:
                            revert with 'NH{q', 17
                    else:
                        if sub_aecd770d[stor12] > block.timestamp:
                            revert with 0, 'Time calculation failed', 0
                        if block.timestamp - sub_aecd770d[stor12] and sub_0fb4d2e5[arg1].field_2304 > -1 / block.timestamp - sub_aecd770d[stor12]:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)
                        if sub_0fb4d2e5[arg1].field_1792 > !((block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[arg1].field_1792 = sub_0fb4d2e5[arg1].field_1792 + (block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)
            else:
                if currentPhase > -2:
                    revert with 'NH{q', 17
                if sub_0fb4d2e5[arg1].field_512 > sub_aecd770d[stor12]:
                    if sub_aecd770d[stor12 + 1] < sub_aecd770d[stor12]:
                        if False and sub_0fb4d2e5[arg1].field_2304 > 0:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[arg1].field_1792 > -1:
                            revert with 'NH{q', 17
                    else:
                        if sub_0fb4d2e5[arg1].field_512 > sub_aecd770d[stor12 + 1]:
                            revert with 0, 'Time calculation failed', 0
                        if sub_aecd770d[stor12 + 1] - sub_0fb4d2e5[arg1].field_512 and sub_0fb4d2e5[arg1].field_2304 > -1 / sub_aecd770d[stor12 + 1] - sub_0fb4d2e5[arg1].field_512:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)
                        if sub_0fb4d2e5[arg1].field_1792 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[arg1].field_1792 = sub_0fb4d2e5[arg1].field_1792 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)
                else:
                    if sub_aecd770d[stor12 + 1] < sub_aecd770d[stor12]:
                        if False and sub_0fb4d2e5[arg1].field_2304 > 0:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[arg1].field_1792 > -1:
                            revert with 'NH{q', 17
                    else:
                        if sub_aecd770d[stor12] > sub_aecd770d[stor12 + 1]:
                            revert with 0, 'Time calculation failed', 0
                        if sub_aecd770d[stor12 + 1] - sub_aecd770d[stor12] and sub_0fb4d2e5[arg1].field_2304 > -1 / sub_aecd770d[stor12 + 1] - sub_aecd770d[stor12]:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)
                        if sub_0fb4d2e5[arg1].field_1792 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[arg1].field_1792 = sub_0fb4d2e5[arg1].field_1792 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)
            sub_0fb4d2e5[arg1].field_512 = block.timestamp
    else:
        if currentPhase > -2:
            revert with 'NH{q', 17
        if sub_aecd770d[stor12 + 1] > sub_0fb4d2e5[arg1].field_512:
            if currentPhase >= currentPhase:
                if sub_0fb4d2e5[arg1].field_512 > sub_aecd770d[stor12]:
                    if block.timestamp < sub_aecd770d[stor12]:
                        if False and sub_0fb4d2e5[arg1].field_2304 > 0:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[arg1].field_1792 > -1:
                            revert with 'NH{q', 17
                    else:
                        if sub_0fb4d2e5[arg1].field_512 > block.timestamp:
                            revert with 0, 'Time calculation failed', 0
                        if block.timestamp - sub_0fb4d2e5[arg1].field_512 and sub_0fb4d2e5[arg1].field_2304 > -1 / block.timestamp - sub_0fb4d2e5[arg1].field_512:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)
                        if sub_0fb4d2e5[arg1].field_1792 > !((block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[arg1].field_1792 = sub_0fb4d2e5[arg1].field_1792 + (block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)
                else:
                    if block.timestamp < sub_aecd770d[stor12]:
                        if False and sub_0fb4d2e5[arg1].field_2304 > 0:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[arg1].field_1792 > -1:
                            revert with 'NH{q', 17
                    else:
                        if sub_aecd770d[stor12] > block.timestamp:
                            revert with 0, 'Time calculation failed', 0
                        if block.timestamp - sub_aecd770d[stor12] and sub_0fb4d2e5[arg1].field_2304 > -1 / block.timestamp - sub_aecd770d[stor12]:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)
                        if sub_0fb4d2e5[arg1].field_1792 > !((block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[arg1].field_1792 = sub_0fb4d2e5[arg1].field_1792 + (block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)
            else:
                if currentPhase > -2:
                    revert with 'NH{q', 17
                if sub_0fb4d2e5[arg1].field_512 > sub_aecd770d[stor12]:
                    if sub_aecd770d[stor12 + 1] < sub_aecd770d[stor12]:
                        if False and sub_0fb4d2e5[arg1].field_2304 > 0:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[arg1].field_1792 > -1:
                            revert with 'NH{q', 17
                    else:
                        if sub_0fb4d2e5[arg1].field_512 > sub_aecd770d[stor12 + 1]:
                            revert with 0, 'Time calculation failed', 0
                        if sub_aecd770d[stor12 + 1] - sub_0fb4d2e5[arg1].field_512 and sub_0fb4d2e5[arg1].field_2304 > -1 / sub_aecd770d[stor12 + 1] - sub_0fb4d2e5[arg1].field_512:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)
                        if sub_0fb4d2e5[arg1].field_1792 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[arg1].field_1792 = sub_0fb4d2e5[arg1].field_1792 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)
                else:
                    if sub_aecd770d[stor12 + 1] < sub_aecd770d[stor12]:
                        if False and sub_0fb4d2e5[arg1].field_2304 > 0:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[arg1].field_1792 > -1:
                            revert with 'NH{q', 17
                    else:
                        if sub_aecd770d[stor12] > sub_aecd770d[stor12 + 1]:
                            revert with 0, 'Time calculation failed', 0
                        if sub_aecd770d[stor12 + 1] - sub_aecd770d[stor12] and sub_0fb4d2e5[arg1].field_2304 > -1 / sub_aecd770d[stor12 + 1] - sub_aecd770d[stor12]:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)
                        if sub_0fb4d2e5[arg1].field_1792 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[arg1].field_1792 = sub_0fb4d2e5[arg1].field_1792 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)
            sub_0fb4d2e5[arg1].field_512 = block.timestamp
    if arg1 >= sub_0fb4d2e5.length:
        revert with 'NH{q', 50
    sub_0fb4d2e5[arg1].field_2304 = arg2
    stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 1][stor12].field_0 = arg2
}

function stake(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= sub_0fb4d2e5.length:
        revert with 'NH{q', 50
    if currentPhase >= currentPhase:
        if block.timestamp > sub_0fb4d2e5[arg1].field_512:
            if currentPhase >= currentPhase:
                if sub_0fb4d2e5[arg1].field_512 > sub_aecd770d[stor12]:
                    if block.timestamp < sub_aecd770d[stor12]:
                        if False and sub_0fb4d2e5[arg1].field_2304 > 0:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[arg1].field_1792 > -1:
                            revert with 'NH{q', 17
                    else:
                        if sub_0fb4d2e5[arg1].field_512 > block.timestamp:
                            revert with 0, 'Time calculation failed', 0
                        if block.timestamp - sub_0fb4d2e5[arg1].field_512 and sub_0fb4d2e5[arg1].field_2304 > -1 / block.timestamp - sub_0fb4d2e5[arg1].field_512:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)
                        if sub_0fb4d2e5[arg1].field_1792 > !((block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[arg1].field_1792 = sub_0fb4d2e5[arg1].field_1792 + (block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)
                else:
                    if block.timestamp < sub_aecd770d[stor12]:
                        if False and sub_0fb4d2e5[arg1].field_2304 > 0:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[arg1].field_1792 > -1:
                            revert with 'NH{q', 17
                    else:
                        if sub_aecd770d[stor12] > block.timestamp:
                            revert with 0, 'Time calculation failed', 0
                        if block.timestamp - sub_aecd770d[stor12] and sub_0fb4d2e5[arg1].field_2304 > -1 / block.timestamp - sub_aecd770d[stor12]:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)
                        if sub_0fb4d2e5[arg1].field_1792 > !((block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[arg1].field_1792 = sub_0fb4d2e5[arg1].field_1792 + (block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)
            else:
                if currentPhase > -2:
                    revert with 'NH{q', 17
                if sub_0fb4d2e5[arg1].field_512 > sub_aecd770d[stor12]:
                    if sub_aecd770d[stor12 + 1] < sub_aecd770d[stor12]:
                        if False and sub_0fb4d2e5[arg1].field_2304 > 0:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[arg1].field_1792 > -1:
                            revert with 'NH{q', 17
                    else:
                        if sub_0fb4d2e5[arg1].field_512 > sub_aecd770d[stor12 + 1]:
                            revert with 0, 'Time calculation failed', 0
                        if sub_aecd770d[stor12 + 1] - sub_0fb4d2e5[arg1].field_512 and sub_0fb4d2e5[arg1].field_2304 > -1 / sub_aecd770d[stor12 + 1] - sub_0fb4d2e5[arg1].field_512:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)
                        if sub_0fb4d2e5[arg1].field_1792 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[arg1].field_1792 = sub_0fb4d2e5[arg1].field_1792 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)
                else:
                    if sub_aecd770d[stor12 + 1] < sub_aecd770d[stor12]:
                        if False and sub_0fb4d2e5[arg1].field_2304 > 0:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[arg1].field_1792 > -1:
                            revert with 'NH{q', 17
                    else:
                        if sub_aecd770d[stor12] > sub_aecd770d[stor12 + 1]:
                            revert with 0, 'Time calculation failed', 0
                        if sub_aecd770d[stor12 + 1] - sub_aecd770d[stor12] and sub_0fb4d2e5[arg1].field_2304 > -1 / sub_aecd770d[stor12 + 1] - sub_aecd770d[stor12]:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)
                        if sub_0fb4d2e5[arg1].field_1792 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[arg1].field_1792 = sub_0fb4d2e5[arg1].field_1792 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)
            sub_0fb4d2e5[arg1].field_512 = block.timestamp
    else:
        if currentPhase > -2:
            revert with 'NH{q', 17
        if sub_aecd770d[stor12 + 1] > sub_0fb4d2e5[arg1].field_512:
            if currentPhase >= currentPhase:
                if sub_0fb4d2e5[arg1].field_512 > sub_aecd770d[stor12]:
                    if block.timestamp < sub_aecd770d[stor12]:
                        if False and sub_0fb4d2e5[arg1].field_2304 > 0:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[arg1].field_1792 > -1:
                            revert with 'NH{q', 17
                    else:
                        if sub_0fb4d2e5[arg1].field_512 > block.timestamp:
                            revert with 0, 'Time calculation failed', 0
                        if block.timestamp - sub_0fb4d2e5[arg1].field_512 and sub_0fb4d2e5[arg1].field_2304 > -1 / block.timestamp - sub_0fb4d2e5[arg1].field_512:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)
                        if sub_0fb4d2e5[arg1].field_1792 > !((block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[arg1].field_1792 = sub_0fb4d2e5[arg1].field_1792 + (block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)
                else:
                    if block.timestamp < sub_aecd770d[stor12]:
                        if False and sub_0fb4d2e5[arg1].field_2304 > 0:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[arg1].field_1792 > -1:
                            revert with 'NH{q', 17
                    else:
                        if sub_aecd770d[stor12] > block.timestamp:
                            revert with 0, 'Time calculation failed', 0
                        if block.timestamp - sub_aecd770d[stor12] and sub_0fb4d2e5[arg1].field_2304 > -1 / block.timestamp - sub_aecd770d[stor12]:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)
                        if sub_0fb4d2e5[arg1].field_1792 > !((block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[arg1].field_1792 = sub_0fb4d2e5[arg1].field_1792 + (block.timestamp * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)
            else:
                if currentPhase > -2:
                    revert with 'NH{q', 17
                if sub_0fb4d2e5[arg1].field_512 > sub_aecd770d[stor12]:
                    if sub_aecd770d[stor12 + 1] < sub_aecd770d[stor12]:
                        if False and sub_0fb4d2e5[arg1].field_2304 > 0:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[arg1].field_1792 > -1:
                            revert with 'NH{q', 17
                    else:
                        if sub_0fb4d2e5[arg1].field_512 > sub_aecd770d[stor12 + 1]:
                            revert with 0, 'Time calculation failed', 0
                        if sub_aecd770d[stor12 + 1] - sub_0fb4d2e5[arg1].field_512 and sub_0fb4d2e5[arg1].field_2304 > -1 / sub_aecd770d[stor12 + 1] - sub_0fb4d2e5[arg1].field_512:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)
                        if sub_0fb4d2e5[arg1].field_1792 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[arg1].field_1792 = sub_0fb4d2e5[arg1].field_1792 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_0fb4d2e5[arg1].field_512 * sub_0fb4d2e5[arg1].field_2304)
                else:
                    if sub_aecd770d[stor12 + 1] < sub_aecd770d[stor12]:
                        if False and sub_0fb4d2e5[arg1].field_2304 > 0:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[arg1].field_1792 > -1:
                            revert with 'NH{q', 17
                    else:
                        if sub_aecd770d[stor12] > sub_aecd770d[stor12 + 1]:
                            revert with 0, 'Time calculation failed', 0
                        if sub_aecd770d[stor12 + 1] - sub_aecd770d[stor12] and sub_0fb4d2e5[arg1].field_2304 > -1 / sub_aecd770d[stor12 + 1] - sub_aecd770d[stor12]:
                            revert with 'NH{q', 17
                        if stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * arg1) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)
                        if sub_0fb4d2e5[arg1].field_1792 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)):
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[arg1].field_1792 = sub_0fb4d2e5[arg1].field_1792 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[arg1].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[arg1].field_2304)
            sub_0fb4d2e5[arg1].field_512 = block.timestamp
    if uint256(userInfo[arg1][msg.sender]) and stor[('name', 'sub_0fb4d2e5', 4) + (10 * arg1) + 3][stor12].field_0 > -1 / uint256(userInfo[arg1][msg.sender]):
        revert with 'NH{q', 17
    if uint256(userInfo[arg1][msg.sender]) * stor[('name', 'sub_0fb4d2e5', 4) + (10 * arg1) + 3][stor12].field_0 < uint256(userInfo[arg1][msg.sender][2][stor12]):
        revert with 'NH{q', 17
    if sub_0fb4d2e5[arg1].field_1024 and stor[('name', 'sub_0fb4d2e5', 4) + (10 * arg1) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[arg1].field_1024:
        revert with 'NH{q', 17
    if sub_0fb4d2e5[arg1].field_1024 * stor[('name', 'sub_0fb4d2e5', 4) + (10 * arg1) + 3][stor12].field_0 < stor[('name', 'sub_0fb4d2e5', 4) + (10 * arg1) + 6][stor12].field_0:
        revert with 'NH{q', 17
    if uint256(userInfo[arg1][msg.sender]) and sub_0fb4d2e5[arg1].field_1792 > -1 / uint256(userInfo[arg1][msg.sender]):
        revert with 'NH{q', 17
    if uint256(userInfo[arg1][msg.sender]) * sub_0fb4d2e5[arg1].field_1792 < uint256(userInfo[arg1][msg.sender][4][stor16]):
        revert with 'NH{q', 17
    if sub_0fb4d2e5[arg1].field_1024 and sub_0fb4d2e5[arg1].field_1792 > -1 / sub_0fb4d2e5[arg1].field_1024:
        revert with 'NH{q', 17
    if sub_0fb4d2e5[arg1].field_1024 * sub_0fb4d2e5[arg1].field_1792 < sub_0fb4d2e5[arg1].field_2048:
        revert with 'NH{q', 17
    if uint256(userInfo[arg1][msg.sender]) > -2:
        revert with 'NH{q', 17
    uint256(userInfo[arg1][msg.sender])++
    uint256(userInfo[arg1][msg.sender][1][stor12]) = uint256(userInfo[arg1][msg.sender]) + 1
    if uint256(userInfo[arg1][msg.sender]) + 1 and stor[('name', 'sub_0fb4d2e5', 4) + (10 * arg1) + 3][stor12].field_0 > -1 / uint256(userInfo[arg1][msg.sender]) + 1:
        revert with 'NH{q', 17
    uint256(userInfo[arg1][msg.sender][2][stor12]) = stor[('name', 'sub_0fb4d2e5', 4) + (10 * arg1) + 3][stor12].field_0 + (uint256(userInfo[arg1][msg.sender]) * stor[('name', 'sub_0fb4d2e5', 4) + (10 * arg1) + 3][stor12].field_0)
    uint8(userInfo[arg1][msg.sender][3][stor12]) = 1
    if sub_0fb4d2e5[arg1].field_1024 > -2:
        revert with 'NH{q', 17
    sub_0fb4d2e5[arg1].field_1024++
    stor[('name', 'sub_0fb4d2e5', 4) + (10 * arg1) + 5][stor12].field_0 = sub_0fb4d2e5[arg1].field_1024 + 1
    if sub_0fb4d2e5[arg1].field_1024 + 1 and stor[('name', 'sub_0fb4d2e5', 4) + (10 * arg1) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[arg1].field_1024 + 1:
        revert with 'NH{q', 17
    stor[('name', 'sub_0fb4d2e5', 4) + (10 * arg1) + 6][stor12].field_0 = stor[('name', 'sub_0fb4d2e5', 4) + (10 * arg1) + 3][stor12].field_0 + (sub_0fb4d2e5[arg1].field_1024 * stor[('name', 'sub_0fb4d2e5', 4) + (10 * arg1) + 3][stor12].field_0)
    if uint256(userInfo[arg1][msg.sender]) and sub_0fb4d2e5[arg1].field_1792 > -1 / uint256(userInfo[arg1][msg.sender]):
        revert with 'NH{q', 17
    uint256(userInfo[arg1][msg.sender][4][stor16]) = uint256(userInfo[arg1][msg.sender]) * sub_0fb4d2e5[arg1].field_1792
    if sub_0fb4d2e5[arg1].field_1024 and sub_0fb4d2e5[arg1].field_1792 > -1 / sub_0fb4d2e5[arg1].field_1024:
        revert with 'NH{q', 17
    sub_0fb4d2e5[arg1].field_2048 = sub_0fb4d2e5[arg1].field_1024 * sub_0fb4d2e5[arg1].field_1792
    stor2[arg1][arg2] = msg.sender
    sub_c0788555[stor7].field_0 = stor7
    sub_c0788555[stor7].field_256 = arg1
    sub_c0788555[stor7].field_512 = arg2
    stor8[address(msg.sender)][stor7][0] = 0
    stor8[address(msg.sender)][0][1] = stor7
    stor8[address(msg.sender)][stor8[address(msg.sender)][0][1]][0] = stor7
    stor8[address(msg.sender)][stor7][1] = stor8[address(msg.sender)][0][1]
    if sub_42e618da[msg.sender] > -2:
        revert with 'NH{q', 17
    sub_42e618da[msg.sender]++
    if (uint256(userInfo[arg1][msg.sender]) * stor[('name', 'sub_0fb4d2e5', 4) + (10 * arg1) + 3][stor12].field_0) - uint256(userInfo[arg1][msg.sender][2][stor12]):
        if sub_42ac1a56[stor12][msg.sender] > !((uint256(userInfo[arg1][msg.sender]) * stor[('name', 'sub_0fb4d2e5', 4) + (10 * arg1) + 3][stor12].field_0) - uint256(userInfo[arg1][msg.sender][2][stor12])):
            revert with 'NH{q', 17
        sub_42ac1a56[stor12][msg.sender] = sub_42ac1a56[stor12][msg.sender] + (uint256(userInfo[arg1][msg.sender]) * stor[('name', 'sub_0fb4d2e5', 4) + (10 * arg1) + 3][stor12].field_0) - uint256(userInfo[arg1][msg.sender][2][stor12])
    if (sub_0fb4d2e5[arg1].field_1024 * stor[('name', 'sub_0fb4d2e5', 4) + (10 * arg1) + 3][stor12].field_0) - stor[('name', 'sub_0fb4d2e5', 4) + (10 * arg1) + 6][stor12].field_0:
        if sub_f340efa7[stor12] > !((sub_0fb4d2e5[arg1].field_1024 * stor[('name', 'sub_0fb4d2e5', 4) + (10 * arg1) + 3][stor12].field_0) - stor[('name', 'sub_0fb4d2e5', 4) + (10 * arg1) + 6][stor12].field_0):
            revert with 'NH{q', 17
        sub_f340efa7[stor12] = sub_f340efa7[stor12] + (sub_0fb4d2e5[arg1].field_1024 * stor[('name', 'sub_0fb4d2e5', 4) + (10 * arg1) + 3][stor12].field_0) - stor[('name', 'sub_0fb4d2e5', 4) + (10 * arg1) + 6][stor12].field_0
    if (uint256(userInfo[arg1][msg.sender]) * sub_0fb4d2e5[arg1].field_1792) - uint256(userInfo[arg1][msg.sender][4][stor16]):
        if sub_521a6a7d[stor16][msg.sender] > !((uint256(userInfo[arg1][msg.sender]) * sub_0fb4d2e5[arg1].field_1792) - uint256(userInfo[arg1][msg.sender][4][stor16])):
            revert with 'NH{q', 17
        sub_521a6a7d[stor16][msg.sender] = sub_521a6a7d[stor16][msg.sender] + (uint256(userInfo[arg1][msg.sender]) * sub_0fb4d2e5[arg1].field_1792) - uint256(userInfo[arg1][msg.sender][4][stor16])
    if (sub_0fb4d2e5[arg1].field_1024 * sub_0fb4d2e5[arg1].field_1792) - sub_0fb4d2e5[arg1].field_2048:
        if sub_e44c78e0 > !((sub_0fb4d2e5[arg1].field_1024 * sub_0fb4d2e5[arg1].field_1792) - sub_0fb4d2e5[arg1].field_2048):
            revert with 'NH{q', 17
        sub_e44c78e0 = sub_e44c78e0 + (sub_0fb4d2e5[arg1].field_1024 * sub_0fb4d2e5[arg1].field_1792) - sub_0fb4d2e5[arg1].field_2048
    require ext_code.size(address(sub_0fb4d2e5[arg1].field_0))
    call address(sub_0fb4d2e5[arg1].field_0).0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Stake(stor7, msg.sender, arg1, arg2);
    if stor7 > -2:
        revert with 'NH{q', 17
    stor7++
}

function sub_b81aea16(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    mem[0] = msg.sender
    mem[32] = 13
    if not stor13[msg.sender]:
        revert with 0, 'You can't change the phase'
    idx = 0
    while idx < sub_0fb4d2e5.length:
        if currentPhase >= currentPhase:
            if block.timestamp > sub_0fb4d2e5[idx].field_512:
                if currentPhase >= currentPhase:
                    mem[0] = currentPhase
                    mem[32] = 11
                    if sub_0fb4d2e5[idx].field_512 > sub_aecd770d[stor12]:
                        if block.timestamp < sub_aecd770d[stor12]:
                            if False and sub_0fb4d2e5[idx].field_2304 > 0:
                                revert with 'NH{q', 17
                            if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                                revert with 'NH{q', 17
                            if sub_0fb4d2e5[idx].field_1792 > -1:
                                revert with 'NH{q', 17
                        else:
                            _209 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_209] = 23
                            mem[_209 + 32] = 'Time calculation failed'
                            if sub_0fb4d2e5[idx].field_512 > block.timestamp:
                                _215 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 23
                                idx = 0
                                while idx < 23:
                                    mem[idx + _215 + 68] = mem[idx + _209 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_215 + 91] = 0
                                revert with memory
                                  from mem[64]
                                   len _215 + -mem[64] + 100
                            if block.timestamp - sub_0fb4d2e5[idx].field_512 and sub_0fb4d2e5[idx].field_2304 > -1 / block.timestamp - sub_0fb4d2e5[idx].field_512:
                                revert with 'NH{q', 17
                            if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((block.timestamp * sub_0fb4d2e5[idx].field_2304) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304)):
                                revert with 'NH{q', 17
                            stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (block.timestamp * sub_0fb4d2e5[idx].field_2304) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304)
                            if sub_0fb4d2e5[idx].field_1792 > !((block.timestamp * sub_0fb4d2e5[idx].field_2304) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304)):
                                revert with 'NH{q', 17
                            sub_0fb4d2e5[idx].field_1792 = sub_0fb4d2e5[idx].field_1792 + (block.timestamp * sub_0fb4d2e5[idx].field_2304) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304)
                    else:
                        if block.timestamp < sub_aecd770d[stor12]:
                            if False and sub_0fb4d2e5[idx].field_2304 > 0:
                                revert with 'NH{q', 17
                            if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                                revert with 'NH{q', 17
                            if sub_0fb4d2e5[idx].field_1792 > -1:
                                revert with 'NH{q', 17
                        else:
                            _210 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_210] = 23
                            mem[_210 + 32] = 'Time calculation failed'
                            if sub_aecd770d[stor12] > block.timestamp:
                                _216 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 23
                                idx = 0
                                while idx < 23:
                                    mem[idx + _216 + 68] = mem[idx + _210 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_216 + 91] = 0
                                revert with memory
                                  from mem[64]
                                   len _216 + -mem[64] + 100
                            if block.timestamp - sub_aecd770d[stor12] and sub_0fb4d2e5[idx].field_2304 > -1 / block.timestamp - sub_aecd770d[stor12]:
                                revert with 'NH{q', 17
                            if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((block.timestamp * sub_0fb4d2e5[idx].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[idx].field_2304)):
                                revert with 'NH{q', 17
                            stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (block.timestamp * sub_0fb4d2e5[idx].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[idx].field_2304)
                            if sub_0fb4d2e5[idx].field_1792 > !((block.timestamp * sub_0fb4d2e5[idx].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[idx].field_2304)):
                                revert with 'NH{q', 17
                            sub_0fb4d2e5[idx].field_1792 = sub_0fb4d2e5[idx].field_1792 + (block.timestamp * sub_0fb4d2e5[idx].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[idx].field_2304)
                else:
                    if currentPhase > -2:
                        revert with 'NH{q', 17
                    mem[0] = currentPhase
                    mem[32] = 11
                    if sub_0fb4d2e5[idx].field_512 > sub_aecd770d[stor12]:
                        if sub_aecd770d[stor12 + 1] < sub_aecd770d[stor12]:
                            if False and sub_0fb4d2e5[idx].field_2304 > 0:
                                revert with 'NH{q', 17
                            if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                                revert with 'NH{q', 17
                            if sub_0fb4d2e5[idx].field_1792 > -1:
                                revert with 'NH{q', 17
                        else:
                            _228 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_228] = 23
                            mem[_228 + 32] = 'Time calculation failed'
                            if sub_0fb4d2e5[idx].field_512 > sub_aecd770d[stor12 + 1]:
                                _237 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 23
                                idx = 0
                                while idx < 23:
                                    mem[idx + _237 + 68] = mem[idx + _228 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_237 + 91] = 0
                                revert with memory
                                  from mem[64]
                                   len _237 + -mem[64] + 100
                            if sub_aecd770d[stor12 + 1] - sub_0fb4d2e5[idx].field_512 and sub_0fb4d2e5[idx].field_2304 > -1 / sub_aecd770d[stor12 + 1] - sub_0fb4d2e5[idx].field_512:
                                revert with 'NH{q', 17
                            if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[idx].field_2304) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304)):
                                revert with 'NH{q', 17
                            stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[idx].field_2304) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304)
                            if sub_0fb4d2e5[idx].field_1792 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[idx].field_2304) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304)):
                                revert with 'NH{q', 17
                            sub_0fb4d2e5[idx].field_1792 = sub_0fb4d2e5[idx].field_1792 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[idx].field_2304) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304)
                    else:
                        if sub_aecd770d[stor12 + 1] < sub_aecd770d[stor12]:
                            if False and sub_0fb4d2e5[idx].field_2304 > 0:
                                revert with 'NH{q', 17
                            if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                                revert with 'NH{q', 17
                            if sub_0fb4d2e5[idx].field_1792 > -1:
                                revert with 'NH{q', 17
                        else:
                            _229 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_229] = 23
                            mem[_229 + 32] = 'Time calculation failed'
                            if sub_aecd770d[stor12] > sub_aecd770d[stor12 + 1]:
                                _238 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 23
                                idx = 0
                                while idx < 23:
                                    mem[idx + _238 + 68] = mem[idx + _229 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_238 + 91] = 0
                                revert with memory
                                  from mem[64]
                                   len _238 + -mem[64] + 100
                            if sub_aecd770d[stor12 + 1] - sub_aecd770d[stor12] and sub_0fb4d2e5[idx].field_2304 > -1 / sub_aecd770d[stor12 + 1] - sub_aecd770d[stor12]:
                                revert with 'NH{q', 17
                            if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[idx].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[idx].field_2304)):
                                revert with 'NH{q', 17
                            stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[idx].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[idx].field_2304)
                            if sub_0fb4d2e5[idx].field_1792 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[idx].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[idx].field_2304)):
                                revert with 'NH{q', 17
                            sub_0fb4d2e5[idx].field_1792 = sub_0fb4d2e5[idx].field_1792 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[idx].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[idx].field_2304)
                sub_0fb4d2e5[idx].field_512 = block.timestamp
        else:
            if currentPhase > -2:
                revert with 'NH{q', 17
            if sub_aecd770d[stor12 + 1] > sub_0fb4d2e5[idx].field_512:
                if currentPhase >= currentPhase:
                    mem[0] = currentPhase
                    mem[32] = 11
                    if sub_0fb4d2e5[idx].field_512 > sub_aecd770d[stor12]:
                        if block.timestamp < sub_aecd770d[stor12]:
                            if False and sub_0fb4d2e5[idx].field_2304 > 0:
                                revert with 'NH{q', 17
                            if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                                revert with 'NH{q', 17
                            if sub_0fb4d2e5[idx].field_1792 > -1:
                                revert with 'NH{q', 17
                        else:
                            _226 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_226] = 23
                            mem[_226 + 32] = 'Time calculation failed'
                            if sub_0fb4d2e5[idx].field_512 > block.timestamp:
                                _235 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 23
                                idx = 0
                                while idx < 23:
                                    mem[idx + _235 + 68] = mem[idx + _226 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_235 + 91] = 0
                                revert with memory
                                  from mem[64]
                                   len _235 + -mem[64] + 100
                            if block.timestamp - sub_0fb4d2e5[idx].field_512 and sub_0fb4d2e5[idx].field_2304 > -1 / block.timestamp - sub_0fb4d2e5[idx].field_512:
                                revert with 'NH{q', 17
                            if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((block.timestamp * sub_0fb4d2e5[idx].field_2304) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304)):
                                revert with 'NH{q', 17
                            stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (block.timestamp * sub_0fb4d2e5[idx].field_2304) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304)
                            if sub_0fb4d2e5[idx].field_1792 > !((block.timestamp * sub_0fb4d2e5[idx].field_2304) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304)):
                                revert with 'NH{q', 17
                            sub_0fb4d2e5[idx].field_1792 = sub_0fb4d2e5[idx].field_1792 + (block.timestamp * sub_0fb4d2e5[idx].field_2304) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304)
                    else:
                        if block.timestamp < sub_aecd770d[stor12]:
                            if False and sub_0fb4d2e5[idx].field_2304 > 0:
                                revert with 'NH{q', 17
                            if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                                revert with 'NH{q', 17
                            if sub_0fb4d2e5[idx].field_1792 > -1:
                                revert with 'NH{q', 17
                        else:
                            _227 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_227] = 23
                            mem[_227 + 32] = 'Time calculation failed'
                            if sub_aecd770d[stor12] > block.timestamp:
                                _236 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 23
                                idx = 0
                                while idx < 23:
                                    mem[idx + _236 + 68] = mem[idx + _227 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_236 + 91] = 0
                                revert with memory
                                  from mem[64]
                                   len _236 + -mem[64] + 100
                            if block.timestamp - sub_aecd770d[stor12] and sub_0fb4d2e5[idx].field_2304 > -1 / block.timestamp - sub_aecd770d[stor12]:
                                revert with 'NH{q', 17
                            if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((block.timestamp * sub_0fb4d2e5[idx].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[idx].field_2304)):
                                revert with 'NH{q', 17
                            stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (block.timestamp * sub_0fb4d2e5[idx].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[idx].field_2304)
                            if sub_0fb4d2e5[idx].field_1792 > !((block.timestamp * sub_0fb4d2e5[idx].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[idx].field_2304)):
                                revert with 'NH{q', 17
                            sub_0fb4d2e5[idx].field_1792 = sub_0fb4d2e5[idx].field_1792 + (block.timestamp * sub_0fb4d2e5[idx].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[idx].field_2304)
                else:
                    if currentPhase > -2:
                        revert with 'NH{q', 17
                    mem[0] = currentPhase
                    mem[32] = 11
                    if sub_0fb4d2e5[idx].field_512 > sub_aecd770d[stor12]:
                        if sub_aecd770d[stor12 + 1] < sub_aecd770d[stor12]:
                            if False and sub_0fb4d2e5[idx].field_2304 > 0:
                                revert with 'NH{q', 17
                            if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                                revert with 'NH{q', 17
                            if sub_0fb4d2e5[idx].field_1792 > -1:
                                revert with 'NH{q', 17
                        else:
                            _249 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_249] = 23
                            mem[_249 + 32] = 'Time calculation failed'
                            if sub_0fb4d2e5[idx].field_512 > sub_aecd770d[stor12 + 1]:
                                _260 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 23
                                idx = 0
                                while idx < 23:
                                    mem[idx + _260 + 68] = mem[idx + _249 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_260 + 91] = 0
                                revert with memory
                                  from mem[64]
                                   len _260 + -mem[64] + 100
                            if sub_aecd770d[stor12 + 1] - sub_0fb4d2e5[idx].field_512 and sub_0fb4d2e5[idx].field_2304 > -1 / sub_aecd770d[stor12 + 1] - sub_0fb4d2e5[idx].field_512:
                                revert with 'NH{q', 17
                            if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[idx].field_2304) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304)):
                                revert with 'NH{q', 17
                            stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[idx].field_2304) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304)
                            if sub_0fb4d2e5[idx].field_1792 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[idx].field_2304) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304)):
                                revert with 'NH{q', 17
                            sub_0fb4d2e5[idx].field_1792 = sub_0fb4d2e5[idx].field_1792 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[idx].field_2304) - (sub_0fb4d2e5[idx].field_512 * sub_0fb4d2e5[idx].field_2304)
                    else:
                        if sub_aecd770d[stor12 + 1] < sub_aecd770d[stor12]:
                            if False and sub_0fb4d2e5[idx].field_2304 > 0:
                                revert with 'NH{q', 17
                            if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                                revert with 'NH{q', 17
                            if sub_0fb4d2e5[idx].field_1792 > -1:
                                revert with 'NH{q', 17
                        else:
                            _250 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_250] = 23
                            mem[_250 + 32] = 'Time calculation failed'
                            if sub_aecd770d[stor12] > sub_aecd770d[stor12 + 1]:
                                _261 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 23
                                idx = 0
                                while idx < 23:
                                    mem[idx + _261 + 68] = mem[idx + _250 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_261 + 91] = 0
                                revert with memory
                                  from mem[64]
                                   len _261 + -mem[64] + 100
                            if sub_aecd770d[stor12 + 1] - sub_aecd770d[stor12] and sub_0fb4d2e5[idx].field_2304 > -1 / sub_aecd770d[stor12 + 1] - sub_aecd770d[stor12]:
                                revert with 'NH{q', 17
                            if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[idx].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[idx].field_2304)):
                                revert with 'NH{q', 17
                            stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[idx].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[idx].field_2304)
                            if sub_0fb4d2e5[idx].field_1792 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[idx].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[idx].field_2304)):
                                revert with 'NH{q', 17
                            sub_0fb4d2e5[idx].field_1792 = sub_0fb4d2e5[idx].field_1792 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[idx].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[idx].field_2304)
                sub_0fb4d2e5[idx].field_512 = block.timestamp
        if idx >= sub_0fb4d2e5.length:
            revert with 'NH{q', 50
        if currentPhase > -2:
            revert with 'NH{q', 17
        stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][stor12 + 1].field_0 = stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][stor12].field_0
        mem[0] = currentPhase + 1
        mem[32] = (10 * idx) + sha3(4) + 5
        stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][stor12 + 1].field_0 = stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][stor12].field_0
        if arg1:
            sub_0fb4d2e5[idx].field_1792 = 0
            sub_0fb4d2e5[idx].field_2048 = 0
        if idx > -2:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if currentPhase > -2:
        revert with 'NH{q', 17
    currentPhase++
    sub_aecd770d[stor12 + 1] = block.timestamp
    if arg1:
        sub_e44c78e0 = 0
        if stor16 > -2:
            revert with 'NH{q', 17
        stor16++
}

function sub_1c654ea6(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 9
    idx = 0
    s = stor[sha3(mem[0 len 64])]
    while idx < sub_0fb4d2e5.length:
        if arg1 >= currentPhase:
            if block.timestamp <= sub_0fb4d2e5[idx].field_512:
                mem[0] = arg1
                mem[32] = (10 * idx) + sha3(4) + 6
                if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 > -1 / stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0:
                    revert with 'NH{q', 17
                if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 < stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0:
                    revert with 'NH{q', 17
                if s > !((stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0):
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + (stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0
                continue 
            if not stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0:
                mem[0] = arg1
                mem[32] = (10 * idx) + sha3(4) + 6
                if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 > -1 / stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0:
                    revert with 'NH{q', 17
                if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 < stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0:
                    revert with 'NH{q', 17
                if s > !((stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0):
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + (stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0
                continue 
            if arg1 >= currentPhase:
                mem[0] = arg1
                mem[32] = 11
                if block.timestamp < sub_aecd770d[arg1]:
                    if False and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 > 0:
                        revert with 'NH{q', 17
                    if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 > -1:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = (10 * idx) + sha3(4) + 6
                    if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 > -1 / stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0:
                        revert with 'NH{q', 17
                    if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 < stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0:
                        revert with 'NH{q', 17
                    if s > !((stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0):
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + (stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0
                    continue 
                if sub_0fb4d2e5[idx].field_512 > sub_aecd770d[arg1]:
                    _113 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_113] = 23
                    mem[_113 + 32] = 'Time calculation failed'
                    if sub_0fb4d2e5[idx].field_512 > block.timestamp:
                        _119 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 23
                        idx = 0
                        while idx < 23:
                            mem[idx + _119 + 68] = mem[idx + _113 + 32]
                            idx = idx + 32
                            continue 
                        mem[_119 + 91] = 0
                        revert with memory
                          from mem[64]
                           len _119 + -mem[64] + 100
                    if block.timestamp - sub_0fb4d2e5[idx].field_512 and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 > -1 / block.timestamp - sub_0fb4d2e5[idx].field_512:
                        revert with 'NH{q', 17
                    if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 > !((block.timestamp * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0) - (sub_0fb4d2e5[idx].field_512 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0)):
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = (10 * idx) + sha3(4) + 6
                    if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 + (block.timestamp * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0) - (sub_0fb4d2e5[idx].field_512 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0) > -1 / stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0:
                        revert with 'NH{q', 17
                    if (stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) + (block.timestamp * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - (sub_0fb4d2e5[idx].field_512 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) < stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0:
                        revert with 'NH{q', 17
                    if s > !((stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) + (block.timestamp * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - (sub_0fb4d2e5[idx].field_512 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0):
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + (stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) + (block.timestamp * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - (sub_0fb4d2e5[idx].field_512 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0
                    continue 
                _114 = mem[64]
                mem[64] = mem[64] + 64
                mem[_114] = 23
                mem[_114 + 32] = 'Time calculation failed'
                if sub_aecd770d[arg1] > block.timestamp:
                    _120 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 23
                    idx = 0
                    while idx < 23:
                        mem[idx + _120 + 68] = mem[idx + _114 + 32]
                        idx = idx + 32
                        continue 
                    mem[_120 + 91] = 0
                    revert with memory
                      from mem[64]
                       len _120 + -mem[64] + 100
                if block.timestamp - sub_aecd770d[arg1] and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 > -1 / block.timestamp - sub_aecd770d[arg1]:
                    revert with 'NH{q', 17
                if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 > !((block.timestamp * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0) - (sub_aecd770d[arg1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0)):
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = (10 * idx) + sha3(4) + 6
                if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 + (block.timestamp * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0) - (sub_aecd770d[arg1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0) > -1 / stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0:
                    revert with 'NH{q', 17
                if (stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) + (block.timestamp * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - (sub_aecd770d[arg1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) < stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0:
                    revert with 'NH{q', 17
                if s > !((stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) + (block.timestamp * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - (sub_aecd770d[arg1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0):
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + (stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) + (block.timestamp * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - (sub_aecd770d[arg1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0
                continue 
            if arg1 > -2:
                revert with 'NH{q', 17
            mem[0] = arg1
            mem[32] = 11
            if sub_aecd770d[arg1 + 1] < sub_aecd770d[arg1]:
                if False and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 > 0:
                    revert with 'NH{q', 17
                if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 > -1:
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = (10 * idx) + sha3(4) + 6
                if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 > -1 / stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0:
                    revert with 'NH{q', 17
                if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 < stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0:
                    revert with 'NH{q', 17
                if s > !((stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0):
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + (stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0
                continue 
            if sub_0fb4d2e5[idx].field_512 > sub_aecd770d[arg1]:
                _130 = mem[64]
                mem[64] = mem[64] + 64
                mem[_130] = 23
                mem[_130 + 32] = 'Time calculation failed'
                if sub_0fb4d2e5[idx].field_512 > sub_aecd770d[arg1 + 1]:
                    _138 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 23
                    idx = 0
                    while idx < 23:
                        mem[idx + _138 + 68] = mem[idx + _130 + 32]
                        idx = idx + 32
                        continue 
                    mem[_138 + 91] = 0
                    revert with memory
                      from mem[64]
                       len _138 + -mem[64] + 100
                if sub_aecd770d[arg1 + 1] - sub_0fb4d2e5[idx].field_512 and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 > -1 / sub_aecd770d[arg1 + 1] - sub_0fb4d2e5[idx].field_512:
                    revert with 'NH{q', 17
                if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 > !((sub_aecd770d[arg1 + 1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0) - (sub_0fb4d2e5[idx].field_512 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0)):
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = (10 * idx) + sha3(4) + 6
                if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 + (sub_aecd770d[arg1 + 1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0) - (sub_0fb4d2e5[idx].field_512 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0) > -1 / stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0:
                    revert with 'NH{q', 17
                if (stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) + (sub_aecd770d[arg1 + 1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - (sub_0fb4d2e5[idx].field_512 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) < stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0:
                    revert with 'NH{q', 17
                if s > !((stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) + (sub_aecd770d[arg1 + 1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - (sub_0fb4d2e5[idx].field_512 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0):
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + (stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) + (sub_aecd770d[arg1 + 1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - (sub_0fb4d2e5[idx].field_512 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0
                continue 
            _131 = mem[64]
            mem[64] = mem[64] + 64
            mem[_131] = 23
            mem[_131 + 32] = 'Time calculation failed'
            if sub_aecd770d[arg1] > sub_aecd770d[arg1 + 1]:
                _139 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _139 + 68] = mem[idx + _131 + 32]
                    idx = idx + 32
                    continue 
                mem[_139 + 91] = 0
                revert with memory
                  from mem[64]
                   len _139 + -mem[64] + 100
        else:
            if arg1 > -2:
                revert with 'NH{q', 17
            if sub_aecd770d[arg1 + 1] <= sub_0fb4d2e5[idx].field_512:
                mem[0] = arg1
                mem[32] = (10 * idx) + sha3(4) + 6
                if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 > -1 / stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0:
                    revert with 'NH{q', 17
                if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 < stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0:
                    revert with 'NH{q', 17
                if s > !((stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0):
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + (stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0
                continue 
            if not stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0:
                mem[0] = arg1
                mem[32] = (10 * idx) + sha3(4) + 6
                if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 > -1 / stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0:
                    revert with 'NH{q', 17
                if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 < stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0:
                    revert with 'NH{q', 17
                if s > !((stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0):
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + (stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0
                continue 
            if arg1 >= currentPhase:
                mem[0] = arg1
                mem[32] = 11
                if block.timestamp < sub_aecd770d[arg1]:
                    if False and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 > 0:
                        revert with 'NH{q', 17
                    if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 > -1:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = (10 * idx) + sha3(4) + 6
                    if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 > -1 / stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0:
                        revert with 'NH{q', 17
                    if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 < stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0:
                        revert with 'NH{q', 17
                    if s > !((stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0):
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + (stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0
                    continue 
                if sub_0fb4d2e5[idx].field_512 > sub_aecd770d[arg1]:
                    _128 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_128] = 23
                    mem[_128 + 32] = 'Time calculation failed'
                    if sub_0fb4d2e5[idx].field_512 > block.timestamp:
                        _136 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 23
                        idx = 0
                        while idx < 23:
                            mem[idx + _136 + 68] = mem[idx + _128 + 32]
                            idx = idx + 32
                            continue 
                        mem[_136 + 91] = 0
                        revert with memory
                          from mem[64]
                           len _136 + -mem[64] + 100
                    if block.timestamp - sub_0fb4d2e5[idx].field_512 and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 > -1 / block.timestamp - sub_0fb4d2e5[idx].field_512:
                        revert with 'NH{q', 17
                    if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 > !((block.timestamp * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0) - (sub_0fb4d2e5[idx].field_512 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0)):
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = (10 * idx) + sha3(4) + 6
                    if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 + (block.timestamp * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0) - (sub_0fb4d2e5[idx].field_512 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0) > -1 / stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0:
                        revert with 'NH{q', 17
                    if (stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) + (block.timestamp * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - (sub_0fb4d2e5[idx].field_512 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) < stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0:
                        revert with 'NH{q', 17
                    if s > !((stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) + (block.timestamp * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - (sub_0fb4d2e5[idx].field_512 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0):
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + (stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) + (block.timestamp * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - (sub_0fb4d2e5[idx].field_512 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0
                    continue 
                _129 = mem[64]
                mem[64] = mem[64] + 64
                mem[_129] = 23
                mem[_129 + 32] = 'Time calculation failed'
                if sub_aecd770d[arg1] > block.timestamp:
                    _137 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 23
                    idx = 0
                    while idx < 23:
                        mem[idx + _137 + 68] = mem[idx + _129 + 32]
                        idx = idx + 32
                        continue 
                    mem[_137 + 91] = 0
                    revert with memory
                      from mem[64]
                       len _137 + -mem[64] + 100
                if block.timestamp - sub_aecd770d[arg1] and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 > -1 / block.timestamp - sub_aecd770d[arg1]:
                    revert with 'NH{q', 17
                if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 > !((block.timestamp * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0) - (sub_aecd770d[arg1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0)):
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = (10 * idx) + sha3(4) + 6
                if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 + (block.timestamp * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0) - (sub_aecd770d[arg1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0) > -1 / stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0:
                    revert with 'NH{q', 17
                if (stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) + (block.timestamp * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - (sub_aecd770d[arg1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) < stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0:
                    revert with 'NH{q', 17
                if s > !((stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) + (block.timestamp * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - (sub_aecd770d[arg1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0):
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + (stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) + (block.timestamp * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - (sub_aecd770d[arg1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0
                continue 
            if arg1 > -2:
                revert with 'NH{q', 17
            mem[0] = arg1
            mem[32] = 11
            if sub_aecd770d[arg1 + 1] < sub_aecd770d[arg1]:
                if False and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 > 0:
                    revert with 'NH{q', 17
                if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 > -1:
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = (10 * idx) + sha3(4) + 6
                if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 > -1 / stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0:
                    revert with 'NH{q', 17
                if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 < stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0:
                    revert with 'NH{q', 17
                if s > !((stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0):
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + (stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0
                continue 
            if sub_0fb4d2e5[idx].field_512 > sub_aecd770d[arg1]:
                _148 = mem[64]
                mem[64] = mem[64] + 64
                mem[_148] = 23
                mem[_148 + 32] = 'Time calculation failed'
                if sub_0fb4d2e5[idx].field_512 > sub_aecd770d[arg1 + 1]:
                    _156 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 23
                    idx = 0
                    while idx < 23:
                        mem[idx + _156 + 68] = mem[idx + _148 + 32]
                        idx = idx + 32
                        continue 
                    mem[_156 + 91] = 0
                    revert with memory
                      from mem[64]
                       len _156 + -mem[64] + 100
                if sub_aecd770d[arg1 + 1] - sub_0fb4d2e5[idx].field_512 and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 > -1 / sub_aecd770d[arg1 + 1] - sub_0fb4d2e5[idx].field_512:
                    revert with 'NH{q', 17
                if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 > !((sub_aecd770d[arg1 + 1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0) - (sub_0fb4d2e5[idx].field_512 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0)):
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = (10 * idx) + sha3(4) + 6
                if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 + (sub_aecd770d[arg1 + 1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0) - (sub_0fb4d2e5[idx].field_512 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0) > -1 / stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0:
                    revert with 'NH{q', 17
                if (stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) + (sub_aecd770d[arg1 + 1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - (sub_0fb4d2e5[idx].field_512 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) < stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0:
                    revert with 'NH{q', 17
                if s > !((stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) + (sub_aecd770d[arg1 + 1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - (sub_0fb4d2e5[idx].field_512 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0):
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + (stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) + (sub_aecd770d[arg1 + 1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - (sub_0fb4d2e5[idx].field_512 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0
                continue 
            _149 = mem[64]
            mem[64] = mem[64] + 64
            mem[_149] = 23
            mem[_149 + 32] = 'Time calculation failed'
            if sub_aecd770d[arg1] > sub_aecd770d[arg1 + 1]:
                _157 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[idx + _157 + 68] = mem[idx + _149 + 32]
                    idx = idx + 32
                    continue 
                mem[_157 + 91] = 0
                revert with memory
                  from mem[64]
                   len _157 + -mem[64] + 100
        ('le', ('stor', ('map', ('param', 'arg1'), ('name', 'sub_aecd770d', 11))), ('stor', ('map', ('add', 1, ('param', 'arg1')), ('name', 'sub_aecd770d', 11))))
        if sub_aecd770d[arg1 + 1] - sub_aecd770d[arg1] and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 > -1 / sub_aecd770d[arg1 + 1] - sub_aecd770d[arg1]:
            revert with 'NH{q', 17
        if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 > !((sub_aecd770d[arg1 + 1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0) - (sub_aecd770d[arg1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0)):
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = (10 * idx) + sha3(4) + 6
        if stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0 and stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 + (sub_aecd770d[arg1 + 1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0) - (sub_aecd770d[arg1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0) > -1 / stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0:
            revert with 'NH{q', 17
        if (stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) + (sub_aecd770d[arg1 + 1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - (sub_aecd770d[arg1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) < stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0:
            revert with 'NH{q', 17
        if s > !((stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) + (sub_aecd770d[arg1 + 1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - (sub_aecd770d[arg1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0):
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + (stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 3][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) + (sub_aecd770d[arg1 + 1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - (sub_aecd770d[arg1] * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 1][arg1].field_0 * stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 5][arg1].field_0) - stor[(10 * idx) + ('name', 'sub_0fb4d2e5', 4) + 6][arg1].field_0
        continue 
    return s
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Invalid ID'
    if sub_c0788555[arg1].field_256 >= sub_0fb4d2e5.length:
        revert with 'NH{q', 50
    if stor2[stor1[arg1].field_256][stor1[arg1].field_512] != msg.sender:
        revert with 0, 'Not your token'
    if sub_c0788555[arg1].field_256 >= sub_0fb4d2e5.length:
        revert with 'NH{q', 50
    if currentPhase >= currentPhase:
        if block.timestamp <= sub_0fb4d2e5[stor1[arg1].field_256].field_512:
            if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                revert with 'NH{q', 17
            if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]):
                revert with 'NH{q', 17
            if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                revert with 'NH{q', 17
            if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0:
                revert with 'NH{q', 17
            if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                revert with 'NH{q', 17
            if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]):
                revert with 'NH{q', 17
            if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                revert with 'NH{q', 17
            if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < sub_0fb4d2e5[stor1[arg1].field_256].field_2048:
                revert with 'NH{q', 17
            if 1 > uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                revert with 0, 'Removing too many user tokens', 0
            uint256(userInfo[stor1[arg1].field_256][msg.sender])--
            uint256(userInfo[stor1[arg1].field_256][msg.sender][1][stor12]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1
            if uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1:
                revert with 'NH{q', 17
            uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]) = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
            uint8(userInfo[stor1[arg1].field_256][msg.sender][3][stor12]) = 1
            if 1 > sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                revert with 0, 32, 38, 0xfe52656d6f76696e6720746f6f206d616e792e20746f74616c207374616b656420746f6b656e, mem[326 len 26] >> 48, 0
            sub_0fb4d2e5[stor1[arg1].field_256].field_1024--
            stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 5][stor12].field_0 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1
            if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1:
                revert with 'NH{q', 17
            stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0 = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
            if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                revert with 'NH{q', 17
            uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
            if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                revert with 'NH{q', 17
            sub_0fb4d2e5[stor1[arg1].field_256].field_2048 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
            sub_c0788555[arg1].field_0 = 0
            sub_c0788555[arg1].field_256 = 0
            sub_c0788555[arg1].field_512 = 0
            stor2[stor1[arg1].field_256][stor1[arg1].field_512] = 0
            if arg1:
                stor8[msg.sender][stor8[msg.sender][arg1][1]][0] = stor8[msg.sender][arg1][0]
                stor8[msg.sender][stor8[msg.sender][arg1][0]][1] = stor8[msg.sender][arg1][1]
                stor8[msg.sender][arg1][0] = 0
                stor8[msg.sender][arg1][1] = 0
            if 1 > sub_42e618da[msg.sender]:
                revert with 0, 32, 35, 0x7352656d6f76696e6720746f6f206d616e7920746f74616c207573657220746f6b656e, mem[419 len 29] >> 24, 0
        else:
            if currentPhase >= currentPhase:
                if sub_0fb4d2e5[stor1[arg1].field_256].field_512 > sub_aecd770d[stor12]:
                    if block.timestamp < sub_aecd770d[stor12]:
                        if False and sub_0fb4d2e5[stor1[arg1].field_256].field_2304 > 0:
                            revert with 'NH{q', 17
                        if stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1:
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_512 = block.timestamp
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0:
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < sub_0fb4d2e5[stor1[arg1].field_256].field_2048:
                            revert with 'NH{q', 17
                        if 1 > uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 0, 'Removing too many user tokens', 0
                        uint256(userInfo[stor1[arg1].field_256][msg.sender])--
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][1][stor12]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1:
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]) = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        uint8(userInfo[stor1[arg1].field_256][msg.sender][3][stor12]) = 1
                        if 1 > sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 0, 32, 38, 0xfe52656d6f76696e6720746f6f206d616e792e20746f74616c207374616b656420746f6b656e, mem[326 len 26] >> 48, 0
                        sub_0fb4d2e5[stor1[arg1].field_256].field_1024--
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 5][stor12].field_0 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1:
                            revert with 'NH{q', 17
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0 = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_2048 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        sub_c0788555[arg1].field_0 = 0
                        sub_c0788555[arg1].field_256 = 0
                        sub_c0788555[arg1].field_512 = 0
                        stor2[stor1[arg1].field_256][stor1[arg1].field_512] = 0
                        if arg1:
                            stor8[msg.sender][stor8[msg.sender][arg1][1]][0] = stor8[msg.sender][arg1][0]
                            stor8[msg.sender][stor8[msg.sender][arg1][0]][1] = stor8[msg.sender][arg1][1]
                            stor8[msg.sender][arg1][0] = 0
                            stor8[msg.sender][arg1][1] = 0
                        if 1 > sub_42e618da[msg.sender]:
                            revert with 0, 32, 35, 0x7352656d6f76696e6720746f6f206d616e7920746f74616c207573657220746f6b656e, mem[419 len 29] >> 24, 0
                    else:
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_512 > block.timestamp:
                            revert with 0, 'Time calculation failed', 0
                        if block.timestamp - sub_0fb4d2e5[stor1[arg1].field_256].field_512 and sub_0fb4d2e5[stor1[arg1].field_256].field_2304 > -1 / block.timestamp - sub_0fb4d2e5[stor1[arg1].field_256].field_512:
                            revert with 'NH{q', 17
                        if stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((block.timestamp * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_0fb4d2e5[stor1[arg1].field_256].field_512 * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)):
                            revert with 'NH{q', 17
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (block.timestamp * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_0fb4d2e5[stor1[arg1].field_256].field_512 * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > !((block.timestamp * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_0fb4d2e5[stor1[arg1].field_256].field_512 * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)):
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_1792 = sub_0fb4d2e5[stor1[arg1].field_256].field_1792 + (block.timestamp * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_0fb4d2e5[stor1[arg1].field_256].field_512 * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)
                        sub_0fb4d2e5[stor1[arg1].field_256].field_512 = block.timestamp
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0:
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < sub_0fb4d2e5[stor1[arg1].field_256].field_2048:
                            revert with 'NH{q', 17
                        if 1 > uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 0, 'Removing too many user tokens', 0
                        uint256(userInfo[stor1[arg1].field_256][msg.sender])--
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][1][stor12]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1:
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]) = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        uint8(userInfo[stor1[arg1].field_256][msg.sender][3][stor12]) = 1
                        if 1 > sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 0, 32, 38, 0xfe52656d6f76696e6720746f6f206d616e792e20746f74616c207374616b656420746f6b656e, mem[390 len 26] >> 48, 0
                        sub_0fb4d2e5[stor1[arg1].field_256].field_1024--
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 5][stor12].field_0 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1:
                            revert with 'NH{q', 17
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0 = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_2048 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        sub_c0788555[arg1].field_0 = 0
                        sub_c0788555[arg1].field_256 = 0
                        sub_c0788555[arg1].field_512 = 0
                        stor2[stor1[arg1].field_256][stor1[arg1].field_512] = 0
                        if arg1:
                            stor8[msg.sender][stor8[msg.sender][arg1][1]][0] = stor8[msg.sender][arg1][0]
                            stor8[msg.sender][stor8[msg.sender][arg1][0]][1] = stor8[msg.sender][arg1][1]
                            stor8[msg.sender][arg1][0] = 0
                            stor8[msg.sender][arg1][1] = 0
                        if 1 > sub_42e618da[msg.sender]:
                            revert with 0, 32, 35, 0x7352656d6f76696e6720746f6f206d616e7920746f74616c207573657220746f6b656e, mem[483 len 29] >> 24, 0
                else:
                    if block.timestamp < sub_aecd770d[stor12]:
                        if False and sub_0fb4d2e5[stor1[arg1].field_256].field_2304 > 0:
                            revert with 'NH{q', 17
                        if stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1:
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_512 = block.timestamp
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0:
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < sub_0fb4d2e5[stor1[arg1].field_256].field_2048:
                            revert with 'NH{q', 17
                        if 1 > uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 0, 'Removing too many user tokens', 0
                        uint256(userInfo[stor1[arg1].field_256][msg.sender])--
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][1][stor12]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1:
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]) = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        uint8(userInfo[stor1[arg1].field_256][msg.sender][3][stor12]) = 1
                        if 1 > sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 0, 32, 38, 0xfe52656d6f76696e6720746f6f206d616e792e20746f74616c207374616b656420746f6b656e, mem[326 len 26] >> 48, 0
                        sub_0fb4d2e5[stor1[arg1].field_256].field_1024--
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 5][stor12].field_0 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1:
                            revert with 'NH{q', 17
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0 = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_2048 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        sub_c0788555[arg1].field_0 = 0
                        sub_c0788555[arg1].field_256 = 0
                        sub_c0788555[arg1].field_512 = 0
                        stor2[stor1[arg1].field_256][stor1[arg1].field_512] = 0
                        if arg1:
                            stor8[msg.sender][stor8[msg.sender][arg1][1]][0] = stor8[msg.sender][arg1][0]
                            stor8[msg.sender][stor8[msg.sender][arg1][0]][1] = stor8[msg.sender][arg1][1]
                            stor8[msg.sender][arg1][0] = 0
                            stor8[msg.sender][arg1][1] = 0
                        if 1 > sub_42e618da[msg.sender]:
                            revert with 0, 32, 35, 0x7352656d6f76696e6720746f6f206d616e7920746f74616c207573657220746f6b656e, mem[419 len 29] >> 24, 0
                    else:
                        if sub_aecd770d[stor12] > block.timestamp:
                            revert with 0, 'Time calculation failed', 0
                        if block.timestamp - sub_aecd770d[stor12] and sub_0fb4d2e5[stor1[arg1].field_256].field_2304 > -1 / block.timestamp - sub_aecd770d[stor12]:
                            revert with 'NH{q', 17
                        if stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((block.timestamp * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)):
                            revert with 'NH{q', 17
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (block.timestamp * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > !((block.timestamp * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)):
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_1792 = sub_0fb4d2e5[stor1[arg1].field_256].field_1792 + (block.timestamp * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)
                        sub_0fb4d2e5[stor1[arg1].field_256].field_512 = block.timestamp
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0:
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < sub_0fb4d2e5[stor1[arg1].field_256].field_2048:
                            revert with 'NH{q', 17
                        if 1 > uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 0, 'Removing too many user tokens', 0
                        uint256(userInfo[stor1[arg1].field_256][msg.sender])--
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][1][stor12]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1:
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]) = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        uint8(userInfo[stor1[arg1].field_256][msg.sender][3][stor12]) = 1
                        if 1 > sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 0, 32, 38, 0xfe52656d6f76696e6720746f6f206d616e792e20746f74616c207374616b656420746f6b656e, mem[390 len 26] >> 48, 0
                        sub_0fb4d2e5[stor1[arg1].field_256].field_1024--
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 5][stor12].field_0 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1:
                            revert with 'NH{q', 17
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0 = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_2048 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        sub_c0788555[arg1].field_0 = 0
                        sub_c0788555[arg1].field_256 = 0
                        sub_c0788555[arg1].field_512 = 0
                        stor2[stor1[arg1].field_256][stor1[arg1].field_512] = 0
                        if arg1:
                            stor8[msg.sender][stor8[msg.sender][arg1][1]][0] = stor8[msg.sender][arg1][0]
                            stor8[msg.sender][stor8[msg.sender][arg1][0]][1] = stor8[msg.sender][arg1][1]
                            stor8[msg.sender][arg1][0] = 0
                            stor8[msg.sender][arg1][1] = 0
                        if 1 > sub_42e618da[msg.sender]:
                            revert with 0, 32, 35, 0x7352656d6f76696e6720746f6f206d616e7920746f74616c207573657220746f6b656e, mem[483 len 29] >> 24, 0
            else:
                if currentPhase > -2:
                    revert with 'NH{q', 17
                if sub_0fb4d2e5[stor1[arg1].field_256].field_512 > sub_aecd770d[stor12]:
                    if sub_aecd770d[stor12 + 1] < sub_aecd770d[stor12]:
                        if False and sub_0fb4d2e5[stor1[arg1].field_256].field_2304 > 0:
                            revert with 'NH{q', 17
                        if stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1:
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_512 = block.timestamp
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0:
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < sub_0fb4d2e5[stor1[arg1].field_256].field_2048:
                            revert with 'NH{q', 17
                        if 1 > uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 0, 'Removing too many user tokens', 0
                        uint256(userInfo[stor1[arg1].field_256][msg.sender])--
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][1][stor12]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1:
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]) = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        uint8(userInfo[stor1[arg1].field_256][msg.sender][3][stor12]) = 1
                        if 1 > sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 0, 32, 38, 0xfe52656d6f76696e6720746f6f206d616e792e20746f74616c207374616b656420746f6b656e, mem[326 len 26] >> 48, 0
                        sub_0fb4d2e5[stor1[arg1].field_256].field_1024--
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 5][stor12].field_0 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1:
                            revert with 'NH{q', 17
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0 = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_2048 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        sub_c0788555[arg1].field_0 = 0
                        sub_c0788555[arg1].field_256 = 0
                        sub_c0788555[arg1].field_512 = 0
                        stor2[stor1[arg1].field_256][stor1[arg1].field_512] = 0
                        if arg1:
                            stor8[msg.sender][stor8[msg.sender][arg1][1]][0] = stor8[msg.sender][arg1][0]
                            stor8[msg.sender][stor8[msg.sender][arg1][0]][1] = stor8[msg.sender][arg1][1]
                            stor8[msg.sender][arg1][0] = 0
                            stor8[msg.sender][arg1][1] = 0
                        if 1 > sub_42e618da[msg.sender]:
                            revert with 0, 32, 35, 0x7352656d6f76696e6720746f6f206d616e7920746f74616c207573657220746f6b656e, mem[419 len 29] >> 24, 0
                    else:
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_512 > sub_aecd770d[stor12 + 1]:
                            revert with 0, 'Time calculation failed', 0
                        if sub_aecd770d[stor12 + 1] - sub_0fb4d2e5[stor1[arg1].field_256].field_512 and sub_0fb4d2e5[stor1[arg1].field_256].field_2304 > -1 / sub_aecd770d[stor12 + 1] - sub_0fb4d2e5[stor1[arg1].field_256].field_512:
                            revert with 'NH{q', 17
                        if stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_0fb4d2e5[stor1[arg1].field_256].field_512 * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)):
                            revert with 'NH{q', 17
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_0fb4d2e5[stor1[arg1].field_256].field_512 * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_0fb4d2e5[stor1[arg1].field_256].field_512 * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)):
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_1792 = sub_0fb4d2e5[stor1[arg1].field_256].field_1792 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_0fb4d2e5[stor1[arg1].field_256].field_512 * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)
                        sub_0fb4d2e5[stor1[arg1].field_256].field_512 = block.timestamp
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0:
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < sub_0fb4d2e5[stor1[arg1].field_256].field_2048:
                            revert with 'NH{q', 17
                        if 1 > uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 0, 'Removing too many user tokens', 0
                        uint256(userInfo[stor1[arg1].field_256][msg.sender])--
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][1][stor12]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1:
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]) = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        uint8(userInfo[stor1[arg1].field_256][msg.sender][3][stor12]) = 1
                        if 1 > sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 0, 32, 38, 0xfe52656d6f76696e6720746f6f206d616e792e20746f74616c207374616b656420746f6b656e, mem[390 len 26] >> 48, 0
                        sub_0fb4d2e5[stor1[arg1].field_256].field_1024--
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 5][stor12].field_0 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1:
                            revert with 'NH{q', 17
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0 = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_2048 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        sub_c0788555[arg1].field_0 = 0
                        sub_c0788555[arg1].field_256 = 0
                        sub_c0788555[arg1].field_512 = 0
                        stor2[stor1[arg1].field_256][stor1[arg1].field_512] = 0
                        if arg1:
                            stor8[msg.sender][stor8[msg.sender][arg1][1]][0] = stor8[msg.sender][arg1][0]
                            stor8[msg.sender][stor8[msg.sender][arg1][0]][1] = stor8[msg.sender][arg1][1]
                            stor8[msg.sender][arg1][0] = 0
                            stor8[msg.sender][arg1][1] = 0
                        if 1 > sub_42e618da[msg.sender]:
                            revert with 0, 32, 35, 0x7352656d6f76696e6720746f6f206d616e7920746f74616c207573657220746f6b656e, mem[483 len 29] >> 24, 0
                else:
                    if sub_aecd770d[stor12 + 1] < sub_aecd770d[stor12]:
                        if False and sub_0fb4d2e5[stor1[arg1].field_256].field_2304 > 0:
                            revert with 'NH{q', 17
                        if stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1:
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_512 = block.timestamp
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0:
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < sub_0fb4d2e5[stor1[arg1].field_256].field_2048:
                            revert with 'NH{q', 17
                        if 1 > uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 0, 'Removing too many user tokens', 0
                        uint256(userInfo[stor1[arg1].field_256][msg.sender])--
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][1][stor12]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1:
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]) = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        uint8(userInfo[stor1[arg1].field_256][msg.sender][3][stor12]) = 1
                        if 1 > sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 0, 32, 38, 0xfe52656d6f76696e6720746f6f206d616e792e20746f74616c207374616b656420746f6b656e, mem[326 len 26] >> 48, 0
                        sub_0fb4d2e5[stor1[arg1].field_256].field_1024--
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 5][stor12].field_0 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1:
                            revert with 'NH{q', 17
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0 = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_2048 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        sub_c0788555[arg1].field_0 = 0
                        sub_c0788555[arg1].field_256 = 0
                        sub_c0788555[arg1].field_512 = 0
                        stor2[stor1[arg1].field_256][stor1[arg1].field_512] = 0
                        if arg1:
                            stor8[msg.sender][stor8[msg.sender][arg1][1]][0] = stor8[msg.sender][arg1][0]
                            stor8[msg.sender][stor8[msg.sender][arg1][0]][1] = stor8[msg.sender][arg1][1]
                            stor8[msg.sender][arg1][0] = 0
                            stor8[msg.sender][arg1][1] = 0
                        if 1 > sub_42e618da[msg.sender]:
                            revert with 0, 32, 35, 0x7352656d6f76696e6720746f6f206d616e7920746f74616c207573657220746f6b656e, mem[419 len 29] >> 24, 0
                    else:
                        if sub_aecd770d[stor12] > sub_aecd770d[stor12 + 1]:
                            revert with 0, 'Time calculation failed', 0
                        if sub_aecd770d[stor12 + 1] - sub_aecd770d[stor12] and sub_0fb4d2e5[stor1[arg1].field_256].field_2304 > -1 / sub_aecd770d[stor12 + 1] - sub_aecd770d[stor12]:
                            revert with 'NH{q', 17
                        if stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)):
                            revert with 'NH{q', 17
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)):
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_1792 = sub_0fb4d2e5[stor1[arg1].field_256].field_1792 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)
                        sub_0fb4d2e5[stor1[arg1].field_256].field_512 = block.timestamp
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0:
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < sub_0fb4d2e5[stor1[arg1].field_256].field_2048:
                            revert with 'NH{q', 17
                        if 1 > uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 0, 'Removing too many user tokens', 0
                        uint256(userInfo[stor1[arg1].field_256][msg.sender])--
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][1][stor12]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1:
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]) = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        uint8(userInfo[stor1[arg1].field_256][msg.sender][3][stor12]) = 1
                        if 1 > sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 0, 32, 38, 0xfe52656d6f76696e6720746f6f206d616e792e20746f74616c207374616b656420746f6b656e, mem[390 len 26] >> 48, 0
                        sub_0fb4d2e5[stor1[arg1].field_256].field_1024--
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 5][stor12].field_0 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1:
                            revert with 'NH{q', 17
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0 = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_2048 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        sub_c0788555[arg1].field_0 = 0
                        sub_c0788555[arg1].field_256 = 0
                        sub_c0788555[arg1].field_512 = 0
                        stor2[stor1[arg1].field_256][stor1[arg1].field_512] = 0
                        if arg1:
                            stor8[msg.sender][stor8[msg.sender][arg1][1]][0] = stor8[msg.sender][arg1][0]
                            stor8[msg.sender][stor8[msg.sender][arg1][0]][1] = stor8[msg.sender][arg1][1]
                            stor8[msg.sender][arg1][0] = 0
                            stor8[msg.sender][arg1][1] = 0
                        if 1 > sub_42e618da[msg.sender]:
                            revert with 0, 32, 35, 0x7352656d6f76696e6720746f6f206d616e7920746f74616c207573657220746f6b656e, mem[483 len 29] >> 24, 0
    else:
        if currentPhase > -2:
            revert with 'NH{q', 17
        if sub_aecd770d[stor12 + 1] <= sub_0fb4d2e5[stor1[arg1].field_256].field_512:
            if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                revert with 'NH{q', 17
            if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]):
                revert with 'NH{q', 17
            if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                revert with 'NH{q', 17
            if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0:
                revert with 'NH{q', 17
            if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                revert with 'NH{q', 17
            if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]):
                revert with 'NH{q', 17
            if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                revert with 'NH{q', 17
            if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < sub_0fb4d2e5[stor1[arg1].field_256].field_2048:
                revert with 'NH{q', 17
            if 1 > uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                revert with 0, 'Removing too many user tokens', 0
            uint256(userInfo[stor1[arg1].field_256][msg.sender])--
            uint256(userInfo[stor1[arg1].field_256][msg.sender][1][stor12]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1
            if uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1:
                revert with 'NH{q', 17
            uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]) = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
            uint8(userInfo[stor1[arg1].field_256][msg.sender][3][stor12]) = 1
            if 1 > sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                revert with 0, 32, 38, 0xfe52656d6f76696e6720746f6f206d616e792e20746f74616c207374616b656420746f6b656e, mem[326 len 26] >> 48, 0
            sub_0fb4d2e5[stor1[arg1].field_256].field_1024--
            stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 5][stor12].field_0 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1
            if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1:
                revert with 'NH{q', 17
            stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0 = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
            if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                revert with 'NH{q', 17
            uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
            if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                revert with 'NH{q', 17
            sub_0fb4d2e5[stor1[arg1].field_256].field_2048 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
            sub_c0788555[arg1].field_0 = 0
            sub_c0788555[arg1].field_256 = 0
            sub_c0788555[arg1].field_512 = 0
            stor2[stor1[arg1].field_256][stor1[arg1].field_512] = 0
            if arg1:
                stor8[msg.sender][stor8[msg.sender][arg1][1]][0] = stor8[msg.sender][arg1][0]
                stor8[msg.sender][stor8[msg.sender][arg1][0]][1] = stor8[msg.sender][arg1][1]
                stor8[msg.sender][arg1][0] = 0
                stor8[msg.sender][arg1][1] = 0
            if 1 > sub_42e618da[msg.sender]:
                revert with 0, 32, 35, 0x7352656d6f76696e6720746f6f206d616e7920746f74616c207573657220746f6b656e, mem[419 len 29] >> 24, 0
        else:
            if currentPhase >= currentPhase:
                if sub_0fb4d2e5[stor1[arg1].field_256].field_512 > sub_aecd770d[stor12]:
                    if block.timestamp < sub_aecd770d[stor12]:
                        if False and sub_0fb4d2e5[stor1[arg1].field_256].field_2304 > 0:
                            revert with 'NH{q', 17
                        if stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1:
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_512 = block.timestamp
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0:
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < sub_0fb4d2e5[stor1[arg1].field_256].field_2048:
                            revert with 'NH{q', 17
                        if 1 > uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 0, 'Removing too many user tokens', 0
                        uint256(userInfo[stor1[arg1].field_256][msg.sender])--
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][1][stor12]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1:
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]) = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        uint8(userInfo[stor1[arg1].field_256][msg.sender][3][stor12]) = 1
                        if 1 > sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 0, 32, 38, 0xfe52656d6f76696e6720746f6f206d616e792e20746f74616c207374616b656420746f6b656e, mem[326 len 26] >> 48, 0
                        sub_0fb4d2e5[stor1[arg1].field_256].field_1024--
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 5][stor12].field_0 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1:
                            revert with 'NH{q', 17
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0 = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_2048 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        sub_c0788555[arg1].field_0 = 0
                        sub_c0788555[arg1].field_256 = 0
                        sub_c0788555[arg1].field_512 = 0
                        stor2[stor1[arg1].field_256][stor1[arg1].field_512] = 0
                        if arg1:
                            stor8[msg.sender][stor8[msg.sender][arg1][1]][0] = stor8[msg.sender][arg1][0]
                            stor8[msg.sender][stor8[msg.sender][arg1][0]][1] = stor8[msg.sender][arg1][1]
                            stor8[msg.sender][arg1][0] = 0
                            stor8[msg.sender][arg1][1] = 0
                        if 1 > sub_42e618da[msg.sender]:
                            revert with 0, 32, 35, 0x7352656d6f76696e6720746f6f206d616e7920746f74616c207573657220746f6b656e, mem[419 len 29] >> 24, 0
                    else:
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_512 > block.timestamp:
                            revert with 0, 'Time calculation failed', 0
                        if block.timestamp - sub_0fb4d2e5[stor1[arg1].field_256].field_512 and sub_0fb4d2e5[stor1[arg1].field_256].field_2304 > -1 / block.timestamp - sub_0fb4d2e5[stor1[arg1].field_256].field_512:
                            revert with 'NH{q', 17
                        if stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((block.timestamp * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_0fb4d2e5[stor1[arg1].field_256].field_512 * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)):
                            revert with 'NH{q', 17
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (block.timestamp * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_0fb4d2e5[stor1[arg1].field_256].field_512 * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > !((block.timestamp * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_0fb4d2e5[stor1[arg1].field_256].field_512 * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)):
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_1792 = sub_0fb4d2e5[stor1[arg1].field_256].field_1792 + (block.timestamp * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_0fb4d2e5[stor1[arg1].field_256].field_512 * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)
                        sub_0fb4d2e5[stor1[arg1].field_256].field_512 = block.timestamp
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0:
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < sub_0fb4d2e5[stor1[arg1].field_256].field_2048:
                            revert with 'NH{q', 17
                        if 1 > uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 0, 'Removing too many user tokens', 0
                        uint256(userInfo[stor1[arg1].field_256][msg.sender])--
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][1][stor12]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1:
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]) = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        uint8(userInfo[stor1[arg1].field_256][msg.sender][3][stor12]) = 1
                        if 1 > sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 0, 32, 38, 0xfe52656d6f76696e6720746f6f206d616e792e20746f74616c207374616b656420746f6b656e, mem[390 len 26] >> 48, 0
                        sub_0fb4d2e5[stor1[arg1].field_256].field_1024--
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 5][stor12].field_0 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1:
                            revert with 'NH{q', 17
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0 = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_2048 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        sub_c0788555[arg1].field_0 = 0
                        sub_c0788555[arg1].field_256 = 0
                        sub_c0788555[arg1].field_512 = 0
                        stor2[stor1[arg1].field_256][stor1[arg1].field_512] = 0
                        if arg1:
                            stor8[msg.sender][stor8[msg.sender][arg1][1]][0] = stor8[msg.sender][arg1][0]
                            stor8[msg.sender][stor8[msg.sender][arg1][0]][1] = stor8[msg.sender][arg1][1]
                            stor8[msg.sender][arg1][0] = 0
                            stor8[msg.sender][arg1][1] = 0
                        if 1 > sub_42e618da[msg.sender]:
                            revert with 0, 32, 35, 0x7352656d6f76696e6720746f6f206d616e7920746f74616c207573657220746f6b656e, mem[483 len 29] >> 24, 0
                else:
                    if block.timestamp < sub_aecd770d[stor12]:
                        if False and sub_0fb4d2e5[stor1[arg1].field_256].field_2304 > 0:
                            revert with 'NH{q', 17
                        if stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1:
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_512 = block.timestamp
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0:
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < sub_0fb4d2e5[stor1[arg1].field_256].field_2048:
                            revert with 'NH{q', 17
                        if 1 > uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 0, 'Removing too many user tokens', 0
                        uint256(userInfo[stor1[arg1].field_256][msg.sender])--
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][1][stor12]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1:
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]) = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        uint8(userInfo[stor1[arg1].field_256][msg.sender][3][stor12]) = 1
                        if 1 > sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 0, 32, 38, 0xfe52656d6f76696e6720746f6f206d616e792e20746f74616c207374616b656420746f6b656e, mem[326 len 26] >> 48, 0
                        sub_0fb4d2e5[stor1[arg1].field_256].field_1024--
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 5][stor12].field_0 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1:
                            revert with 'NH{q', 17
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0 = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_2048 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        sub_c0788555[arg1].field_0 = 0
                        sub_c0788555[arg1].field_256 = 0
                        sub_c0788555[arg1].field_512 = 0
                        stor2[stor1[arg1].field_256][stor1[arg1].field_512] = 0
                        if arg1:
                            stor8[msg.sender][stor8[msg.sender][arg1][1]][0] = stor8[msg.sender][arg1][0]
                            stor8[msg.sender][stor8[msg.sender][arg1][0]][1] = stor8[msg.sender][arg1][1]
                            stor8[msg.sender][arg1][0] = 0
                            stor8[msg.sender][arg1][1] = 0
                        if 1 > sub_42e618da[msg.sender]:
                            revert with 0, 32, 35, 0x7352656d6f76696e6720746f6f206d616e7920746f74616c207573657220746f6b656e, mem[419 len 29] >> 24, 0
                    else:
                        if sub_aecd770d[stor12] > block.timestamp:
                            revert with 0, 'Time calculation failed', 0
                        if block.timestamp - sub_aecd770d[stor12] and sub_0fb4d2e5[stor1[arg1].field_256].field_2304 > -1 / block.timestamp - sub_aecd770d[stor12]:
                            revert with 'NH{q', 17
                        if stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((block.timestamp * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)):
                            revert with 'NH{q', 17
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (block.timestamp * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > !((block.timestamp * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)):
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_1792 = sub_0fb4d2e5[stor1[arg1].field_256].field_1792 + (block.timestamp * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)
                        sub_0fb4d2e5[stor1[arg1].field_256].field_512 = block.timestamp
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0:
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < sub_0fb4d2e5[stor1[arg1].field_256].field_2048:
                            revert with 'NH{q', 17
                        if 1 > uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 0, 'Removing too many user tokens', 0
                        uint256(userInfo[stor1[arg1].field_256][msg.sender])--
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][1][stor12]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1:
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]) = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        uint8(userInfo[stor1[arg1].field_256][msg.sender][3][stor12]) = 1
                        if 1 > sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 0, 32, 38, 0xfe52656d6f76696e6720746f6f206d616e792e20746f74616c207374616b656420746f6b656e, mem[390 len 26] >> 48, 0
                        sub_0fb4d2e5[stor1[arg1].field_256].field_1024--
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 5][stor12].field_0 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1:
                            revert with 'NH{q', 17
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0 = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_2048 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        sub_c0788555[arg1].field_0 = 0
                        sub_c0788555[arg1].field_256 = 0
                        sub_c0788555[arg1].field_512 = 0
                        stor2[stor1[arg1].field_256][stor1[arg1].field_512] = 0
                        if arg1:
                            stor8[msg.sender][stor8[msg.sender][arg1][1]][0] = stor8[msg.sender][arg1][0]
                            stor8[msg.sender][stor8[msg.sender][arg1][0]][1] = stor8[msg.sender][arg1][1]
                            stor8[msg.sender][arg1][0] = 0
                            stor8[msg.sender][arg1][1] = 0
                        if 1 > sub_42e618da[msg.sender]:
                            revert with 0, 32, 35, 0x7352656d6f76696e6720746f6f206d616e7920746f74616c207573657220746f6b656e, mem[483 len 29] >> 24, 0
            else:
                if currentPhase > -2:
                    revert with 'NH{q', 17
                if sub_0fb4d2e5[stor1[arg1].field_256].field_512 > sub_aecd770d[stor12]:
                    if sub_aecd770d[stor12 + 1] < sub_aecd770d[stor12]:
                        if False and sub_0fb4d2e5[stor1[arg1].field_256].field_2304 > 0:
                            revert with 'NH{q', 17
                        if stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1:
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_512 = block.timestamp
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0:
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < sub_0fb4d2e5[stor1[arg1].field_256].field_2048:
                            revert with 'NH{q', 17
                        if 1 > uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 0, 'Removing too many user tokens', 0
                        uint256(userInfo[stor1[arg1].field_256][msg.sender])--
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][1][stor12]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1:
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]) = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        uint8(userInfo[stor1[arg1].field_256][msg.sender][3][stor12]) = 1
                        if 1 > sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 0, 32, 38, 0xfe52656d6f76696e6720746f6f206d616e792e20746f74616c207374616b656420746f6b656e, mem[326 len 26] >> 48, 0
                        sub_0fb4d2e5[stor1[arg1].field_256].field_1024--
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 5][stor12].field_0 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1:
                            revert with 'NH{q', 17
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0 = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_2048 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        sub_c0788555[arg1].field_0 = 0
                        sub_c0788555[arg1].field_256 = 0
                        sub_c0788555[arg1].field_512 = 0
                        stor2[stor1[arg1].field_256][stor1[arg1].field_512] = 0
                        if arg1:
                            stor8[msg.sender][stor8[msg.sender][arg1][1]][0] = stor8[msg.sender][arg1][0]
                            stor8[msg.sender][stor8[msg.sender][arg1][0]][1] = stor8[msg.sender][arg1][1]
                            stor8[msg.sender][arg1][0] = 0
                            stor8[msg.sender][arg1][1] = 0
                        if 1 > sub_42e618da[msg.sender]:
                            revert with 0, 32, 35, 0x7352656d6f76696e6720746f6f206d616e7920746f74616c207573657220746f6b656e, mem[419 len 29] >> 24, 0
                    else:
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_512 > sub_aecd770d[stor12 + 1]:
                            revert with 0, 'Time calculation failed', 0
                        if sub_aecd770d[stor12 + 1] - sub_0fb4d2e5[stor1[arg1].field_256].field_512 and sub_0fb4d2e5[stor1[arg1].field_256].field_2304 > -1 / sub_aecd770d[stor12 + 1] - sub_0fb4d2e5[stor1[arg1].field_256].field_512:
                            revert with 'NH{q', 17
                        if stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_0fb4d2e5[stor1[arg1].field_256].field_512 * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)):
                            revert with 'NH{q', 17
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_0fb4d2e5[stor1[arg1].field_256].field_512 * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_0fb4d2e5[stor1[arg1].field_256].field_512 * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)):
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_1792 = sub_0fb4d2e5[stor1[arg1].field_256].field_1792 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_0fb4d2e5[stor1[arg1].field_256].field_512 * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)
                        sub_0fb4d2e5[stor1[arg1].field_256].field_512 = block.timestamp
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0:
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < sub_0fb4d2e5[stor1[arg1].field_256].field_2048:
                            revert with 'NH{q', 17
                        if 1 > uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 0, 'Removing too many user tokens', 0
                        uint256(userInfo[stor1[arg1].field_256][msg.sender])--
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][1][stor12]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1:
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]) = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        uint8(userInfo[stor1[arg1].field_256][msg.sender][3][stor12]) = 1
                        if 1 > sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 0, 32, 38, 0xfe52656d6f76696e6720746f6f206d616e792e20746f74616c207374616b656420746f6b656e, mem[390 len 26] >> 48, 0
                        sub_0fb4d2e5[stor1[arg1].field_256].field_1024--
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 5][stor12].field_0 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1:
                            revert with 'NH{q', 17
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0 = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_2048 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        sub_c0788555[arg1].field_0 = 0
                        sub_c0788555[arg1].field_256 = 0
                        sub_c0788555[arg1].field_512 = 0
                        stor2[stor1[arg1].field_256][stor1[arg1].field_512] = 0
                        if arg1:
                            stor8[msg.sender][stor8[msg.sender][arg1][1]][0] = stor8[msg.sender][arg1][0]
                            stor8[msg.sender][stor8[msg.sender][arg1][0]][1] = stor8[msg.sender][arg1][1]
                            stor8[msg.sender][arg1][0] = 0
                            stor8[msg.sender][arg1][1] = 0
                        if 1 > sub_42e618da[msg.sender]:
                            revert with 0, 32, 35, 0x7352656d6f76696e6720746f6f206d616e7920746f74616c207573657220746f6b656e, mem[483 len 29] >> 24, 0
                else:
                    if sub_aecd770d[stor12 + 1] < sub_aecd770d[stor12]:
                        if False and sub_0fb4d2e5[stor1[arg1].field_256].field_2304 > 0:
                            revert with 'NH{q', 17
                        if stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1:
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_512 = block.timestamp
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0:
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < sub_0fb4d2e5[stor1[arg1].field_256].field_2048:
                            revert with 'NH{q', 17
                        if 1 > uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 0, 'Removing too many user tokens', 0
                        uint256(userInfo[stor1[arg1].field_256][msg.sender])--
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][1][stor12]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1:
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]) = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        uint8(userInfo[stor1[arg1].field_256][msg.sender][3][stor12]) = 1
                        if 1 > sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 0, 32, 38, 0xfe52656d6f76696e6720746f6f206d616e792e20746f74616c207374616b656420746f6b656e, mem[326 len 26] >> 48, 0
                        sub_0fb4d2e5[stor1[arg1].field_256].field_1024--
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 5][stor12].field_0 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1:
                            revert with 'NH{q', 17
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0 = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_2048 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        sub_c0788555[arg1].field_0 = 0
                        sub_c0788555[arg1].field_256 = 0
                        sub_c0788555[arg1].field_512 = 0
                        stor2[stor1[arg1].field_256][stor1[arg1].field_512] = 0
                        if arg1:
                            stor8[msg.sender][stor8[msg.sender][arg1][1]][0] = stor8[msg.sender][arg1][0]
                            stor8[msg.sender][stor8[msg.sender][arg1][0]][1] = stor8[msg.sender][arg1][1]
                            stor8[msg.sender][arg1][0] = 0
                            stor8[msg.sender][arg1][1] = 0
                        if 1 > sub_42e618da[msg.sender]:
                            revert with 0, 32, 35, 0x7352656d6f76696e6720746f6f206d616e7920746f74616c207573657220746f6b656e, mem[419 len 29] >> 24, 0
                    else:
                        if sub_aecd770d[stor12] > sub_aecd770d[stor12 + 1]:
                            revert with 0, 'Time calculation failed', 0
                        if sub_aecd770d[stor12 + 1] - sub_aecd770d[stor12] and sub_0fb4d2e5[stor1[arg1].field_256].field_2304 > -1 / sub_aecd770d[stor12 + 1] - sub_aecd770d[stor12]:
                            revert with 'NH{q', 17
                        if stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)):
                            revert with 'NH{q', 17
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 = stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > !((sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)):
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_1792 = sub_0fb4d2e5[stor1[arg1].field_256].field_1792 + (sub_aecd770d[stor12 + 1] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304) - (sub_aecd770d[stor12] * sub_0fb4d2e5[stor1[arg1].field_256].field_2304)
                        sub_0fb4d2e5[stor1[arg1].field_256].field_512 = block.timestamp
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 < stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0:
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]):
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792 < sub_0fb4d2e5[stor1[arg1].field_256].field_2048:
                            revert with 'NH{q', 17
                        if 1 > uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 0, 'Removing too many user tokens', 0
                        uint256(userInfo[stor1[arg1].field_256][msg.sender])--
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][1][stor12]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]) - 1:
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]) = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        uint8(userInfo[stor1[arg1].field_256][msg.sender][3][stor12]) = 1
                        if 1 > sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 0, 32, 38, 0xfe52656d6f76696e6720746f6f206d616e792e20746f74616c207374616b656420746f6b656e, mem[390 len 26] >> 48, 0
                        sub_0fb4d2e5[stor1[arg1].field_256].field_1024--
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 5][stor12].field_0 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1 and stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024 - 1:
                            revert with 'NH{q', 17
                        stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0 = -stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0 + (sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0)
                        if uint256(userInfo[stor1[arg1].field_256][msg.sender]) and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / uint256(userInfo[stor1[arg1].field_256][msg.sender]):
                            revert with 'NH{q', 17
                        uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]) = uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        if sub_0fb4d2e5[stor1[arg1].field_256].field_1024 and sub_0fb4d2e5[stor1[arg1].field_256].field_1792 > -1 / sub_0fb4d2e5[stor1[arg1].field_256].field_1024:
                            revert with 'NH{q', 17
                        sub_0fb4d2e5[stor1[arg1].field_256].field_2048 = sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792
                        sub_c0788555[arg1].field_0 = 0
                        sub_c0788555[arg1].field_256 = 0
                        sub_c0788555[arg1].field_512 = 0
                        stor2[stor1[arg1].field_256][stor1[arg1].field_512] = 0
                        if arg1:
                            stor8[msg.sender][stor8[msg.sender][arg1][1]][0] = stor8[msg.sender][arg1][0]
                            stor8[msg.sender][stor8[msg.sender][arg1][0]][1] = stor8[msg.sender][arg1][1]
                            stor8[msg.sender][arg1][0] = 0
                            stor8[msg.sender][arg1][1] = 0
                        if 1 > sub_42e618da[msg.sender]:
                            revert with 0, 32, 35, 0x7352656d6f76696e6720746f6f206d616e7920746f74616c207573657220746f6b656e, mem[483 len 29] >> 24, 0
    ('le', 1, ('stor', ('map', 'msg.sender', ('name', 'sub_42e618da', 3))))
    sub_42e618da[msg.sender]--
    if (uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0) - uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12]):
        if sub_42ac1a56[stor12][msg.sender] > !((uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0) - uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12])):
            revert with 'NH{q', 17
        sub_42ac1a56[stor12][msg.sender] = sub_42ac1a56[stor12][msg.sender] + (uint256(userInfo[stor1[arg1].field_256][msg.sender]) * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0) - uint256(userInfo[stor1[arg1].field_256][msg.sender][2][stor12])
    if (sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0) - stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0:
        if sub_f340efa7[stor12] > !((sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0) - stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0):
            revert with 'NH{q', 17
        sub_f340efa7[stor12] = sub_f340efa7[stor12] + (sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 3][stor12].field_0) - stor[(10 * stor1[arg1].field_256) + ('name', 'sub_0fb4d2e5', 4) + 6][stor12].field_0
    if (uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792) - uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16]):
        if sub_521a6a7d[stor16][msg.sender] > !((uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792) - uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16])):
            revert with 'NH{q', 17
        sub_521a6a7d[stor16][msg.sender] = sub_521a6a7d[stor16][msg.sender] + (uint256(userInfo[stor1[arg1].field_256][msg.sender]) * sub_0fb4d2e5[stor1[arg1].field_256].field_1792) - uint256(userInfo[stor1[arg1].field_256][msg.sender][4][stor16])
    if (sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792) - sub_0fb4d2e5[stor1[arg1].field_256].field_2048:
        if sub_e44c78e0 > !((sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792) - sub_0fb4d2e5[stor1[arg1].field_256].field_2048):
            revert with 'NH{q', 17
        sub_e44c78e0 = sub_e44c78e0 + (sub_0fb4d2e5[stor1[arg1].field_256].field_1024 * sub_0fb4d2e5[stor1[arg1].field_256].field_1792) - sub_0fb4d2e5[stor1[arg1].field_256].field_2048
    require ext_code.size(address(sub_0fb4d2e5[stor1[arg1].field_256].field_0))
    call address(sub_0fb4d2e5[stor1[arg1].field_256].field_0).0x42842e0e with:
         gas gas_remaining wei
        args this.address, msg.sender, sub_c0788555[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Unstake(msg.sender, arg1);
}



}
