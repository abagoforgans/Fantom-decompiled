contract main {




// =====================  Runtime code  =====================


const sub_44d2f0c0(?) = 0xf41270836df4db1d28f7fd0935270e3a603e78cc

const sub_e0ad52ba(?) = 1

const sub_e177164f(?) = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb


uint8 stor0; offset 160
address owner;
mapping of uint256 sub_d6370db3;
mapping of uint256 sub_087ee457;
array of uint256 stor3;
address sub_476182a2Address;
uint256 stor5;

function sub_087ee457(?) {
    require calldata.size - 4 >= 32
    return sub_087ee457[arg1]
}

function sub_476182a2(?) {
    return sub_476182a2Address
}

function owner() {
    return owner
}

function sub_d6370db3(?) {
    require calldata.size - 4 >= 32
    return sub_d6370db3[arg1]
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

function isRegistered(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        if stor3[idx] == arg1:
            return 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
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

function sub_07aba5c5(?) {
    if stor3.length > test266151307():
        revert with 0, 65
    if stor3.length:
        mem[128 len 32 * stor3.length] = call.data[calldata.size len 32 * stor3.length]
    s = 0
    idx = 0
    while idx < stor3.length:
        mem[0] = stor3[idx]
        mem[32] = 1
        if sub_d6370db3[stor3[idx]] <= 0:
            if idx == -1:
                revert with 0, 17
            s = s
            idx = idx + 1
            continue 
        if idx >= stor3.length:
            revert with 0, 50
        mem[0] = 3
        if s >= stor3.length:
            revert with 0, 50
        mem[(32 * s) + 128] = stor3[idx]
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        s = s + 1
        idx = idx + 1
        continue 
    return Array(len=stor3.length, data=mem[128 len 32 * stor3.length])
}

function sub_f6cf2a16(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Neither owner nor approved'
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        if stor3[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
        staticcall 0xf41270836df4db1d28f7fd0935270e3a603e78cc.allowance(uint256 arg1, uint256 arg2) with:
                gas gas_remaining wei
               args arg1, stor5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Authorize BazaarKeeper to handle your materials first'
        sub_d6370db3[arg1] = arg2
        sub_087ee457[arg1] = arg3
        emit 0xf7adc9a0: arg1, arg2, arg3
    stor3.length++
    stor3[stor3.length] = arg1
    require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
    staticcall 0xf41270836df4db1d28f7fd0935270e3a603e78cc.allowance(uint256 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args arg1, stor5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Authorize BazaarKeeper to handle your materials first'
    sub_d6370db3[arg1] = arg2
    sub_087ee457[arg1] = arg3
    emit 0xf7adc9a0: arg1, arg2, arg3
}

function sub_72b3978f(?) payable {
    require calldata.size - 4 >= 96
    if stor0:
        revert with 0, 'Reentrancy attack!'
    stor0 = 1
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount needs to be a positive number'
    if arg3 > sub_d6370db3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Seller does not have enough materials in for sale'
    require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
    staticcall 0xf41270836df4db1d28f7fd0935270e3a603e78cc.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Seller does not have enough materials in stock'
    require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
    staticcall 0xf41270836df4db1d28f7fd0935270e3a603e78cc.allowance(uint256 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args arg1, stor5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Seller has not authorized bazaar to handle their materials'
    if sub_087ee457[arg1] and arg3 > -1 / sub_087ee457[arg1]:
        revert with 0, 17
    if sub_087ee457[arg1] * arg3 != msg.value:
        revert with 0, 'Please send exact amount'
    require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
    call 0xf41270836df4db1d28f7fd0935270e3a603e78cc.transferFrom(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args stor5, arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if msg.value and 1 > -1 / msg.value:
        revert with 0, 17
    if msg.value < msg.value / 100:
        revert with 0, 17
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call ext_call.return_data[12 len 20] with:
       value msg.value - (msg.value / 100) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_d6370db3[arg1] < arg3:
        revert with 0, 17
    sub_d6370db3[arg1] -= arg3
    emit 0xf7adc9a0: arg1, sub_d6370db3[arg1] - arg3, sub_087ee457[arg1]
    emit 0x6ee2d7a7: arg3, arg2, arg1, sub_087ee457[arg1]
    stor0 = 0
}



}
