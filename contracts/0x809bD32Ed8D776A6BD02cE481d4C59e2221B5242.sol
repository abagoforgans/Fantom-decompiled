contract main {




// =====================  Runtime code  =====================


const decimals = 18

const sub_66f2b1a7(?) = 10


mapping of uint256 balanceOf;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
mapping of uint256 stor6;
mapping of uint8 stor7;
mapping of uint32 currentStrategy;
mapping of uint8 stor9;
uint256 sub_c03601cc;
uint256 sub_51a5cc5b;
uint256 depositLimit;
address governanceAddress;
array of uint256 stor14;
array of uint256 stor15;
array of uint256 stor16;
array of struct stor17;

function totalSupply() {
    return totalSupply
}

function sub_1c7b048d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor9[arg1])
}

function getNamesLength() {
    return stor17.length
}

function sub_51a5cc5b(?) {
    return sub_51a5cc5b
}

function governance() {
    return governanceAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getCurrentStrategy() {
    if stor17.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This vault does not have any strategies'
    if sub_51a5cc5b >= stor17.length:
        revert with 'NH{q', 50
    return address(currentStrategy[stor17[stor11].field_0])
}

function owner() {
    return owner
}

function sub_c03601cc(?) {
    return sub_c03601cc
}

function strategies(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return address(currentStrategy[arg1])
}

function depositLimit() {
    return depositLimit
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

function setDepositLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, 'Not the owner or governance'
    depositLimit = arg1
}

function setGovernance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Government can not be a zero address'
    governanceAddress = arg1
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

function sub_e1a4877a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor6[address(arg1)]:
        return 0
    if block.number < stor6[address(arg1)]:
        revert with 'NH{q', 17
    if block.number - stor6[address(arg1)] >= 10:
        return 0
    if 10 < block.number - stor6[address(arg1)]:
        revert with 'NH{q', 17
    return (-block.number + stor6[address(arg1)] + 10)
}

function sub_f5da03e8(?) {
    if stor17.length:
        mem[128] = uint256(stor17.field_0)
        idx = 128
        s = 0
        while (32 * stor17.length) + 96 > idx:
            mem[idx + 32] = stor17[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor17.length, data=mem[128 len 32 * stor17.length])
    mem[(32 * stor17.length) + 128] = 32
    mem[(32 * stor17.length) + 160] = stor17.length
    mem[(32 * stor17.length) + 192 len 32 * stor17.length] = mem[128 len 32 * stor17.length]
    return memory
      from (32 * stor17.length) + 128
       len (96 * stor17.length) + 64
}

function withdrawFee() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < stor17.length:
        mem[0] = stor17[idx].field_0
        mem[32] = 8
        mem[96] = 0x987b04f000000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
        call address(currentStrategy[stor17[idx].field_0]).0x987b04f0 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function emergencyWithdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < stor17.length:
        mem[0] = stor17[idx].field_0
        mem[32] = 8
        mem[96] = 0x6ff1c9bc00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
        call address(currentStrategy[stor17[idx].field_0]).emergencyWithdraw(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function addStrategy(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, 'Not the owner or governance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The strategy can not be a zero address'
    if address(currentStrategy[arg2]):
        revert with 0, 'This strategy is not empty'
    if stor9[address(arg1)]:
        revert with 0, 'This strategy already exists'
    if not stor7[arg2]:
        stor17.length++
        stor17[stor17.length].field_0 = arg2
        stor7[arg2] = 1
        stor9[address(arg1)] = 1
    address(currentStrategy[arg2]) = arg1
}

function sub_05131172(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_f705c03b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, 'Not the owner or governance'
    if stor17.length <= 1:
        revert with 0, 'Not enough strategies'
    if stor7[arg1]:
        sub_51a5cc5b = arg1
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor16.length):
            revert with 0, 32, 2 * Mask(256, -1, stor16.length.field_1), Mask(248, 8, stor16.length)
        if bool(stor16.length) != 1:
            revert with memory
              from 96
               len -96
        idx = 0
        s = 0
        while idx < stor16.length.field_1:
            mem[idx + 164] = stor16[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, 2 * Mask(256, -1, stor16.length.field_1), mem[164 len ceil32(stor16.length.field_1)]
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 'NH{q', 34
    if not bool(stor16.length):
        revert with 0, 32, stor16.length % 128, Mask(248, 8, stor16.length)
    if bool(stor16.length) != 1:
        revert with memory
          from 96
           len -96
    idx = 0
    s = 0
    while idx < stor16.length.field_1:
        mem[idx + 164] = stor16[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    revert with 0, 32, stor16.length % 128, mem[164 len ceil32(stor16.length.field_1)]
}

function sub_40e61586(?) {
    if stor17.length:
        idx = 0
        while idx < stor17.length:
            mem[0] = stor17[idx].field_0
            mem[32] = 8
            mem[96] = 0x40e6158600000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
            call address(currentStrategy[stor17[idx].field_0]).0x40e61586 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor15.length):
            revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
        if bool(stor15.length) != 1:
            revert with memory
              from 96
               len -96
        idx = 0
        s = 0
        while idx < stor15.length.field_1:
            mem[idx + 164] = stor15[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), mem[164 len ceil32(stor15.length.field_1)]
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 'NH{q', 34
    if not bool(stor15.length):
        revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
    if bool(stor15.length) != 1:
        revert with memory
          from 96
           len -96
    idx = 0
    s = 0
    while idx < stor15.length.field_1:
        mem[idx + 164] = stor15[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    revert with 0, 32, stor15.length % 128, mem[164 len ceil32(stor15.length.field_1)]
}

function sub_5eb674b6(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, 'Not the owner or governance'
    if stor17.length <= 1:
        revert with 0, 'Not enough strategies'
    if stor7[arg2]:
        if not address(arg1):
            revert with 0, 'Router can not be a zero address'
        require ext_code.size(address(currentStrategy[arg2]))
        call address(currentStrategy[arg2]).setRouter(address arg1) with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor16.length):
            revert with 0, 32, 2 * Mask(256, -1, stor16.length.field_1), Mask(248, 8, stor16.length)
        if bool(stor16.length) != 1:
            revert with memory
              from 96
               len -96
        idx = 0
        s = 0
        while idx < stor16.length.field_1:
            mem[idx + 164] = stor16[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, 2 * Mask(256, -1, stor16.length.field_1), mem[164 len ceil32(stor16.length.field_1)]
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 'NH{q', 34
    if not bool(stor16.length):
        revert with 0, 32, stor16.length % 128, Mask(248, 8, stor16.length)
    if bool(stor16.length) != 1:
        revert with memory
          from 96
           len -96
    idx = 0
    s = 0
    while idx < stor16.length.field_1:
        mem[idx + 164] = stor16[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    revert with 0, 32, stor16.length % 128, mem[164 len ceil32(stor16.length.field_1)]
}

function sub_b42a8e55(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < stor17.length:
        mem[0] = stor17[idx].field_0
        mem[32] = 8
        mem[mem[64] + 4] = address(arg1)
        require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
        staticcall address(currentStrategy[stor17[idx].field_0]).0xb42a8e55 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_15] == mem[_15]
        if s > -mem[_15] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[_15]
        continue 
    return (s * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length)
}

function removeStrategy(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, 'Not the owner or governance'
    if stor17.length <= 1:
        revert with 0, 'Not enough strategies'
    if not stor7[arg1]:
        if bool(stor16.length):
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor16.length):
                revert with 0, 32, 2 * Mask(256, -1, stor16.length.field_1), Mask(248, 8, stor16.length)
            if bool(stor16.length) != 1:
                revert with memory
                  from 96
                   len -96
            idx = 0
            s = 0
            while idx < stor16.length.field_1:
                mem[idx + 164] = stor16[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, 2 * Mask(256, -1, stor16.length.field_1), mem[164 len ceil32(stor16.length.field_1)]
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor16.length):
            revert with 0, 32, stor16.length % 128, Mask(248, 8, stor16.length)
        if bool(stor16.length) != 1:
            revert with memory
              from 96
               len -96
        idx = 0
        s = 0
        while idx < stor16.length.field_1:
            mem[idx + 164] = stor16[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor16.length % 128, mem[164 len ceil32(stor16.length.field_1)]
    if stor17.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This vault does not have any strategies'
    if sub_51a5cc5b >= stor17.length:
        revert with 'NH{q', 50
    if address(currentStrategy[arg1]) == address(currentStrategy[stor17[stor11].field_0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can not remove the current strategy'
    stor7[arg1] = 0
    stor9[address(stor8[arg1])] = 0
    address(currentStrategy[arg1]) = 0
    if stor17.length != 1:
        idx = 0
        while idx < stor17.length:
            mem[0] = 17
            if stor17[idx].field_0 == arg1:
                if stor17.length < 1:
                    revert with 'NH{q', 17
                if idx != stor17.length - 1:
                    if stor17.length < 1:
                        revert with 'NH{q', 17
                    if stor17.length - 1 >= stor17.length:
                        revert with 'NH{q', 50
                    if idx >= stor17.length:
                        revert with 'NH{q', 50
                    stor17[idx].field_0 = stor17[stor17.length].field_0
                if not stor17.length:
                    revert with 'NH{q', 49
                mem[0] = 17
                stor17[stor17.length].field_0 = 0
                stor17.length--
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if not stor17.length:
            revert with 'NH{q', 49
        stor17[stor17.length].field_0 = 0
        stor17.length--
}

function getTotalCapital() payable {
    mem[64] = 96
    require not msg.value
    if stor17.length:
        idx = 0
        s = 0
        while idx < stor17.length:
            mem[0] = stor17[idx].field_0
            mem[32] = 8
            require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
            staticcall address(currentStrategy[stor17[idx].field_0]).totalCapital() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _23 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_23] == mem[_23]
            if s > -mem[_23] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[_23]
            continue 
        return (s * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length)
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor15.length):
            revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
        if bool(stor15.length) != 1:
            revert with memory
              from 96
               len -96
        idx = 0
        s = 0
        while idx < stor15.length.field_1:
            mem[idx + 164] = stor15[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), mem[164 len ceil32(stor15.length.field_1)]
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 'NH{q', 34
    if not bool(stor15.length):
        revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
    if bool(stor15.length) != 1:
        revert with memory
          from 96
           len -96
    idx = 0
    s = 0
    while idx < stor15.length.field_1:
        mem[idx + 164] = stor15[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    revert with 0, 32, stor15.length % 128, mem[164 len ceil32(stor15.length.field_1)]
}

function name() {
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

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function autoCompound() {
    if not stor17.length:
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
            if bool(stor15.length) != 1:
                revert with memory
                  from 96
                   len -96
            idx = 0
            s = 0
            while idx < stor15.length.field_1:
                mem[idx + 164] = stor15[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), mem[164 len ceil32(stor15.length.field_1)]
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor15.length):
            revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
        if bool(stor15.length) != 1:
            revert with memory
              from 96
               len -96
        idx = 0
        s = 0
        while idx < stor15.length.field_1:
            mem[idx + 164] = stor15[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
    else:
        idx = 0
        while idx < stor17.length:
            mem[0] = stor17[idx].field_0
            mem[32] = 8
            mem[96] = 0x821c057600000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
            call address(currentStrategy[stor17[idx].field_0]).0x821c0576 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if stor17.length:
            idx = 0
            while idx < stor17.length:
                mem[0] = stor17[idx].field_0
                mem[32] = 8
                mem[96] = 0x40e6158600000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
                call address(currentStrategy[stor17[idx].field_0]).0x40e61586 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
            if bool(stor15.length) != 1:
                revert with memory
                  from 96
                   len -96
            idx = 0
            s = 0
            while idx < stor15.length.field_1:
                mem[idx + 164] = stor15[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), mem[164 len ceil32(stor15.length.field_1)]
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor15.length):
            revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
        if bool(stor15.length) != 1:
            revert with memory
              from 96
               len -96
        idx = 0
        s = 0
        while idx < stor15.length.field_1:
            mem[idx + 164] = stor15[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
    revert with 0, 32, stor15.length % 128, mem[164 len ceil32(stor15.length.field_1)]
}

function sub_b070a44f(?) payable {
    mem[64] = 96
    require not msg.value
    mem[0] = msg.sender
    mem[32] = 6
    if block.number < stor6[address(msg.sender)]:
        revert with 'NH{q', 17
    if block.number - stor6[address(msg.sender)] < 10:
        if bool(stor14.length):
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor14.length):
                revert with 0, 32, 2 * Mask(256, -1, stor14.length.field_1), Mask(248, 8, stor14.length)
            if bool(stor14.length) != 1:
                revert with memory
                  from 96
                   len -96
            idx = 0
            s = 0
            while idx < stor14.length.field_1:
                mem[idx + 164] = stor14[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, 2 * Mask(256, -1, stor14.length.field_1), mem[164 len ceil32(stor14.length.field_1)]
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor14.length):
            revert with 0, 32, stor14.length % 128, Mask(248, 8, stor14.length)
        if bool(stor14.length) != 1:
            revert with memory
              from 96
               len -96
        idx = 0
        s = 0
        while idx < stor14.length.field_1:
            mem[idx + 164] = stor14[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor14.length % 128, mem[164 len ceil32(stor14.length.field_1)]
    if not stor17.length:
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
            if bool(stor15.length) != 1:
                revert with memory
                  from 96
                   len -96
            idx = 0
            s = 0
            while idx < stor15.length.field_1:
                mem[idx + 164] = stor15[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), mem[164 len ceil32(stor15.length.field_1)]
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor15.length):
            revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
        if bool(stor15.length) != 1:
            revert with memory
              from 96
               len -96
        idx = 0
        s = 0
        while idx < stor15.length.field_1:
            mem[idx + 164] = stor15[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor15.length % 128, mem[164 len ceil32(stor15.length.field_1)]
    idx = 0
    while idx < stor17.length:
        mem[0] = stor17[idx].field_0
        mem[32] = 8
        mem[96] = 0x821c057600000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
        call address(currentStrategy[stor17[idx].field_0]).0x821c0576 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if not stor17.length:
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
            if bool(stor15.length) != 1:
                revert with memory
                  from 96
                   len -96
            idx = 0
            s = 0
            while idx < stor15.length.field_1:
                mem[idx + 164] = stor15[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), mem[164 len ceil32(stor15.length.field_1)]
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor15.length):
            revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
        if bool(stor15.length) != 1:
            revert with memory
              from 96
               len -96
        idx = 0
        s = 0
        while idx < stor15.length.field_1:
            mem[idx + 164] = stor15[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor15.length % 128, mem[164 len ceil32(stor15.length.field_1)]
    idx = 0
    while idx < stor17.length:
        mem[0] = stor17[idx].field_0
        mem[32] = 8
        mem[96] = 0x40e6158600000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
        call address(currentStrategy[stor17[idx].field_0]).0x40e61586 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    t = 0
    while idx < stor17.length:
        mem[0] = stor17[idx].field_0
        mem[32] = 8
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
        staticcall address(currentStrategy[stor17[idx].field_0]).0xb42a8e55 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _91 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _93 = mem[_91]
        require mem[_91] == mem[_91]
        if mem[_91] <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = mem[_91]
            continue 
        if idx >= stor17.length:
            revert with 'NH{q', 50
        mem[0] = stor17[idx].field_0
        mem[32] = 8
        mem[mem[64]] = 0xb06dd06f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
        call address(currentStrategy[stor17[idx].field_0]).0xb06dd06f with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if s > -_93 - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + _93
        t = _93
        continue 
    if s <= 0:
        revert with 0, 'You don't have any pending YEL'
    if stor17.length:
        idx = 0
        while idx < stor17.length:
            mem[0] = stor17[idx].field_0
            mem[32] = 8
            mem[mem[64]] = 0x40e6158600000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
            call address(currentStrategy[stor17[idx].field_0]).0x40e61586 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    _84 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[mem[64] + 36] = stor15.length.field_1
        if not bool(stor15.length):
            revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
        if bool(stor15.length) != 1:
            revert with memory
              from mem[64]
               len -mem[64]
        idx = 0
        s = 0
        while idx < stor15.length.field_1:
            mem[_84 + idx + 68] = stor15[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with memory
          from mem[64]
           len _84 + ceil32(stor15.length.field_1) + -mem[64] + 68
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 'NH{q', 34
    mem[mem[64] + 36] = stor15.length.field_1
    if not bool(stor15.length):
        revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
    if bool(stor15.length) != 1:
        revert with memory
          from mem[64]
           len -mem[64]
    idx = 0
    s = 0
    while idx < stor15.length.field_1:
        mem[_84 + idx + 68] = stor15[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    revert with memory
      from mem[64]
       len _84 + ceil32(stor15.length.field_1) + -mem[64] + 68
}

function getStrategyInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor7[arg1]:
        if bool(stor16.length):
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor16.length):
                revert with 0, 32, 2 * Mask(256, -1, stor16.length.field_1), Mask(248, 8, stor16.length)
            if bool(stor16.length) != 1:
                revert with memory
                  from 96
                   len -96
            idx = 0
            s = 0
            while idx < stor16.length.field_1:
                mem[idx + 164] = stor16[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, 2 * Mask(256, -1, stor16.length.field_1), mem[164 len ceil32(stor16.length.field_1)]
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor16.length):
            revert with 0, 32, stor16.length % 128, Mask(248, 8, stor16.length)
        if bool(stor16.length) != 1:
            revert with memory
              from 96
               len -96
        idx = 0
        s = 0
        while idx < stor16.length.field_1:
            mem[idx + 164] = stor16[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor16.length % 128, mem[164 len ceil32(stor16.length.field_1)]
    require ext_code.size(address(currentStrategy[arg1]))
    staticcall address(currentStrategy[arg1]).router() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(currentStrategy[arg1]))
    staticcall address(currentStrategy[arg1]).lpToken() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(currentStrategy[arg1]))
    staticcall address(currentStrategy[arg1]).token1() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(currentStrategy[arg1]))
    staticcall address(currentStrategy[arg1]).token0() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(currentStrategy[arg1]))
    staticcall address(currentStrategy[arg1]).farm() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(currentStrategy[arg1]))
    staticcall address(currentStrategy[arg1]).0xa644d685 with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(currentStrategy[arg1]))
    if not ext_call.return_data[0]:
        staticcall address(currentStrategy[arg1]).totalCapital() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(currentStrategy[arg1]))
        staticcall address(currentStrategy[arg1]).totalLP() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        return address(ext_call.return_data[0]), 
               address(ext_call.return_data[0]),
               address(ext_call.return_data[0]),
               address(ext_call.return_data[0]),
               address(ext_call.return_data[0]),
               256,
               ext_call.return_data[0],
               ext_call.return_data[0],
               6,
               'No pid',
               0
    staticcall address(currentStrategy[arg1]).pid() with:
            gas gas_remaining wei
    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_code.size(address(currentStrategy[arg1]))
        staticcall address(currentStrategy[arg1]).totalCapital() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(currentStrategy[arg1]))
        staticcall address(currentStrategy[arg1]).totalLP() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        return address(ext_call.return_data[0]), 
               address(ext_call.return_data[0]),
               address(ext_call.return_data[0]),
               address(ext_call.return_data[0]),
               address(ext_call.return_data[0]),
               256,
               ext_call.return_data[0],
               ext_call.return_data[0],
               1,
               '0',
               0
    s = 0
    idx = ext_call.return_data[0]
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[(10 * ceil32(return_data.size)) + 96] = s
    if s:
        mem[(10 * ceil32(return_data.size)) + 128 len s] = call.data[calldata.size len s]
    t = s
    idx = ext_call.return_data[0]
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[(10 * ceil32(return_data.size)) + 96]:
            revert with 'NH{q', 50
        mem[t + (10 * ceil32(return_data.size)) + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    require ext_code.size(address(currentStrategy[arg1]))
    staticcall address(currentStrategy[arg1]).totalCapital() with:
            gas gas_remaining wei
    mem[(10 * ceil32(return_data.size)) + ceil32(s) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(currentStrategy[arg1]))
    staticcall address(currentStrategy[arg1]).totalLP() with:
            gas gas_remaining wei
    mem[(11 * ceil32(return_data.size)) + ceil32(s) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(12 * ceil32(return_data.size)) + ceil32(s) + 128] = address(ext_call.return_data[0])
    mem[(12 * ceil32(return_data.size)) + ceil32(s) + 160] = address(ext_call.return_data[0])
    mem[(12 * ceil32(return_data.size)) + ceil32(s) + 192] = address(ext_call.return_data[0])
    mem[(12 * ceil32(return_data.size)) + ceil32(s) + 224] = address(ext_call.return_data[0])
    mem[(12 * ceil32(return_data.size)) + ceil32(s) + 256] = address(ext_call.return_data[0])
    mem[(12 * ceil32(return_data.size)) + ceil32(s) + 288] = 256
    mem[(12 * ceil32(return_data.size)) + ceil32(s) + 384] = mem[(10 * ceil32(return_data.size)) + 96]
    mem[(12 * ceil32(return_data.size)) + ceil32(s) + 416 len ceil32(mem[(10 * ceil32(return_data.size)) + 96])] = mem[(10 * ceil32(return_data.size)) + 128 len ceil32(mem[(10 * ceil32(return_data.size)) + 96])]
    if ceil32(mem[(10 * ceil32(return_data.size)) + 96]) <= mem[(10 * ceil32(return_data.size)) + 96]:
        return address(ext_call.return_data[0]), 
               address(ext_call.return_data[0]),
               address(ext_call.return_data[0]),
               address(ext_call.return_data[0]),
               address(ext_call.return_data[0]),
               Array(len=mem[(10 * ceil32(return_data.size)) + 96], data=mem[(12 * ceil32(return_data.size)) + ceil32(s) + 416 len ceil32(mem[(10 * ceil32(return_data.size)) + 96])]),
               ext_call.return_data[0],
               ext_call.return_data[0]
    mem[(12 * ceil32(return_data.size)) + ceil32(s) + mem[(10 * ceil32(return_data.size)) + 96] + 416] = 0
    return address(ext_call.return_data[0]), 
           address(ext_call.return_data[0]),
           address(ext_call.return_data[0]),
           address(ext_call.return_data[0]),
           address(ext_call.return_data[0]),
           256,
           ext_call.return_data[0],
           ext_call.return_data[0],
           mem[(12 * ceil32(return_data.size)) + ceil32(s) + 384 len ceil32(mem[(10 * ceil32(return_data.size)) + 96]) + 32]
}

function migrate(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, 'Not the owner or governance'
    if stor17.length <= 1:
        revert with 0, 'Not enough strategies'
    if not stor7[arg1]:
        if bool(stor16.length):
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor16.length):
                revert with 0, 32, 2 * Mask(256, -1, stor16.length.field_1), Mask(248, 8, stor16.length)
            if bool(stor16.length) != 1:
                revert with memory
                  from 96
                   len -96
            idx = 0
            s = 0
            while idx < stor16.length.field_1:
                mem[idx + 164] = stor16[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, 2 * Mask(256, -1, stor16.length.field_1), mem[164 len ceil32(stor16.length.field_1)]
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor16.length):
            revert with 0, 32, stor16.length % 128, Mask(248, 8, stor16.length)
        if bool(stor16.length) != 1:
            revert with memory
              from 96
               len -96
        idx = 0
        s = 0
        while idx < stor16.length.field_1:
            mem[idx + 164] = stor16[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor16.length % 128, mem[164 len ceil32(stor16.length.field_1)]
    if not stor7[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The _nameIdTo value does not exist'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The _amountInPercent value sould be more than 0 and less than 100'
    if arg2 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The _amountInPercent value sould be more than 0 and less than 100'
    if not stor17.length:
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
            if bool(stor15.length) != 1:
                revert with memory
                  from 96
                   len -96
            idx = 0
            s = 0
            while idx < stor15.length.field_1:
                mem[idx + 164] = stor15[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), mem[164 len ceil32(stor15.length.field_1)]
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor15.length):
            revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
        if bool(stor15.length) != 1:
            revert with memory
              from 96
               len -96
        idx = 0
        s = 0
        while idx < stor15.length.field_1:
            mem[idx + 164] = stor15[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor15.length % 128, mem[164 len ceil32(stor15.length.field_1)]
    idx = 0
    while idx < stor17.length:
        mem[0] = stor17[idx].field_0
        mem[32] = 8
        mem[96] = 0x821c057600000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
        call address(currentStrategy[stor17[idx].field_0]).0x821c0576 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if not stor17.length:
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
            if bool(stor15.length) != 1:
                revert with memory
                  from 96
                   len -96
            idx = 0
            s = 0
            while idx < stor15.length.field_1:
                mem[idx + 164] = stor15[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), mem[164 len ceil32(stor15.length.field_1)]
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor15.length):
            revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
        if bool(stor15.length) != 1:
            revert with memory
              from 96
               len -96
        idx = 0
        s = 0
        while idx < stor15.length.field_1:
            mem[idx + 164] = stor15[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor15.length % 128, mem[164 len ceil32(stor15.length.field_1)]
    idx = 0
    while idx < stor17.length:
        mem[0] = stor17[idx].field_0
        mem[32] = 8
        mem[96] = 0x40e6158600000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
        call address(currentStrategy[stor17[idx].field_0]).0x40e61586 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    require ext_code.size(address(currentStrategy[arg1]))
    staticcall address(currentStrategy[arg1]).WETH() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(currentStrategy[arg1]))
    call address(currentStrategy[arg1]).migrate(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        emit 0xf62d3ca8: arg2
        if stor17.length:
            idx = 0
            while idx < stor17.length:
                mem[0] = stor17[idx].field_0
                mem[32] = 8
                mem[(2 * ceil32(return_data.size)) + 96] = 0x40e6158600000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
                call address(currentStrategy[stor17[idx].field_0]).0x40e61586 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
            if bool(stor15.length) != 1:
                revert with memory
                  from (2 * ceil32(return_data.size)) + 96
                   len -(2 * ceil32(return_data.size)) - 96
            idx = 0
            s = 0
            while idx < stor15.length.field_1:
                mem[(2 * ceil32(return_data.size)) + idx + 164] = stor15[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 
                        32,
                        2 * Mask(256, -1, stor15.length.field_1),
                        mem[(2 * ceil32(return_data.size)) + 164 len ceil32(stor15.length.field_1)]
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor15.length):
            revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
        if bool(stor15.length) != 1:
            revert with memory
              from (2 * ceil32(return_data.size)) + 96
               len -(2 * ceil32(return_data.size)) - 96
        idx = 0
        s = 0
        while idx < stor15.length.field_1:
            mem[(2 * ceil32(return_data.size)) + idx + 164] = stor15[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor15.length % 128, mem[(2 * ceil32(return_data.size)) + 164 len ceil32(stor15.length.field_1)]
    mem[(2 * ceil32(return_data.size)) + 132] = address(currentStrategy[arg3])
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, currentStrategy[arg3])
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(address(ext_call.return_data[0])) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, currentStrategy[arg3]), uint32(currentStrategy[arg3]), ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call address(ext_call.return_data[0]) with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, currentStrategy[arg3]), uint32(currentStrategy[arg3]), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, currentStrategy[arg3]), uint32(currentStrategy[arg3]), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(address(currentStrategy[arg3]))
        call address(currentStrategy[arg3]).0x6d79b7e6 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xf62d3ca8: arg2
        if stor17.length:
            idx = 0
            while idx < stor17.length:
                mem[0] = stor17[idx].field_0
                mem[32] = 8
                mem[(2 * ceil32(return_data.size)) + 260] = 0x40e6158600000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
                call address(currentStrategy[stor17[idx].field_0]).0x40e61586 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
            if bool(stor15.length) != 1:
                revert with memory
                  from (2 * ceil32(return_data.size)) + 260
                   len -(2 * ceil32(return_data.size)) - 260
            idx = 0
            s = 0
            while idx < stor15.length.field_1:
                mem[(2 * ceil32(return_data.size)) + idx + 328] = stor15[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 
                        32,
                        2 * Mask(256, -1, stor15.length.field_1),
                        mem[(2 * ceil32(return_data.size)) + 328 len ceil32(stor15.length.field_1)]
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor15.length):
            revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
        if bool(stor15.length) != 1:
            revert with memory
              from (2 * ceil32(return_data.size)) + 260
               len -(2 * ceil32(return_data.size)) - 260
        idx = 0
        s = 0
        while idx < stor15.length.field_1:
            mem[(2 * ceil32(return_data.size)) + idx + 328] = stor15[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor15.length % 128, mem[(2 * ceil32(return_data.size)) + 328 len ceil32(stor15.length.field_1)]
    mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
        if not mem[(2 * ceil32(return_data.size)) + 292]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(address(currentStrategy[arg3]))
    call address(currentStrategy[arg3]).0x6d79b7e6 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xf62d3ca8: arg2
    if stor17.length:
        idx = 0
        while idx < stor17.length:
            mem[0] = stor17[idx].field_0
            mem[32] = 8
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x40e6158600000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
            call address(currentStrategy[stor17[idx].field_0]).0x40e61586 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor15.length):
            revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
        if bool(stor15.length) != 1:
            revert with memory
              from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
               len -(2 * ceil32(return_data.size)) + -ceil32(return_data.size) - 261
        idx = 0
        s = 0
        while idx < stor15.length.field_1:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + idx + 329] = stor15[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 
                    32,
                    2 * Mask(256, -1, stor15.length.field_1),
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len ceil32(stor15.length.field_1)]
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 'NH{q', 34
    if not bool(stor15.length):
        revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
    if bool(stor15.length) != 1:
        revert with memory
          from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
           len -(2 * ceil32(return_data.size)) + -ceil32(return_data.size) - 261
    idx = 0
    s = 0
    while idx < stor15.length.field_1:
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + idx + 329] = stor15[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    revert with 0, 
                32,
                stor15.length % 128,
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len ceil32(stor15.length.field_1)]
}

function requestWithdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor6[address(msg.sender)]:
        if not stor17.length:
            if bool(stor15.length):
                if bool(stor15.length) == stor15.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
                if bool(stor15.length) != 1:
                    revert with memory
                      from 96
                       len -96
                idx = 0
                s = 0
                while idx < stor15.length.field_1:
                    mem[idx + 164] = stor15[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), mem[164 len ceil32(stor15.length.field_1)]
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
            if bool(stor15.length) != 1:
                revert with memory
                  from 96
                   len -96
            idx = 0
            s = 0
            while idx < stor15.length.field_1:
                mem[idx + 164] = stor15[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        else:
            if not totalSupply:
                revert with 0, 'Total share value is zero'
            if arg1 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount of shares can not be a zero value'
            if not stor17.length:
                if bool(stor15.length):
                    if bool(stor15.length) == stor15.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
                    if bool(stor15.length) != 1:
                        revert with memory
                          from 96
                           len -96
                    idx = 0
                    s = 0
                    while idx < stor15.length.field_1:
                        mem[idx + 164] = stor15[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), mem[164 len ceil32(stor15.length.field_1)]
                if bool(stor15.length) == stor15.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
                if bool(stor15.length) != 1:
                    revert with memory
                      from 96
                       len -96
                idx = 0
                s = 0
                while idx < stor15.length.field_1:
                    mem[idx + 164] = stor15[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            else:
                idx = 0
                while idx < stor17.length:
                    mem[0] = stor17[idx].field_0
                    mem[32] = 8
                    mem[96] = 0x821c057600000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
                    call address(currentStrategy[stor17[idx].field_0]).0x821c0576 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not stor17.length:
                    if bool(stor15.length):
                        if bool(stor15.length) == stor15.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
                        if bool(stor15.length) != 1:
                            revert with memory
                              from 96
                               len -96
                        idx = 0
                        s = 0
                        while idx < stor15.length.field_1:
                            mem[idx + 164] = stor15[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), mem[164 len ceil32(stor15.length.field_1)]
                    if bool(stor15.length) == stor15.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
                    if bool(stor15.length) != 1:
                        revert with memory
                          from 96
                           len -96
                    idx = 0
                    s = 0
                    while idx < stor15.length.field_1:
                        mem[idx + 164] = stor15[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    idx = 0
                    while idx < stor17.length:
                        mem[0] = stor17[idx].field_0
                        mem[32] = 8
                        mem[96] = 0x40e6158600000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
                        call address(currentStrategy[stor17[idx].field_0]).0x40e61586 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if arg1 and 100 > -1 / arg1:
                        revert with 'NH{q', 17
                    if 100 * arg1 and 10^12 > -1 / 100 * arg1:
                        revert with 'NH{q', 17
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if arg1 > totalSupply:
                        revert with 0, 'Percent can not be more than 100'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                    if balanceOf[address(msg.sender)] < arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg1
                    if totalSupply < arg1:
                        revert with 'NH{q', 17
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    idx = 0
                    while idx < stor17.length:
                        mem[0] = stor17[idx].field_0
                        mem[32] = 8
                        mem[96] = 0x397a1b2800000000000000000000000000000000000000000000000000000000
                        mem[100] = msg.sender
                        mem[132] = 10^14 * arg1 / totalSupply
                        require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
                        call address(currentStrategy[stor17[idx].field_0]).requestWithdraw(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 10^14 * arg1 / totalSupply
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if stor17.length:
                        idx = 0
                        while idx < stor17.length:
                            mem[0] = stor17[idx].field_0
                            mem[32] = 8
                            mem[96] = 0x40e6158600000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
                            call address(currentStrategy[stor17[idx].field_0]).0x40e61586 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        emit 0x9b03fe25 
                        stor6[address(msg.sender)] = block.number
                    if bool(stor15.length):
                        if bool(stor15.length) == stor15.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
                        if bool(stor15.length) != 1:
                            revert with memory
                              from 96
                               len -96
                        idx = 0
                        s = 0
                        while idx < stor15.length.field_1:
                            mem[idx + 164] = stor15[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), mem[164 len ceil32(stor15.length.field_1)]
                    if bool(stor15.length) == stor15.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
                    if bool(stor15.length) != 1:
                        revert with memory
                          from 96
                           len -96
                    idx = 0
                    s = 0
                    while idx < stor15.length.field_1:
                        mem[idx + 164] = stor15[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
    else:
        if block.number < stor6[address(msg.sender)]:
            revert with 'NH{q', 17
        if block.number - stor6[address(msg.sender)] < 10:
            if bool(stor14.length):
                if bool(stor14.length) == stor14.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor14.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor14.length.field_1), Mask(248, 8, stor14.length)
                if bool(stor14.length) != 1:
                    revert with memory
                      from 96
                       len -96
                idx = 0
                s = 0
                while idx < stor14.length.field_1:
                    mem[idx + 164] = stor14[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, 2 * Mask(256, -1, stor14.length.field_1), mem[164 len ceil32(stor14.length.field_1)]
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor14.length):
                revert with 0, 32, stor14.length % 128, Mask(248, 8, stor14.length)
            if bool(stor14.length) != 1:
                revert with memory
                  from 96
                   len -96
            idx = 0
            s = 0
            while idx < stor14.length.field_1:
                mem[idx + 164] = stor14[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, stor14.length % 128, mem[164 len ceil32(stor14.length.field_1)]
        if not stor17.length:
            if bool(stor15.length):
                if bool(stor15.length) == stor15.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
                if bool(stor15.length) != 1:
                    revert with memory
                      from 96
                       len -96
                idx = 0
                s = 0
                while idx < stor15.length.field_1:
                    mem[idx + 164] = stor15[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), mem[164 len ceil32(stor15.length.field_1)]
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
            if bool(stor15.length) != 1:
                revert with memory
                  from 96
                   len -96
            idx = 0
            s = 0
            while idx < stor15.length.field_1:
                mem[idx + 164] = stor15[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        else:
            if not totalSupply:
                revert with 0, 'Total share value is zero'
            if arg1 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount of shares can not be a zero value'
            if not stor17.length:
                if bool(stor15.length):
                    if bool(stor15.length) == stor15.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
                    if bool(stor15.length) != 1:
                        revert with memory
                          from 96
                           len -96
                    idx = 0
                    s = 0
                    while idx < stor15.length.field_1:
                        mem[idx + 164] = stor15[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), mem[164 len ceil32(stor15.length.field_1)]
                if bool(stor15.length) == stor15.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
                if bool(stor15.length) != 1:
                    revert with memory
                      from 96
                       len -96
                idx = 0
                s = 0
                while idx < stor15.length.field_1:
                    mem[idx + 164] = stor15[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            else:
                idx = 0
                while idx < stor17.length:
                    mem[0] = stor17[idx].field_0
                    mem[32] = 8
                    mem[96] = 0x821c057600000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
                    call address(currentStrategy[stor17[idx].field_0]).0x821c0576 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not stor17.length:
                    if bool(stor15.length):
                        if bool(stor15.length) == stor15.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
                        if bool(stor15.length) != 1:
                            revert with memory
                              from 96
                               len -96
                        idx = 0
                        s = 0
                        while idx < stor15.length.field_1:
                            mem[idx + 164] = stor15[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), mem[164 len ceil32(stor15.length.field_1)]
                    if bool(stor15.length) == stor15.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
                    if bool(stor15.length) != 1:
                        revert with memory
                          from 96
                           len -96
                    idx = 0
                    s = 0
                    while idx < stor15.length.field_1:
                        mem[idx + 164] = stor15[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                else:
                    idx = 0
                    while idx < stor17.length:
                        mem[0] = stor17[idx].field_0
                        mem[32] = 8
                        mem[96] = 0x40e6158600000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
                        call address(currentStrategy[stor17[idx].field_0]).0x40e61586 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if arg1 and 100 > -1 / arg1:
                        revert with 'NH{q', 17
                    if 100 * arg1 and 10^12 > -1 / 100 * arg1:
                        revert with 'NH{q', 17
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if arg1 > totalSupply:
                        revert with 0, 'Percent can not be more than 100'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                    if balanceOf[address(msg.sender)] < arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg1
                    if totalSupply < arg1:
                        revert with 'NH{q', 17
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    idx = 0
                    while idx < stor17.length:
                        mem[0] = stor17[idx].field_0
                        mem[32] = 8
                        mem[96] = 0x397a1b2800000000000000000000000000000000000000000000000000000000
                        mem[100] = msg.sender
                        mem[132] = 10^14 * arg1 / totalSupply
                        require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
                        call address(currentStrategy[stor17[idx].field_0]).requestWithdraw(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 10^14 * arg1 / totalSupply
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if stor17.length:
                        idx = 0
                        while idx < stor17.length:
                            mem[0] = stor17[idx].field_0
                            mem[32] = 8
                            mem[96] = 0x40e6158600000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
                            call address(currentStrategy[stor17[idx].field_0]).0x40e61586 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        emit 0x9b03fe25 
                        stor6[address(msg.sender)] = block.number
                    if bool(stor15.length):
                        if bool(stor15.length) == stor15.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
                        if bool(stor15.length) != 1:
                            revert with memory
                              from 96
                               len -96
                        idx = 0
                        s = 0
                        while idx < stor15.length.field_1:
                            mem[idx + 164] = stor15[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), mem[164 len ceil32(stor15.length.field_1)]
                    if bool(stor15.length) == stor15.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
                    if bool(stor15.length) != 1:
                        revert with memory
                          from 96
                           len -96
                    idx = 0
                    s = 0
                    while idx < stor15.length.field_1:
                        mem[idx + 164] = stor15[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
    revert with 0, 32, stor15.length % 128, mem[164 len ceil32(stor15.length.field_1)]
}

function deposit() payable {
    mem[64] = 96
    mem[0] = msg.sender
    mem[32] = 6
    if block.number < stor6[address(msg.sender)]:
        revert with 'NH{q', 17
    if block.number - stor6[address(msg.sender)] < 10:
        if bool(stor14.length):
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor14.length):
                revert with 0, 32, 2 * Mask(256, -1, stor14.length.field_1), Mask(248, 8, stor14.length)
            if bool(stor14.length) != 1:
                revert with memory
                  from 96
                   len -96
            idx = 0
            s = 0
            while idx < stor14.length.field_1:
                mem[idx + 164] = stor14[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, 2 * Mask(256, -1, stor14.length.field_1), mem[164 len ceil32(stor14.length.field_1)]
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor14.length):
            revert with 0, 32, stor14.length % 128, Mask(248, 8, stor14.length)
        if bool(stor14.length) != 1:
            revert with memory
              from 96
               len -96
        idx = 0
        s = 0
        while idx < stor14.length.field_1:
            mem[idx + 164] = stor14[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor14.length % 128, mem[164 len ceil32(stor14.length.field_1)]
    if msg.value < sub_c03601cc:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Funds should be >= than depositLimitMIN'
    if not stor17.length:
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
            if bool(stor15.length) != 1:
                revert with memory
                  from 96
                   len -96
            idx = 0
            s = 0
            while idx < stor15.length.field_1:
                mem[idx + 164] = stor15[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), mem[164 len ceil32(stor15.length.field_1)]
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor15.length):
            revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
        if bool(stor15.length) != 1:
            revert with memory
              from 96
               len -96
        idx = 0
        s = 0
        while idx < stor15.length.field_1:
            mem[idx + 164] = stor15[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor15.length % 128, mem[164 len ceil32(stor15.length.field_1)]
    idx = 0
    while idx < stor17.length:
        mem[0] = stor17[idx].field_0
        mem[32] = 8
        mem[96] = 0x821c057600000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
        call address(currentStrategy[stor17[idx].field_0]).0x821c0576 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if not stor17.length:
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
            if bool(stor15.length) != 1:
                revert with memory
                  from 96
                   len -96
            idx = 0
            s = 0
            while idx < stor15.length.field_1:
                mem[idx + 164] = stor15[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), mem[164 len ceil32(stor15.length.field_1)]
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor15.length):
            revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
        if bool(stor15.length) != 1:
            revert with memory
              from 96
               len -96
        idx = 0
        s = 0
        while idx < stor15.length.field_1:
            mem[idx + 164] = stor15[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor15.length % 128, mem[164 len ceil32(stor15.length.field_1)]
    idx = 0
    while idx < stor17.length:
        mem[0] = stor17[idx].field_0
        mem[32] = 8
        mem[96] = 0x40e6158600000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
        call address(currentStrategy[stor17[idx].field_0]).0x40e61586 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if not stor17.length:
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
            if bool(stor15.length) != 1:
                revert with memory
                  from 96
                   len -96
            idx = 0
            s = 0
            while idx < stor15.length.field_1:
                mem[idx + 164] = stor15[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), mem[164 len ceil32(stor15.length.field_1)]
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor15.length):
            revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
        if bool(stor15.length) != 1:
            revert with memory
              from 96
               len -96
        idx = 0
        s = 0
        while idx < stor15.length.field_1:
            mem[idx + 164] = stor15[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor15.length % 128, mem[164 len ceil32(stor15.length.field_1)]
    idx = 0
    s = 0
    while idx < stor17.length:
        mem[0] = stor17[idx].field_0
        mem[32] = 8
        require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
        staticcall address(currentStrategy[stor17[idx].field_0]).totalCapital() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _229 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_229] == mem[_229]
        if s > -mem[_229] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[_229]
        continue 
    if s * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length > -msg.value - 1:
        revert with 'NH{q', 17
    if (s * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length) + msg.value > depositLimit:
        revert with 0, 'Deposit is limited by contract'
    if not stor17.length:
        _234 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            mem[mem[64] + 36] = stor15.length.field_1
            if not bool(stor15.length):
                revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
            if bool(stor15.length) != 1:
                revert with memory
                  from mem[64]
                   len -mem[64]
            idx = 0
            s = 0
            while idx < stor15.length.field_1:
                mem[_234 + idx + 68] = stor15[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with memory
              from mem[64]
               len _234 + ceil32(stor15.length.field_1) + -mem[64] + 68
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[mem[64] + 36] = stor15.length.field_1
        if not bool(stor15.length):
            revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
        if bool(stor15.length) != 1:
            revert with memory
              from mem[64]
               len -mem[64]
        idx = 0
        s = 0
        while idx < stor15.length.field_1:
            mem[_234 + idx + 68] = stor15[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with memory
          from mem[64]
           len _234 + ceil32(stor15.length.field_1) + -mem[64] + 68
    if stor17.length <= 0:
        revert with 0, 'This vault does not have any strategies'
    if sub_51a5cc5b >= stor17.length:
        revert with 'NH{q', 50
    require ext_code.size(address(currentStrategy[stor17[stor11].field_0]))
    call address(currentStrategy[stor17[stor11].field_0]).0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor17.length <= 0:
        revert with 0, 'This vault does not have any strategies'
    if sub_51a5cc5b >= stor17.length:
        revert with 'NH{q', 50
    mem[0] = stor17[stor11].field_0
    mem[32] = 8
    mem[mem[64]] = 0x40e6158600000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(currentStrategy[stor17[stor11].field_0]))
    call address(currentStrategy[stor17[stor11].field_0]).0x40e61586 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not stor17.length:
        _252 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            mem[mem[64] + 36] = stor15.length.field_1
            if not bool(stor15.length):
                revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
            if bool(stor15.length) != 1:
                revert with memory
                  from mem[64]
                   len -mem[64]
            idx = 0
            s = 0
            while idx < stor15.length.field_1:
                mem[_252 + idx + 68] = stor15[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with memory
              from mem[64]
               len _252 + ceil32(stor15.length.field_1) + -mem[64] + 68
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[mem[64] + 36] = stor15.length.field_1
        if not bool(stor15.length):
            revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
        if bool(stor15.length) != 1:
            revert with memory
              from mem[64]
               len -mem[64]
        idx = 0
        s = 0
        while idx < stor15.length.field_1:
            mem[_252 + idx + 68] = stor15[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with memory
          from mem[64]
           len _252 + ceil32(stor15.length.field_1) + -mem[64] + 68
    idx = 0
    s = 0
    while idx < stor17.length:
        mem[0] = stor17[idx].field_0
        mem[32] = 8
        require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
        staticcall address(currentStrategy[stor17[idx].field_0]).totalCapital() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _275 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_275] == mem[_275]
        if s > -mem[_275] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[_275]
        continue 
    if msg.value and 100 > -1 / msg.value:
        revert with 'NH{q', 17
    if not s * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length:
        revert with 'NH{q', 18
    if 100 * msg.value / s * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length <= 0:
        revert with 0, 'Percent can not be zero, try to deposit more'
    if 100 < 100 * msg.value / s * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length:
        revert with 'NH{q', 17
    if not -(100 * msg.value / s * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length) + 100:
        revert with 'NH{q', 18
    if totalSupply / -(100 * msg.value / s * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length) + 100 and 100 * msg.value / s * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length > -1 / totalSupply / -(100 * msg.value / s * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length) + 100:
        revert with 'NH{q', 17
    if totalSupply / -(100 * msg.value / s * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length) + 100 * 100 * msg.value / s * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length <= 0:
        revert with 0, 'Shares can not be zero, try to deposit more'
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > (-1 * totalSupply / -(100 * msg.value / s * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length) + 100 * 100 * msg.value / s * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length) - 1:
        revert with 'NH{q', 17
    totalSupply += totalSupply / -(100 * msg.value / s * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length) + 100 * 100 * msg.value / s * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length
    if balanceOf[address(msg.sender)] > (-1 * totalSupply / -(100 * msg.value / s * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length) + 100 * 100 * msg.value / s * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length) - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += totalSupply / -(100 * msg.value / s * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length) + 100 * 100 * msg.value / s * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length
    emit Transfer((totalSupply / -(100 * msg.value / s * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length) + 100 * 100 * msg.value / s * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length * stor17.length), 0, msg.sender);
    if stor17.length:
        idx = 0
        while idx < stor17.length:
            mem[0] = stor17[idx].field_0
            mem[32] = 8
            mem[mem[64]] = 0x40e6158600000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(currentStrategy[stor17[idx].field_0]))
            call address(currentStrategy[stor17[idx].field_0]).0x40e61586 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        emit 0x5c77db97: msg.value
    _290 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[mem[64] + 36] = stor15.length.field_1
        if not bool(stor15.length):
            revert with 0, 32, 2 * Mask(256, -1, stor15.length.field_1), Mask(248, 8, stor15.length)
        if bool(stor15.length) != 1:
            revert with memory
              from mem[64]
               len -mem[64]
        idx = 0
        s = 0
        while idx < stor15.length.field_1:
            mem[_290 + idx + 68] = stor15[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with memory
          from mem[64]
           len _290 + ceil32(stor15.length.field_1) + -mem[64] + 68
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 'NH{q', 34
    mem[mem[64] + 36] = stor15.length.field_1
    if not bool(stor15.length):
        revert with 0, 32, stor15.length % 128, Mask(248, 8, stor15.length)
    if bool(stor15.length) != 1:
        revert with memory
          from mem[64]
           len -mem[64]
    idx = 0
    s = 0
    while idx < stor15.length.field_1:
        mem[_290 + idx + 68] = stor15[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    revert with memory
      from mem[64]
       len _290 + ceil32(stor15.length.field_1) + -mem[64] + 68
}



}
