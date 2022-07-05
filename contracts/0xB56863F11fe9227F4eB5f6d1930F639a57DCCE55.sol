contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;
address sub_ddd1ee63Address;
address sub_7c91eb3fAddress;
address sub_f0fd9bb4Address;
address sub_2ee43db5Address;
address paymentAddress;
address sub_4b72a2abAddress;
address burnAddress;
uint256 sub_6b9fc368;
uint256 sub_22ab155e;
uint256 sub_83f35d47;
uint256 sub_f018b7e2;
mapping of address sub_3098c84f;
array of struct stor18;
mapping of struct sub_13d13bcf;
mapping of struct stor20;

function sub_13d13bcf(?) {
    require calldata.size - 4 >= 32
    return sub_13d13bcf[arg1].field_0, sub_13d13bcf[arg1].field_256, sub_13d13bcf[arg1].field_512, sub_13d13bcf[arg1].field_768
}

function sub_22ab155e(?) {
    return sub_22ab155e
}

function sub_2ee43db5(?) {
    return sub_2ee43db5Address
}

function sub_3098c84f(?) {
    require calldata.size - 4 >= 32
    return sub_3098c84f[arg1]
}

function sub_4b72a2ab(?) {
    return sub_4b72a2abAddress
}

function paymentAddress() {
    return paymentAddress
}

function sub_6b9fc368(?) {
    return sub_6b9fc368
}

function burnAddress() {
    return burnAddress
}

function sub_7c91eb3f(?) {
    return sub_7c91eb3fAddress
}

function sub_83f35d47(?) {
    return sub_83f35d47
}

function owner() {
    return owner
}

function sub_ddd1ee63(?) {
    return sub_ddd1ee63Address
}

function sub_f018b7e2(?) {
    return sub_f018b7e2
}

function sub_f0fd9bb4(?) {
    return sub_f0fd9bb4Address
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

function sub_e743c161(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setPackCreditToken: Cannot be address 0'
    sub_4b72a2abAddress = address(arg1)
    emit 0xd42aee90: address(arg1)
}

function sub_92405201(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setBoosterPackFee: must be positive non-zero fee'
    if arg1 and 10^18 > -1 / arg1:
        revert with 0, 17
    if not sub_22ab155e:
        revert with 0, 18
    sub_6b9fc368 = 10^18 * arg1 / sub_22ab155e
    emit 0xb6073021: arg1
}

function sub_142107ad(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor18[address(arg1)].field_0:
        mem[128] = stor18[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor18[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor18[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor18[address(arg1)].field_0, data=mem[128 len 32 * stor18[address(arg1)].field_0])
    mem[(32 * stor18[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor18[address(arg1)].field_0) + 160] = stor18[address(arg1)].field_0
    mem[(32 * stor18[address(arg1)].field_0) + 192 len 32 * stor18[address(arg1)].field_0] = mem[128 len 32 * stor18[address(arg1)].field_0]
    return memory
      from (32 * stor18[address(arg1)].field_0) + 128
       len (96 * stor18[address(arg1)].field_0) + 64
}

function buyBoosterPack() payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if msg.value < sub_6b9fc368:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'generateBoosterPack: insufficient payment amount'
    call paymentAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_f018b7e2 <= 0:
        revert with 0, 'generateBoosterPack: none left'
    stor18[address(msg.sender)].field_0++
    stor18[address(msg.sender)][stor18[address(msg.sender)].field_0].field_0 = sub_83f35d47
    sub_3098c84f[stor11] = msg.sender
    sub_13d13bcf[stor11].field_0 = stor20[stor12].field_0
    sub_13d13bcf[stor11].field_256 = stor20[stor12].field_256
    sub_13d13bcf[stor11].field_512 = stor20[stor12].field_512
    sub_13d13bcf[stor11].field_768 = stor20[stor12].field_768
    require ext_code.size(sub_ddd1ee63Address)
    call sub_ddd1ee63Address.0x94bf804d with:
         gas gas_remaining wei
        args stor20[stor12].field_0, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_7c91eb3fAddress)
    call sub_7c91eb3fAddress.0x94bf804d with:
         gas gas_remaining wei
        args stor20[stor12].field_256, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f0fd9bb4Address)
    call sub_f0fd9bb4Address.0x94bf804d with:
         gas gas_remaining wei
        args stor20[stor12].field_512, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_2ee43db5Address)
    call sub_2ee43db5Address.0x94bf804d with:
         gas gas_remaining wei
        args stor20[stor12].field_768, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x3670e574: sub_83f35d47, msg.sender
    if sub_83f35d47 > -2:
        revert with 0, 17
    sub_83f35d47++
    if sub_f018b7e2 < 1:
        revert with 0, 17
    sub_f018b7e2--
    stor0 = 1
}

function sub_5b821719(?) {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not sub_4b72a2abAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'redeemPackToken: credit token address not set'
    mem[96] = 0x5d9f8af700000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(sub_4b72a2abAddress)
    staticcall sub_4b72a2abAddress.0x5d9f8af7 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _9 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if (32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 < 0 or ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    require return_data.size >= _8 + (32 * _9) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _9] = mem[_8 + 128 len 32 * _9]
    if _9 <= 0:
        revert with 0, 'redeemPackToken: no tokens available'
    if 0 >= _9:
        revert with 0, 50
    require ext_code.size(sub_4b72a2abAddress)
    call sub_4b72a2abAddress.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, burnAddress, mem[ceil32(return_data.size) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_f018b7e2 <= 0:
        revert with 0, 'generateBoosterPack: none left'
    stor18[address(msg.sender)].field_0++
    stor18[address(msg.sender)][stor18[address(msg.sender)].field_0].field_0 = sub_83f35d47
    sub_3098c84f[stor11] = msg.sender
    sub_13d13bcf[stor11].field_0 = stor20[stor12].field_0
    sub_13d13bcf[stor11].field_256 = stor20[stor12].field_256
    sub_13d13bcf[stor11].field_512 = stor20[stor12].field_512
    sub_13d13bcf[stor11].field_768 = stor20[stor12].field_768
    require ext_code.size(sub_ddd1ee63Address)
    call sub_ddd1ee63Address.0x94bf804d with:
         gas gas_remaining wei
        args stor20[stor12].field_0, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_7c91eb3fAddress)
    call sub_7c91eb3fAddress.0x94bf804d with:
         gas gas_remaining wei
        args stor20[stor12].field_256, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f0fd9bb4Address)
    call sub_f0fd9bb4Address.0x94bf804d with:
         gas gas_remaining wei
        args stor20[stor12].field_512, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_2ee43db5Address)
    call sub_2ee43db5Address.0x94bf804d with:
         gas gas_remaining wei
        args stor20[stor12].field_768, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x3670e574: sub_83f35d47, msg.sender
    if sub_83f35d47 > -2:
        revert with 0, 17
    sub_83f35d47++
    if sub_f018b7e2 < 1:
        revert with 0, 17
    sub_f018b7e2--
    stor0 = 1
}

function sub_1e330020(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ('cd', 4).length:
        revert with 0, 50
    _52 = mem[128]
    mem[(32 * ('cd', 4).length) + 132] = mem[128]
    require ext_code.size(sub_ddd1ee63Address)
    staticcall sub_ddd1ee63Address.0xb249c92f with:
            gas gas_remaining wei
           args _52
    mem[(32 * ('cd', 4).length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'addMeta: Insufficient SF supply'
    if 1 >= ('cd', 4).length:
        revert with 0, 50
    _60 = mem[160]
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 132] = mem[160]
    require ext_code.size(sub_7c91eb3fAddress)
    staticcall sub_7c91eb3fAddress.0xb249c92f with:
            gas gas_remaining wei
           args _60
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'addMeta: Insufficient MO supply'
    if 2 >= ('cd', 4).length:
        revert with 0, 50
    _68 = mem[192]
    mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 132] = mem[192]
    require ext_code.size(sub_f0fd9bb4Address)
    staticcall sub_f0fd9bb4Address.0xb249c92f with:
            gas gas_remaining wei
           args _68
    mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'addMeta: Insufficient mythic supply'
    if 3 >= ('cd', 4).length:
        revert with 0, 50
    _76 = mem[224]
    mem[(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 132] = mem[224]
    require ext_code.size(sub_2ee43db5Address)
    staticcall sub_2ee43db5Address.0xb249c92f with:
            gas gas_remaining wei
           args _76
    mem[(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'addMeta: Insufficient bot supply'
    if 1 > !sub_f018b7e2:
        revert with 0, 17
    sub_f018b7e2++
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    mem[(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 128] = mem[128]
    if 1 >= ('cd', 4).length:
        revert with 0, 50
    mem[(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 160] = mem[160]
    if 2 >= ('cd', 4).length:
        revert with 0, 50
    mem[(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 192] = mem[192]
    if 3 >= ('cd', 4).length:
        revert with 0, 50
    mem[(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 224] = mem[224]
    stor20[stor12].field_0 = mem[(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 128]
    stor20[stor12].field_256 = mem[(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 160]
    stor20[stor12].field_512 = mem[(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 192]
    stor20[stor12].field_768 = mem[(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 224]
}



}
