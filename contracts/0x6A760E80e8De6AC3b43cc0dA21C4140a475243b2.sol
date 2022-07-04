contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 decimals;
array of struct stor4;
array of struct stor5;
uint8 stor6;
address stor6; offset 8
address stor7;
address stor8;
address stor9;
mapping of uint8 stor10;
mapping of uint8 stor11;
mapping of uint8 stor12;
uint8 stor13; offset 160
uint8 stor13; offset 168
uint8 sub_341e953e; offset 176
uint8 sub_2dc80132; offset 184
uint8 presaleFinalized; offset 192
address iceCreamManAddress;
mapping of uint8 stor14;

function totalSupply() payable {
    return totalSupply
}

function sub_2dc80132(?) payable {
    return bool(sub_2dc80132)
}

function decimals() payable {
    return decimals
}

function sub_341e953e(?) payable {
    return bool(sub_341e953e)
}

function isFeeExempt(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[arg1])
}

function isDividendExempt(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[arg1])
}

function presaleFinalized() payable {
    return bool(presaleFinalized)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function isTxLimitExempt(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function iceCreamMan() payable {
    return iceCreamManAddress
}

function isLiquidityPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[arg1])
}

function _fallback() payable {
    revert
}

function sub_df717138(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    iceCreamManAddress = address(arg1)
}

function _addBalance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    return 1
}

function sub_b5849300(?) payable {
    if iceCreamManAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLAVORS: onlyIceCreamMan => caller not iceCreamMan'
    sub_2dc80132 = 1
}

function sub_33fc0b32(?) payable {
    if iceCreamManAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLAVORS: onlyIceCreamMan => caller not iceCreamMan'
    if sub_341e953e:
        sub_341e953e = 0
    else:
        sub_341e953e = 1
}

function sub_b0badfdc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if iceCreamManAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLAVORS: onlyIceCreamMan => caller not iceCreamMan'
    if stor14[address(arg1)]:
        stor14[address(arg1)] = 0
    else:
        stor14[address(arg1)] = 1
}

function presaleClaim(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor8 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLAVORS: onlyPresale => caller not presale'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_9f715cff(?) payable {
    if uint8(stor13.field_160):
        require ext_code.size(stor8)
        call stor8.0xcfed1a4b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x25b71f31: block.timestamp, block.number, stor8, msg.sender
    if uint8(stor13.field_168):
        require ext_code.size(stor9)
        call stor9.0xcfed1a4b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x25b71f31: block.timestamp, block.number, stor9, msg.sender
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function _setIsDividendExempt(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    stor12[address(arg1)] = uint8(arg2)
    if arg2:
        require ext_code.size(address(stor6.field_8))
        call address(stor6.field_8).setShare_OFT(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor7)
        call stor7.setShare_OFT(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_a993e8a1(?) payable {
    if iceCreamManAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLAVORS: onlyIceCreamMan => caller not iceCreamMan'
    if uint8(stor13.field_160):
        require ext_code.size(stor8)
        call stor8.0xcfed1a4b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x25b71f31: block.timestamp, block.number, stor8, msg.sender
    if uint8(stor13.field_168):
        require ext_code.size(stor9)
        call stor9.0xcfed1a4b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x25b71f31: block.timestamp, block.number, stor9, msg.sender
}

function sub_6b120df3(?) payable {
    if iceCreamManAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLAVORS: onlyIceCreamMan => caller not iceCreamMan'
    presaleFinalized = 1
    if uint8(stor13.field_160):
        require ext_code.size(stor8)
        call stor8.0xcfed1a4b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x25b71f31: block.timestamp, block.number, stor8, msg.sender
    if uint8(stor13.field_168):
        require ext_code.size(stor9)
        call stor9.0xcfed1a4b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x25b71f31: block.timestamp, block.number, stor9, msg.sender
}

function sub_902c9c78(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if iceCreamManAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLAVORS: onlyIceCreamMan => caller not iceCreamMan'
    stor9 = address(arg1)
    uint8(stor13.field_168) = 1
    stor10[address(arg1)] = 1
    stor12[address(arg1)] = 1
    require ext_code.size(address(stor6.field_8))
    call address(stor6.field_8).setShare_OFT(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor7)
    call stor7.setShare_OFT(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d9e2f0e2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if iceCreamManAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLAVORS: onlyIceCreamMan => caller not iceCreamMan'
    stor8 = address(arg1)
    uint8(stor13.field_160) = 1
    stor10[address(arg1)] = 1
    stor12[address(arg1)] = 1
    require ext_code.size(address(stor6.field_8))
    call address(stor6.field_8).setShare_OFT(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor7)
    call stor7.setShare_OFT(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f4851f3c(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor14[address(arg2)]:
        if uint8(stor13.field_160):
            require ext_code.size(stor8)
            call stor8.0xc83271f5 with:
                 gas gas_remaining wei
                args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[0]:
                require ext_code.size(stor8)
                call stor8.0x876fefa7 with:
                     gas gas_remaining wei
                    args address(arg1), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'FLAVORS: _checkPresaleWaitToSell => holder hit todays max sells for Presale0'
        if uint8(stor13.field_168):
            require ext_code.size(stor9)
            call stor9.0xc83271f5 with:
                 gas gas_remaining wei
                args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[0]:
                require ext_code.size(stor9)
                call stor9.0x876fefa7 with:
                     gas gas_remaining wei
                    args address(arg1), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'FLAVORS: _checkPresaleWaitToSell => holder hit todays max sells for Presale1'
}

function name() payable {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
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

function symbol() payable {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[ceil32(uint255(stor5.length) * 0.5) + (uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function sub_959961a0(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == uint8(arg3)
    if uint8(stor6.field_0):
        revert with 0, 'ERC20: initialize => Already Initialized!'
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor4[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4.length = 0
            idx = 0
            while (uint255(stor4.length) * 0.5) + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor4[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4.length = 0
            idx = 0
            while stor4.length.field_1 + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor5[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor5.length = 0
            idx = 0
            while (uint255(stor5.length) * 0.5) + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor5[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor5.length = 0
            idx = 0
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
    decimals = uint8(arg3)
    uint8(stor6.field_0) = 1
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if sub_341e953e:
        if stor14[0]:
            if uint8(stor13.field_160):
                require ext_code.size(stor8)
                call stor8.0xc83271f5 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    require ext_code.size(stor8)
                    call stor8.0x876fefa7 with:
                         gas gas_remaining wei
                        args msg.sender, arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'FLAVORS: _checkPresaleWaitToSell => holder hit todays max sells for Presale0'
            if uint8(stor13.field_168):
                require ext_code.size(stor9)
                call stor9.0xc83271f5 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    require ext_code.size(stor9)
                    call stor9.0x876fefa7 with:
                         gas gas_remaining wei
                        args msg.sender, arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'FLAVORS: _checkPresaleWaitToSell => holder hit todays max sells for Presale1'
    if totalSupply > !arg4:
        revert with 0, 17
    totalSupply += arg4
    if balanceOf[address(msg.sender)] > !arg4:
        revert with 0, 17
    balanceOf[address(msg.sender)] += arg4
    emit Transfer(arg4, 0, msg.sender);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not sub_341e953e:
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    else:
        if not stor14[address(msg.sender)]:
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        else:
            if not uint8(stor13.field_160):
                if not uint8(stor13.field_168):
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                else:
                    require ext_code.size(stor9)
                    call stor9.0xc83271f5 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if ext_call.return_data[0]:
                        require ext_code.size(stor9)
                        call stor9.0x876fefa7 with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'FLAVORS: _checkPresaleWaitToSell => holder hit todays max sells for Presale1'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
            else:
                require ext_code.size(stor8)
                call stor8.0xc83271f5 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    require ext_code.size(stor8)
                    call stor8.0x876fefa7 with:
                         gas gas_remaining wei
                        args address(arg1), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'FLAVORS: _checkPresaleWaitToSell => holder hit todays max sells for Presale0'
                if uint8(stor13.field_168):
                    require ext_code.size(stor9)
                    call stor9.0xc83271f5 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if ext_call.return_data[0]:
                        require ext_code.size(stor9)
                        call stor9.0x876fefa7 with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'FLAVORS: _checkPresaleWaitToSell => holder hit todays max sells for Presale1'
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
    ('ge', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))), ('param', 'arg2'))
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not sub_341e953e:
        if balanceOf[address(arg1)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(arg1)] -= arg3
        if balanceOf[arg2] > !arg3:
            revert with 0, 17
        balanceOf[arg2] += arg3
        emit Transfer(arg3, arg1, arg2);
        if allowance[address(arg1)][msg.sender] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    else:
        if not stor14[address(arg1)]:
            if balanceOf[address(arg1)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[arg2] > !arg3:
                revert with 0, 17
            balanceOf[arg2] += arg3
            emit Transfer(arg3, arg1, arg2);
            if allowance[address(arg1)][msg.sender] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            if not uint8(stor13.field_160):
                if not uint8(stor13.field_168):
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    balanceOf[arg2] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if allowance[address(arg1)][msg.sender] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                else:
                    require ext_code.size(stor9)
                    call stor9.0xc83271f5 with:
                         gas gas_remaining wei
                        args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if ext_call.return_data[0]:
                        require ext_code.size(stor9)
                        call stor9.0x876fefa7 with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'FLAVORS: _checkPresaleWaitToSell => holder hit todays max sells for Presale1'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    balanceOf[arg2] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if allowance[address(arg1)][msg.sender] < arg3:
                        revert with 0, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
            else:
                require ext_code.size(stor8)
                call stor8.0xc83271f5 with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    require ext_code.size(stor8)
                    call stor8.0x876fefa7 with:
                         gas gas_remaining wei
                        args address(arg2), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'FLAVORS: _checkPresaleWaitToSell => holder hit todays max sells for Presale0'
                if uint8(stor13.field_168):
                    require ext_code.size(stor9)
                    call stor9.0xc83271f5 with:
                         gas gas_remaining wei
                        args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if ext_call.return_data[0]:
                        require ext_code.size(stor9)
                        call stor9.0x876fefa7 with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'FLAVORS: _checkPresaleWaitToSell => holder hit todays max sells for Presale1'
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[arg2] > !arg3:
                    revert with 0, 17
                balanceOf[arg2] += arg3
                emit Transfer(arg3, arg1, arg2);
                if allowance[address(arg1)][msg.sender] < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}



}
