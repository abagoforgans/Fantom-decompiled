contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_61ac780e;
uint256 gasPriceLimit;
uint8 sub_74fbcd1f;
address sub_86f85660Address; offset 8
uint256 stor3;
address feeReceiverAddress;
array of struct stor5;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function sub_61ac780e(?) {
    return sub_61ac780e
}

function sub_74fbcd1f(?) {
    return bool(sub_74fbcd1f)
}

function sub_86f85660(?) {
    return sub_86f85660Address
}

function owner() {
    return owner
}

function gasPriceLimit() {
    return gasPriceLimit
}

function feeReceiver() {
    return feeReceiverAddress
}

function _fallback() payable {
    revert
}

function sub_34c168a3(?) {
    require calldata.size - 4 >= 32
    if sub_74fbcd1f:
        return arg1 <= gasPriceLimit
    return 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setNewFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_61ac780e = arg1
    emit 0xcb6d7cd9: arg1
}

function setGasPriceLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    gasPriceLimit = arg1
    emit 0x72a57b09: arg1
}

function sub_f10f864e(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = not sub_74fbcd1f or Mask(248, 8, stor3)
    emit 0x5135c55f: bool(uint8(not sub_74fbcd1f))
}

function sub_36d167b4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_86f85660Address = address(arg1)
    emit 0xb65aa466: address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_f9a0be42(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 'Address: insufficient balance'
    call feeReceiverAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    emit 0xe55a9828: msg.sender
}

function getAllSales() {
    mem[64] = (32 * stor5.length) + 128
    mem[96] = stor5.length
    if not stor5.length:
        mem[(32 * stor5.length) + 128] = 32
        mem[(32 * stor5.length) + 160] = stor5.length
        idx = 0
        s = (32 * stor5.length) + 192
        t = 128
        while idx < stor5.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor5.length) + 128
           len (96 * stor5.length) + 64
    mem[128] = address(stor5.field_0)
    idx = 128
    s = 0
    while (32 * stor5.length) + 96 > idx:
        mem[idx + 32] = stor5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5.length) + 128] = 32
    mem[(32 * stor5.length) + 160] = stor5.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor5.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor5.length) + -mem[64] + 192
}

function sub_fecdf6d5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address rg1, uint256 rg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call address(arg1) with:
       funct Mask(32, 224, transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0], 0) << 288)
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
    emit SentToken(address(arg1), ext_call.return_data[0]);
}

function sub_5023ab65(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 416
    require ('cd', 4).length == address(('cd', 4).length)
    require ('cd', 4)[0] == address(('cd', 4)[0])
    mem[128] = ('cd', 4)[0]
    mem[160] = ('cd', 4)[1]
    mem[192] = ('cd', 4)[2]
    mem[224] = ('cd', 4)[3]
    mem[256] = ('cd', 4)[4]
    mem[288] = ('cd', 4)[5]
    mem[320] = ('cd', 4)[6]
    mem[352] = ('cd', 4)[7]
    require ('cd', 4)[8] <= test266151307()
    require cd[4] + ('cd', 4)[8] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[8] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + 513 < 512 or ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + 513 > test266151307():
        revert with 0, 65
    mem[512] = cd[(cd[4] + ('cd', 4)[8] + 4)]
    require cd[4] + ('cd', 4)[8] + cd[(cd[4] + ('cd', 4)[8] + 4)] + 36 <= calldata.size
    mem[544 len cd[(cd[4] + ('cd', 4)[8] + 4)]] = call.data[cd[4] + ('cd', 4)[8] + 36 len cd[(cd[4] + ('cd', 4)[8] + 4)]]
    mem[384] = 512
    require ('cd', 4)[9] == address(('cd', 4)[9])
    mem[416] = ('cd', 4)[9]
    require ('cd', 4)[10] == address(('cd', 4)[10])
    mem[448] = ('cd', 4)[10]
    mem[480] = ('cd', 4)[11]
    if not sub_86f85660Address:
        revert with 0, 'Base sale contract not set'
    if not address(('cd', 4)[10]):
        revert with 0, 'Sale creator is empty'
    if ('cd', 4)[3] <= ('cd', 4)[2]:
        revert with 0, 'Sale hardcap is lesser than softcap'
    if not address(('cd', 4)[9]):
        revert with 0, 'Sale target router is empty'
    if address(('cd', 4)[10]) != msg.sender:
        revert with 0, 'Creator doesnt match the caller'
    if not address(('cd', 4).length):
        revert with 0, 'Token not set'
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, sub_86f85660Address, 0x5af43d82803e903d91602b57fd5bf3
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + 517] = 32
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + 549] = address(('cd', 4).length)
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + 581] = address(('cd', 4)[0])
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + 613] = ('cd', 4)[1]
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + 645] = ('cd', 4)[2]
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + 677] = ('cd', 4)[3]
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + 709] = ('cd', 4)[4]
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + 741] = ('cd', 4)[5]
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + 773] = ('cd', 4)[6]
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + 805] = ('cd', 4)[7]
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + 837] = 416
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + 965] = cd[(cd[4] + ('cd', 4)[8] + 4)]
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + 997 len ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])] = call.data[cd[4] + ('cd', 4)[8] + 36 len cd[(cd[4] + ('cd', 4)[8] + 4)]], Mask(8 * ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) - cd[(cd[4] + ('cd', 4)[8] + 4)], -(8 * ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + -ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + 27) + 256, 32) >> -(8 * ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + -ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + 27) + 256
    if ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) > cd[(cd[4] + ('cd', 4)[8] + 4)]:
        mem[cd[(cd[4] + ('cd', 4)[8] + 4)] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + 997] = 0
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + 869] = address(('cd', 4)[9])
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + 901] = address(('cd', 4)[10])
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + 933] = ('cd', 4)[11]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x3fe50bf1 with:
         gas gas_remaining wei
        args 32, address(('cd', 4).length), address(('cd', 4)[0]), ('cd', 4)[1], ('cd', 4)[2], ('cd', 4)[3], ('cd', 4)[4], ('cd', 4)[5], ('cd', 4)[6], ('cd', 4)[7], 416, address(('cd', 4)[9]), address(('cd', 4)[10]), ('cd', 4)[11], cd[(cd[4] + ('cd', 4)[8] + 4)], call.data[cd[4] + ('cd', 4)[8] + 36 len cd[(cd[4] + ('cd', 4)[8] + 4)]], Mask(8 * ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) - cd[(cd[4] + ('cd', 4)[8] + 4)], -(8 * ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + -ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + 27) + 256, 32) >> -(8 * ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)]) + -ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + 27) + 256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    staticcall address(create.new_address).getRequiredAllocationOfTokens() with:
            gas gas_remaining wei
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + 513] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + ceil32(return_data.size) + 549] = msg.sender
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + ceil32(return_data.size) + 581] = address(create.new_address)
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + ceil32(return_data.size) + 613] = ext_call.return_data[0]
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + ceil32(return_data.size) + 513] = 100
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + ceil32(return_data.size) + 549 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + ceil32(return_data.size) + 545 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + ceil32(return_data.size) + 645] = 32
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + ceil32(return_data.size) + 677] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(('cd', 4).length)):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + ceil32(return_data.size) + 709 len 128] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(create.new_address), ext_call.return_data[0], 0
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + ceil32(return_data.size) + 809] = 0
    call address(('cd', 4).length) with:
       funct Mask(32, 224, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(create.new_address), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(create.new_address), ext_call.return_data[0], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ('cd', 4).length:
                revert with memory
                  from 128
                   len ('cd', 4).length
            revert with 0, 'SafeERC20: low-level call failed'
        if ('cd', 4).length:
            require ('cd', 4).length >= 32
            require ('cd', 4)[0] == bool(('cd', 4)[0])
            if not ('cd', 4)[0]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + ceil32(return_data.size) + 741 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + ceil32(return_data.size) + 741] == bool(mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + ceil32(return_data.size) + 741])
            if not mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[8] + 4)])) + ceil32(return_data.size) + 741]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(address(('cd', 4).length))
    staticcall address(('cd', 4).length).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'Not enough tokens gotten to new sale'
    stor5.length++
    stor36B6[stor5.length] = address(create.new_address)
    emit 0x357ca1dc: address(create.new_address)
    return address(create.new_address)
}



}
