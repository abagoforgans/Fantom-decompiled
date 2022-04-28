contract main {




// =====================  Runtime code  =====================


#
#  - addLiquidity()
#
uint256 stor0;
address sub_6f6448ebAddress;
address sub_2ffdbc81Address;
address devAddr;
uint32 stor4;
address stor4;
uint256 stor4;
address stor5;
address stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint8 stor17;
uint8 stor17; offset 8
uint8 stor17; offset 16
uint256 stor17; offset 16
uint256 stor17; offset 8
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 sub_50239f5b;
mapping of struct bUYERS;
address WETHAddress;
address sub_0777bc02Address;
address sub_a0d948eaAddress;
uint256 sub_59d30690;

function sub_0777bc02(?) {
    return sub_0777bc02Address
}

function BUYERS(address arg1) {
    require calldata.size - 4 >= 32
    return bUYERS[arg1].field_0, bUYERS[arg1].field_256
}

function sub_2ffdbc81(?) {
    return sub_2ffdbc81Address
}

function sub_50239f5b(?) {
    return sub_50239f5b
}

function sub_59d30690(?) {
    return sub_59d30690
}

function sub_6f6448eb(?) {
    return sub_6f6448ebAddress
}

function sub_a0d948ea(?) {
    return sub_a0d948eaAddress
}

function WETH() {
    return WETHAddress
}

function devAddr() {
    return devAddr
}

function _fallback() payable {
    revert
}

function sub_8098f88d(?) {
    require msg.sender == devAddr
    Mask(248, 0, stor17.field_8) = 1
}

function presaleInfo() {
    return address(stor4), stor5, stor6, stor7, stor8, stor9, stor10, stor11, stor12, stor13, stor14, stor15, stor16
}

function status() {
    return bool(uint8(stor17.field_0)), 
           bool(uint8(stor17.field_8)),
           bool(uint8(stor17.field_16)),
           stor18,
           stor19,
           stor20,
           stor21,
           stor22
}

function sub_4d12312a(?) {
    require calldata.size - 4 >= 160
    if sub_6f6448ebAddress != msg.sender:
        revert with 0, 'Not Presale Generator!'
    address(stor4) = arg1
    stor5 = arg2
    stor6 = arg3
    sub_50239f5b = arg4
    sub_59d30690 = arg5
}

function sub_f8d74c33(?) {
    require calldata.size - 4 >= 320
    if sub_6f6448ebAddress != msg.sender:
        revert with 0, 'Not Presale Generator!'
    stor7 = arg1
    stor8 = arg2
    stor9 = arg3
    stor10 = arg4
    stor11 = arg5
    stor12 = arg6
    stor13 = arg7
    stor14 = arg8
    stor15 = arg9
    stor16 = arg10
}

function presaleStatus() {
    if uint8(stor17.field_8):
        return 3
    if block.timestamp > stor15:
        if stor18 < stor10:
            return 3
    if stor18 >= stor11:
        return 2
    if block.timestamp > stor15:
        if stor18 >= stor10:
            return 2
    if uint8(stor17.field_16):
        return 2
    if block.timestamp < stor14:
        return 0
    if block.timestamp > stor15:
        return 0
    return 1
}

function forceFailIfPairExists() {
    if uint8(stor17.field_0):
        revert with 0, 'Wrong Call!'
    if uint8(stor17.field_8):
        revert with 0, 'Wrong Call!'
    require ext_code.size(sub_2ffdbc81Address)
    staticcall sub_2ffdbc81Address.0x9b836583 with:
            gas gas_remaining wei
           args stor5, stor6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        Mask(248, 0, stor17.field_8) = 1
}

function sub_c7dc2fba(?) {
    if address(stor4) != msg.sender:
        revert with 0, 'Not Presale Owner!'
    require not uint8(stor17.field_8)
    if block.timestamp > stor15:
        require stor18 >= stor10
    require stor18 < stor11
    if block.timestamp > stor15:
        require stor18 < stor10
    require not uint8(stor17.field_16)
    require block.timestamp >= stor14
    require block.timestamp <= stor15
    if stor18 + stor8 < stor18:
        revert with 0, 'SafeMath: addition overflow'
    require stor11 < stor18 + stor8
    Mask(240, 0, stor17.field_16) = 1
}

function userWithdrawTokens() {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not uint8(stor17.field_0):
        revert with 0, 'AWAITING LP GENERATION'
    if stor20 > stor19:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if stor19 - stor20 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor19 - stor20
        if 0 / stor19 - stor20 <= 0:
            revert with 0, 'NOTHING TO WITHDRAW'
        if stor20 + bUYERS[address(msg.sender)].field_256 < stor20:
            revert with 0, 'SafeMath: addition overflow'
        stor20 += bUYERS[address(msg.sender)].field_256
        bUYERS[address(msg.sender)].field_256 = 0
        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / stor19 - stor20) >> 32
        call stor5 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, 0 / stor19 - stor20) << 224, mem[388 len 4]
    else:
        require ext_call.return_data[0]
        if ext_call.return_data[0] * bUYERS[address(msg.sender)].field_256 / ext_call.return_data[0] != bUYERS[address(msg.sender)].field_256:
            revert with 0, 32, 33, code.data[15247 len 33], mem[261 len 31]
        if stor19 - stor20 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor19 - stor20
        if ext_call.return_data[0] * bUYERS[address(msg.sender)].field_256 / stor19 - stor20 <= 0:
            revert with 0, 'NOTHING TO WITHDRAW'
        if stor20 + bUYERS[address(msg.sender)].field_256 < stor20:
            revert with 0, 'SafeMath: addition overflow'
        stor20 += bUYERS[address(msg.sender)].field_256
        bUYERS[address(msg.sender)].field_256 = 0
        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] * bUYERS[address(msg.sender)].field_256 / stor19 - stor20) >> 32
        call stor5 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, ext_call.return_data[0] * bUYERS[address(msg.sender)].field_256 / stor19 - stor20) << 224, mem[388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'TransferHelper: TRANSFER_FAILED'
    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'TransferHelper: TRANSFER_FAILED'
    if return_data.size:
        require return_data.size >= 32
        if not mem[356]:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    stor0 = 1
}

function ownerWithdrawTokens() {
    if address(stor4) != msg.sender:
        revert with 0, 'Not Presale Owner!'
    else:
        if not uint8(stor17.field_8):
            if block.timestamp <= stor15:
                require stor18 < stor11
                if block.timestamp <= stor15:
                    require not uint8(stor17.field_16)
                    require block.timestamp >= stor14
                    require block.timestamp <= stor15
                    revert
                else:
                    require stor18 < stor10
                    require not uint8(stor17.field_16)
                    require block.timestamp >= stor14
                    require block.timestamp <= stor15
                    revert
            else:
                if stor18 >= stor10:
                    require stor18 < stor11
                    if block.timestamp <= stor15:
                        require not uint8(stor17.field_16)
                        require block.timestamp >= stor14
                        require block.timestamp <= stor15
                        revert
                    else:
                        require stor18 < stor10
                        require not uint8(stor17.field_16)
                        require block.timestamp >= stor14
                        require block.timestamp <= stor15
                        revert
                else:
                    require ext_code.size(stor5)
                    staticcall stor5.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                        call stor5 with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            else:
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                        else:
                            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            else:
                                if not return_data.size:
                                else:
                                    require return_data.size >= 32
                                    if not mem[228]:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
        else:
            require ext_code.size(stor5)
            staticcall stor5.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                call stor5 with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                else:
                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        if not return_data.size:
                        else:
                            require return_data.size >= 32
                            if not mem[228]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            else:
}

function userWithdrawBaseTokens() {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    else:
        stor0 = 2
        if not uint8(stor17.field_8):
            if block.timestamp <= stor15:
                if stor18 >= stor11:
                    revert with 0, 'NOT FAILED'
                else:
                    if block.timestamp <= stor15:
                        if uint8(stor17.field_16):
                            revert with 0, 'NOT FAILED'
                        else:
                            if block.timestamp < stor14:
                                revert with 0, 'NOT FAILED'
                            else:
                                if block.timestamp <= stor15:
                                    revert with 0, 'NOT FAILED'
                                else:
                                    revert with 0, 'NOT FAILED'
                    else:
                        if stor18 >= stor10:
                            revert with 0, 'NOT FAILED'
                        else:
                            if uint8(stor17.field_16):
                                revert with 0, 'NOT FAILED'
                            else:
                                if block.timestamp < stor14:
                                    revert with 0, 'NOT FAILED'
                                else:
                                    if block.timestamp <= stor15:
                                        revert with 0, 'NOT FAILED'
                                    else:
                                        revert with 0, 'NOT FAILED'
            else:
                if stor18 >= stor10:
                    if stor18 >= stor11:
                        revert with 0, 'NOT FAILED'
                    else:
                        if block.timestamp <= stor15:
                            if uint8(stor17.field_16):
                                revert with 0, 'NOT FAILED'
                            else:
                                if block.timestamp < stor14:
                                    revert with 0, 'NOT FAILED'
                                else:
                                    if block.timestamp <= stor15:
                                        revert with 0, 'NOT FAILED'
                                    else:
                                        revert with 0, 'NOT FAILED'
                        else:
                            if stor18 >= stor10:
                                revert with 0, 'NOT FAILED'
                            else:
                                if uint8(stor17.field_16):
                                    revert with 0, 'NOT FAILED'
                                else:
                                    if block.timestamp < stor14:
                                        revert with 0, 'NOT FAILED'
                                    else:
                                        if block.timestamp <= stor15:
                                            revert with 0, 'NOT FAILED'
                                        else:
                                            revert with 0, 'NOT FAILED'
                else:
                    if stor21 > stor18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if eth.balance(this.address):
                            require eth.balance(this.address)
                            if eth.balance(this.address) * bUYERS[address(msg.sender)].field_0 / eth.balance(this.address) != bUYERS[address(msg.sender)].field_0:
                                revert with 0, 32, 33, code.data[15247 len 33], mem[261 len 31]
                            else:
                                if stor18 - stor21 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                else:
                                    require stor18 - stor21
                                    if eth.balance(this.address) * bUYERS[address(msg.sender)].field_0 / stor18 - stor21 <= 0:
                                        revert with 0, 'NOTHING TO WITHDRAW'
                                    else:
                                        if stor21 + bUYERS[address(msg.sender)].field_0 < stor21:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            stor21 += bUYERS[address(msg.sender)].field_0
                                            bUYERS[address(msg.sender)].field_0 = 0
                                            call msg.sender with:
                                               value eth.balance(this.address) * bUYERS[address(msg.sender)].field_0 / stor18 - stor21 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                stor0 = 1
                        else:
                            if stor18 - stor21 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            else:
                                require stor18 - stor21
                                if 0 / stor18 - stor21 <= 0:
                                    revert with 0, 'NOTHING TO WITHDRAW'
                                else:
                                    if stor21 + bUYERS[address(msg.sender)].field_0 < stor21:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        stor21 += bUYERS[address(msg.sender)].field_0
                                        bUYERS[address(msg.sender)].field_0 = 0
                                        call msg.sender with:
                                           value 0 / stor18 - stor21 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            stor0 = 1
        else:
            if stor21 > stor18:
                revert with 0, 'SafeMath: subtraction overflow'
            else:
                if eth.balance(this.address):
                    require eth.balance(this.address)
                    if eth.balance(this.address) * bUYERS[address(msg.sender)].field_0 / eth.balance(this.address) != bUYERS[address(msg.sender)].field_0:
                        revert with 0, 32, 33, code.data[15247 len 33], mem[261 len 31]
                    else:
                        if stor18 - stor21 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        else:
                            require stor18 - stor21
                            if eth.balance(this.address) * bUYERS[address(msg.sender)].field_0 / stor18 - stor21 <= 0:
                                revert with 0, 'NOTHING TO WITHDRAW'
                            else:
                                if stor21 + bUYERS[address(msg.sender)].field_0 < stor21:
                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    stor21 += bUYERS[address(msg.sender)].field_0
                                    bUYERS[address(msg.sender)].field_0 = 0
                                    call msg.sender with:
                                       value eth.balance(this.address) * bUYERS[address(msg.sender)].field_0 / stor18 - stor21 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        stor0 = 1
                else:
                    if stor18 - stor21 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    else:
                        require stor18 - stor21
                        if 0 / stor18 - stor21 <= 0:
                            revert with 0, 'NOTHING TO WITHDRAW'
                        else:
                            if stor21 + bUYERS[address(msg.sender)].field_0 < stor21:
                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                stor21 += bUYERS[address(msg.sender)].field_0
                                bUYERS[address(msg.sender)].field_0 = 0
                                call msg.sender with:
                                   value 0 / stor18 - stor21 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    stor0 = 1
}

function sub_3c1be241(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if uint8(stor17.field_8):
        revert with 0, 'NOT ACTIVE'
    if block.timestamp > stor15:
        if stor18 < stor10:
            revert with 0, 'NOT ACTIVE'
    if stor18 >= stor11:
        revert with 0, 'NOT ACTIVE'
    if block.timestamp > stor15:
        if stor18 >= stor10:
            revert with 0, 'NOT ACTIVE'
    if uint8(stor17.field_16):
        revert with 0, 'NOT ACTIVE'
    if block.timestamp < stor14:
        revert with 0, 'NOT ACTIVE'
    if block.timestamp > stor15:
        revert with 0, 'NOT ACTIVE'
    if stor8 > msg.value:
        revert with 0, 'MIN SPEND!'
    mem[ceil32(arg3.length) + 128] = 0x9263bb2300000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 292 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    require ext_code.size(sub_a0d948eaAddress)
    call sub_a0d948eaAddress with:
         gas gas_remaining wei
        args arg1, msg.value, arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if bUYERS[address(msg.sender)].field_0 > stor9:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(stor6)
    staticcall stor6.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor9 - bUYERS[address(msg.sender)].field_0 > stor11 - stor18:
        if msg.value <= stor11 - stor18:
            if not msg.value:
                if 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^uint8(ext_call.return_data[0])
                if 0 / 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'ZERO TOKENS'
                if not bUYERS[address(msg.sender)].field_0:
                    stor22++
                if bUYERS[address(msg.sender)].field_0 + msg.value < bUYERS[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                bUYERS[address(msg.sender)].field_0 += msg.value
                if bUYERS[address(msg.sender)].field_256 + (0 / 10^uint8(ext_call.return_data[0])) < bUYERS[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                bUYERS[address(msg.sender)].field_256 += 0 / 10^uint8(ext_call.return_data[0])
                if stor18 + msg.value < stor18:
                    revert with 0, 'SafeMath: addition overflow'
                stor18 += msg.value
                if stor19 + (0 / 10^uint8(ext_call.return_data[0])) < stor19:
                    revert with 0, 'SafeMath: addition overflow'
                stor19 += 0 / 10^uint8(ext_call.return_data[0])
            else:
                require msg.value
                if msg.value * stor7 / msg.value != stor7:
                    revert with 0, 32, 33, code.data[15247 len 33], mem[ceil32(arg3.length) + 293 len 31]
                if 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^uint8(ext_call.return_data[0])
                if msg.value * stor7 / 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'ZERO TOKENS'
                if not bUYERS[address(msg.sender)].field_0:
                    stor22++
                if bUYERS[address(msg.sender)].field_0 + msg.value < bUYERS[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                bUYERS[address(msg.sender)].field_0 += msg.value
                if bUYERS[address(msg.sender)].field_256 + (msg.value * stor7 / 10^uint8(ext_call.return_data[0])) < bUYERS[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                bUYERS[address(msg.sender)].field_256 += msg.value * stor7 / 10^uint8(ext_call.return_data[0])
                if stor18 + msg.value < stor18:
                    revert with 0, 'SafeMath: addition overflow'
                stor18 += msg.value
                if stor19 + (msg.value * stor7 / 10^uint8(ext_call.return_data[0])) < stor19:
                    revert with 0, 'SafeMath: addition overflow'
                stor19 += msg.value * stor7 / 10^uint8(ext_call.return_data[0])
            if msg.value < msg.value:
                if msg.value > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                call msg.sender with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if not stor11 - stor18:
                if 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^uint8(ext_call.return_data[0])
                if 0 / 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'ZERO TOKENS'
                if not bUYERS[address(msg.sender)].field_0:
                    stor22++
                if bUYERS[address(msg.sender)].field_0 + stor11 - stor18 < bUYERS[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                bUYERS[address(msg.sender)].field_0 = bUYERS[address(msg.sender)].field_0 + stor11 - stor18
                if bUYERS[address(msg.sender)].field_256 + (0 / 10^uint8(ext_call.return_data[0])) < bUYERS[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                bUYERS[address(msg.sender)].field_256 += 0 / 10^uint8(ext_call.return_data[0])
                if stor11 < stor18:
                    revert with 0, 'SafeMath: addition overflow'
                stor18 = stor11
                if stor19 + (0 / 10^uint8(ext_call.return_data[0])) < stor19:
                    revert with 0, 'SafeMath: addition overflow'
                stor19 += 0 / 10^uint8(ext_call.return_data[0])
            else:
                require stor11 - stor18
                if (stor11 * stor7) - (stor18 * stor7) / stor11 - stor18 != stor7:
                    revert with 0, 32, 33, code.data[15247 len 33], mem[ceil32(arg3.length) + 293 len 31]
                if 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^uint8(ext_call.return_data[0])
                if (stor11 * stor7) - (stor18 * stor7) / 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'ZERO TOKENS'
                if not bUYERS[address(msg.sender)].field_0:
                    stor22++
                if bUYERS[address(msg.sender)].field_0 + stor11 - stor18 < bUYERS[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                bUYERS[address(msg.sender)].field_0 = bUYERS[address(msg.sender)].field_0 + stor11 - stor18
                if bUYERS[address(msg.sender)].field_256 + ((stor11 * stor7) - (stor18 * stor7) / 10^uint8(ext_call.return_data[0])) < bUYERS[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                bUYERS[address(msg.sender)].field_256 += (stor11 * stor7) - (stor18 * stor7) / 10^uint8(ext_call.return_data[0])
                if stor11 < stor18:
                    revert with 0, 'SafeMath: addition overflow'
                stor18 = stor11
                if stor19 + ((stor11 * stor7) - (stor18 * stor7) / 10^uint8(ext_call.return_data[0])) < stor19:
                    revert with 0, 'SafeMath: addition overflow'
                stor19 += (stor11 * stor7) - (stor18 * stor7) / 10^uint8(ext_call.return_data[0])
            if stor11 - stor18 < msg.value:
                if stor11 - stor18 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                call msg.sender with:
                   value msg.value - stor11 + stor18 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if msg.value <= stor9 - bUYERS[address(msg.sender)].field_0:
            if not msg.value:
                if 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^uint8(ext_call.return_data[0])
                if 0 / 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'ZERO TOKENS'
                if not bUYERS[address(msg.sender)].field_0:
                    stor22++
                if bUYERS[address(msg.sender)].field_0 + msg.value < bUYERS[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                bUYERS[address(msg.sender)].field_0 += msg.value
                if bUYERS[address(msg.sender)].field_256 + (0 / 10^uint8(ext_call.return_data[0])) < bUYERS[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                bUYERS[address(msg.sender)].field_256 += 0 / 10^uint8(ext_call.return_data[0])
                if stor18 + msg.value < stor18:
                    revert with 0, 'SafeMath: addition overflow'
                stor18 += msg.value
                if stor19 + (0 / 10^uint8(ext_call.return_data[0])) < stor19:
                    revert with 0, 'SafeMath: addition overflow'
                stor19 += 0 / 10^uint8(ext_call.return_data[0])
            else:
                require msg.value
                if msg.value * stor7 / msg.value != stor7:
                    revert with 0, 32, 33, code.data[15247 len 33], mem[ceil32(arg3.length) + 293 len 31]
                if 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^uint8(ext_call.return_data[0])
                if msg.value * stor7 / 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'ZERO TOKENS'
                if not bUYERS[address(msg.sender)].field_0:
                    stor22++
                if bUYERS[address(msg.sender)].field_0 + msg.value < bUYERS[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                bUYERS[address(msg.sender)].field_0 += msg.value
                if bUYERS[address(msg.sender)].field_256 + (msg.value * stor7 / 10^uint8(ext_call.return_data[0])) < bUYERS[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                bUYERS[address(msg.sender)].field_256 += msg.value * stor7 / 10^uint8(ext_call.return_data[0])
                if stor18 + msg.value < stor18:
                    revert with 0, 'SafeMath: addition overflow'
                stor18 += msg.value
                if stor19 + (msg.value * stor7 / 10^uint8(ext_call.return_data[0])) < stor19:
                    revert with 0, 'SafeMath: addition overflow'
                stor19 += msg.value * stor7 / 10^uint8(ext_call.return_data[0])
            if msg.value < msg.value:
                if msg.value > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                call msg.sender with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if not stor9 - bUYERS[address(msg.sender)].field_0:
                if 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^uint8(ext_call.return_data[0])
                if 0 / 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'ZERO TOKENS'
                if not bUYERS[address(msg.sender)].field_0:
                    stor22++
                if stor9 < bUYERS[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                bUYERS[address(msg.sender)].field_0 = stor9
                if bUYERS[address(msg.sender)].field_256 + (0 / 10^uint8(ext_call.return_data[0])) < bUYERS[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                bUYERS[address(msg.sender)].field_256 += 0 / 10^uint8(ext_call.return_data[0])
                if stor18 + stor9 - bUYERS[address(msg.sender)].field_0 < stor18:
                    revert with 0, 'SafeMath: addition overflow'
                stor18 = stor18 + stor9 - bUYERS[address(msg.sender)].field_0
                if stor19 + (0 / 10^uint8(ext_call.return_data[0])) < stor19:
                    revert with 0, 'SafeMath: addition overflow'
                stor19 += 0 / 10^uint8(ext_call.return_data[0])
            else:
                require stor9 - bUYERS[address(msg.sender)].field_0
                if (stor9 * stor7) - (bUYERS[address(msg.sender)].field_0 * stor7) / stor9 - bUYERS[address(msg.sender)].field_0 != stor7:
                    revert with 0, 32, 33, code.data[15247 len 33], mem[ceil32(arg3.length) + 293 len 31]
                if 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^uint8(ext_call.return_data[0])
                if (stor9 * stor7) - (bUYERS[address(msg.sender)].field_0 * stor7) / 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'ZERO TOKENS'
                if not bUYERS[address(msg.sender)].field_0:
                    stor22++
                if stor9 < bUYERS[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                bUYERS[address(msg.sender)].field_0 = stor9
                if bUYERS[address(msg.sender)].field_256 + ((stor9 * stor7) - (bUYERS[address(msg.sender)].field_0 * stor7) / 10^uint8(ext_call.return_data[0])) < bUYERS[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                bUYERS[address(msg.sender)].field_256 += (stor9 * stor7) - (bUYERS[address(msg.sender)].field_0 * stor7) / 10^uint8(ext_call.return_data[0])
                if stor18 + stor9 - bUYERS[address(msg.sender)].field_0 < stor18:
                    revert with 0, 'SafeMath: addition overflow'
                stor18 = stor18 + stor9 - bUYERS[address(msg.sender)].field_0
                if stor19 + ((stor9 * stor7) - (bUYERS[address(msg.sender)].field_0 * stor7) / 10^uint8(ext_call.return_data[0])) < stor19:
                    revert with 0, 'SafeMath: addition overflow'
                stor19 += (stor9 * stor7) - (bUYERS[address(msg.sender)].field_0 * stor7) / 10^uint8(ext_call.return_data[0])
            if stor9 - bUYERS[address(msg.sender)].field_0 < msg.value:
                if stor9 - bUYERS[address(msg.sender)].field_0 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                call msg.sender with:
                   value msg.value - stor9 + bUYERS[address(msg.sender)].field_0 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}



}
