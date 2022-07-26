contract main {




// =====================  Runtime code  =====================


const BASE = 10000


address owner;
uint256 stor1;
uint16 minBidIncreasePercent;
uint16 sub_6b452c02; offset 16
uint16 sub_ebda93e9; offset 32
mapping of struct stor3;
mapping of uint256 stor4;
array of struct sub_00f82f92;
address stor6;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function sub_00f82f92(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_00f82f92.length
    return sub_00f82f92[arg1].field_0
}

function sub_6b452c02(?) {
    return sub_6b452c02
}

function owner() {
    return owner
}

function minBidIncreasePercent() {
    return minBidIncreasePercent
}

function sub_ebda93e9(?) {
    return sub_ebda93e9
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

function sub_1cb14fb5(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint16(arg1) > 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No sniping time cannot be more than an hour.'
    sub_ebda93e9 = uint16(arg1)
}

function sub_7c30a45d(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint16(arg1) > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Min bid increase percent must be less than 100%.'
    minBidIncreasePercent = uint16(arg1)
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

function sub_3e2f359a(?) {
    require calldata.size - 4 >= 32
    if not stor3[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There is no auction for this token id.'
    if stor3[arg1].field_1280 and minBidIncreasePercent > -1 / stor3[arg1].field_1280:
        revert with 0, 17
    if stor3[arg1].field_1280 > !(stor3[arg1].field_1280 * minBidIncreasePercent / 10000):
        revert with 0, 17
    return (stor3[arg1].field_1280 + (stor3[arg1].field_1280 * minBidIncreasePercent / 10000))
}

function sub_50ff6acb(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint16(arg1) > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Outbid refund percent must be less than 100%.'
    if minBidIncreasePercent < 100:
        revert with 0, 17
    if uint16(arg1) >= uint16(minBidIncreasePercent - 100):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Outbid refund percent must be less than the min bid increase percent.'
    sub_6b452c02 = uint16(arg1)
}

function sub_453ea738(?) {
    if sub_00f82f92.length:
        mem[128] = uint256(sub_00f82f92.field_0)
        idx = 128
        s = 0
        while (32 * sub_00f82f92.length) + 96 > idx:
            mem[idx + 32] = sub_00f82f92[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_00f82f92.length, data=mem[128 len 32 * sub_00f82f92.length])
    mem[(32 * sub_00f82f92.length) + 128] = 32
    mem[(32 * sub_00f82f92.length) + 160] = sub_00f82f92.length
    mem[(32 * sub_00f82f92.length) + 192 len 32 * sub_00f82f92.length] = mem[128 len 32 * sub_00f82f92.length]
    return memory
      from (32 * sub_00f82f92.length) + 128
       len (96 * sub_00f82f92.length) + 64
}

function sub_d9c19954(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor3[arg1].field_512:
        revert with 0, 'Auction does not exist'
    if stor3[arg1].field_1536:
        if stor3[arg1].field_1536 == uint255(stor3[arg1].field_1536) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor3[arg1][6][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor3[arg1].field_1536 = 0
            idx = 0
            while (uint255(stor3[arg1].field_1536) * 0.5) + 31 / 32 > idx:
                stor3[arg1][idx + 6].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor3[arg1].field_1536 == stor3[arg1].field_1537 < 32:
            revert with 0, 34
        if arg2.length:
            stor3[arg1][6][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor3[arg1].field_1536 = 0
            idx = 0
            while stor3[arg1].field_1537 + 31 / 32 > idx:
                stor3[arg1][idx + 6].field_0 = 0
                idx = idx + 1
                continue 
}

function bid(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There is no auction for this token id.'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if msg.sender == stor3[arg1].field_1024:
        revert with 0, 'You already bid on this Auction.'
    if stor3[arg1].field_1280 and minBidIncreasePercent > -1 / stor3[arg1].field_1280:
        revert with 0, 17
    if stor3[arg1].field_1280 > !(stor3[arg1].field_1280 * minBidIncreasePercent / 10000):
        revert with 0, 17
    if stor3[arg1].field_1280 + (stor3[arg1].field_1280 * minBidIncreasePercent / 10000) > msg.value:
        revert with 0, 'Bid too low.'
    if stor3[arg1].field_512 < block.timestamp:
        if stor3[arg1].field_768 > !sub_ebda93e9:
            revert with 0, 17
        if stor3[arg1].field_768 + sub_ebda93e9 < block.timestamp:
            revert with 0, 'Auction already ended.'
    if not stor3[arg1].field_1024:
        if stor6:
            if False and sub_6b452c02 > 0:
                revert with 0, 17
        if msg.value < 0:
            revert with 0, 17
        emit 0x6db75787: block.timestamp, msg.value, 0, stor3[arg1].field_0, msg.sender, stor6
        stor3[arg1].field_1024 = msg.sender
        stor3[arg1].field_1280 = msg.value
        stor3[arg1].field_768 = block.timestamp
    else:
        if stor3[arg1].field_1280 and sub_6b452c02 > -1 / stor3[arg1].field_1280:
            revert with 0, 17
        if msg.value < stor3[arg1].field_1280 * sub_6b452c02 / 10000:
            revert with 0, 17
        emit 0x6db75787: block.timestamp, msg.value - (stor3[arg1].field_1280 * sub_6b452c02 / 10000), stor3[arg1].field_1280, stor3[arg1].field_0, msg.sender, stor3[arg1].field_1024
        stor3[arg1].field_1024 = msg.sender
        stor3[arg1].field_1280 = msg.value - (stor3[arg1].field_1280 * sub_6b452c02 / 10000)
        stor3[arg1].field_768 = block.timestamp
        if stor3[arg1].field_1280 * sub_6b452c02 / 10000:
            if stor3[arg1].field_1280 > !(stor3[arg1].field_1280 * sub_6b452c02 / 10000):
                revert with 0, 17
            call stor3[arg1].field_1024 with:
               value stor3[arg1].field_1280 + (stor3[arg1].field_1280 * sub_6b452c02 / 10000) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Refund failed.'
    stor1 = 1
}

function sub_ac7f34db(?) {
    require calldata.size - 4 >= 160
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor3[arg1].field_256:
        revert with 0, 'Auction already exists for this token id.'
    if stor3[arg1].field_512:
        revert with 0, 'Auction already exists for this token id.'
    if arg4 <= arg3:
        revert with 0, 'Auction end time must be after start time.'
    if arg4 < block.timestamp:
        revert with 0, 'Auction must end in the future.'
    require ext_code.size(stor6)
    staticcall stor6.exists(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'This token id already exists.'
    sub_00f82f92.length++
    stor36B6[stor5.length] = arg1
    if sub_00f82f92.length < 1:
        revert with 0, 17
    stor4[arg1] = sub_00f82f92.length - 1
    stor3[arg1].field_0 = arg1
    stor3[arg1].field_256 = arg3
    stor3[arg1].field_512 = arg4
    stor3[arg1].field_1280 = arg2
    if stor3[arg1].field_1536:
        if stor3[arg1].field_1536 == uint255(stor3[arg1].field_1536) * 0.5 < 32:
            revert with 0, 34
        if arg5.length:
            stor3[arg1][6][].field_0 = Array(len=arg5.length, data=arg5[all])
        else:
            stor3[arg1].field_1536 = 0
            idx = 0
            while (uint255(stor3[arg1].field_1536) * 0.5) + 31 / 32 > idx:
                stor3[arg1][idx + 6].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor3[arg1].field_1536 == stor3[arg1].field_1537 < 32:
            revert with 0, 34
        if arg5.length:
            stor3[arg1][6][].field_0 = Array(len=arg5.length, data=arg5[all])
        else:
            stor3[arg1].field_1536 = 0
            idx = 0
            while stor3[arg1].field_1537 + 31 / 32 > idx:
                stor3[arg1][idx + 6].field_0 = 0
                idx = idx + 1
                continue 
    emit 0x55a994bb: arg3, arg4, arg2, arg1
}

function auctions(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor3[arg1].field_1536:
        if stor3[arg1].field_1536 == uint255(stor3[arg1].field_1536) * 0.5 < 32:
            revert with 0, 34
        if stor3[arg1].field_1536:
            if stor3[arg1].field_1536 == uint255(stor3[arg1].field_1536) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3[arg1].field_1536):
                if 31 >= uint255(stor3[arg1].field_1536) * 0.5:
                    mem[128] = 256 * stor3[arg1].field_1544
                else:
                    mem[128] = stor3[arg1][6].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor3[arg1].field_1536) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[arg1][s + 6].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor3[arg1].field_1536 == stor3[arg1].field_1537 < 32:
                revert with 0, 34
            if stor3[arg1].field_1537:
                if 31 >= stor3[arg1].field_1537:
                    mem[128] = 256 * stor3[arg1].field_1544
                else:
                    mem[128] = stor3[arg1][6].field_0
                    idx = 128
                    s = 0
                    while stor3[arg1].field_1537 + 96 > idx:
                        mem[idx + 32] = stor3[arg1][s + 6].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor3[arg1].field_0, 
               stor3[arg1].field_256,
               stor3[arg1].field_512,
               stor3[arg1].field_768,
               stor3[arg1].field_1024,
               stor3[arg1].field_1280,
               Array(len=2 * Mask(256, -1, stor3[arg1].field_1536), data=mem[128 len ceil32(uint255(stor3[arg1].field_1536) * 0.5)])
    if stor3[arg1].field_1536 == stor3[arg1].field_1537 < 32:
        revert with 0, 34
    if stor3[arg1].field_1536:
        if stor3[arg1].field_1536 == uint255(stor3[arg1].field_1536) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3[arg1].field_1536):
            if 31 >= uint255(stor3[arg1].field_1536) * 0.5:
                mem[128] = 256 * stor3[arg1].field_1544
            else:
                mem[128] = stor3[arg1][6].field_0
                idx = 128
                s = 0
                while (uint255(stor3[arg1].field_1536) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[arg1][s + 6].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor3[arg1].field_1536 == stor3[arg1].field_1537 < 32:
            revert with 0, 34
        if stor3[arg1].field_1537:
            if 31 >= stor3[arg1].field_1537:
                mem[128] = 256 * stor3[arg1].field_1544
            else:
                mem[128] = stor3[arg1][6].field_0
                idx = 128
                s = 0
                while stor3[arg1].field_1537 + 96 > idx:
                    mem[idx + 32] = stor3[arg1][s + 6].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor3[arg1].field_0, 
           stor3[arg1].field_256,
           stor3[arg1].field_512,
           stor3[arg1].field_768,
           stor3[arg1].field_1024,
           stor3[arg1].field_1280,
           Array(len=stor3[arg1].field_1536, data=mem[128 len ceil32(stor3[arg1].field_1537)])
}

function claimToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There is no auction for this token id.'
    if block.timestamp <= stor3[arg1].field_512:
        revert with 0, 'Auction has not ended.'
    if stor3[arg1].field_768 > !sub_ebda93e9:
        revert with 0, 17
    if stor3[arg1].field_768 + sub_ebda93e9 >= block.timestamp:
        revert with 0, 'Auction has not ended.'
    if stor3[arg1].field_1024:
        if stor3[arg1].field_1536:
            if stor3[arg1].field_1536 == uint255(stor3[arg1].field_1536) * 0.5 < 32:
                revert with 0, 34
            if not stor3[arg1].field_1536:
                require ext_code.size(stor6)
                call stor6.0x3a985be7 with:
                   value stor3[arg1].field_1280 wei
                     gas gas_remaining wei
                    args 0, stor3[arg1].field_1024, arg1, 96, uint255(stor3[arg1].field_1536) * 0.5, Mask(248, 8, stor3[arg1].field_1536)
            else:
                if stor3[arg1].field_1536 != 1:
                    require ext_code.size(stor6)
                    call stor6.0x3a985be7 with:
                       value stor3[arg1].field_1280 wei
                         gas gas_remaining wei
                        args mem[100 len -100]
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(stor3[arg1].field_1536) * 0.5:
                        mem[idx + 228] = stor3[arg1][s + 6].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(stor6)
                    call stor6.0x3a985be7 with:
                       value stor3[arg1].field_1280 wei
                         gas gas_remaining wei
                        args 0, stor3[arg1].field_1024, arg1, 96, 2 * Mask(256, -1, stor3[arg1].field_1536), mem[228 len ceil32(uint255(stor3[arg1].field_1536) * 0.5)]
        else:
            if stor3[arg1].field_1536 == stor3[arg1].field_1537 < 32:
                revert with 0, 34
            if not stor3[arg1].field_1536:
                require ext_code.size(stor6)
                call stor6.0x3a985be7 with:
                   value stor3[arg1].field_1280 wei
                     gas gas_remaining wei
                    args 0, stor3[arg1].field_1024, arg1, 96, stor3[arg1].field_1537, Mask(248, 8, stor3[arg1].field_1536)
            else:
                if stor3[arg1].field_1536 != 1:
                    require ext_code.size(stor6)
                    call stor6.0x3a985be7 with:
                       value stor3[arg1].field_1280 wei
                         gas gas_remaining wei
                        args mem[100 len -100]
                else:
                    idx = 0
                    s = 0
                    while idx < stor3[arg1].field_1537:
                        mem[idx + 228] = stor3[arg1][s + 6].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(stor6)
                    call stor6.0x3a985be7 with:
                       value stor3[arg1].field_1280 wei
                         gas gas_remaining wei
                        args 0, stor3[arg1].field_1024, arg1, 96, stor3[arg1].field_1536, mem[228 len ceil32(stor3[arg1].field_1537)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if sub_00f82f92.length < 1:
        revert with 0, 17
    if sub_00f82f92.length - 1 >= sub_00f82f92.length:
        revert with 0, 50
    stor4[stor3[stor5[stor5.length].field_0].field_0] = stor4[arg1]
    if stor4[arg1] >= sub_00f82f92.length:
        revert with 0, 50
    sub_00f82f92[stor4[arg1]].field_0 = stor3[stor5[stor5.length].field_0].field_0
    if not sub_00f82f92.length:
        revert with 0, 49
    sub_00f82f92[sub_00f82f92.length].field_0 = 0
    sub_00f82f92.length--
    stor4[arg1] = 0
    stor3[arg1].field_0 = 0
    stor3[arg1].field_256 = 0
    stor3[arg1].field_512 = 0
    stor3[arg1].field_768 = 0
    stor3[arg1].field_1024 = 0
    stor3[arg1].field_1280 = 0
    if stor3[arg1].field_1536:
        if stor3[arg1].field_1536 == uint255(stor3[arg1].field_1536) * 0.5 < 32:
            revert with 0, 34
        stor3[arg1].field_1536 = 0
        if 31 < uint255(stor3[arg1].field_1536) * 0.5:
            idx = 0
            while (uint255(stor3[arg1].field_1536) * 0.5) + 31 / 32 > idx:
                stor3[arg1][idx + 6].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor3[arg1].field_1536 == stor3[arg1].field_1537 < 32:
            revert with 0, 34
        stor3[arg1].field_1536 = 0
        if 31 < stor3[arg1].field_1537:
            idx = 0
            while stor3[arg1].field_1537 + 31 / 32 > idx:
                stor3[arg1][idx + 6].field_0 = 0
                idx = idx + 1
                continue 
}



}
