contract main {




// =====================  Runtime code  =====================


const timeNow = block.timestamp


address owner;
array of struct stor1;
array of struct stor2;
array of struct stor3;
uint256 totalSupply;
uint256 expirationBlock;
uint8 ended; offset 160
uint8 sub_a2920a2e; offset 168
uint128 stor6; offset 168
uint128 stor6; offset 160
address sub_3ad09180Address;
address highestBidderAddress;
address sub_e03846e5Address;
mapping of struct sub_6dbbaffd;
mapping of uint256 stor10;
mapping of uint256 stor11;

function ended() {
    return bool(ended)
}

function totalSupply() {
    return totalSupply
}

function sub_3ad09180(?) {
    return sub_3ad09180Address
}

function expirationBlock() {
    return expirationBlock
}

function sub_6dbbaffd(?) {
    return sub_6dbbaffd[address(stor6.field_0)].field_0
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_6dbbaffd[address(arg1)].field_0
}

function getOwner() {
    return owner
}

function highestBidder() {
    return highestBidderAddress
}

function sub_a2920a2e(?) {
    return bool(sub_a2920a2e)
}

function sub_e03846e5(?) {
    return sub_e03846e5Address
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function sub_3757ba09(?) payable {
    if not expirationBlock:
        revert with 0, 'There is no bag'
    if expirationBlock < block.timestamp:
        revert with 'NH{q', 17
    return (expirationBlock - block.timestamp)
}

function withdraw() {
    if stor11[address(msg.sender)] > 0:
        stor11[address(msg.sender)] = 0
    call msg.sender with:
       value stor11[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        return 1
    else:
        return 0
}

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if sub_6dbbaffd[address(msg.sender)].field_0 > -arg1 - 1:
        revert with 'NH{q', 17
    sub_6dbbaffd[address(msg.sender)].field_0 += arg1
    if totalSupply < arg1:
        revert with 'NH{q', 17
    totalSupply -= arg1
    emit Mint(arg1);
    return 0
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require sub_6dbbaffd[address(msg.sender)].field_0 >= arg2
    if sub_6dbbaffd[address(arg1)].field_0 > -arg2 - 1:
        revert with 'NH{q', 17
    require sub_6dbbaffd[address(arg1)].field_0 + arg2 >= sub_6dbbaffd[address(arg1)].field_0
    if sub_6dbbaffd[address(msg.sender)].field_0 < arg2:
        revert with 'NH{q', 17
    sub_6dbbaffd[address(msg.sender)].field_0 -= arg2
    if sub_6dbbaffd[address(arg1)].field_0 > -arg2 - 1:
        revert with 'NH{q', 17
    sub_6dbbaffd[address(arg1)].field_0 += arg2
    emit Transfer(msg.sender, address(arg1), arg2);
    return 1
}

function sub_1f63d88e(?) {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if expirationBlock:
        revert with 0, 'Bag has already been created'
    if block.timestamp > -101:
        revert with 'NH{q', 17
    expirationBlock = block.timestamp + 100
    Mask(96, 0, stor6.field_160) = 0
    require sub_6dbbaffd[address(msg.sender)].field_0 >= 1
    if sub_6dbbaffd[address(stor6.field_0)].field_0 > -2:
        revert with 'NH{q', 17
    require sub_6dbbaffd[address(stor6.field_0)].field_0 + 1 >= sub_6dbbaffd[address(stor6.field_0)].field_0
    if sub_6dbbaffd[address(msg.sender)].field_0 < 1:
        revert with 'NH{q', 17
    sub_6dbbaffd[address(msg.sender)].field_0--
    if sub_6dbbaffd[address(stor6.field_0)].field_0 > -2:
        revert with 'NH{q', 17
    sub_6dbbaffd[address(stor6.field_0)].field_0++
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require stor10[address(arg1)][address(msg.sender)] >= arg3
    if stor10[address(arg1)][address(msg.sender)] < arg3:
        revert with 'NH{q', 17
    stor10[address(arg1)][address(msg.sender)] -= arg3
    require sub_6dbbaffd[address(arg1)].field_0 >= arg3
    if sub_6dbbaffd[address(arg2)].field_0 > -arg3 - 1:
        revert with 'NH{q', 17
    require sub_6dbbaffd[address(arg2)].field_0 + arg3 >= sub_6dbbaffd[address(arg2)].field_0
    if sub_6dbbaffd[address(arg1)].field_0 < arg3:
        revert with 'NH{q', 17
    sub_6dbbaffd[address(arg1)].field_0 -= arg3
    if sub_6dbbaffd[address(arg2)].field_0 > -arg3 - 1:
        revert with 'NH{q', 17
    sub_6dbbaffd[address(arg2)].field_0 += arg3
    emit Transfer(address(arg1), address(arg2), arg3);
    return 1
}

function sub_7cf9c32a(?) payable {
    if block.timestamp < expirationBlock:
        revert with 0, 'Bag has yet to expire'
    if ended:
        revert with 0, 'Bag has already ended'
    Mask(96, 0, stor6.field_160) = 1
    expirationBlock = 0
    emit 0xaa4f08f0: highestBidderAddress, sub_6dbbaffd[address(stor6.field_0)].field_0
    require sub_6dbbaffd[address(stor6.field_0)].field_0 >= sub_6dbbaffd[address(stor6.field_0)].field_0
    if sub_6dbbaffd[stor7].field_0 > -sub_6dbbaffd[address(stor6.field_0)].field_0 - 1:
        revert with 'NH{q', 17
    require sub_6dbbaffd[stor7].field_0 + sub_6dbbaffd[address(stor6.field_0)].field_0 >= sub_6dbbaffd[stor7].field_0
    if sub_6dbbaffd[address(stor6.field_0)].field_0 < sub_6dbbaffd[address(stor6.field_0)].field_0:
        revert with 'NH{q', 17
    sub_6dbbaffd[address(stor6.field_0)].field_0 = 0
    if sub_6dbbaffd[stor7].field_0 > -sub_6dbbaffd[address(stor6.field_0)].field_0 - 1:
        revert with 'NH{q', 17
    sub_6dbbaffd[stor7].field_0 += sub_6dbbaffd[address(stor6.field_0)].field_0
    emit Transfer(sub_3ad09180Address, highestBidderAddress, sub_6dbbaffd[address(stor6.field_0)].field_0);
}

function sub_95c68f54(?) payable {
    if block.timestamp > expirationBlock:
        revert with 0, 'Auction already ended.'
    if sub_a2920a2e:
        if msg.sender == highestBidderAddress:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are already the highestBidder'
    if sub_6dbbaffd[address(stor6.field_0)].field_0 and 2 > -1 / sub_6dbbaffd[address(stor6.field_0)].field_0:
        revert with 'NH{q', 17
    if sub_6dbbaffd[address(stor6.field_0)].field_0 > -(2 * sub_6dbbaffd[address(stor6.field_0)].field_0) - 1:
        revert with 'NH{q', 17
    if sub_6dbbaffd[address(msg.sender)].field_0 < 4 * sub_6dbbaffd[address(stor6.field_0)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not enough funds to take control of the bag'
    highestBidderAddress = msg.sender
    if block.timestamp > -101:
        revert with 'NH{q', 17
    expirationBlock = block.timestamp + 100
    if sub_6dbbaffd[address(stor6.field_0)].field_0 and 2 > -1 / sub_6dbbaffd[address(stor6.field_0)].field_0:
        revert with 'NH{q', 17
    require sub_6dbbaffd[address(msg.sender)].field_0 >= 2 * sub_6dbbaffd[address(stor6.field_0)].field_0
    if sub_6dbbaffd[address(stor6.field_0)].field_0 > -(2 * sub_6dbbaffd[address(stor6.field_0)].field_0) - 1:
        revert with 'NH{q', 17
    require 4 * sub_6dbbaffd[address(stor6.field_0)].field_0 >= sub_6dbbaffd[address(stor6.field_0)].field_0
    if sub_6dbbaffd[address(msg.sender)].field_0 < 2 * sub_6dbbaffd[address(stor6.field_0)].field_0:
        revert with 'NH{q', 17
    sub_6dbbaffd[address(msg.sender)].field_0 -= 2 * sub_6dbbaffd[address(stor6.field_0)].field_0
    if sub_6dbbaffd[address(stor6.field_0)].field_0 > -(2 * sub_6dbbaffd[address(stor6.field_0)].field_0) - 1:
        revert with 'NH{q', 17
    sub_6dbbaffd[address(stor6.field_0)].field_0 = 0
    sub_6dbbaffd[address(stor6.field_0)].field_2 = sub_6dbbaffd[address(stor6.field_0)].field_0
    Mask(88, 0, stor6.field_168) = 1
    if sub_6dbbaffd[address(stor6.field_0)].field_0 and 2 > -1 / sub_6dbbaffd[address(stor6.field_0)].field_0:
        revert with 'NH{q', 17
    emit 0xb997fa42: msg.sender, 2 * sub_6dbbaffd[address(stor6.field_0)].field_0
}

function name() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
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
                revert with 'NH{q', 34
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
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
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
            revert with 'NH{q', 34
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
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function symbol() {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function standard() {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}



}
