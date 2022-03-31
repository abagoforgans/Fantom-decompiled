contract main {




// =====================  Runtime code  =====================


#
#  - calculatePurchaseReturn(uint256 arg1)
#  - buy(uint256 arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 stor101;
uint256 stor102;
uint256 stor103;
uint256 stor104;
uint256 stor105;
address sub_c6f25670Address;
uint256 sub_83caf275;
uint256 sub_19c13767;
uint256 stor109; offset 32
uint256 totalToken;
big480 stor109;
uint256 sellDelay;
uint256 sub_0d8a8445;
address operatorAddress;
uint256 stor112;
address multiSigAddress;
mapping of struct sub_09141358;

function name() payable {
    return name[0 len name.length].field_0
}

function sub_09141358(?) payable {
    require calldata.size - 4 >= 32
    return sub_09141358[arg1].field_0, sub_09141358[arg1].field_256
}

function sub_0d8a8445(?) payable {
    return sub_0d8a8445
}

function totalSupply() payable {
    return totalSupply
}

function sub_19c13767(?) payable {
    return sub_19c13767
}

function decimals() payable {
    return decimals
}

function multiSig() payable {
    return multiSigAddress
}

function operator() payable {
    return address(operatorAddress)
}

function totalToken() payable {
    return totalToken
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_83caf275(?) payable {
    return sub_83caf275
}

function symbol() payable {
    return symbol[0 len symbol.length].field_0
}

function sellDelay() payable {
    return sellDelay
}

function sub_c6f25670(?) payable {
    return sub_c6f25670Address
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_413b0147(?) payable {
    return stor101, stor102, stor103, stor104, stor105
}

function min(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        return arg2
    return arg1
}

function setSellDelay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0, 'Operator required'
    sellDelay = arg1
    emit SellDelayChanged(sellDelay, arg1);
}

function setMultiSig(address arg1) payable {
    require calldata.size - 4 >= 32
    if multiSigAddress != msg.sender:
        revert with 0, 'MultiSig required'
    multiSigAddress = arg1
    emit MultiSigChanged(multiSigAddress, arg1);
}

function setSellWindow(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0, 'Operator required'
    sub_0d8a8445 = arg1
    emit SellWindowChanged(sub_0d8a8445, arg1);
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if multiSigAddress != msg.sender:
        revert with 0, 'MultiSig required'
    address(operatorAddress) = arg1
    emit OperatorChanged(address(operatorAddress), arg1);
}

function orderSell() payable {
    if balanceOf[address(msg.sender)] <= 0:
        revert with 0, 'Insufficient balance'
    if sub_09141358[msg.sender].field_0:
        if block.timestamp <= sub_09141358[msg.sender].field_0 + sellDelay + sub_0d8a8445:
            revert with 0, 'Already ordered'
    sub_09141358[msg.sender].field_0 = block.timestamp
    sub_09141358[msg.sender].field_256 = balanceOf[address(msg.sender)]
    emit OrderSell(msg.sender, block.timestamp);
}

function init(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0, 'Operator required'
    require arg1 < 36
    stor101 = arg1
    stor102 = 10^arg1
    require 10^uint8(-arg1 + 36)
    stor103 = 0x20b85a438b48462e4212f98f0ebc9e2 / 10^uint8(-arg1 + 36)
    stor104 = 0x25d0c79fe247f31777d922627a74624 / 10^uint8(-arg1 + 36)
    stor105 = 22026465794806716516957900645284244 * 10^6 / 10^uint8(-arg1 + 36)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function calcMaxSponsorOut() payable {
    if not totalSupply:
        return 0
    if totalSupply * totalSupply / totalSupply != totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalSupply * totalSupply:
        return 0
    if sub_83caf275 * totalSupply * totalSupply / totalSupply * totalSupply != sub_83caf275:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (sub_83caf275 * totalSupply * totalSupply / 2000000000000000000 * 10^18)
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function initialize(uint256 arg1, uint256 arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0, 
                                32,
                                46,
                                0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[338 len 18]
            if not uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0, 
                                    32,
                                    46,
                                    0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[338 len 18]
                if not uint8(stor0.field_8):
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0, 
                                        32,
                                        46,
                                        0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[338 len 18]
                    if not uint8(stor0.field_8):
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
    bool(name.length) = 0
    name.length.field_1 = 10
    name.length.field_176 = Mask(80, 0, 'FortubeDao')
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(symbol.length) = 0
    symbol.length.field_1 = 4
    symbol.length.field_224 = 1178878287
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    decimals = 18
    if uint8(stor0.field_8):
        sub_83caf275 = arg1
        sub_19c13767 = arg2
        sub_c6f25670Address = arg3
        sellDelay = 48 * 24 * 3600
        sub_0d8a8445 = 24 * 3600
        uint256(stor112) = msg.sender or Mask(96, 160, uint256(stor112))
        multiSigAddress = arg4
    else:
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
        sub_83caf275 = arg1
        sub_19c13767 = arg2
        sub_c6f25670Address = arg3
        sellDelay = 48 * 24 * 3600
        sub_0d8a8445 = 24 * 3600
        uint256(stor112) = msg.sender or Mask(96, 160, uint256(stor112))
        multiSigAddress = arg4
        uint8(stor0.field_8) = 0
}

function calculateSaleReturn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_83caf275:
        if not sub_83caf275:
            if sub_19c13767 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_19c13767:
                return 0
            if arg1 * sub_19c13767 / sub_19c13767 != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return (arg1 * sub_19c13767 / 10^18)
        if totalSupply * sub_83caf275 / sub_83caf275 != totalSupply:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 0 > totalSupply * sub_83caf275 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_19c13767 + (totalSupply * sub_83caf275 / 10^18) < totalSupply * sub_83caf275 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_19c13767 + (totalSupply * sub_83caf275 / 10^18):
            return 0
        if (sub_19c13767 * arg1) + (totalSupply * sub_83caf275 / 10^18 * arg1) / sub_19c13767 + (totalSupply * sub_83caf275 / 10^18) != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((sub_19c13767 * arg1) + (totalSupply * sub_83caf275 / 10^18 * arg1) / 10^18)
    if arg1 * sub_83caf275 / sub_83caf275 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not sub_83caf275:
        if arg1 * sub_83caf275 / 2 * 10^18 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_19c13767 - (arg1 * sub_83caf275 / 2 * 10^18) < -arg1 * sub_83caf275 / 2 * 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_19c13767 - (arg1 * sub_83caf275 / 2 * 10^18):
            return 0
        if (sub_19c13767 * arg1) - (arg1 * sub_83caf275 / 2 * 10^18 * arg1) / sub_19c13767 - (arg1 * sub_83caf275 / 2 * 10^18) != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((sub_19c13767 * arg1) - (arg1 * sub_83caf275 / 2 * 10^18 * arg1) / 10^18)
    if totalSupply * sub_83caf275 / sub_83caf275 != totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if arg1 * sub_83caf275 / 2 * 10^18 > totalSupply * sub_83caf275 / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_19c13767 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not sub_19c13767 + (totalSupply * sub_83caf275 / 10^18) - (arg1 * sub_83caf275 / 2 * 10^18):
        return 0
    if (sub_19c13767 * arg1) + (totalSupply * sub_83caf275 / 10^18 * arg1) - (arg1 * sub_83caf275 / 2 * 10^18 * arg1) / sub_19c13767 + (totalSupply * sub_83caf275 / 10^18) - (arg1 * sub_83caf275 / 2 * 10^18) != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((sub_19c13767 * arg1) + (totalSupply * sub_83caf275 / 10^18 * arg1) - (arg1 * sub_83caf275 / 2 * 10^18 * arg1) / 10^18)
}

function calcNewSlope(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not sub_19c13767:
        if not arg1:
            if arg2 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if arg2:
                if 0 > 0 / arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not 0 / arg2:
                    if arg2 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if arg2:
                        return (0 / arg2)
                else:
                    if 10^18 * 0 / arg2 / 0 / arg2 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if arg2 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if arg2:
                        return (10^18 * 0 / arg2 / arg2)
                ('iszero', ('param', 'arg2'))
        else:
            if 2 * 10^18 * arg1 / arg1 != 2 * 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg2 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if arg2:
                if 0 > 2 * 10^18 * arg1 / arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not 2 * 10^18 * arg1 / arg2:
                    if arg2 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if arg2:
                        return (0 / arg2)
                else:
                    if 10^18 * 2 * 10^18 * arg1 / arg2 / 2 * 10^18 * arg1 / arg2 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if arg2 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if arg2:
                        return (10^18 * 2 * 10^18 * arg1 / arg2 / arg2)
                ('iszero', ('param', 'arg2'))
    else:
        if 2 * sub_19c13767 / sub_19c13767 != 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not arg1:
            if arg2 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if arg2:
                if 2 * sub_19c13767 > 0 / arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (0 / arg2) - (2 * sub_19c13767):
                    if arg2 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if arg2:
                        return (0 / arg2)
                else:
                    if (10^18 * 0 / arg2) - (10^18 * 2 * sub_19c13767) / (0 / arg2) - (2 * sub_19c13767) != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if arg2 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if arg2:
                        return ((10^18 * 0 / arg2) - (10^18 * 2 * sub_19c13767) / arg2)
                ('iszero', ('param', 'arg2'))
        else:
            if 2 * 10^18 * arg1 / arg1 != 2 * 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg2 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if arg2:
                if 2 * sub_19c13767 > 2 * 10^18 * arg1 / arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (2 * 10^18 * arg1 / arg2) - (2 * sub_19c13767):
                    if arg2 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if arg2:
                        return (0 / arg2)
                else:
                    if (10^18 * 2 * 10^18 * arg1 / arg2) - (10^18 * 2 * sub_19c13767) / (2 * 10^18 * arg1 / arg2) - (2 * sub_19c13767) != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if arg2 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if arg2:
                        return ((10^18 * 2 * 10^18 * arg1 / arg2) - (10^18 * 2 * sub_19c13767) / arg2)
                ('iszero', ('param', 'arg2'))
    revert
}

function sponsorIn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Invalid amount'
    if totalSupply <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6443616e6e6f742073706f6e736f72207768656e20746f74616c537570706c7920697320,
                    mem[200 len 28]
    if arg1 + totalToken < totalToken:
        revert with 0, 'SafeMath: addition overflow'
    totalToken += arg1
    if not sub_19c13767:
        if not totalToken:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if 0 > 0 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 0 / totalSupply:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                sub_83caf275 = 0 / totalSupply
                emit Synced(sub_83caf275, 0 / totalSupply);
                if not ext_code.size(sub_c6f25670Address):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
            else:
                if 10^18 * 0 / totalSupply / 0 / totalSupply != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                sub_83caf275 = 10^18 * 0 / totalSupply / totalSupply
                emit Synced(sub_83caf275, 10^18 * 0 / totalSupply / totalSupply);
                if not ext_code.size(sub_c6f25670Address):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
        else:
            if 2 * 10^18 * totalToken / totalToken != 2 * 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if 0 > 2 * 10^18 * totalToken / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 2 * 10^18 * totalToken / totalSupply:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                sub_83caf275 = 0 / totalSupply
                emit Synced(sub_83caf275, 0 / totalSupply);
            else:
                if 10^18 * 2 * 10^18 * totalToken / totalSupply / 2 * 10^18 * totalToken / totalSupply != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                sub_83caf275 = 10^18 * 2 * 10^18 * totalToken / totalSupply / totalSupply
                emit Synced(sub_83caf275, 10^18 * 2 * 10^18 * totalToken / totalSupply / totalSupply);
            if not ext_code.size(sub_c6f25670Address):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[416 len 4] = 0
            mem[388 len 0] = 0
    else:
        if 2 * sub_19c13767 / sub_19c13767 != 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not totalToken:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if 2 * sub_19c13767 > 0 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if (0 / totalSupply) - (2 * sub_19c13767):
                if (10^18 * 0 / totalSupply) - (10^18 * 2 * sub_19c13767) / (0 / totalSupply) - (2 * sub_19c13767) != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                sub_83caf275 = (10^18 * 0 / totalSupply) - (10^18 * 2 * sub_19c13767) / totalSupply
                emit Synced(sub_83caf275, (10^18 * 0 / totalSupply) - (10^18 * 2 * sub_19c13767) / totalSupply);
                if not ext_code.size(sub_c6f25670Address):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
            else:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                sub_83caf275 = 0 / totalSupply
                emit Synced(sub_83caf275, 0 / totalSupply);
                if not ext_code.size(sub_c6f25670Address):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
        else:
            if 2 * 10^18 * totalToken / totalToken != 2 * 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if 2 * sub_19c13767 > 2 * 10^18 * totalToken / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (2 * 10^18 * totalToken / totalSupply) - (2 * sub_19c13767):
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                sub_83caf275 = 0 / totalSupply
                emit Synced(sub_83caf275, 0 / totalSupply);
                if not ext_code.size(sub_c6f25670Address):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
            else:
                if (10^18 * 2 * 10^18 * totalToken / totalSupply) - (10^18 * 2 * sub_19c13767) / (2 * 10^18 * totalToken / totalSupply) - (2 * sub_19c13767) != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                sub_83caf275 = (10^18 * 2 * 10^18 * totalToken / totalSupply) - (10^18 * 2 * sub_19c13767) / totalSupply
                emit Synced(sub_83caf275, (10^18 * 2 * 10^18 * totalToken / totalSupply) - (10^18 * 2 * sub_19c13767) / totalSupply);
                if not ext_code.size(sub_c6f25670Address):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
    call sub_c6f25670Address with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    emit SponsorIn(totalToken, arg1);
}

function sell(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Invalid daoAmount'
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'Insufficient daoAmount'
    if block.timestamp <= sellDelay + sub_09141358[msg.sender].field_0:
        revert with 0, 'Cannot sell'
    if block.timestamp > sub_09141358[msg.sender].field_0 + sellDelay + sub_0d8a8445:
        revert with 0, 'Cannot sell'
    if arg1 > sub_09141358[msg.sender].field_256:
        revert with 0, 'Excess sell limit'
    sub_09141358[msg.sender].field_0 = 0
    sub_09141358[msg.sender].field_256 = 0
    if not sub_83caf275:
        if not sub_83caf275:
            if sub_19c13767 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_19c13767:
                if not msg.sender:
                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                balanceOf[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if totalToken > 0:
                    if 0 > totalToken:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_code.size(sub_c6f25670Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[484 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    mem[548 len 0] = 0
                    call sub_c6f25670Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[548 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        emit Sold(address rg1, uint256 rg2, uint256 rg3):
                                  msg.sender,
                                  0,
                                  0,
                                  arg1,
                    else:
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                        emit Sold(msg.sender, 0, arg1);
                else:
                    totalToken = 0
                    if not ext_code.size(sub_c6f25670Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[484 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor109.field_32)
                    mem[548 len 0] = 0
                    call sub_c6f25670Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, 0, stor109.field_0), mem[548 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        emit Sold(address rg1, uint256 rg2, uint256 rg3):
                                  msg.sender,
                                  totalToken,
                                  0,
                                  arg1,
                    else:
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                        emit Sold(msg.sender, totalToken, arg1);
            else:
                if arg1 * sub_19c13767 / sub_19c13767 != arg1:
                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not msg.sender:
                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                balanceOf[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if totalToken > arg1 * sub_19c13767 / 10^18:
                    if arg1 * sub_19c13767 / 10^18 > totalToken:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalToken -= arg1 * sub_19c13767 / 10^18
                    if not ext_code.size(sub_c6f25670Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[484 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1 * sub_19c13767 / 10^18) >> 32
                    call sub_c6f25670Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1 * sub_19c13767 / 10^18) << 224, mem[548 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                    else:
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                    emit Sold(msg.sender, arg1 * sub_19c13767 / 10^18, arg1);
                else:
                    if totalToken > totalToken:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalToken = 0
                    if not ext_code.size(sub_c6f25670Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[484 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor109.field_32)
                    call sub_c6f25670Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, 0, stor109.field_0), mem[548 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                    else:
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                    emit Sold(msg.sender, totalToken, arg1);
        else:
            if totalSupply * sub_83caf275 / sub_83caf275 != totalSupply:
                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if 0 > totalSupply * sub_83caf275 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_19c13767 + (totalSupply * sub_83caf275 / 10^18) < totalSupply * sub_83caf275 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_19c13767 + (totalSupply * sub_83caf275 / 10^18):
                if not msg.sender:
                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                balanceOf[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if totalToken <= 0:
                    totalToken = 0
                    if not ext_code.size(sub_c6f25670Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[484 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor109.field_32)
                    call sub_c6f25670Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, 0, stor109.field_0), mem[548 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                    else:
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                    emit Sold(msg.sender, totalToken, arg1);
                else:
                    if 0 > totalToken:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_code.size(sub_c6f25670Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[484 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    mem[548 len 0] = 0
                    call sub_c6f25670Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[548 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        emit Sold(address rg1, uint256 rg2, uint256 rg3):
                                  msg.sender,
                                  0,
                                  0,
                                  arg1,
                    else:
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                        emit Sold(msg.sender, 0, arg1);
            else:
                if (sub_19c13767 * arg1) + (totalSupply * sub_83caf275 / 10^18 * arg1) / sub_19c13767 + (totalSupply * sub_83caf275 / 10^18) != arg1:
                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not msg.sender:
                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                balanceOf[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if totalToken > (sub_19c13767 * arg1) + (totalSupply * sub_83caf275 / 10^18 * arg1) / 10^18:
                    if (sub_19c13767 * arg1) + (totalSupply * sub_83caf275 / 10^18 * arg1) / 10^18 > totalToken:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalToken -= (sub_19c13767 * arg1) + (totalSupply * sub_83caf275 / 10^18 * arg1) / 10^18
                    if not ext_code.size(sub_c6f25670Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[484 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (sub_19c13767 * arg1) + (totalSupply * sub_83caf275 / 10^18 * arg1) / 10^18) >> 32
                    mem[548 len 0] = 0
                    call sub_c6f25670Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (sub_19c13767 * arg1) + (totalSupply * sub_83caf275 / 10^18 * arg1) / 10^18) << 224, mem[548 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        emit Sold(address rg1, uint256 rg2, uint256 rg3):
                                  msg.sender,
                                  (sub_19c13767 * arg1) + (totalSupply * sub_83caf275 / 10^18 * arg1) / 10^18,
                                  0,
                                  arg1,
                    else:
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                        emit Sold(msg.sender, (sub_19c13767 * arg1) + (totalSupply * sub_83caf275 / 10^18 * arg1) / 10^18, arg1);
                else:
                    if totalToken > totalToken:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalToken = 0
                    if not ext_code.size(sub_c6f25670Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[484 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor109.field_32)
                    mem[548 len 0] = 0
                    call sub_c6f25670Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, 0, stor109.field_0), mem[548 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        emit Sold(address rg1, uint256 rg2, uint256 rg3):
                                  msg.sender,
                                  totalToken,
                                  0,
                                  arg1,
                    else:
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                        emit Sold(msg.sender, totalToken, arg1);
    else:
        if arg1 * sub_83caf275 / sub_83caf275 != arg1:
            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not sub_83caf275:
            if arg1 * sub_83caf275 / 2 * 10^18 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_19c13767 - (arg1 * sub_83caf275 / 2 * 10^18) < -arg1 * sub_83caf275 / 2 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_19c13767 - (arg1 * sub_83caf275 / 2 * 10^18):
                if not msg.sender:
                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                balanceOf[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if totalToken > 0:
                    if 0 > totalToken:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_code.size(sub_c6f25670Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[484 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    call sub_c6f25670Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[548 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                    else:
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                    emit Sold(msg.sender, 0, arg1);
                else:
                    totalToken = 0
                    if not ext_code.size(sub_c6f25670Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[484 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor109.field_32)
                    call sub_c6f25670Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, 0, stor109.field_0), mem[548 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                    else:
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                    emit Sold(msg.sender, totalToken, arg1);
            else:
                if (sub_19c13767 * arg1) - (arg1 * sub_83caf275 / 2 * 10^18 * arg1) / sub_19c13767 - (arg1 * sub_83caf275 / 2 * 10^18) != arg1:
                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not msg.sender:
                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                balanceOf[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if totalToken <= (sub_19c13767 * arg1) - (arg1 * sub_83caf275 / 2 * 10^18 * arg1) / 10^18:
                    if totalToken > totalToken:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalToken = 0
                    if not ext_code.size(sub_c6f25670Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[484 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor109.field_32)
                    call sub_c6f25670Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, 0, stor109.field_0), mem[548 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                    else:
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                    emit Sold(msg.sender, totalToken, arg1);
                else:
                    if (sub_19c13767 * arg1) - (arg1 * sub_83caf275 / 2 * 10^18 * arg1) / 10^18 > totalToken:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalToken -= (sub_19c13767 * arg1) - (arg1 * sub_83caf275 / 2 * 10^18 * arg1) / 10^18
                    if not ext_code.size(sub_c6f25670Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[484 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (sub_19c13767 * arg1) - (arg1 * sub_83caf275 / 2 * 10^18 * arg1) / 10^18) >> 32
                    mem[548 len 0] = 0
                    call sub_c6f25670Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (sub_19c13767 * arg1) - (arg1 * sub_83caf275 / 2 * 10^18 * arg1) / 10^18) << 224, mem[548 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        emit Sold(address rg1, uint256 rg2, uint256 rg3):
                                  msg.sender,
                                  (sub_19c13767 * arg1) - (arg1 * sub_83caf275 / 2 * 10^18 * arg1) / 10^18,
                                  0,
                                  arg1,
                    else:
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                        emit Sold(msg.sender, (sub_19c13767 * arg1) - (arg1 * sub_83caf275 / 2 * 10^18 * arg1) / 10^18, arg1);
        else:
            if totalSupply * sub_83caf275 / sub_83caf275 != totalSupply:
                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if arg1 * sub_83caf275 / 2 * 10^18 > totalSupply * sub_83caf275 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_19c13767 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_19c13767 + (totalSupply * sub_83caf275 / 10^18) - (arg1 * sub_83caf275 / 2 * 10^18):
                if not msg.sender:
                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                balanceOf[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if totalToken > 0:
                    if 0 > totalToken:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_code.size(sub_c6f25670Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[484 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    mem[548 len 0] = 0
                    call sub_c6f25670Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[548 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        emit Sold(address rg1, uint256 rg2, uint256 rg3):
                                  msg.sender,
                                  0,
                                  0,
                                  arg1,
                    else:
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                        emit Sold(msg.sender, 0, arg1);
                else:
                    totalToken = 0
                    if not ext_code.size(sub_c6f25670Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[484 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor109.field_32)
                    mem[548 len 0] = 0
                    call sub_c6f25670Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, 0, stor109.field_0), mem[548 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        emit Sold(address rg1, uint256 rg2, uint256 rg3):
                                  msg.sender,
                                  totalToken,
                                  0,
                                  arg1,
                    else:
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                        emit Sold(msg.sender, totalToken, arg1);
            else:
                if (sub_19c13767 * arg1) + (totalSupply * sub_83caf275 / 10^18 * arg1) - (arg1 * sub_83caf275 / 2 * 10^18 * arg1) / sub_19c13767 + (totalSupply * sub_83caf275 / 10^18) - (arg1 * sub_83caf275 / 2 * 10^18) != arg1:
                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not msg.sender:
                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                balanceOf[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if totalToken > (sub_19c13767 * arg1) + (totalSupply * sub_83caf275 / 10^18 * arg1) - (arg1 * sub_83caf275 / 2 * 10^18 * arg1) / 10^18:
                    if (sub_19c13767 * arg1) + (totalSupply * sub_83caf275 / 10^18 * arg1) - (arg1 * sub_83caf275 / 2 * 10^18 * arg1) / 10^18 > totalToken:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalToken -= (sub_19c13767 * arg1) + (totalSupply * sub_83caf275 / 10^18 * arg1) - (arg1 * sub_83caf275 / 2 * 10^18 * arg1) / 10^18
                    if not ext_code.size(sub_c6f25670Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[484 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (sub_19c13767 * arg1) + (totalSupply * sub_83caf275 / 10^18 * arg1) - (arg1 * sub_83caf275 / 2 * 10^18 * arg1) / 10^18) >> 32
                    mem[548 len 0] = 0
                    call sub_c6f25670Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (sub_19c13767 * arg1) + (totalSupply * sub_83caf275 / 10^18 * arg1) - (arg1 * sub_83caf275 / 2 * 10^18 * arg1) / 10^18) << 224, mem[548 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        emit Sold(address rg1, uint256 rg2, uint256 rg3):
                                  msg.sender,
                                  (sub_19c13767 * arg1) + (totalSupply * sub_83caf275 / 10^18 * arg1) - (arg1 * sub_83caf275 / 2 * 10^18 * arg1) / 10^18,
                                  0,
                                  arg1,
                    else:
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                        emit Sold(msg.sender, (sub_19c13767 * arg1) + (totalSupply * sub_83caf275 / 10^18 * arg1) - (arg1 * sub_83caf275 / 2 * 10^18 * arg1) / 10^18, arg1);
                else:
                    if totalToken > totalToken:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalToken = 0
                    if not ext_code.size(sub_c6f25670Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[484 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor109.field_32)
                    mem[548 len 0] = 0
                    call sub_c6f25670Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, 0, stor109.field_0), mem[548 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        emit Sold(address rg1, uint256 rg2, uint256 rg3):
                                  msg.sender,
                                  totalToken,
                                  0,
                                  arg1,
                    else:
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                        emit Sold(msg.sender, totalToken, arg1);
}

function sponsorOut(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if multiSigAddress != msg.sender:
        revert with 0, 'MultiSig required'
    if arg2 <= 0:
        revert with 0, 'Invalid amount'
    if not totalSupply:
        if arg2 > 0:
            revert with 0, 'Invalid amount'
        if not arg1:
            revert with 0, 'Invalid address'
        if arg2 > totalToken:
            revert with 0, 'SafeMath: subtraction overflow'
        totalToken -= arg2
        if not sub_19c13767:
            if not totalToken:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if 0 > 0 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 / totalSupply:
                    if 10^18 * 0 / totalSupply / 0 / totalSupply != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    sub_83caf275 = 10^18 * 0 / totalSupply / totalSupply
                    emit Synced(sub_83caf275, 10^18 * 0 / totalSupply / totalSupply);
                    require sub_83caf275 > 0
                    if not ext_code.size(sub_c6f25670Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                    call sub_c6f25670Address with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit SponsorOut(totalToken, address(arg1), arg2);
                else:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    sub_83caf275 = 0 / totalSupply
                    emit Synced(sub_83caf275, 0 / totalSupply);
                    require sub_83caf275 > 0
                    if not ext_code.size(sub_c6f25670Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                    mem[324 len 0] = 0
                    call sub_c6f25670Address with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        emit SponsorOut(uint256 rg1, address rg2, uint256 rg3):
                                        totalToken,
                                        arg1,
                                        0,
                                        arg2,
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        emit SponsorOut(totalToken, address(arg1), arg2);
            else:
                if 2 * 10^18 * totalToken / totalToken != 2 * 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if 0 > 2 * 10^18 * totalToken / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not 2 * 10^18 * totalToken / totalSupply:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    sub_83caf275 = 0 / totalSupply
                    emit Synced(sub_83caf275, 0 / totalSupply);
                    require sub_83caf275 > 0
                    if not ext_code.size(sub_c6f25670Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                    call sub_c6f25670Address with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit SponsorOut(totalToken, address(arg1), arg2);
                else:
                    if 10^18 * 2 * 10^18 * totalToken / totalSupply / 2 * 10^18 * totalToken / totalSupply != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    sub_83caf275 = 10^18 * 2 * 10^18 * totalToken / totalSupply / totalSupply
                    emit Synced(sub_83caf275, 10^18 * 2 * 10^18 * totalToken / totalSupply / totalSupply);
                    require sub_83caf275 > 0
                    if not ext_code.size(sub_c6f25670Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                    mem[324 len 0] = 0
                    call sub_c6f25670Address with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        emit SponsorOut(uint256 rg1, address rg2, uint256 rg3):
                                        totalToken,
                                        arg1,
                                        0,
                                        arg2,
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        emit SponsorOut(totalToken, address(arg1), arg2);
        else:
            if 2 * sub_19c13767 / sub_19c13767 != 2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not totalToken:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if 2 * sub_19c13767 > 0 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (0 / totalSupply) - (2 * sub_19c13767):
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    sub_83caf275 = 0 / totalSupply
                    emit Synced(sub_83caf275, 0 / totalSupply);
                else:
                    if (10^18 * 0 / totalSupply) - (10^18 * 2 * sub_19c13767) / (0 / totalSupply) - (2 * sub_19c13767) != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    sub_83caf275 = (10^18 * 0 / totalSupply) - (10^18 * 2 * sub_19c13767) / totalSupply
                    emit Synced(sub_83caf275, (10^18 * 0 / totalSupply) - (10^18 * 2 * sub_19c13767) / totalSupply);
                require sub_83caf275 > 0
                if not ext_code.size(sub_c6f25670Address):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                call sub_c6f25670Address with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                        revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                emit SponsorOut(totalToken, address(arg1), arg2);
            else:
                if 2 * 10^18 * totalToken / totalToken != 2 * 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if 2 * sub_19c13767 > 2 * 10^18 * totalToken / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (2 * 10^18 * totalToken / totalSupply) - (2 * sub_19c13767):
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    sub_83caf275 = 0 / totalSupply
                    emit Synced(sub_83caf275, 0 / totalSupply);
                else:
                    if (10^18 * 2 * 10^18 * totalToken / totalSupply) - (10^18 * 2 * sub_19c13767) / (2 * 10^18 * totalToken / totalSupply) - (2 * sub_19c13767) != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    sub_83caf275 = (10^18 * 2 * 10^18 * totalToken / totalSupply) - (10^18 * 2 * sub_19c13767) / totalSupply
                    emit Synced(sub_83caf275, (10^18 * 2 * 10^18 * totalToken / totalSupply) - (10^18 * 2 * sub_19c13767) / totalSupply);
                require sub_83caf275 > 0
                if not ext_code.size(sub_c6f25670Address):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                mem[324 len 0] = 0
                call sub_c6f25670Address with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                        revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    emit SponsorOut(uint256 rg1, address rg2, uint256 rg3):
                                    totalToken,
                                    arg1,
                                    0,
                                    arg2,
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                    emit SponsorOut(totalToken, address(arg1), arg2);
    else:
        if totalSupply * totalSupply / totalSupply != totalSupply:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not totalSupply * totalSupply:
            if arg2 > 0:
                revert with 0, 'Invalid amount'
            if not arg1:
                revert with 0, 'Invalid address'
            if arg2 > totalToken:
                revert with 0, 'SafeMath: subtraction overflow'
            totalToken -= arg2
            if not sub_19c13767:
                if not totalToken:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if 0 > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not 0 / totalSupply:
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        sub_83caf275 = 0 / totalSupply
                        emit Synced(sub_83caf275, 0 / totalSupply);
                    else:
                        if 10^18 * 0 / totalSupply / 0 / totalSupply != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        sub_83caf275 = 10^18 * 0 / totalSupply / totalSupply
                        emit Synced(sub_83caf275, 10^18 * 0 / totalSupply / totalSupply);
                else:
                    if 2 * 10^18 * totalToken / totalToken != 2 * 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if 0 > 2 * 10^18 * totalToken / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not 2 * 10^18 * totalToken / totalSupply:
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        sub_83caf275 = 0 / totalSupply
                        emit Synced(sub_83caf275, 0 / totalSupply);
                    else:
                        if 10^18 * 2 * 10^18 * totalToken / totalSupply / 2 * 10^18 * totalToken / totalSupply != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        sub_83caf275 = 10^18 * 2 * 10^18 * totalToken / totalSupply / totalSupply
                        emit Synced(sub_83caf275, 10^18 * 2 * 10^18 * totalToken / totalSupply / totalSupply);
                require sub_83caf275 > 0
                if not ext_code.size(sub_c6f25670Address):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                mem[324 len 0] = 0
                call sub_c6f25670Address with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                    if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                        revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    emit SponsorOut(uint256 rg1, address rg2, uint256 rg3):
                                    totalToken,
                                    arg1,
                                    0,
                                    arg2,
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                    emit SponsorOut(totalToken, address(arg1), arg2);
            else:
                if 2 * sub_19c13767 / sub_19c13767 != 2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not totalToken:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if 2 * sub_19c13767 > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (0 / totalSupply) - (2 * sub_19c13767):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        sub_83caf275 = 0 / totalSupply
                        emit Synced(sub_83caf275, 0 / totalSupply);
                        require sub_83caf275 > 0
                        if not ext_code.size(sub_c6f25670Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                        call sub_c6f25670Address with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit SponsorOut(totalToken, address(arg1), arg2);
                    else:
                        if (10^18 * 0 / totalSupply) - (10^18 * 2 * sub_19c13767) / (0 / totalSupply) - (2 * sub_19c13767) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        sub_83caf275 = (10^18 * 0 / totalSupply) - (10^18 * 2 * sub_19c13767) / totalSupply
                        emit Synced(sub_83caf275, (10^18 * 0 / totalSupply) - (10^18 * 2 * sub_19c13767) / totalSupply);
                        require sub_83caf275 > 0
                        if not ext_code.size(sub_c6f25670Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                        mem[324 len 0] = 0
                        call sub_c6f25670Address with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            emit SponsorOut(uint256 rg1, address rg2, uint256 rg3):
                                            totalToken,
                                            arg1,
                                            0,
                                            arg2,
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            emit SponsorOut(totalToken, address(arg1), arg2);
                else:
                    if 2 * 10^18 * totalToken / totalToken != 2 * 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if 2 * sub_19c13767 > 2 * 10^18 * totalToken / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (2 * 10^18 * totalToken / totalSupply) - (2 * sub_19c13767):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        sub_83caf275 = 0 / totalSupply
                        emit Synced(sub_83caf275, 0 / totalSupply);
                    else:
                        if (10^18 * 2 * 10^18 * totalToken / totalSupply) - (10^18 * 2 * sub_19c13767) / (2 * 10^18 * totalToken / totalSupply) - (2 * sub_19c13767) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        sub_83caf275 = (10^18 * 2 * 10^18 * totalToken / totalSupply) - (10^18 * 2 * sub_19c13767) / totalSupply
                        emit Synced(sub_83caf275, (10^18 * 2 * 10^18 * totalToken / totalSupply) - (10^18 * 2 * sub_19c13767) / totalSupply);
                    require sub_83caf275 > 0
                    if not ext_code.size(sub_c6f25670Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                    mem[324 len 0] = 0
                    call sub_c6f25670Address with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        emit SponsorOut(uint256 rg1, address rg2, uint256 rg3):
                                        totalToken,
                                        arg1,
                                        0,
                                        arg2,
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        emit SponsorOut(totalToken, address(arg1), arg2);
        else:
            if sub_83caf275 * totalSupply * totalSupply / totalSupply * totalSupply != sub_83caf275:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg2 > sub_83caf275 * totalSupply * totalSupply / 2000000000000000000 * 10^18:
                revert with 0, 'Invalid amount'
            if not arg1:
                revert with 0, 'Invalid address'
            if arg2 > totalToken:
                revert with 0, 'SafeMath: subtraction overflow'
            totalToken -= arg2
            if not sub_19c13767:
                if not totalToken:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if 0 > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not 0 / totalSupply:
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        sub_83caf275 = 0 / totalSupply
                        emit Synced(sub_83caf275, 0 / totalSupply);
                    else:
                        if 10^18 * 0 / totalSupply / 0 / totalSupply != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        sub_83caf275 = 10^18 * 0 / totalSupply / totalSupply
                        emit Synced(sub_83caf275, 10^18 * 0 / totalSupply / totalSupply);
                    require sub_83caf275 > 0
                    if not ext_code.size(sub_c6f25670Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                    call sub_c6f25670Address with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit SponsorOut(totalToken, address(arg1), arg2);
                else:
                    if 2 * 10^18 * totalToken / totalToken != 2 * 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if 0 > 2 * 10^18 * totalToken / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not 2 * 10^18 * totalToken / totalSupply:
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        sub_83caf275 = 0 / totalSupply
                        emit Synced(sub_83caf275, 0 / totalSupply);
                    else:
                        if 10^18 * 2 * 10^18 * totalToken / totalSupply / 2 * 10^18 * totalToken / totalSupply != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        sub_83caf275 = 10^18 * 2 * 10^18 * totalToken / totalSupply / totalSupply
                        emit Synced(sub_83caf275, 10^18 * 2 * 10^18 * totalToken / totalSupply / totalSupply);
                    require sub_83caf275 > 0
                    if not ext_code.size(sub_c6f25670Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                    mem[324 len 0] = 0
                    call sub_c6f25670Address with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        emit SponsorOut(uint256 rg1, address rg2, uint256 rg3):
                                        totalToken,
                                        arg1,
                                        0,
                                        arg2,
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        emit SponsorOut(totalToken, address(arg1), arg2);
            else:
                if 2 * sub_19c13767 / sub_19c13767 != 2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not totalToken:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if 2 * sub_19c13767 > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (0 / totalSupply) - (2 * sub_19c13767):
                        if (10^18 * 0 / totalSupply) - (10^18 * 2 * sub_19c13767) / (0 / totalSupply) - (2 * sub_19c13767) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        sub_83caf275 = (10^18 * 0 / totalSupply) - (10^18 * 2 * sub_19c13767) / totalSupply
                        emit Synced(sub_83caf275, (10^18 * 0 / totalSupply) - (10^18 * 2 * sub_19c13767) / totalSupply);
                        require sub_83caf275 > 0
                        if not ext_code.size(sub_c6f25670Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                        call sub_c6f25670Address with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit SponsorOut(totalToken, address(arg1), arg2);
                    else:
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        sub_83caf275 = 0 / totalSupply
                        emit Synced(sub_83caf275, 0 / totalSupply);
                        require sub_83caf275 > 0
                        if not ext_code.size(sub_c6f25670Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                        mem[324 len 0] = 0
                        call sub_c6f25670Address with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            emit SponsorOut(uint256 rg1, address rg2, uint256 rg3):
                                            totalToken,
                                            arg1,
                                            0,
                                            arg2,
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            emit SponsorOut(totalToken, address(arg1), arg2);
                else:
                    if 2 * 10^18 * totalToken / totalToken != 2 * 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if 2 * sub_19c13767 > 2 * 10^18 * totalToken / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (2 * 10^18 * totalToken / totalSupply) - (2 * sub_19c13767):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        sub_83caf275 = 0 / totalSupply
                        emit Synced(sub_83caf275, 0 / totalSupply);
                        require sub_83caf275 > 0
                        if not ext_code.size(sub_c6f25670Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                        call sub_c6f25670Address with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit SponsorOut(totalToken, address(arg1), arg2);
                    else:
                        if (10^18 * 2 * 10^18 * totalToken / totalSupply) - (10^18 * 2 * sub_19c13767) / (2 * 10^18 * totalToken / totalSupply) - (2 * sub_19c13767) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        sub_83caf275 = (10^18 * 2 * 10^18 * totalToken / totalSupply) - (10^18 * 2 * sub_19c13767) / totalSupply
                        emit Synced(sub_83caf275, (10^18 * 2 * 10^18 * totalToken / totalSupply) - (10^18 * 2 * sub_19c13767) / totalSupply);
                        require sub_83caf275 > 0
                        if not ext_code.size(sub_c6f25670Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
                        mem[324 len 0] = 0
                        call sub_c6f25670Address with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            emit SponsorOut(uint256 rg1, address rg2, uint256 rg3):
                                            totalToken,
                                            arg1,
                                            0,
                                            arg2,
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            emit SponsorOut(totalToken, address(arg1), arg2);
}



}
