contract main {




// =====================  Runtime code  =====================


#
#  - sub_34aa5417(?)
#
const sub_0f55eca7(?) = 0


uint8 stor0; offset 160
address owner;
mapping of struct sub_22a71c4f;
mapping of uint8 stor2;
uint16 fee;
address operatorAddress; offset 16
address treasuryAddress;
address sub_4567da1bAddress;

function sub_22a71c4f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    return sub_22a71c4f[arg1 << 248][2][arg2].field_0
}

function sub_4567da1b(?) payable {
    return sub_4567da1bAddress
}

function operator() payable {
    return operatorAddress
}

function paused() payable {
    return bool(stor0)
}

function treasury() payable {
    return treasuryAddress
}

function sub_8856c0d6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_22a71c4f[arg1].field_0, sub_22a71c4f[arg1].field_256
}

function owner() payable {
    return owner
}

function sub_aa3fd745(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function fee() payable {
    return fee
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

function updateTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
}

function updateOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    operatorAddress = arg1
}

function sub_95a2fb0b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4567da1bAddress = address(arg1)
}

function sub_0553996e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint16(arg1) > 250:
        revert with 0, 'fee can't be more than 2.5%'
    fee = uint16(arg1)
}

function pause() payable {
    if operatorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if operatorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
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

function depositNFT(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_4567da1bAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Nfts not assigned, contact an admin'
    require ext_code.size(sub_4567da1bAddress)
    staticcall sub_4567da1bAddress.0xaa723bb7 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1]:
        revert with 0, 'Invalid type of Gem. Only allowed reality gems'
    require ext_code.size(sub_4567da1bAddress)
    call sub_4567da1bAddress.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor2[msg.sender] = 1
}

function sub_710e64b4(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == uint8(arg1)
    require arg2 == address(arg2)
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    if stor0:
        revert with 0, 'Pausable: paused'
    mem[100] = this.address
    require ext_code.size(sub_22a71c4f[arg1 << 248].field_0)
    staticcall sub_22a71c4f[arg1 << 248].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Insufficient balance'
    mem[ceil32(return_data.size) + 132] = address(arg2)
    mem[ceil32(return_data.size) + 164] = arg3
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_22a71c4f[arg1 << 248].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0
    mem[ceil32(return_data.size) + 328] = 0
    call sub_22a71c4f[arg1 << 248].field_0 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if sub_22a71c4f[arg1 << 248][2][arg4].field_0 > !arg3:
        revert with 'NH{q', 17
    sub_22a71c4f[arg1 << 248][2][arg4].field_0 += arg3
}

function sub_5090c684(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == uint8(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    idx = 0
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98 > test266151307() or ceil32(32 * ('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    idx = 0
    t = ceil32(32 * ('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require cd[100] == bool(cd[100])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length == ('cd', 68).length:
        if not cd[100]:
            idx = 0
            while idx < ('cd', 36).length:
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = sha3(cd[4] << 248, 1) + 2
                if sub_22a71c4f[cd[4] << 248][2][mem[(32 * idx) + 128]].field_0 < mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]:
                    revert with 'NH{q', 17
                sub_22a71c4f[cd[4] << 248][2][mem[(32 * idx) + 128]].field_0 -= mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < ('cd', 36).length:
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = sha3(cd[4] << 248, 1) + 2
                sub_22a71c4f[cd[4] << 248][2][mem[(32 * idx) + 128]].field_0 = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    else:
        if not cd[100]:
            revert with 0, 'Amount of chains and balance must be equal'
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(cd[4] << 248, 1) + 2
            sub_22a71c4f[cd[4] << 248][2][mem[(32 * idx) + 128]].field_0 = 0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_846e195e(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == uint8(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    idx = 0
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98 > test266151307() or ceil32(32 * ('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    idx = 0
    t = ceil32(32 * ('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'Amount of chains and balance must be equal'
    idx = 0
    s = 0
    while idx < ('cd', 68).length:
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = sha3(cd[4] << 248, 1) + 2
        if sub_22a71c4f[cd[4] << 248][2][mem[(32 * idx) + 128]].field_0 > !mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]:
            revert with 'NH{q', 17
        sub_22a71c4f[cd[4] << 248][2][mem[(32 * idx) + 128]].field_0 += mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        if s > !mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
        continue 
    mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 134] = msg.sender
    mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 166] = this.address
    mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 198] = s * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length
    mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98] = 100
    mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 130 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 230] = 32
    mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 262] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_22a71c4f[cd[4] << 248].field_0):
        revert with 0, 'Address: call to non-contract'
    s = 0
    while ('cd', 68).length < 100:
        mem[('cd', 68).length + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 294] = mem[('cd', 68).length + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 130]
        s = ('cd', 68).length + 32
        continue 
    call sub_22a71c4f[cd[4] << 248].field_0.mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 294 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 298 len 96]
    if not return_data.size:
        if not ext_call.success:
            if ('cd', 36).length:
                revert with memory
                  from 128
                   len ('cd', 36).length
            revert with 0, 'SafeERC20: low-level call failed'
        if ('cd', 36).length:
            require ('cd', 36).length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 326 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 326] == bool(mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 326])
            if not mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 326]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_08fb8f53(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == uint8(cd[4])
    require cd[36] == address(cd[36])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 100).length) + 97 > test266151307() or ceil32(32 * ('cd', 100).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 100).length
    require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
    s = cd[100] + 36
    idx = 0
    t = 128
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 98 > test266151307() or ceil32(32 * ('cd', 132).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 100).length) + 97] = ('cd', 132).length
    require calldata.size >= cd[132] + (32 * ('cd', 132).length) + 36
    s = cd[132] + 36
    idx = 0
    t = ceil32(32 * ('cd', 100).length) + 129
    while idx < ('cd', 132).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_22a71c4f[cd[4] << 248].field_0:
        revert with 0, 'reentrant error'
    sub_22a71c4f[cd[4] << 248].field_0 = address(cd[36])
    sub_22a71c4f[cd[4] << 248].field_256 = cd[68]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 100).length != ('cd', 132).length:
        revert with 0, 'Amount of chains and balance must be equal'
    idx = 0
    s = 0
    while idx < ('cd', 132).length:
        if idx >= ('cd', 132).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 100).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = sha3(cd[4] << 248, 1) + 2
        if sub_22a71c4f[cd[4] << 248][2][mem[(32 * idx) + 128]].field_0 > !mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + 129]:
            revert with 'NH{q', 17
        sub_22a71c4f[cd[4] << 248][2][mem[(32 * idx) + 128]].field_0 += mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + 129]
        if idx >= ('cd', 132).length:
            revert with 'NH{q', 50
        if s > !mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + 129]:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + 129]
        continue 
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 134] = msg.sender
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 166] = this.address
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 198] = s * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 98] = 100
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 130 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 230] = 32
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 262] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_22a71c4f[cd[4] << 248].field_0):
        revert with 0, 'Address: call to non-contract'
    s = 0
    while ('cd', 132).length < 100:
        mem[('cd', 132).length + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 294] = mem[('cd', 132).length + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 130]
        s = ('cd', 132).length + 32
        continue 
    call sub_22a71c4f[cd[4] << 248].field_0.mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 294 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 298 len 96]
    if not return_data.size:
        if not ext_call.success:
            if ('cd', 100).length:
                revert with memory
                  from 128
                   len ('cd', 100).length
            revert with 0, 'SafeERC20: low-level call failed'
        if ('cd', 100).length:
            require ('cd', 100).length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 326 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 326] == bool(mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 326])
            if not mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 326]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
