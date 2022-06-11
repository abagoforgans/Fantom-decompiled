contract main {




// =====================  Runtime code  =====================


const sub_0e99d70d(?) = 10^18

const sub_e0ad52ba(?) = 2


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address sub_348d4be6Address;
mapping of uint256 sub_c0a5e34b;
mapping of uint256 sub_92873644;
array of address stor4;
address sub_476182a2Address;

function sub_348d4be6(?) {
    return sub_348d4be6Address
}

function sub_476182a2(?) {
    return sub_476182a2Address
}

function owner() {
    return owner
}

function sub_92873644(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_92873644[arg1][arg2]
}

function sub_c0a5e34b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_c0a5e34b[arg1][arg2]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_ef455455(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_476182a2Address != msg.sender:
        revert with 0, 'You are not the BazaarKeeper'
    emit 0x550e15af: sub_476182a2Address, address(arg1)
    sub_476182a2Address = address(arg1)
}

function withdrawFees() {
    if sub_476182a2Address != msg.sender:
        revert with 0, 'You are not the BazaarKeeper'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_56afb487(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        if stor4[idx] == address(arg1):
            return 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_6bc8ecb5(?) payable {
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        if stor4[idx] == msg.sender:
            revert with 0, 'You already have a license'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 10^18 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please send exact amount to pay for license'
    stor4.length++
    stor4[stor4.length] = msg.sender
}

function sub_f6cf2a16(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        if stor4[idx] != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        require ext_code.size(sub_348d4be6Address)
        staticcall sub_348d4be6Address.isApprovedForAll(address arg1, address arg2) with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Authorize Bazaar to handle your Gems first'
        sub_c0a5e34b[address(msg.sender)][arg1] = arg2
        sub_92873644[address(msg.sender)][arg1] = arg3
        emit 0xc8f3e935: msg.sender, arg1, arg2, arg3
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not permitted to sell on this bazaar'
}

function sub_348d9d51(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor4.length
    mem[64] = (32 * stor4.length) + 128
    if stor4.length:
        mem[128 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
    s = 0
    idx = 0
    while idx < stor4.length:
        mem[0] = arg1
        mem[32] = sha3(stor4[idx], 2)
        if sub_c0a5e34b[stor4[idx]][arg1] <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            s = s
            idx = idx + 1
            continue 
        if idx >= stor4.length:
            revert with 'NH{q', 50
        mem[0] = 4
        if s >= stor4.length:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = stor4[idx]
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx + 1
        continue 
    mem[(32 * stor4.length) + 128] = 32
    mem[(32 * stor4.length) + 160] = stor4.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor4.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor4.length) + -mem[64] + 192
}

function sub_ccd5e661(?) {
    if stor4.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor4.length
    mem[64] = (32 * stor4.length) + 128
    if stor4.length:
        mem[128 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
    s = 0
    t = 0
    idx = 0
    while idx < stor4.length:
        u = s
        t = 0
        while t < 12:
            if idx >= stor4.length:
                revert with 'NH{q', 50
            mem[0] = t
            mem[32] = sha3(stor4[idx], 2)
            if sub_c0a5e34b[stor4[idx]][t] <= 0:
                if t == -1:
                    revert with 'NH{q', 17
                u = u
                t = t + 1
                continue 
            if idx >= stor4.length:
                revert with 'NH{q', 50
            mem[0] = 4
            if u >= stor4.length:
                revert with 'NH{q', 50
            mem[(32 * u) + 128] = stor4[idx]
            if u > -2:
                revert with 'NH{q', 17
            if t == -1:
                revert with 'NH{q', 17
            u = u + 1
            t = t + 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        s = u
        t = t
        idx = idx + 1
        continue 
    mem[(32 * stor4.length) + 128] = 32
    mem[(32 * stor4.length) + 160] = stor4.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor4.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor4.length) + -mem[64] + 192
}

function sub_40feee91(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor1.field_160):
        revert with 0, 'Reentrancy attack!'
    Mask(96, 0, stor1.field_160) = 1
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount needs to be a positive number'
    if sub_c0a5e34b[address(arg1)][arg2] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Seller does not have enough gems in for sale'
    require ext_code.size(sub_348d4be6Address)
    staticcall sub_348d4be6Address.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Seller does not have enough gems in stock'
    require ext_code.size(sub_348d4be6Address)
    staticcall sub_348d4be6Address.isApprovedForAll(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Seller has not authorized bazaar to handle their gems'
    if sub_92873644[address(arg1)][arg2] and arg3 > -1 / sub_92873644[address(arg1)][arg2]:
        revert with 'NH{q', 17
    if sub_92873644[address(arg1)][arg2] * arg3 != msg.value:
        revert with 0, 'Please send exact amount'
    require ext_code.size(sub_348d4be6Address)
    call sub_348d4be6Address.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args address(arg1), msg.sender, arg2, arg3, 160, 30, Mask(240, 16, 'Purchased gems from the Bazaar', 0) >> 16, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value and 2 > -1 / msg.value:
        revert with 'NH{q', 17
    if msg.value < 2 * msg.value / 100:
        revert with 'NH{q', 17
    call address(arg1) with:
       value msg.value - (2 * msg.value / 100) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_c0a5e34b[address(arg1)][arg2] < arg3:
        revert with 'NH{q', 17
    sub_c0a5e34b[address(arg1)][arg2] -= arg3
    emit 0xc8f3e935: address(arg1), arg2, sub_c0a5e34b[address(arg1)][arg2] - arg3, sub_92873644[address(arg1)][arg2]
    emit 0xc761d5da: msg.sender, address(arg1), arg2, sub_92873644[address(arg1)][arg2], arg3
    Mask(96, 0, stor1.field_160) = 0
}



}
