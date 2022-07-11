contract main {




// =====================  Runtime code  =====================


#
#  - sub_6c33fd62(?)
#  - sub_7085f68d(?)
#  - deposit(address arg1, address arg2, uint256 arg3)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stor101;
address wingAddress;
address beanAddress;
address devAddr;
uint256 sub_de44820b;
uint256 bonusMultiplier;
uint256 pools;
mapping of struct stor157;
mapping of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
mapping of uint8 stor162;
mapping of struct sub_799352cb;
address stor35FC;

function sub_0196d0af(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor162[arg1])
}

function poolLength() payable {
    return pools
}

function userInfo(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return uint256(userInfo[arg1][arg2].field_0), uint256(userInfo[arg1][arg2].field_256), userInfo[arg1][arg2].field_512
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function startBlock() payable {
    return startBlock
}

function sub_799352cb(?) payable {
    require calldata.size - 4 >= 32
    return uint256(sub_799352cb[arg1].field_0)
}

function owner() payable {
    return owner
}

function poolInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(poolInfo[arg1].field_0), uint256(poolInfo[arg1].field_256), uint256(poolInfo[arg1].field_512)
}

function bonusMultiplier() payable {
    return bonusMultiplier
}

function bean() payable {
    return beanAddress
}

function pools() payable {
    return pools
}

function devAddr() payable {
    return devAddr
}

function sub_de44820b(?) payable {
    return sub_de44820b
}

function wing() payable {
    return wingAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    bonusMultiplier = arg1
}

function setStakeTokenCallerAllowancePool(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor162[address(arg1)] = uint8(arg2)
}

function mintDev(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(wingAddress)
    call wingAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), 1000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setDev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devAddr != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x6c7365744465763a206f6e6c792070726576206465762063616e206368616e6765642064657620616464726573,
                    mem[209 len 19]
    devAddr = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addStakeTokenCallerContract(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor162[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    69,
                    0x746164645374616b65546f6b656e43616c6c6572436f6e74726163743a2074686520706f6f6c20646f65736e277420616c6c6f77206120636f6e74726163742063616c6c65,
                    mem[233 len 27]
    if sub_799352cb[address(arg1)][1][1].field_0:
        if sub_799352cb[address(arg1)][1][address(arg2)].field_0:
            revert with 0, 32, 43, 0x724c696e6b4c6973743a3a6164643a3a206164647220697320616c726561647920696e20746865206c6973, mem[239 len 21]
    else:
        uint8(sub_799352cb[address(arg1)][1][1].field_0) = 1
        Mask(152, 0, sub_799352cb[address(arg1)][1][1].field_8) = 0
        if sub_799352cb[address(arg1)][1][address(arg2)].field_0:
            revert with 0, 32, 43, 0x724c696e6b4c6973743a3a6164643a3a206164647220697320616c726561647920696e20746865206c6973, mem[303 len 21]
    ('iszero', ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_799352cb', 163)))))))
    sub_799352cb[address(arg1)][1][arg2].field_0 = sub_799352cb[address(arg1)][1][1].field_0
    sub_799352cb[address(arg1)][1][1].field_0 = arg2
    uint256(sub_799352cb[address(arg1)].field_0)++
}

function emergencyWithdraw(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if stor101 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor101 = 2
    if userInfo[address(arg2)][address(arg1)].field_512 != msg.sender:
        revert with 0, 'emergencyWithdraw: only funder'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 0, userInfo[address(arg2)][address(arg1)].field_32)
    call arg2 with:
         gas gas_remaining wei
        args Mask(480, 0, userInfo[address(arg2)][address(arg1)].field_0), mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, uint256(userInfo[address(arg2)][address(arg1)].field_0)
        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(uint256(userInfo[address(arg2)][address(arg1)].field_0), arg1, arg2);
    uint256(userInfo[address(arg2)][address(arg1)].field_0) = 0
    uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
    userInfo[address(arg2)][address(arg1)].field_512 = 0
    stor101 = 1
}

function removeStakeTokenCallerContract(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor162[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    72,
                    0x7472656d6f76655374616b65546f6b656e43616c6c6572436f6e74726163743a2074686520706f6f6c20646f65736e277420616c6c6f77206120636f6e74726163742063616c6c65,
                    mem[236 len 24]
    mem[0] = 1
    mem[32] = sha3(address(arg1), 163) + 1
    if not sub_799352cb[address(arg1)][1][1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x294c696e6b4c6973743a3a67657450726576696f75734f663a3a20706c6561736520696e697420746865206c696e6b65646c6973742066697273,
                    mem[222 len 6]
    s = 0
    idx = stor[sha3(mem[0 len 64])]
    while address(idx) != 1:
        if arg2 != sub_799352cb[address(arg1)][1][address(idx)].field_0:
            mem[0] = address(idx)
            mem[32] = sha3(address(arg1), 163) + 1
            s = s + 1
            idx = sub_799352cb[address(arg1)][1][address(idx)].field_0
            continue 
        if not sub_799352cb[address(arg1)][1][address(arg2)].field_0:
            revert with 0, 32, 43, 0x724c696e6b4c6973743a3a72656d6f76653a3a2061646472206e6f742077686974656c6973746564207965, mem[239 len 21]
        if arg2 != sub_799352cb[address(arg1)][1][address(idx)].field_0:
            revert with 0, 32, 37, 0x294c696e6b4c6973743a3a72656d6f76653a3a2077726f6e672070726576436f6e73756d65, mem[233 len 27]
        sub_799352cb[address(arg1)][1][address(idx)].field_0 = sub_799352cb[address(arg1)][1][address(arg2)].field_0
        sub_799352cb[address(arg1)][1][address(arg2)].field_0 = 0
        uint256(sub_799352cb[address(arg1)].field_0)--
    if not sub_799352cb[address(arg1)][1][address(arg2)].field_0:
        revert with 0, 32, 43, 0x724c696e6b4c6973743a3a72656d6f76653a3a2061646472206e6f742077686974656c6973746564207965, mem[239 len 21]
    if arg2 != sub_799352cb[address(arg1)][1][1].field_0:
        revert with 0, 32, 37, 0x294c696e6b4c6973743a3a72656d6f76653a3a2077726f6e672070726576436f6e73756d65, mem[233 len 27]
    sub_799352cb[address(arg1)][1][1].field_0 = sub_799352cb[address(arg1)][1][address(arg2)].field_0
    sub_799352cb[address(arg1)][1][address(arg2)].field_0 = 0
    uint256(sub_799352cb[address(arg1)].field_0)--
}

function initialize(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        stor101 = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            stor101 = 1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                stor101 = 1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    stor101 = 1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        stor101 = 1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            stor101 = 1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                stor101 = 1
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                stor101 = 1
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
    bonusMultiplier = 1
    wingAddress = arg1
    beanAddress = arg2
    devAddr = arg3
    sub_de44820b = arg4
    startBlock = arg5
    uint8(stor157[1].field_0) = 1
    Mask(152, 0, stor157[1].field_8) = 0
    if stor157[address(arg1)].field_0:
        revert with 0, 32, 43, 0x724c696e6b4c6973743a3a6164643a3a206164647220697320616c726561647920696e20746865206c6973, mem[303 len 21]
    stor157[arg1].field_0 = stor157[1].field_0
    stor157[1].field_0 = arg1
    pools++
    uint256(poolInfo[address(arg1)].field_0) = 0
    uint256(poolInfo[address(arg1)].field_256) = startBlock
    uint256(poolInfo[address(arg1)].field_512) = 0
    totalAllocPoint = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function mintExtraReward(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if not sub_799352cb[address(arg1)][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x736f6e6c795374616b65546f6b656e43616c6c6572436f6e74726163743a206261642063616c6c65,
                    mem[204 len 24]
    if arg4 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - arg4:
        if arg3:
            if 0 / arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        require ext_code.size(wingAddress)
        call wingAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg2), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg3:
            if 0 / arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        require ext_code.size(wingAddress)
        call wingAddress.0x282d3fdf with:
             gas gas_remaining wei
            args address(arg2), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg3:
            if 0 / arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        require ext_code.size(wingAddress)
        call wingAddress.0x40c10f19 with:
             gas gas_remaining wei
            args devAddr, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg3:
            if 0 / arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        require ext_code.size(wingAddress)
        call wingAddress.0x282d3fdf with:
             gas gas_remaining wei
            args devAddr, 0
    else:
        if (block.number * bonusMultiplier) - (arg4 * bonusMultiplier) / block.number - arg4 != bonusMultiplier:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not arg3:
            require ext_code.size(wingAddress)
            call wingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(arg2), 0
        else:
            if (block.number * bonusMultiplier * arg3) - (arg4 * bonusMultiplier * arg3) / arg3 != (block.number * bonusMultiplier) - (arg4 * bonusMultiplier):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(wingAddress)
            call wingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(arg2), (block.number * bonusMultiplier * arg3) - (arg4 * bonusMultiplier * arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg3:
            require ext_code.size(wingAddress)
            call wingAddress.0x282d3fdf with:
                 gas gas_remaining wei
                args address(arg2), 0
        else:
            if (block.number * bonusMultiplier * arg3) - (arg4 * bonusMultiplier * arg3) / arg3 != (block.number * bonusMultiplier) - (arg4 * bonusMultiplier):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(wingAddress)
            call wingAddress.0x282d3fdf with:
                 gas gas_remaining wei
                args address(arg2), (block.number * bonusMultiplier * arg3) - (arg4 * bonusMultiplier * arg3) / 100 * 10^6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg3:
            require ext_code.size(wingAddress)
            call wingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddr, 0
        else:
            if (block.number * bonusMultiplier * arg3) - (arg4 * bonusMultiplier * arg3) / arg3 != (block.number * bonusMultiplier) - (arg4 * bonusMultiplier):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(wingAddress)
            call wingAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddr, (block.number * bonusMultiplier * arg3) - (arg4 * bonusMultiplier * arg3) / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg3:
            require ext_code.size(wingAddress)
            call wingAddress.0x282d3fdf with:
                 gas gas_remaining wei
                args devAddr, 0
        else:
            if (block.number * bonusMultiplier * arg3) - (arg4 * bonusMultiplier * arg3) / arg3 != (block.number * bonusMultiplier) - (arg4 * bonusMultiplier):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(wingAddress)
            call wingAddress.0x282d3fdf with:
                 gas gas_remaining wei
                args devAddr, (block.number * bonusMultiplier * arg3) - (arg4 * bonusMultiplier * arg3) / 10^12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updatePool(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.number > uint256(poolInfo[address(arg1)].field_256):
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if uint256(poolInfo[address(arg1)].field_256) > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - uint256(poolInfo[address(arg1)].field_256):
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                require ext_code.size(wingAddress)
                call wingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wingAddress)
                call wingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args beanAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(arg1)].field_512) < uint256(poolInfo[address(arg1)].field_512):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo[address(arg1)].field_512) += 0 / ext_call.return_data[0]
                else:
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(arg1)].field_512) < uint256(poolInfo[address(arg1)].field_512):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo[address(arg1)].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
            else:
                if (block.number * bonusMultiplier) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier) / block.number - uint256(poolInfo[address(arg1)].field_256) != bonusMultiplier:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (block.number * bonusMultiplier) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier):
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(wingAddress)
                    call wingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(wingAddress)
                    call wingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args beanAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(arg1)].field_512) < uint256(poolInfo[address(arg1)].field_512):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[address(arg1)].field_512) += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(arg1)].field_512) < uint256(poolInfo[address(arg1)].field_512):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[address(arg1)].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier * sub_de44820b) / (block.number * bonusMultiplier) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier) != sub_de44820b:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier * sub_de44820b):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(wingAddress)
                        call wingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(wingAddress)
                        call wingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args beanAddress, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(arg1)].field_512) < uint256(poolInfo[address(arg1)].field_512):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[address(arg1)].field_512) += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(arg1)].field_512) < uint256(poolInfo[address(arg1)].field_512):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[address(arg1)].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) / (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier * sub_de44820b) != uint256(poolInfo[address(arg1)].field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(wingAddress)
                        call wingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(wingAddress)
                        call wingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args beanAddress, (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(arg1)].field_512) < uint256(poolInfo[address(arg1)].field_512):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[address(arg1)].field_512) += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) / totalAllocPoint / (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(arg1)].field_512) < uint256(poolInfo[address(arg1)].field_512):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[address(arg1)].field_512) += 10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) / totalAllocPoint / ext_call.return_data[0]
        uint256(poolInfo[address(arg1)].field_256) = block.number
}

function massUpdatePools() payable {
    idx = stor35FC
    while address(idx) != 1:
        if block.number > uint256(poolInfo[address(idx)].field_256):
            mem[100] = this.address
            require ext_code.size(address(idx))
            staticcall address(idx).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if uint256(poolInfo[address(idx)].field_256) > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - uint256(poolInfo[address(idx)].field_256):
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(wingAddress)
                    call wingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[100] = beanAddress
                    mem[132] = 0 / totalAllocPoint
                    require ext_code.size(wingAddress)
                    call wingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args beanAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[address(idx)].field_512) += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[address(idx)].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.number * bonusMultiplier) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier) / block.number - uint256(poolInfo[address(idx)].field_256) != bonusMultiplier:
                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if not (block.number * bonusMultiplier) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(wingAddress)
                        call wingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[100] = beanAddress
                        mem[132] = 0 / totalAllocPoint
                        require ext_code.size(wingAddress)
                        call wingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args beanAddress, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[address(idx)].field_512) += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[address(idx)].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b) / (block.number * bonusMultiplier) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier) != sub_de44820b:
                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(wingAddress)
                            call wingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = beanAddress
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(wingAddress)
                            call wingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args beanAddress, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo[address(idx)].field_512) += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo[address(idx)].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b) != uint256(poolInfo[address(idx)].field_0):
                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(wingAddress)
                            call wingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = beanAddress
                            mem[132] = (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint
                            require ext_code.size(wingAddress)
                            call wingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args beanAddress, (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo[address(idx)].field_512) += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint / (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo[address(idx)].field_512) += 10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint / ext_call.return_data[0]
            uint256(poolInfo[address(idx)].field_256) = block.number
        mem[0] = address(idx)
        mem[32] = 157
        idx = stor157[address(idx)].field_0
        continue 
}

function sub_0fd36398(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = stor35FC
    while address(idx) != 1:
        if block.number > uint256(poolInfo[address(idx)].field_256):
            mem[100] = this.address
            require ext_code.size(address(idx))
            staticcall address(idx).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if uint256(poolInfo[address(idx)].field_256) > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - uint256(poolInfo[address(idx)].field_256):
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(wingAddress)
                    call wingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[100] = beanAddress
                    mem[132] = 0 / totalAllocPoint
                    require ext_code.size(wingAddress)
                    call wingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args beanAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[address(idx)].field_512) += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[address(idx)].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.number * bonusMultiplier) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier) / block.number - uint256(poolInfo[address(idx)].field_256) != bonusMultiplier:
                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if not (block.number * bonusMultiplier) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(wingAddress)
                        call wingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[100] = beanAddress
                        mem[132] = 0 / totalAllocPoint
                        require ext_code.size(wingAddress)
                        call wingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args beanAddress, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[address(idx)].field_512) += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[address(idx)].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b) / (block.number * bonusMultiplier) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier) != sub_de44820b:
                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(wingAddress)
                            call wingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = beanAddress
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(wingAddress)
                            call wingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args beanAddress, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo[address(idx)].field_512) += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo[address(idx)].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b) != uint256(poolInfo[address(idx)].field_0):
                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(wingAddress)
                            call wingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = beanAddress
                            mem[132] = (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint
                            require ext_code.size(wingAddress)
                            call wingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args beanAddress, (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo[address(idx)].field_512) += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint / (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo[address(idx)].field_512) += 10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint / ext_call.return_data[0]
            uint256(poolInfo[address(idx)].field_256) = block.number
        mem[0] = address(idx)
        mem[32] = 157
        idx = stor157[address(idx)].field_0
        continue 
    sub_de44820b = arg1
}

function setPool(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x64736574506f6f6c3a205f7374616b65546f6b656e206d757374206e6f742062652061646472657373283029206f7220616464726573732831,
                    mem[221 len 7]
    if 1 == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x64736574506f6f6c3a205f7374616b65546f6b656e206d757374206e6f742062652061646472657373283029206f7220616464726573732831,
                    mem[221 len 7]
    if not stor157[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe736574506f6f6c3a205f7374616b65546f6b656e206e6f7420696e20746865206c6973,
                    mem[200 len 28]
    idx = stor35FC
    while address(idx) != 1:
        if block.number > uint256(poolInfo[address(idx)].field_256):
            mem[100] = this.address
            require ext_code.size(address(idx))
            staticcall address(idx).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if uint256(poolInfo[address(idx)].field_256) > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - uint256(poolInfo[address(idx)].field_256):
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(wingAddress)
                    call wingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[100] = beanAddress
                    mem[132] = 0 / totalAllocPoint
                    require ext_code.size(wingAddress)
                    call wingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args beanAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[address(idx)].field_512) += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[address(idx)].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.number * bonusMultiplier) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier) / block.number - uint256(poolInfo[address(idx)].field_256) != bonusMultiplier:
                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if not (block.number * bonusMultiplier) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(wingAddress)
                        call wingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[100] = beanAddress
                        mem[132] = 0 / totalAllocPoint
                        require ext_code.size(wingAddress)
                        call wingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args beanAddress, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[address(idx)].field_512) += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[address(idx)].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b) / (block.number * bonusMultiplier) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier) != sub_de44820b:
                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(wingAddress)
                            call wingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = beanAddress
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(wingAddress)
                            call wingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args beanAddress, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo[address(idx)].field_512) += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo[address(idx)].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b) != uint256(poolInfo[address(idx)].field_0):
                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(wingAddress)
                            call wingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = beanAddress
                            mem[132] = (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint
                            require ext_code.size(wingAddress)
                            call wingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args beanAddress, (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo[address(idx)].field_512) += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint / (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo[address(idx)].field_512) += 10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint / ext_call.return_data[0]
            uint256(poolInfo[address(idx)].field_256) = block.number
        mem[0] = address(idx)
        mem[32] = 157
        idx = stor157[address(idx)].field_0
        continue 
    if uint256(poolInfo[address(arg1)].field_0) > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - uint256(poolInfo[address(arg1)].field_0)
    uint256(poolInfo[address(arg1)].field_0) = arg2
}

function addPool(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x72616464506f6f6c3a205f7374616b65546f6b656e206d757374206e6f742062652061646472657373283029206f7220616464726573732831,
                    mem[221 len 7]
    if 1 == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x72616464506f6f6c3a205f7374616b65546f6b656e206d757374206e6f742062652061646472657373283029206f7220616464726573732831,
                    mem[221 len 7]
    if stor157[address(arg1)].field_0:
        revert with 0, 'addPool: _stakeToken duplicated'
    idx = stor35FC
    while address(idx) != 1:
        if block.number > uint256(poolInfo[address(idx)].field_256):
            mem[100] = this.address
            require ext_code.size(address(idx))
            staticcall address(idx).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if uint256(poolInfo[address(idx)].field_256) > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - uint256(poolInfo[address(idx)].field_256):
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(wingAddress)
                    call wingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[100] = beanAddress
                    mem[132] = 0 / totalAllocPoint
                    require ext_code.size(wingAddress)
                    call wingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args beanAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[address(idx)].field_512) += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[address(idx)].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.number * bonusMultiplier) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier) / block.number - uint256(poolInfo[address(idx)].field_256) != bonusMultiplier:
                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if not (block.number * bonusMultiplier) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(wingAddress)
                        call wingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[100] = beanAddress
                        mem[132] = 0 / totalAllocPoint
                        require ext_code.size(wingAddress)
                        call wingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args beanAddress, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[address(idx)].field_512) += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[address(idx)].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b) / (block.number * bonusMultiplier) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier) != sub_de44820b:
                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(wingAddress)
                            call wingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = beanAddress
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(wingAddress)
                            call wingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args beanAddress, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo[address(idx)].field_512) += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo[address(idx)].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b) != uint256(poolInfo[address(idx)].field_0):
                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(wingAddress)
                            call wingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = beanAddress
                            mem[132] = (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint
                            require ext_code.size(wingAddress)
                            call wingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args beanAddress, (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo[address(idx)].field_512) += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint / (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo[address(idx)].field_512) += 10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint / ext_call.return_data[0]
            uint256(poolInfo[address(idx)].field_256) = block.number
        mem[0] = address(idx)
        mem[32] = 157
        idx = stor157[address(idx)].field_0
        continue 
    if arg2 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg2
    if stor157[address(arg1)].field_0:
        revert with 0, 32, 43, 0x724c696e6b4c6973743a3a6164643a3a206164647220697320616c726561647920696e20746865206c6973, mem[239 len 21]
    stor157[arg1].field_0 = stor157[1].field_0
    stor157[1].field_0 = arg1
    pools++
    uint256(poolInfo[address(arg1)].field_0) = arg2
    if block.number > startBlock:
        uint256(poolInfo[address(arg1)].field_256) = block.number
    else:
        uint256(poolInfo[address(arg1)].field_256) = startBlock
    uint256(poolInfo[address(arg1)].field_512) = 0
}

function removePool(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if wingAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x72656d6f7665506f6f6c3a2063616e27742072656d6f76652057494e4720706f6f00,
                    mem[198 len 30]
    if not stor157[address(arg1)].field_0:
        revert with 0, 'removePool: pool not add yet'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'removePool: pool not empty'
    idx = stor35FC
    while address(idx) != 1:
        if block.number > uint256(poolInfo[address(idx)].field_256):
            mem[100] = this.address
            require ext_code.size(address(idx))
            staticcall address(idx).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if uint256(poolInfo[address(idx)].field_256) > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - uint256(poolInfo[address(idx)].field_256):
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(wingAddress)
                    call wingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[100] = beanAddress
                    mem[132] = 0 / totalAllocPoint
                    require ext_code.size(wingAddress)
                    call wingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args beanAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[address(idx)].field_512) += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[address(idx)].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.number * bonusMultiplier) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier) / block.number - uint256(poolInfo[address(idx)].field_256) != bonusMultiplier:
                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if not (block.number * bonusMultiplier) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(wingAddress)
                        call wingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[100] = beanAddress
                        mem[132] = 0 / totalAllocPoint
                        require ext_code.size(wingAddress)
                        call wingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args beanAddress, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[address(idx)].field_512) += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[address(idx)].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b) / (block.number * bonusMultiplier) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier) != sub_de44820b:
                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(wingAddress)
                            call wingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = beanAddress
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(wingAddress)
                            call wingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args beanAddress, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo[address(idx)].field_512) += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo[address(idx)].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b) != uint256(poolInfo[address(idx)].field_0):
                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(wingAddress)
                            call wingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = beanAddress
                            mem[132] = (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint
                            require ext_code.size(wingAddress)
                            call wingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args beanAddress, (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo[address(idx)].field_512) += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint / (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(idx)].field_512) < uint256(poolInfo[address(idx)].field_512):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo[address(idx)].field_512) += 10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) - (uint256(poolInfo[address(idx)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(idx)].field_0)) / totalAllocPoint / ext_call.return_data[0]
            uint256(poolInfo[address(idx)].field_256) = block.number
        mem[0] = address(idx)
        mem[32] = 157
        idx = stor157[address(idx)].field_0
        continue 
    if uint256(poolInfo[address(arg1)].field_0) > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    totalAllocPoint -= uint256(poolInfo[address(arg1)].field_0)
    mem[0] = 1
    mem[32] = 157
    if not stor157[1].field_0:
        revert with 0, 
                    32,
                    58,
                    0x294c696e6b4c6973743a3a67657450726576696f75734f663a3a20706c6561736520696e697420746865206c696e6b65646c6973742066697273,
                    mem[222 len 6]
    s = 0
    idx = stor[sha3(mem[0 len 64])]
    while address(idx) != 1:
        if arg1 != stor157[address(idx)].field_0:
            mem[0] = address(idx)
            mem[32] = 157
            s = s + 1
            idx = stor157[address(idx)].field_0
            continue 
        if not stor157[address(arg1)].field_0:
            revert with 0, 32, 43, 0x724c696e6b4c6973743a3a72656d6f76653a3a2061646472206e6f742077686974656c6973746564207965, mem[239 len 21]
        if arg1 != stor157[address(idx)].field_0:
            revert with 0, 32, 37, 0x294c696e6b4c6973743a3a72656d6f76653a3a2077726f6e672070726576436f6e73756d65, mem[233 len 27]
        stor157[address(idx)].field_0 = stor157[address(arg1)].field_0
        stor157[address(arg1)].field_0 = 0
        pools--
        uint256(poolInfo[address(arg1)].field_0) = 0
        uint256(poolInfo[address(arg1)].field_256) = 0
        uint256(poolInfo[address(arg1)].field_512) = 0
    if not stor157[address(arg1)].field_0:
        revert with 0, 32, 43, 0x724c696e6b4c6973743a3a72656d6f76653a3a2061646472206e6f742077686974656c6973746564207965, mem[239 len 21]
    if arg1 != stor157[1].field_0:
        revert with 0, 32, 37, 0x294c696e6b4c6973743a3a72656d6f76653a3a2077726f6e672070726576436f6e73756d65, mem[233 len 27]
    stor157[1].field_0 = stor157[address(arg1)].field_0
    stor157[address(arg1)].field_0 = 0
    pools--
    uint256(poolInfo[address(arg1)].field_0) = 0
    uint256(poolInfo[address(arg1)].field_256) = 0
    uint256(poolInfo[address(arg1)].field_512) = 0
}

function sub_8170ea46(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= uint256(poolInfo[address(arg1)].field_256):
        if not uint256(userInfo[address(arg1)][address(arg2)].field_0):
            if uint256(userInfo[address(arg1)][address(arg2)].field_256) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -uint256(userInfo[address(arg1)][address(arg2)].field_256)
        if uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0) / uint256(userInfo[address(arg1)][address(arg2)].field_0) != uint256(poolInfo[address(arg1)].field_512):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if uint256(userInfo[address(arg1)][address(arg2)].field_256) > uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0) / 10^12) - uint256(userInfo[address(arg1)][address(arg2)].field_256))
    if not ext_call.return_data[0]:
        if not uint256(userInfo[address(arg1)][address(arg2)].field_0):
            if uint256(userInfo[address(arg1)][address(arg2)].field_256) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -uint256(userInfo[address(arg1)][address(arg2)].field_256)
        if uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0) / uint256(userInfo[address(arg1)][address(arg2)].field_0) != uint256(poolInfo[address(arg1)].field_512):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if uint256(userInfo[address(arg1)][address(arg2)].field_256) > uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0) / 10^12) - uint256(userInfo[address(arg1)][address(arg2)].field_256))
    if uint256(poolInfo[address(arg1)].field_256) > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - uint256(poolInfo[address(arg1)].field_256):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(arg1)].field_512) < uint256(poolInfo[address(arg1)].field_512):
                revert with 0, 'SafeMath: addition overflow'
            if not uint256(userInfo[address(arg1)][address(arg2)].field_0):
                if uint256(userInfo[address(arg1)][address(arg2)].field_256) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -uint256(userInfo[address(arg1)][address(arg2)].field_256)
            if (0 / ext_call.return_data[0] * uint256(userInfo[address(arg1)][address(arg2)].field_0)) + (uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0)) / uint256(userInfo[address(arg1)][address(arg2)].field_0) != (0 / ext_call.return_data[0]) + uint256(poolInfo[address(arg1)].field_512):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if uint256(userInfo[address(arg1)][address(arg2)].field_256) > (0 / ext_call.return_data[0] * uint256(userInfo[address(arg1)][address(arg2)].field_0)) + (uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0)) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * uint256(userInfo[address(arg1)][address(arg2)].field_0)) + (uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0)) / 10^12) - uint256(userInfo[address(arg1)][address(arg2)].field_256))
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(arg1)].field_512) < uint256(poolInfo[address(arg1)].field_512):
            revert with 0, 'SafeMath: addition overflow'
        if not uint256(userInfo[address(arg1)][address(arg2)].field_0):
            if uint256(userInfo[address(arg1)][address(arg2)].field_256) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -uint256(userInfo[address(arg1)][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * uint256(userInfo[address(arg1)][address(arg2)].field_0)) + (uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0)) / uint256(userInfo[address(arg1)][address(arg2)].field_0) != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(arg1)].field_512):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if uint256(userInfo[address(arg1)][address(arg2)].field_256) > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * uint256(userInfo[address(arg1)][address(arg2)].field_0)) + (uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0)) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * uint256(userInfo[address(arg1)][address(arg2)].field_0)) + (uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0)) / 10^12) - uint256(userInfo[address(arg1)][address(arg2)].field_256))
    if (block.number * bonusMultiplier) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier) / block.number - uint256(poolInfo[address(arg1)].field_256) != bonusMultiplier:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * bonusMultiplier) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(arg1)].field_512) < uint256(poolInfo[address(arg1)].field_512):
                revert with 0, 'SafeMath: addition overflow'
            if not uint256(userInfo[address(arg1)][address(arg2)].field_0):
                if uint256(userInfo[address(arg1)][address(arg2)].field_256) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -uint256(userInfo[address(arg1)][address(arg2)].field_256)
            if (0 / ext_call.return_data[0] * uint256(userInfo[address(arg1)][address(arg2)].field_0)) + (uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0)) / uint256(userInfo[address(arg1)][address(arg2)].field_0) != (0 / ext_call.return_data[0]) + uint256(poolInfo[address(arg1)].field_512):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if uint256(userInfo[address(arg1)][address(arg2)].field_256) > (0 / ext_call.return_data[0] * uint256(userInfo[address(arg1)][address(arg2)].field_0)) + (uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0)) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * uint256(userInfo[address(arg1)][address(arg2)].field_0)) + (uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0)) / 10^12) - uint256(userInfo[address(arg1)][address(arg2)].field_256))
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(arg1)].field_512) < uint256(poolInfo[address(arg1)].field_512):
            revert with 0, 'SafeMath: addition overflow'
        if not uint256(userInfo[address(arg1)][address(arg2)].field_0):
            if uint256(userInfo[address(arg1)][address(arg2)].field_256) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -uint256(userInfo[address(arg1)][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * uint256(userInfo[address(arg1)][address(arg2)].field_0)) + (uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0)) / uint256(userInfo[address(arg1)][address(arg2)].field_0) != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(arg1)].field_512):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if uint256(userInfo[address(arg1)][address(arg2)].field_256) > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * uint256(userInfo[address(arg1)][address(arg2)].field_0)) + (uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0)) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * uint256(userInfo[address(arg1)][address(arg2)].field_0)) + (uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0)) / 10^12) - uint256(userInfo[address(arg1)][address(arg2)].field_256))
    if (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier * sub_de44820b) / (block.number * bonusMultiplier) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier) != sub_de44820b:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier * sub_de44820b):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(arg1)].field_512) < uint256(poolInfo[address(arg1)].field_512):
                revert with 0, 'SafeMath: addition overflow'
            if not uint256(userInfo[address(arg1)][address(arg2)].field_0):
                if uint256(userInfo[address(arg1)][address(arg2)].field_256) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -uint256(userInfo[address(arg1)][address(arg2)].field_256)
            if (0 / ext_call.return_data[0] * uint256(userInfo[address(arg1)][address(arg2)].field_0)) + (uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0)) / uint256(userInfo[address(arg1)][address(arg2)].field_0) != (0 / ext_call.return_data[0]) + uint256(poolInfo[address(arg1)].field_512):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if uint256(userInfo[address(arg1)][address(arg2)].field_256) > (0 / ext_call.return_data[0] * uint256(userInfo[address(arg1)][address(arg2)].field_0)) + (uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0)) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * uint256(userInfo[address(arg1)][address(arg2)].field_0)) + (uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0)) / 10^12) - uint256(userInfo[address(arg1)][address(arg2)].field_256))
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(arg1)].field_512) < uint256(poolInfo[address(arg1)].field_512):
            revert with 0, 'SafeMath: addition overflow'
        if not uint256(userInfo[address(arg1)][address(arg2)].field_0):
            if uint256(userInfo[address(arg1)][address(arg2)].field_256) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -uint256(userInfo[address(arg1)][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * uint256(userInfo[address(arg1)][address(arg2)].field_0)) + (uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0)) / uint256(userInfo[address(arg1)][address(arg2)].field_0) != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(arg1)].field_512):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if uint256(userInfo[address(arg1)][address(arg2)].field_256) > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * uint256(userInfo[address(arg1)][address(arg2)].field_0)) + (uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0)) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * uint256(userInfo[address(arg1)][address(arg2)].field_0)) + (uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0)) / 10^12) - uint256(userInfo[address(arg1)][address(arg2)].field_256))
    if (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) / (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier * sub_de44820b) != uint256(poolInfo[address(arg1)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(arg1)].field_512) < uint256(poolInfo[address(arg1)].field_512):
            revert with 0, 'SafeMath: addition overflow'
        if not uint256(userInfo[address(arg1)][address(arg2)].field_0):
            if uint256(userInfo[address(arg1)][address(arg2)].field_256) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -uint256(userInfo[address(arg1)][address(arg2)].field_256)
        if (0 / ext_call.return_data[0] * uint256(userInfo[address(arg1)][address(arg2)].field_0)) + (uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0)) / uint256(userInfo[address(arg1)][address(arg2)].field_0) != (0 / ext_call.return_data[0]) + uint256(poolInfo[address(arg1)].field_512):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if uint256(userInfo[address(arg1)][address(arg2)].field_256) > (0 / ext_call.return_data[0] * uint256(userInfo[address(arg1)][address(arg2)].field_0)) + (uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0)) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * uint256(userInfo[address(arg1)][address(arg2)].field_0)) + (uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0)) / 10^12) - uint256(userInfo[address(arg1)][address(arg2)].field_256))
    if 10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) / totalAllocPoint / (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) / totalAllocPoint != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if (10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(arg1)].field_512) < uint256(poolInfo[address(arg1)].field_512):
        revert with 0, 'SafeMath: addition overflow'
    if not uint256(userInfo[address(arg1)][address(arg2)].field_0):
        if uint256(userInfo[address(arg1)][address(arg2)].field_256) > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -uint256(userInfo[address(arg1)][address(arg2)].field_256)
    if (10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) / totalAllocPoint / ext_call.return_data[0] * uint256(userInfo[address(arg1)][address(arg2)].field_0)) + (uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0)) / uint256(userInfo[address(arg1)][address(arg2)].field_0) != (10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(arg1)].field_512):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if uint256(userInfo[address(arg1)][address(arg2)].field_256) > (10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) / totalAllocPoint / ext_call.return_data[0] * uint256(userInfo[address(arg1)][address(arg2)].field_0)) + (uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0)) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) - (uint256(poolInfo[address(arg1)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg1)].field_0)) / totalAllocPoint / ext_call.return_data[0] * uint256(userInfo[address(arg1)][address(arg2)].field_0)) + (uint256(poolInfo[address(arg1)].field_512) * uint256(userInfo[address(arg1)][address(arg2)].field_0)) / 10^12) - uint256(userInfo[address(arg1)][address(arg2)].field_256))
}

function harvest(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if stor101 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor101 = 2
    if block.number > uint256(poolInfo[address(arg2)].field_256):
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if uint256(poolInfo[address(arg2)].field_256) > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - uint256(poolInfo[address(arg2)].field_256):
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                require ext_code.size(wingAddress)
                call wingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wingAddress)
                call wingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args beanAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(arg2)].field_512) < uint256(poolInfo[address(arg2)].field_512):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo[address(arg2)].field_512) += 0 / ext_call.return_data[0]
                else:
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(arg2)].field_512) < uint256(poolInfo[address(arg2)].field_512):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo[address(arg2)].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
            else:
                if (block.number * bonusMultiplier) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier) / block.number - uint256(poolInfo[address(arg2)].field_256) != bonusMultiplier:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (block.number * bonusMultiplier) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier):
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(wingAddress)
                    call wingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(wingAddress)
                    call wingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args beanAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(arg2)].field_512) < uint256(poolInfo[address(arg2)].field_512):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[address(arg2)].field_512) += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(arg2)].field_512) < uint256(poolInfo[address(arg2)].field_512):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[address(arg2)].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier * sub_de44820b) / (block.number * bonusMultiplier) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier) != sub_de44820b:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier * sub_de44820b):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(wingAddress)
                        call wingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(wingAddress)
                        call wingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args beanAddress, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(arg2)].field_512) < uint256(poolInfo[address(arg2)].field_512):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[address(arg2)].field_512) += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(arg2)].field_512) < uint256(poolInfo[address(arg2)].field_512):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[address(arg2)].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) / (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier * sub_de44820b) != uint256(poolInfo[address(arg2)].field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(wingAddress)
                        call wingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(wingAddress)
                        call wingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args beanAddress, (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(arg2)].field_512) < uint256(poolInfo[address(arg2)].field_512):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[address(arg2)].field_512) += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) / totalAllocPoint / (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(arg2)].field_512) < uint256(poolInfo[address(arg2)].field_512):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[address(arg2)].field_512) += 10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) / totalAllocPoint / ext_call.return_data[0]
        uint256(poolInfo[address(arg2)].field_256) = block.number
    if userInfo[address(arg2)][address(arg1)].field_512 != msg.sender:
        revert with 0, '_harvest: only funder'
    if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
        revert with 0, '_harvest: nothing to harvest'
    if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
        if uint256(userInfo[address(arg2)][address(arg1)].field_256) > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(wingAddress)
        staticcall wingAddress.0x70a08231 with:
                gas gas_remaining wei
               args beanAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if -uint256(userInfo[address(arg2)][address(arg1)].field_256) > ext_call.return_data[0]:
            revert with 0, 32, 37, 0x645f686172766573743a207761697420776861742e2e206e6f7420656e6f7567682057494e, mem[585 len 27]
        require ext_code.size(beanAddress)
        call beanAddress.0x3fa02218 with:
             gas gas_remaining wei
            args address(arg1), -uint256(userInfo[address(arg2)][address(arg1)].field_256)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not sub_799352cb[address(arg2)][1][address(msg.sender)].field_0:
            if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
            else:
                if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
        else:
            if not ext_code.size(msg.sender):
                if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                    uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                else:
                    if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
            else:
                mem[644 len 128] = 1818930577, address(arg2) << 64, 0, address(arg1), -uint256(userInfo[address(arg2)][address(arg1)].field_256), Mask(224, 0, poolInfo[address(arg2)].field_288)
                mem[800 len 4] = uint32(poolInfo[address(arg2)].field_320)
                call msg.sender with:
                   funct uint32(-uint256(userInfo[address(arg2)][address(arg1)].field_256))
                     gas gas_remaining wei
                    args Mask(992, 0, poolInfo[address(arg2)].field_256), mem[772 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 's_masterChefCallee:  failed to execute masterChefCalee:  fai', mem[772 len 4]
                    if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                        uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                    else:
                        if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                            revert with 0, 'GSafeMath: multiplication overflo!', 0x47536166654d6174683a206d756c7469706c69636174696f, mem[772 len 4]
                        uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    52,
                                    0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                    mem[ceil32(return_data.size) + 765 len 12]
                    if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                        uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                    else:
                        if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                            revert with 0, 
                                        32,
                                        33,
                                        0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 746 len 31]
                        uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
    else:
        if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if uint256(userInfo[address(arg2)][address(arg1)].field_256) > uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(wingAddress)
        staticcall wingAddress.0x70a08231 with:
                gas gas_remaining wei
               args beanAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12) - uint256(userInfo[address(arg2)][address(arg1)].field_256) > ext_call.return_data[0]:
            revert with 0, 32, 37, 0x645f686172766573743a207761697420776861742e2e206e6f7420656e6f7567682057494e, mem[585 len 27]
        require ext_code.size(beanAddress)
        call beanAddress.0x3fa02218 with:
             gas gas_remaining wei
            args address(arg1), (uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12) - uint256(userInfo[address(arg2)][address(arg1)].field_256)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not sub_799352cb[address(arg2)][1][address(msg.sender)].field_0:
            if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
            else:
                if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
        else:
            if not ext_code.size(msg.sender):
                if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                    uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                else:
                    if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
            else:
                mem[644 len 128] = 1818930577, address(arg2) << 64, 0, address(arg1), (uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12) - uint256(userInfo[address(arg2)][address(arg1)].field_256), Mask(224, 0, poolInfo[address(arg2)].field_288)
                mem[800 len 4] = uint32(poolInfo[address(arg2)].field_320)
                call msg.sender with:
                   funct uint32((uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12) - uint256(userInfo[address(arg2)][address(arg1)].field_256))
                     gas gas_remaining wei
                    args Mask(992, 0, poolInfo[address(arg2)].field_256), mem[772 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 's_masterChefCallee:  failed to execute masterChefCalee:  fai', mem[772 len 4]
                    if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                        uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                    else:
                        if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                            revert with 0, 'GSafeMath: multiplication overflo!', 0x47536166654d6174683a206d756c7469706c69636174696f, mem[772 len 4]
                        uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    52,
                                    0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                    mem[ceil32(return_data.size) + 765 len 12]
                    if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                        uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                    else:
                        if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                            revert with 0, 
                                        32,
                                        33,
                                        0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 746 len 31]
                        uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
    stor101 = 1
}

function withdraw(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor101 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor101 = 2
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x64736574506f6f6c3a205f7374616b65546f6b656e206d757374206e6f742062652061646472657373283029206f7220616464726573732831,
                    mem[221 len 7]
    if 1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x64736574506f6f6c3a205f7374616b65546f6b656e206d757374206e6f742062652061646472657373283029206f7220616464726573732831,
                    mem[221 len 7]
    if wingAddress == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6477697468647261773a2075736520776974686472617757696e6720696e73746561,
                    mem[198 len 30]
    if not stor157[address(arg2)].field_0:
        revert with 0, 'withdraw: no pool'
    if userInfo[address(arg2)][address(arg1)].field_512 != msg.sender:
        revert with 0, 'withdraw: only funder'
    if arg3 > uint256(userInfo[address(arg2)][address(arg1)].field_0):
        revert with 0, 'withdraw: not good'
    if block.number > uint256(poolInfo[address(arg2)].field_256):
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if uint256(poolInfo[address(arg2)].field_256) > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - uint256(poolInfo[address(arg2)].field_256):
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                require ext_code.size(wingAddress)
                call wingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wingAddress)
                call wingAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args beanAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(arg2)].field_512) < uint256(poolInfo[address(arg2)].field_512):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo[address(arg2)].field_512) += 0 / ext_call.return_data[0]
                else:
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(arg2)].field_512) < uint256(poolInfo[address(arg2)].field_512):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo[address(arg2)].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
            else:
                if (block.number * bonusMultiplier) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier) / block.number - uint256(poolInfo[address(arg2)].field_256) != bonusMultiplier:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (block.number * bonusMultiplier) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier):
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(wingAddress)
                    call wingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(wingAddress)
                    call wingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args beanAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(arg2)].field_512) < uint256(poolInfo[address(arg2)].field_512):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[address(arg2)].field_512) += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(arg2)].field_512) < uint256(poolInfo[address(arg2)].field_512):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[address(arg2)].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier * sub_de44820b) / (block.number * bonusMultiplier) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier) != sub_de44820b:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier * sub_de44820b):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(wingAddress)
                        call wingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(wingAddress)
                        call wingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args beanAddress, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(arg2)].field_512) < uint256(poolInfo[address(arg2)].field_512):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[address(arg2)].field_512) += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(arg2)].field_512) < uint256(poolInfo[address(arg2)].field_512):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[address(arg2)].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) / (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier * sub_de44820b) != uint256(poolInfo[address(arg2)].field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(wingAddress)
                        call wingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(wingAddress)
                        call wingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args beanAddress, (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(arg2)].field_512) < uint256(poolInfo[address(arg2)].field_512):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[address(arg2)].field_512) += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) / totalAllocPoint / (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(arg2)].field_512) < uint256(poolInfo[address(arg2)].field_512):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[address(arg2)].field_512) += 10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) - (uint256(poolInfo[address(arg2)].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(arg2)].field_0)) / totalAllocPoint / ext_call.return_data[0]
        uint256(poolInfo[address(arg2)].field_256) = block.number
    if userInfo[address(arg2)][address(arg1)].field_512 != msg.sender:
        revert with 0, '_harvest: only funder'
    if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
        revert with 0, '_harvest: nothing to harvest'
    if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
        if uint256(userInfo[address(arg2)][address(arg1)].field_256) > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(wingAddress)
        staticcall wingAddress.0x70a08231 with:
                gas gas_remaining wei
               args beanAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if -uint256(userInfo[address(arg2)][address(arg1)].field_256) > ext_call.return_data[0]:
            revert with 0, 32, 37, 0x645f686172766573743a207761697420776861742e2e206e6f7420656e6f7567682057494e, mem[585 len 27]
        require ext_code.size(beanAddress)
        call beanAddress.0x3fa02218 with:
             gas gas_remaining wei
            args address(arg1), -uint256(userInfo[address(arg2)][address(arg1)].field_256)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not sub_799352cb[address(arg2)][1][address(msg.sender)].field_0:
            if not arg3:
                if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                    uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                else:
                    if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
            else:
                if arg3 > uint256(userInfo[address(arg2)][address(arg1)].field_0):
                    revert with 0, 'SafeMath: subtraction overflow'
                uint256(userInfo[address(arg2)][address(arg1)].field_0) -= arg3
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[750 len 26]
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg3) >> 32
                call arg2 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg3) << 224, mem[708 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                        uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                    else:
                        if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[745 len 31]
                        uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
                else:
                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[676]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 755 len 22]
                    if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                        uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                    else:
                        if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                            revert with 0, 
                                        32,
                                        33,
                                        0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 746 len 31]
                        uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
            if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                userInfo[address(arg2)][address(arg1)].field_512 = 0
            emit Withdraw(uint256(userInfo[address(arg2)][address(arg1)].field_0), msg.sender, arg1, arg2);
        else:
            if not ext_code.size(msg.sender):
                if not arg3:
                    if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                        uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                    else:
                        if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
                else:
                    if arg3 > uint256(userInfo[address(arg2)][address(arg1)].field_0):
                        revert with 0, 'SafeMath: subtraction overflow'
                    uint256(userInfo[address(arg2)][address(arg1)].field_0) -= arg3
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[750 len 26]
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg3) >> 32
                    call arg2 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg3) << 224, mem[708 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                            uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                        else:
                            if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[745 len 31]
                            uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
                    else:
                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[676]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 755 len 22]
                        if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                            uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                        else:
                            if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                                revert with 0, 
                                            32,
                                            33,
                                            0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 746 len 31]
                            uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
                if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                    userInfo[address(arg2)][address(arg1)].field_512 = 0
                emit Withdraw(uint256(userInfo[address(arg2)][address(arg1)].field_0), msg.sender, arg1, arg2);
            else:
                mem[644 len 128] = 1818930577, address(arg2) << 64, 0, address(arg1), -uint256(userInfo[address(arg2)][address(arg1)].field_256), Mask(224, 0, poolInfo[address(arg2)].field_288)
                mem[800 len 4] = uint32(poolInfo[address(arg2)].field_320)
                call msg.sender with:
                   funct uint32(-uint256(userInfo[address(arg2)][address(arg1)].field_256))
                     gas gas_remaining wei
                    args Mask(992, 0, poolInfo[address(arg2)].field_256), mem[772 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 's_masterChefCallee:  failed to execute masterChefCalee:  fai', mem[772 len 4]
                    if not arg3:
                        if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                            uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                        else:
                            if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                                revert with 0, 'GSafeMath: multiplication overflo!', 0x47536166654d6174683a206d756c7469706c69636174696f, mem[772 len 4]
                            uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
                    else:
                        if arg3 > uint256(userInfo[address(arg2)][address(arg1)].field_0):
                            revert with 0, 'SafeMath: subtraction overflow'
                        uint256(userInfo[address(arg2)][address(arg1)].field_0) -= arg3
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[914 len 26]
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[808 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg3) >> 32
                        call arg2 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg3) << 224, mem[872 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                                uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                            else:
                                if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[909 len 31]
                                uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
                        else:
                            mem[840 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[840]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 919 len 22]
                            if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                                uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                            else:
                                if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 910 len 31]
                                uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
                    if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                        userInfo[address(arg2)][address(arg1)].field_512 = 0
                    emit Withdraw(uint256(userInfo[address(arg2)][address(arg1)].field_0), msg.sender, arg1, arg2);
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    52,
                                    0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                    mem[ceil32(return_data.size) + 765 len 12]
                    if not arg3:
                        if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                            uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                        else:
                            if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                                revert with 0, 
                                            32,
                                            33,
                                            0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 746 len 31]
                            uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
                        if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                            userInfo[address(arg2)][address(arg1)].field_512 = 0
                        emit Withdraw(uint256(userInfo[address(arg2)][address(arg1)].field_0), msg.sender, arg1, arg2);
                    else:
                        if arg3 > uint256(userInfo[address(arg2)][address(arg1)].field_0):
                            revert with 0, 'SafeMath: subtraction overflow'
                        uint256(userInfo[address(arg2)][address(arg1)].field_0) -= arg3
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 915 len 26]
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg3) >> 32
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call arg2 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg3) << 224, mem[ceil32(return_data.size) + 873 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                                uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                            else:
                                if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 910 len 31]
                                uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
                            if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                                userInfo[address(arg2)][address(arg1)].field_512 = 0
                            emit Withdraw(uint256(userInfo[address(arg2)][address(arg1)].field_0), msg.sender, arg1, arg2);
                        else:
                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 841]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                                uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                            else:
                                if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 911 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
                            if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                                userInfo[address(arg2)][address(arg1)].field_512 = 0
                            emit Withdraw(address arg1, address arg2, address arg3, uint256 arg4):
                                          uint256(userInfo[address(arg2)][address(arg1)].field_0),
                                          mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                          msg.sender,
                                          arg1,
                                          arg2,
    else:
        if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if uint256(userInfo[address(arg2)][address(arg1)].field_256) > uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(wingAddress)
        staticcall wingAddress.0x70a08231 with:
                gas gas_remaining wei
               args beanAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12) - uint256(userInfo[address(arg2)][address(arg1)].field_256) > ext_call.return_data[0]:
            revert with 0, 32, 37, 0x645f686172766573743a207761697420776861742e2e206e6f7420656e6f7567682057494e, mem[585 len 27]
        require ext_code.size(beanAddress)
        call beanAddress.0x3fa02218 with:
             gas gas_remaining wei
            args address(arg1), (uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12) - uint256(userInfo[address(arg2)][address(arg1)].field_256)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not sub_799352cb[address(arg2)][1][address(msg.sender)].field_0:
            if not arg3:
                if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                    uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                else:
                    if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
            else:
                if arg3 > uint256(userInfo[address(arg2)][address(arg1)].field_0):
                    revert with 0, 'SafeMath: subtraction overflow'
                uint256(userInfo[address(arg2)][address(arg1)].field_0) -= arg3
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[750 len 26]
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg3) >> 32
                call arg2 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg3) << 224, mem[708 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                        uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                    else:
                        if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[745 len 31]
                        uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
                else:
                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[676]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 755 len 22]
                    if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                        uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                    else:
                        if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                            revert with 0, 
                                        32,
                                        33,
                                        0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 746 len 31]
                        uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
            if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                userInfo[address(arg2)][address(arg1)].field_512 = 0
            emit Withdraw(uint256(userInfo[address(arg2)][address(arg1)].field_0), msg.sender, arg1, arg2);
        else:
            if not ext_code.size(msg.sender):
                if not arg3:
                    if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                        uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                    else:
                        if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
                else:
                    if arg3 > uint256(userInfo[address(arg2)][address(arg1)].field_0):
                        revert with 0, 'SafeMath: subtraction overflow'
                    uint256(userInfo[address(arg2)][address(arg1)].field_0) -= arg3
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[750 len 26]
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg3) >> 32
                    call arg2 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg3) << 224, mem[708 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                            uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                        else:
                            if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[745 len 31]
                            uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
                    else:
                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[676]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 755 len 22]
                        if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                            uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                        else:
                            if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                                revert with 0, 
                                            32,
                                            33,
                                            0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 746 len 31]
                            uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
                if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                    userInfo[address(arg2)][address(arg1)].field_512 = 0
                emit Withdraw(uint256(userInfo[address(arg2)][address(arg1)].field_0), msg.sender, arg1, arg2);
            else:
                mem[644 len 128] = 1818930577, address(arg2) << 64, 0, address(arg1), (uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12) - uint256(userInfo[address(arg2)][address(arg1)].field_256), Mask(224, 0, poolInfo[address(arg2)].field_288)
                mem[800 len 4] = uint32(poolInfo[address(arg2)].field_320)
                call msg.sender with:
                   funct uint32((uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12) - uint256(userInfo[address(arg2)][address(arg1)].field_256))
                     gas gas_remaining wei
                    args Mask(992, 0, poolInfo[address(arg2)].field_256), mem[772 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 's_masterChefCallee:  failed to execute masterChefCalee:  fai', mem[772 len 4]
                    if not arg3:
                        if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                            uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                        else:
                            if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                                revert with 0, 'GSafeMath: multiplication overflo!', 0x47536166654d6174683a206d756c7469706c69636174696f, mem[772 len 4]
                            uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
                    else:
                        if arg3 > uint256(userInfo[address(arg2)][address(arg1)].field_0):
                            revert with 0, 'SafeMath: subtraction overflow'
                        uint256(userInfo[address(arg2)][address(arg1)].field_0) -= arg3
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[914 len 26]
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[808 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg3) >> 32
                        call arg2 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg3) << 224, mem[872 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                                uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                            else:
                                if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[909 len 31]
                                uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
                        else:
                            mem[840 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[840]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 919 len 22]
                            if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                                uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                            else:
                                if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 910 len 31]
                                uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
                    if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                        userInfo[address(arg2)][address(arg1)].field_512 = 0
                    emit Withdraw(uint256(userInfo[address(arg2)][address(arg1)].field_0), msg.sender, arg1, arg2);
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    52,
                                    0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                    mem[ceil32(return_data.size) + 765 len 12]
                    if not arg3:
                        if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                            uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                        else:
                            if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                                revert with 0, 
                                            32,
                                            33,
                                            0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 746 len 31]
                            uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
                        if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                            userInfo[address(arg2)][address(arg1)].field_512 = 0
                        emit Withdraw(uint256(userInfo[address(arg2)][address(arg1)].field_0), msg.sender, arg1, arg2);
                    else:
                        if arg3 > uint256(userInfo[address(arg2)][address(arg1)].field_0):
                            revert with 0, 'SafeMath: subtraction overflow'
                        uint256(userInfo[address(arg2)][address(arg1)].field_0) -= arg3
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 915 len 26]
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 809 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg3) >> 32
                        mem[ceil32(return_data.size) + 901 len 4] = 0
                        call arg2 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg3) << 224, mem[ceil32(return_data.size) + 873 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                                uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                            else:
                                if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 910 len 31]
                                uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
                            if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                                userInfo[address(arg2)][address(arg1)].field_512 = 0
                            emit Withdraw(uint256(userInfo[address(arg2)][address(arg1)].field_0), msg.sender, arg1, arg2);
                        else:
                            mem[ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 841]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 920 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                                uint256(userInfo[address(arg2)][address(arg1)].field_256) = 0
                            else:
                                if uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / uint256(userInfo[address(arg2)][address(arg1)].field_0) != uint256(poolInfo[address(arg2)].field_512):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 911 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                uint256(userInfo[address(arg2)][address(arg1)].field_256) = uint256(poolInfo[address(arg2)].field_512) * uint256(userInfo[address(arg2)][address(arg1)].field_0) / 10^12
                            if not uint256(userInfo[address(arg2)][address(arg1)].field_0):
                                userInfo[address(arg2)][address(arg1)].field_512 = 0
                            emit Withdraw(address arg1, address arg2, address arg3, uint256 arg4):
                                          uint256(userInfo[address(arg2)][address(arg1)].field_0),
                                          mem[(2 * ceil32(return_data.size)) + 842 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                          msg.sender,
                                          arg1,
                                          arg2,
    stor101 = 1
}

function sub_07a10005(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if stor101 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor101 = 2
    idx = 0
    while idx < ('cd', 36).length:
        mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[32] = 158
        if block.number <= uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256):
            require idx < ('cd', 36).length
            _953 = mem[64]
            mem[64] = mem[64] + 96
            mem[_953] = 0
            mem[_953 + 32] = 0
            mem[_953 + 64] = 0
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 158
            _955 = mem[64]
            mem[64] = mem[64] + 96
            mem[_955] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)
            mem[_955 + 32] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
            mem[_955 + 64] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512)
            _958 = mem[64]
            mem[64] = mem[64] + 96
            mem[_958] = 0
            mem[_958 + 32] = 0
            mem[_958 + 64] = 0
            mem[0] = address(cd[4])
            mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 159)
            _961 = mem[64]
            mem[64] = mem[64] + 96
            mem[_961] = uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0)
            mem[_961 + 32] = uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
            mem[_961 + 64] = userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_512
            if userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_512 != msg.sender:
                revert with 0, '_harvest: only funder'
            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                revert with 0, '_harvest: nothing to harvest'
            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                if uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(wingAddress)
                staticcall wingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args beanAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > ext_call.return_data[0]:
                    revert with 0, 32, 37, 0x645f686172766573743a207761697420776861742e2e206e6f7420656e6f7567682057494e, mem[mem[64] + 105 len 27]
                mem[mem[64]] = 0x3fa0221800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                require ext_code.size(beanAddress)
                call beanAddress.0x3fa02218 with:
                     gas gas_remaining wei
                    args address(cd[4]), -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = msg.sender
                mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 163) + 1
                if not sub_799352cb[address(cd[((32 * idx) + cd[36] + 36)])][1][address(msg.sender)].field_0:
                    if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                        uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                    else:
                        if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                else:
                    if not ext_code.size(msg.sender):
                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                        else:
                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                    else:
                        _1087 = mem[64]
                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 68] = address(cd[4])
                        mem[mem[64] + 100] = -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                        mem[mem[64] + 132] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                        _1088 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_1088 + 32] = 0x6c6aad9100000000000000000000000000000000000000000000000000000000 or mem[_1088 + 36 len 28]
                        _1091 = mem[_1088]
                        t = _1088 + 32
                        u = _1087 + 164
                        s = mem[_1088]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1087 + floor32(mem[_1088]) + 164] = mem[_1088 + -(mem[_1088] % 32) + floor32(mem[_1088]) + 64 len mem[_1088] % 32] or Mask(8 * -(mem[_1088] % 32) + 32, -(8 * -(mem[_1088] % 32) + 32) + 256, mem[_1087 + floor32(mem[_1088]) + 164])
                        call msg.sender.mem[_1087 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1087 + 168 len _1091 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            52,
                                            0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                            mem[_1087 + 284 len 12]
                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                            else:
                                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1087 + 265 len 31]
                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                        else:
                            mem[64] = _1087 + ceil32(return_data.size) + 165
                            mem[_1087 + 164] = return_data.size
                            mem[_1087 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            52,
                                            0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                            mem[_1087 + ceil32(return_data.size) + 285 len 12]
                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                            else:
                                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_1087 + ceil32(return_data.size) + 266 len 31]
                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
            else:
                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(wingAddress)
                staticcall wingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args beanAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > ext_call.return_data[0]:
                    revert with 0, 32, 37, 0x645f686172766573743a207761697420776861742e2e206e6f7420656e6f7567682057494e, mem[mem[64] + 105 len 27]
                mem[mem[64]] = 0x3fa0221800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                require ext_code.size(beanAddress)
                call beanAddress.0x3fa02218 with:
                     gas gas_remaining wei
                    args address(cd[4]), (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = msg.sender
                mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 163) + 1
                if not sub_799352cb[address(cd[((32 * idx) + cd[36] + 36)])][1][address(msg.sender)].field_0:
                    if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                        uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                    else:
                        if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                else:
                    if not ext_code.size(msg.sender):
                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                        else:
                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                    else:
                        _1096 = mem[64]
                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 68] = address(cd[4])
                        mem[mem[64] + 100] = (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                        mem[mem[64] + 132] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                        _1097 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_1097 + 32] = 0x6c6aad9100000000000000000000000000000000000000000000000000000000 or mem[_1097 + 36 len 28]
                        _1100 = mem[_1097]
                        t = _1097 + 32
                        u = _1096 + 164
                        s = mem[_1097]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1096 + floor32(mem[_1097]) + 164] = mem[_1097 + -(mem[_1097] % 32) + floor32(mem[_1097]) + 64 len mem[_1097] % 32] or Mask(8 * -(mem[_1097] % 32) + 32, -(8 * -(mem[_1097] % 32) + 32) + 256, mem[_1096 + floor32(mem[_1097]) + 164])
                        call msg.sender.mem[_1096 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1096 + 168 len _1100 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            52,
                                            0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                            mem[_1096 + 284 len 12]
                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                            else:
                                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1096 + 265 len 31]
                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                        else:
                            mem[64] = _1096 + ceil32(return_data.size) + 165
                            mem[_1096 + 164] = return_data.size
                            mem[_1096 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            52,
                                            0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                            mem[_1096 + ceil32(return_data.size) + 285 len 12]
                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                            else:
                                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[_1096 + ceil32(return_data.size) + 266 len 31]
                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
        else:
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256) = block.number
                require idx < ('cd', 36).length
                _962 = mem[64]
                mem[64] = mem[64] + 96
                mem[_962] = 0
                mem[_962 + 32] = 0
                mem[_962 + 64] = 0
                mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[32] = 158
                _964 = mem[64]
                mem[64] = mem[64] + 96
                mem[_964] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)
                mem[_964 + 32] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                mem[_964 + 64] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512)
                _966 = mem[64]
                mem[64] = mem[64] + 96
                mem[_966] = 0
                mem[_966 + 32] = 0
                mem[_966 + 64] = 0
                mem[0] = address(cd[4])
                mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 159)
                _974 = mem[64]
                mem[64] = mem[64] + 96
                mem[_974] = uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0)
                mem[_974 + 32] = uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                mem[_974 + 64] = userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_512
                if userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_512 != msg.sender:
                    revert with 0, '_harvest: only funder'
                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                    revert with 0, '_harvest: nothing to harvest'
                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                    if uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(wingAddress)
                    staticcall wingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args beanAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > ext_call.return_data[0]:
                        revert with 0, 32, 37, 0x645f686172766573743a207761697420776861742e2e206e6f7420656e6f7567682057494e, mem[mem[64] + 105 len 27]
                    mem[mem[64]] = 0x3fa0221800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                    require ext_code.size(beanAddress)
                    call beanAddress.0x3fa02218 with:
                         gas gas_remaining wei
                        args address(cd[4]), -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = msg.sender
                    mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 163) + 1
                    if not sub_799352cb[address(cd[((32 * idx) + cd[36] + 36)])][1][address(msg.sender)].field_0:
                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                        else:
                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                    else:
                        if not ext_code.size(msg.sender):
                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                            else:
                                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                        else:
                            _1126 = mem[64]
                            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 68] = address(cd[4])
                            mem[mem[64] + 100] = -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                            mem[mem[64] + 132] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                            _1127 = mem[64]
                            mem[mem[64]] = 132
                            mem[64] = mem[64] + 164
                            mem[_1127 + 32] = 0x6c6aad9100000000000000000000000000000000000000000000000000000000 or mem[_1127 + 36 len 28]
                            _1130 = mem[_1127]
                            t = _1127 + 32
                            u = _1126 + 164
                            s = mem[_1127]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1126 + floor32(mem[_1127]) + 164] = mem[_1127 + -(mem[_1127] % 32) + floor32(mem[_1127]) + 64 len mem[_1127] % 32] or Mask(8 * -(mem[_1127] % 32) + 32, -(8 * -(mem[_1127] % 32) + 32) + 256, mem[_1126 + floor32(mem[_1127]) + 164])
                            call msg.sender.mem[_1126 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1126 + 168 len _1130 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                mem[_1126 + 284 len 12]
                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                else:
                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1126 + 265 len 31]
                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                            else:
                                mem[64] = _1126 + ceil32(return_data.size) + 165
                                mem[_1126 + 164] = return_data.size
                                mem[_1126 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                mem[_1126 + ceil32(return_data.size) + 285 len 12]
                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                else:
                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_1126 + ceil32(return_data.size) + 266 len 31]
                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                else:
                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(wingAddress)
                    staticcall wingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args beanAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > ext_call.return_data[0]:
                        revert with 0, 32, 37, 0x645f686172766573743a207761697420776861742e2e206e6f7420656e6f7567682057494e, mem[mem[64] + 105 len 27]
                    mem[mem[64]] = 0x3fa0221800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                    require ext_code.size(beanAddress)
                    call beanAddress.0x3fa02218 with:
                         gas gas_remaining wei
                        args address(cd[4]), (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = msg.sender
                    mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 163) + 1
                    if not sub_799352cb[address(cd[((32 * idx) + cd[36] + 36)])][1][address(msg.sender)].field_0:
                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                        else:
                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                    else:
                        if not ext_code.size(msg.sender):
                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                            else:
                                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                        else:
                            _1136 = mem[64]
                            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 68] = address(cd[4])
                            mem[mem[64] + 100] = (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                            mem[mem[64] + 132] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                            _1137 = mem[64]
                            mem[mem[64]] = 132
                            mem[64] = mem[64] + 164
                            mem[_1137 + 32] = 0x6c6aad9100000000000000000000000000000000000000000000000000000000 or mem[_1137 + 36 len 28]
                            _1140 = mem[_1137]
                            t = _1137 + 32
                            u = _1136 + 164
                            s = mem[_1137]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1136 + floor32(mem[_1137]) + 164] = mem[_1137 + -(mem[_1137] % 32) + floor32(mem[_1137]) + 64 len mem[_1137] % 32] or Mask(8 * -(mem[_1137] % 32) + 32, -(8 * -(mem[_1137] % 32) + 32) + 256, mem[_1136 + floor32(mem[_1137]) + 164])
                            call msg.sender.mem[_1136 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1136 + 168 len _1140 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                mem[_1136 + 284 len 12]
                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                else:
                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1136 + 265 len 31]
                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                            else:
                                mem[64] = _1136 + ceil32(return_data.size) + 165
                                mem[_1136 + 164] = return_data.size
                                mem[_1136 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                mem[_1136 + ceil32(return_data.size) + 285 len 12]
                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                else:
                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[_1136 + ceil32(return_data.size) + 266 len 31]
                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
            else:
                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256) > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256):
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(wingAddress)
                    call wingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(wingAddress)
                    call wingAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args beanAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) < uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) += 0 / ext_call.return_data[0]
                        uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256) = block.number
                        require idx < ('cd', 36).length
                        _1166 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1166] = 0
                        mem[_1166 + 32] = 0
                        mem[_1166 + 64] = 0
                        mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 158
                        _1173 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1173] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)
                        mem[_1173 + 32] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                        mem[_1173 + 64] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512)
                        _1184 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1184] = 0
                        mem[_1184 + 32] = 0
                        mem[_1184 + 64] = 0
                        mem[0] = address(cd[4])
                        mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 159)
                        _1199 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1199] = uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0)
                        mem[_1199 + 32] = uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                        mem[_1199 + 64] = userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_512
                        if userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_512 != msg.sender:
                            revert with 0, '_harvest: only funder'
                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                            revert with 0, '_harvest: nothing to harvest'
                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                            if uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(wingAddress)
                            staticcall wingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args beanAddress
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > ext_call.return_data[0]:
                                revert with 0, 32, 37, 0x645f686172766573743a207761697420776861742e2e206e6f7420656e6f7567682057494e, mem[mem[64] + 105 len 27]
                            mem[mem[64]] = 0x3fa0221800000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                            require ext_code.size(beanAddress)
                            call beanAddress.0x3fa02218 with:
                                 gas gas_remaining wei
                                args address(cd[4]), -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[0] = msg.sender
                            mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 163) + 1
                            if not sub_799352cb[address(cd[((32 * idx) + cd[36] + 36)])][1][address(msg.sender)].field_0:
                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                else:
                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                            else:
                                if not ext_code.size(msg.sender):
                                    if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                        uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                    else:
                                        if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                else:
                                    _1541 = mem[64]
                                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[mem[64] + 68] = address(cd[4])
                                    mem[mem[64] + 100] = -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                    mem[mem[64] + 132] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                                    _1542 = mem[64]
                                    mem[mem[64]] = 132
                                    mem[64] = mem[64] + 164
                                    mem[_1542 + 32] = 0x6c6aad9100000000000000000000000000000000000000000000000000000000 or mem[_1542 + 36 len 28]
                                    _1545 = mem[_1542]
                                    t = _1542 + 32
                                    u = _1541 + 164
                                    s = mem[_1542]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1541 + floor32(mem[_1542]) + 164] = mem[_1542 + -(mem[_1542] % 32) + floor32(mem[_1542]) + 64 len mem[_1542] % 32] or Mask(8 * -(mem[_1542] % 32) + 32, -(8 * -(mem[_1542] % 32) + 32) + 256, mem[_1541 + floor32(mem[_1542]) + 164])
                                    call msg.sender.mem[_1541 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_1541 + 168 len _1545 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                        mem[_1541 + 284 len 12]
                                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                        else:
                                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1541 + 265 len 31]
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                    else:
                                        mem[64] = _1541 + ceil32(return_data.size) + 165
                                        mem[_1541 + 164] = return_data.size
                                        mem[_1541 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                        mem[_1541 + ceil32(return_data.size) + 285 len 12]
                                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                        else:
                                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_1541 + ceil32(return_data.size) + 266 len 31]
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                        else:
                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(wingAddress)
                            staticcall wingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args beanAddress
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > ext_call.return_data[0]:
                                revert with 0, 32, 37, 0x645f686172766573743a207761697420776861742e2e206e6f7420656e6f7567682057494e, mem[mem[64] + 105 len 27]
                            mem[mem[64]] = 0x3fa0221800000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                            require ext_code.size(beanAddress)
                            call beanAddress.0x3fa02218 with:
                                 gas gas_remaining wei
                                args address(cd[4]), (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[0] = msg.sender
                            mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 163) + 1
                            if not sub_799352cb[address(cd[((32 * idx) + cd[36] + 36)])][1][address(msg.sender)].field_0:
                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                else:
                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                            else:
                                if not ext_code.size(msg.sender):
                                    if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                        uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                    else:
                                        if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                else:
                                    _1564 = mem[64]
                                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[mem[64] + 68] = address(cd[4])
                                    mem[mem[64] + 100] = (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                    mem[mem[64] + 132] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                                    _1565 = mem[64]
                                    mem[mem[64]] = 132
                                    mem[64] = mem[64] + 164
                                    mem[_1565 + 32] = 0x6c6aad9100000000000000000000000000000000000000000000000000000000 or mem[_1565 + 36 len 28]
                                    _1568 = mem[_1565]
                                    t = _1565 + 32
                                    u = _1564 + 164
                                    s = mem[_1565]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1564 + floor32(mem[_1565]) + 164] = mem[_1565 + -(mem[_1565] % 32) + floor32(mem[_1565]) + 64 len mem[_1565] % 32] or Mask(8 * -(mem[_1565] % 32) + 32, -(8 * -(mem[_1565] % 32) + 32) + 256, mem[_1564 + floor32(mem[_1565]) + 164])
                                    call msg.sender.mem[_1564 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_1564 + 168 len _1568 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                        mem[_1564 + 284 len 12]
                                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                        else:
                                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1564 + 265 len 31]
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                    else:
                                        mem[64] = _1564 + ceil32(return_data.size) + 165
                                        mem[_1564 + 164] = return_data.size
                                        mem[_1564 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                        mem[_1564 + ceil32(return_data.size) + 285 len 12]
                                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                        else:
                                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_1564 + ceil32(return_data.size) + 266 len 31]
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) < uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256) = block.number
                        require idx < ('cd', 36).length
                        _1171 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1171] = 0
                        mem[_1171 + 32] = 0
                        mem[_1171 + 64] = 0
                        mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 158
                        _1183 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1183] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)
                        mem[_1183 + 32] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                        mem[_1183 + 64] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512)
                        _1196 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1196] = 0
                        mem[_1196 + 32] = 0
                        mem[_1196 + 64] = 0
                        mem[0] = address(cd[4])
                        mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 159)
                        _1218 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1218] = uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0)
                        mem[_1218 + 32] = uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                        mem[_1218 + 64] = userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_512
                        if userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_512 != msg.sender:
                            revert with 0, '_harvest: only funder'
                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                            revert with 0, '_harvest: nothing to harvest'
                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                            if uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(wingAddress)
                            staticcall wingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args beanAddress
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > ext_call.return_data[0]:
                                revert with 0, 32, 37, 0x645f686172766573743a207761697420776861742e2e206e6f7420656e6f7567682057494e, mem[mem[64] + 105 len 27]
                            mem[mem[64]] = 0x3fa0221800000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                            require ext_code.size(beanAddress)
                            call beanAddress.0x3fa02218 with:
                                 gas gas_remaining wei
                                args address(cd[4]), -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[0] = msg.sender
                            mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 163) + 1
                            if not sub_799352cb[address(cd[((32 * idx) + cd[36] + 36)])][1][address(msg.sender)].field_0:
                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                else:
                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                            else:
                                if not ext_code.size(msg.sender):
                                    if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                        uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                    else:
                                        if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                else:
                                    _1559 = mem[64]
                                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[mem[64] + 68] = address(cd[4])
                                    mem[mem[64] + 100] = -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                    mem[mem[64] + 132] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                                    _1560 = mem[64]
                                    mem[mem[64]] = 132
                                    mem[64] = mem[64] + 164
                                    mem[_1560 + 32] = 0x6c6aad9100000000000000000000000000000000000000000000000000000000 or mem[_1560 + 36 len 28]
                                    _1563 = mem[_1560]
                                    t = _1560 + 32
                                    u = _1559 + 164
                                    s = mem[_1560]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1559 + floor32(mem[_1560]) + 164] = mem[_1560 + -(mem[_1560] % 32) + floor32(mem[_1560]) + 64 len mem[_1560] % 32] or Mask(8 * -(mem[_1560] % 32) + 32, -(8 * -(mem[_1560] % 32) + 32) + 256, mem[_1559 + floor32(mem[_1560]) + 164])
                                    call msg.sender.mem[_1559 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_1559 + 168 len _1563 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                        mem[_1559 + 284 len 12]
                                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                        else:
                                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1559 + 265 len 31]
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                    else:
                                        mem[64] = _1559 + ceil32(return_data.size) + 165
                                        mem[_1559 + 164] = return_data.size
                                        mem[_1559 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                        mem[_1559 + ceil32(return_data.size) + 285 len 12]
                                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                        else:
                                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_1559 + ceil32(return_data.size) + 266 len 31]
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                        else:
                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(wingAddress)
                            staticcall wingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args beanAddress
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > ext_call.return_data[0]:
                                revert with 0, 32, 37, 0x645f686172766573743a207761697420776861742e2e206e6f7420656e6f7567682057494e, mem[mem[64] + 105 len 27]
                            mem[mem[64]] = 0x3fa0221800000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                            require ext_code.size(beanAddress)
                            call beanAddress.0x3fa02218 with:
                                 gas gas_remaining wei
                                args address(cd[4]), (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[0] = msg.sender
                            mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 163) + 1
                            if not sub_799352cb[address(cd[((32 * idx) + cd[36] + 36)])][1][address(msg.sender)].field_0:
                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                else:
                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                            else:
                                if not ext_code.size(msg.sender):
                                    if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                        uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                    else:
                                        if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                else:
                                    _1592 = mem[64]
                                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                                    mem[mem[64] + 68] = address(cd[4])
                                    mem[mem[64] + 100] = (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                    mem[mem[64] + 132] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                                    _1593 = mem[64]
                                    mem[mem[64]] = 132
                                    mem[64] = mem[64] + 164
                                    mem[_1593 + 32] = 0x6c6aad9100000000000000000000000000000000000000000000000000000000 or mem[_1593 + 36 len 28]
                                    _1596 = mem[_1593]
                                    t = _1593 + 32
                                    u = _1592 + 164
                                    s = mem[_1593]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_1592 + floor32(mem[_1593]) + 164] = mem[_1593 + -(mem[_1593] % 32) + floor32(mem[_1593]) + 64 len mem[_1593] % 32] or Mask(8 * -(mem[_1593] % 32) + 32, -(8 * -(mem[_1593] % 32) + 32) + 256, mem[_1592 + floor32(mem[_1593]) + 164])
                                    call msg.sender.mem[_1592 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_1592 + 168 len _1596 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                        mem[_1592 + 284 len 12]
                                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                        else:
                                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1592 + 265 len 31]
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                    else:
                                        mem[64] = _1592 + ceil32(return_data.size) + 165
                                        mem[_1592 + 164] = return_data.size
                                        mem[_1592 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                        mem[_1592 + ceil32(return_data.size) + 285 len 12]
                                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                        else:
                                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_1592 + ceil32(return_data.size) + 266 len 31]
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                else:
                    if (block.number * bonusMultiplier) - (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256) * bonusMultiplier) / block.number - uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256) != bonusMultiplier:
                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (block.number * bonusMultiplier) - (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256) * bonusMultiplier):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(wingAddress)
                        call wingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(wingAddress)
                        call wingAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args beanAddress, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) < uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) += 0 / ext_call.return_data[0]
                            uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256) = block.number
                            require idx < ('cd', 36).length
                            _1170 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1170] = 0
                            mem[_1170 + 32] = 0
                            mem[_1170 + 64] = 0
                            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 158
                            _1181 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1181] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)
                            mem[_1181 + 32] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                            mem[_1181 + 64] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512)
                            _1195 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1195] = 0
                            mem[_1195 + 32] = 0
                            mem[_1195 + 64] = 0
                            mem[0] = address(cd[4])
                            mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 159)
                            _1215 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1215] = uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0)
                            mem[_1215 + 32] = uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                            mem[_1215 + 64] = userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_512
                            if userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_512 != msg.sender:
                                revert with 0, '_harvest: only funder'
                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                revert with 0, '_harvest: nothing to harvest'
                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                if uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(wingAddress)
                                staticcall wingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args beanAddress
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > ext_call.return_data[0]:
                                    revert with 0, 32, 37, 0x645f686172766573743a207761697420776861742e2e206e6f7420656e6f7567682057494e, mem[mem[64] + 105 len 27]
                                mem[mem[64]] = 0x3fa0221800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                require ext_code.size(beanAddress)
                                call beanAddress.0x3fa02218 with:
                                     gas gas_remaining wei
                                    args address(cd[4]), -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = msg.sender
                                mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 163) + 1
                                if not sub_799352cb[address(cd[((32 * idx) + cd[36] + 36)])][1][address(msg.sender)].field_0:
                                    if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                        uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                    else:
                                        if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                else:
                                    if not ext_code.size(msg.sender):
                                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                        else:
                                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                    else:
                                        _1552 = mem[64]
                                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[mem[64] + 68] = address(cd[4])
                                        mem[mem[64] + 100] = -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                        mem[mem[64] + 132] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                                        _1553 = mem[64]
                                        mem[mem[64]] = 132
                                        mem[64] = mem[64] + 164
                                        mem[_1553 + 32] = 0x6c6aad9100000000000000000000000000000000000000000000000000000000 or mem[_1553 + 36 len 28]
                                        _1556 = mem[_1553]
                                        t = _1553 + 32
                                        u = _1552 + 164
                                        s = mem[_1553]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_1552 + floor32(mem[_1553]) + 164] = mem[_1553 + -(mem[_1553] % 32) + floor32(mem[_1553]) + 64 len mem[_1553] % 32] or Mask(8 * -(mem[_1553] % 32) + 32, -(8 * -(mem[_1553] % 32) + 32) + 256, mem[_1552 + floor32(mem[_1553]) + 164])
                                        call msg.sender.mem[_1552 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_1552 + 168 len _1556 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                            mem[_1552 + 284 len 12]
                                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                            else:
                                                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1552 + 265 len 31]
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                        else:
                                            mem[64] = _1552 + ceil32(return_data.size) + 165
                                            mem[_1552 + 164] = return_data.size
                                            mem[_1552 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                            mem[_1552 + ceil32(return_data.size) + 285 len 12]
                                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                            else:
                                                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_1552 + ceil32(return_data.size) + 266 len 31]
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                            else:
                                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(wingAddress)
                                staticcall wingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args beanAddress
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > ext_call.return_data[0]:
                                    revert with 0, 32, 37, 0x645f686172766573743a207761697420776861742e2e206e6f7420656e6f7567682057494e, mem[mem[64] + 105 len 27]
                                mem[mem[64]] = 0x3fa0221800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                require ext_code.size(beanAddress)
                                call beanAddress.0x3fa02218 with:
                                     gas gas_remaining wei
                                    args address(cd[4]), (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = msg.sender
                                mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 163) + 1
                                if not sub_799352cb[address(cd[((32 * idx) + cd[36] + 36)])][1][address(msg.sender)].field_0:
                                    if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                        uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                    else:
                                        if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                else:
                                    if not ext_code.size(msg.sender):
                                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                        else:
                                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                    else:
                                        _1587 = mem[64]
                                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[mem[64] + 68] = address(cd[4])
                                        mem[mem[64] + 100] = (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                        mem[mem[64] + 132] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                                        _1588 = mem[64]
                                        mem[mem[64]] = 132
                                        mem[64] = mem[64] + 164
                                        mem[_1588 + 32] = 0x6c6aad9100000000000000000000000000000000000000000000000000000000 or mem[_1588 + 36 len 28]
                                        _1591 = mem[_1588]
                                        t = _1588 + 32
                                        u = _1587 + 164
                                        s = mem[_1588]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_1587 + floor32(mem[_1588]) + 164] = mem[_1588 + -(mem[_1588] % 32) + floor32(mem[_1588]) + 64 len mem[_1588] % 32] or Mask(8 * -(mem[_1588] % 32) + 32, -(8 * -(mem[_1588] % 32) + 32) + 256, mem[_1587 + floor32(mem[_1588]) + 164])
                                        call msg.sender.mem[_1587 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_1587 + 168 len _1591 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                            mem[_1587 + 284 len 12]
                                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                            else:
                                                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1587 + 265 len 31]
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                        else:
                                            mem[64] = _1587 + ceil32(return_data.size) + 165
                                            mem[_1587 + 164] = return_data.size
                                            mem[_1587 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                            mem[_1587 + ceil32(return_data.size) + 285 len 12]
                                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                            else:
                                                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_1587 + ceil32(return_data.size) + 266 len 31]
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) < uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256) = block.number
                            require idx < ('cd', 36).length
                            _1179 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1179] = 0
                            mem[_1179 + 32] = 0
                            mem[_1179 + 64] = 0
                            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 158
                            _1194 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1194] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)
                            mem[_1194 + 32] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                            mem[_1194 + 64] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512)
                            _1212 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1212] = 0
                            mem[_1212 + 32] = 0
                            mem[_1212 + 64] = 0
                            mem[0] = address(cd[4])
                            mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 159)
                            _1234 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1234] = uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0)
                            mem[_1234 + 32] = uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                            mem[_1234 + 64] = userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_512
                            if userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_512 != msg.sender:
                                revert with 0, '_harvest: only funder'
                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                revert with 0, '_harvest: nothing to harvest'
                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                if uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(wingAddress)
                                staticcall wingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args beanAddress
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > ext_call.return_data[0]:
                                    revert with 0, 32, 37, 0x645f686172766573743a207761697420776861742e2e206e6f7420656e6f7567682057494e, mem[mem[64] + 105 len 27]
                                mem[mem[64]] = 0x3fa0221800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                require ext_code.size(beanAddress)
                                call beanAddress.0x3fa02218 with:
                                     gas gas_remaining wei
                                    args address(cd[4]), -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = msg.sender
                                mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 163) + 1
                                if not sub_799352cb[address(cd[((32 * idx) + cd[36] + 36)])][1][address(msg.sender)].field_0:
                                    if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                        uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                    else:
                                        if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                else:
                                    if not ext_code.size(msg.sender):
                                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                        else:
                                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                    else:
                                        _1582 = mem[64]
                                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[mem[64] + 68] = address(cd[4])
                                        mem[mem[64] + 100] = -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                        mem[mem[64] + 132] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                                        _1583 = mem[64]
                                        mem[mem[64]] = 132
                                        mem[64] = mem[64] + 164
                                        mem[_1583 + 32] = 0x6c6aad9100000000000000000000000000000000000000000000000000000000 or mem[_1583 + 36 len 28]
                                        _1586 = mem[_1583]
                                        t = _1583 + 32
                                        u = _1582 + 164
                                        s = mem[_1583]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_1582 + floor32(mem[_1583]) + 164] = mem[_1583 + -(mem[_1583] % 32) + floor32(mem[_1583]) + 64 len mem[_1583] % 32] or Mask(8 * -(mem[_1583] % 32) + 32, -(8 * -(mem[_1583] % 32) + 32) + 256, mem[_1582 + floor32(mem[_1583]) + 164])
                                        call msg.sender.mem[_1582 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_1582 + 168 len _1586 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                            mem[_1582 + 284 len 12]
                                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                            else:
                                                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1582 + 265 len 31]
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                        else:
                                            mem[64] = _1582 + ceil32(return_data.size) + 165
                                            mem[_1582 + 164] = return_data.size
                                            mem[_1582 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                            mem[_1582 + ceil32(return_data.size) + 285 len 12]
                                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                            else:
                                                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_1582 + ceil32(return_data.size) + 266 len 31]
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                            else:
                                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(wingAddress)
                                staticcall wingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args beanAddress
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > ext_call.return_data[0]:
                                    revert with 0, 32, 37, 0x645f686172766573743a207761697420776861742e2e206e6f7420656e6f7567682057494e, mem[mem[64] + 105 len 27]
                                mem[mem[64]] = 0x3fa0221800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                require ext_code.size(beanAddress)
                                call beanAddress.0x3fa02218 with:
                                     gas gas_remaining wei
                                    args address(cd[4]), (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = msg.sender
                                mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 163) + 1
                                if not sub_799352cb[address(cd[((32 * idx) + cd[36] + 36)])][1][address(msg.sender)].field_0:
                                    if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                        uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                    else:
                                        if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                else:
                                    if not ext_code.size(msg.sender):
                                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                        else:
                                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                    else:
                                        _1622 = mem[64]
                                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                                        mem[mem[64] + 68] = address(cd[4])
                                        mem[mem[64] + 100] = (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                        mem[mem[64] + 132] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                                        _1623 = mem[64]
                                        mem[mem[64]] = 132
                                        mem[64] = mem[64] + 164
                                        mem[_1623 + 32] = 0x6c6aad9100000000000000000000000000000000000000000000000000000000 or mem[_1623 + 36 len 28]
                                        _1626 = mem[_1623]
                                        t = _1623 + 32
                                        u = _1622 + 164
                                        s = mem[_1623]
                                        while s >= 32:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s - 32
                                            continue 
                                        mem[_1622 + floor32(mem[_1623]) + 164] = mem[_1623 + -(mem[_1623] % 32) + floor32(mem[_1623]) + 64 len mem[_1623] % 32] or Mask(8 * -(mem[_1623] % 32) + 32, -(8 * -(mem[_1623] % 32) + 32) + 256, mem[_1622 + floor32(mem[_1623]) + 164])
                                        call msg.sender.mem[_1622 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_1622 + 168 len _1626 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                            mem[_1622 + 284 len 12]
                                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                            else:
                                                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1622 + 265 len 31]
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                        else:
                                            mem[64] = _1622 + ceil32(return_data.size) + 165
                                            mem[_1622 + 164] = return_data.size
                                            mem[_1622 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                            mem[_1622 + ceil32(return_data.size) + 285 len 12]
                                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                            else:
                                                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_1622 + ceil32(return_data.size) + 266 len 31]
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                    else:
                        if (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256) * bonusMultiplier * sub_de44820b) / (block.number * bonusMultiplier) - (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256) * bonusMultiplier) != sub_de44820b:
                            revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256) * bonusMultiplier * sub_de44820b):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(wingAddress)
                            call wingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(wingAddress)
                            call wingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args beanAddress, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) < uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) += 0 / ext_call.return_data[0]
                                uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256) = block.number
                                require idx < ('cd', 36).length
                                _1178 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1178] = 0
                                mem[_1178 + 32] = 0
                                mem[_1178 + 64] = 0
                                mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                                mem[32] = 158
                                _1192 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1192] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)
                                mem[_1192 + 32] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                                mem[_1192 + 64] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512)
                                _1211 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1211] = 0
                                mem[_1211 + 32] = 0
                                mem[_1211 + 64] = 0
                                mem[0] = address(cd[4])
                                mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 159)
                                _1231 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1231] = uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0)
                                mem[_1231 + 32] = uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                mem[_1231 + 64] = userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_512
                                if userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_512 != msg.sender:
                                    revert with 0, '_harvest: only funder'
                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                    revert with 0, '_harvest: nothing to harvest'
                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                    if uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(wingAddress)
                                    staticcall wingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args beanAddress
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > ext_call.return_data[0]:
                                        revert with 0, 32, 37, 0x645f686172766573743a207761697420776861742e2e206e6f7420656e6f7567682057494e, mem[mem[64] + 105 len 27]
                                    mem[mem[64]] = 0x3fa0221800000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(cd[4])
                                    mem[mem[64] + 36] = -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                    require ext_code.size(beanAddress)
                                    call beanAddress.0x3fa02218 with:
                                         gas gas_remaining wei
                                        args address(cd[4]), -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = msg.sender
                                    mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 163) + 1
                                    if not sub_799352cb[address(cd[((32 * idx) + cd[36] + 36)])][1][address(msg.sender)].field_0:
                                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                        else:
                                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                    else:
                                        if not ext_code.size(msg.sender):
                                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                            else:
                                                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                        else:
                                            _1575 = mem[64]
                                            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[mem[64] + 68] = address(cd[4])
                                            mem[mem[64] + 100] = -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                            mem[mem[64] + 132] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                                            _1576 = mem[64]
                                            mem[mem[64]] = 132
                                            mem[64] = mem[64] + 164
                                            mem[_1576 + 32] = 0x6c6aad9100000000000000000000000000000000000000000000000000000000 or mem[_1576 + 36 len 28]
                                            _1579 = mem[_1576]
                                            t = _1576 + 32
                                            u = _1575 + 164
                                            s = mem[_1576]
                                            while s >= 32:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s - 32
                                                continue 
                                            mem[_1575 + floor32(mem[_1576]) + 164] = mem[_1576 + -(mem[_1576] % 32) + floor32(mem[_1576]) + 64 len mem[_1576] % 32] or Mask(8 * -(mem[_1576] % 32) + 32, -(8 * -(mem[_1576] % 32) + 32) + 256, mem[_1575 + floor32(mem[_1576]) + 164])
                                            call msg.sender.mem[_1575 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_1575 + 168 len _1579 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                                mem[_1575 + 284 len 12]
                                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                                else:
                                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1575 + 265 len 31]
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                            else:
                                                mem[64] = _1575 + ceil32(return_data.size) + 165
                                                mem[_1575 + 164] = return_data.size
                                                mem[_1575 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                                mem[_1575 + ceil32(return_data.size) + 285 len 12]
                                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                                else:
                                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[_1575 + ceil32(return_data.size) + 266 len 31]
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                else:
                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(wingAddress)
                                    staticcall wingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args beanAddress
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > ext_call.return_data[0]:
                                        revert with 0, 32, 37, 0x645f686172766573743a207761697420776861742e2e206e6f7420656e6f7567682057494e, mem[mem[64] + 105 len 27]
                                    mem[mem[64]] = 0x3fa0221800000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(cd[4])
                                    mem[mem[64] + 36] = (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                    require ext_code.size(beanAddress)
                                    call beanAddress.0x3fa02218 with:
                                         gas gas_remaining wei
                                        args address(cd[4]), (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = msg.sender
                                    mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 163) + 1
                                    if not sub_799352cb[address(cd[((32 * idx) + cd[36] + 36)])][1][address(msg.sender)].field_0:
                                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                        else:
                                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                    else:
                                        if not ext_code.size(msg.sender):
                                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                            else:
                                                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                        else:
                                            _1617 = mem[64]
                                            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[mem[64] + 68] = address(cd[4])
                                            mem[mem[64] + 100] = (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                            mem[mem[64] + 132] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                                            _1618 = mem[64]
                                            mem[mem[64]] = 132
                                            mem[64] = mem[64] + 164
                                            mem[_1618 + 32] = 0x6c6aad9100000000000000000000000000000000000000000000000000000000 or mem[_1618 + 36 len 28]
                                            _1621 = mem[_1618]
                                            t = _1618 + 32
                                            u = _1617 + 164
                                            s = mem[_1618]
                                            while s >= 32:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s - 32
                                                continue 
                                            mem[_1617 + floor32(mem[_1618]) + 164] = mem[_1618 + -(mem[_1618] % 32) + floor32(mem[_1618]) + 64 len mem[_1618] % 32] or Mask(8 * -(mem[_1618] % 32) + 32, -(8 * -(mem[_1618] % 32) + 32) + 256, mem[_1617 + floor32(mem[_1618]) + 164])
                                            call msg.sender.mem[_1617 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_1617 + 168 len _1621 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                                mem[_1617 + 284 len 12]
                                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                                else:
                                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1617 + 265 len 31]
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                            else:
                                                mem[64] = _1617 + ceil32(return_data.size) + 165
                                                mem[_1617 + 164] = return_data.size
                                                mem[_1617 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                                mem[_1617 + ceil32(return_data.size) + 285 len 12]
                                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                                else:
                                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[_1617 + ceil32(return_data.size) + 266 len 31]
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) < uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256) = block.number
                                require idx < ('cd', 36).length
                                _1190 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1190] = 0
                                mem[_1190 + 32] = 0
                                mem[_1190 + 64] = 0
                                mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                                mem[32] = 158
                                _1210 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1210] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)
                                mem[_1210 + 32] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                                mem[_1210 + 64] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512)
                                _1228 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1228] = 0
                                mem[_1228 + 32] = 0
                                mem[_1228 + 64] = 0
                                mem[0] = address(cd[4])
                                mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 159)
                                _1242 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1242] = uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0)
                                mem[_1242 + 32] = uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                mem[_1242 + 64] = userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_512
                                if userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_512 != msg.sender:
                                    revert with 0, '_harvest: only funder'
                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                    revert with 0, '_harvest: nothing to harvest'
                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                    if uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(wingAddress)
                                    staticcall wingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args beanAddress
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > ext_call.return_data[0]:
                                        revert with 0, 32, 37, 0x645f686172766573743a207761697420776861742e2e206e6f7420656e6f7567682057494e, mem[mem[64] + 105 len 27]
                                    mem[mem[64]] = 0x3fa0221800000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(cd[4])
                                    mem[mem[64] + 36] = -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                    require ext_code.size(beanAddress)
                                    call beanAddress.0x3fa02218 with:
                                         gas gas_remaining wei
                                        args address(cd[4]), -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = msg.sender
                                    mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 163) + 1
                                    if not sub_799352cb[address(cd[((32 * idx) + cd[36] + 36)])][1][address(msg.sender)].field_0:
                                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                        else:
                                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                    else:
                                        if not ext_code.size(msg.sender):
                                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                            else:
                                                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                        else:
                                            _1612 = mem[64]
                                            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[mem[64] + 68] = address(cd[4])
                                            mem[mem[64] + 100] = -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                            mem[mem[64] + 132] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                                            _1613 = mem[64]
                                            mem[mem[64]] = 132
                                            mem[64] = mem[64] + 164
                                            mem[_1613 + 32] = 0x6c6aad9100000000000000000000000000000000000000000000000000000000 or mem[_1613 + 36 len 28]
                                            _1616 = mem[_1613]
                                            t = _1613 + 32
                                            u = _1612 + 164
                                            s = mem[_1613]
                                            while s >= 32:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s - 32
                                                continue 
                                            mem[_1612 + floor32(mem[_1613]) + 164] = mem[_1613 + -(mem[_1613] % 32) + floor32(mem[_1613]) + 64 len mem[_1613] % 32] or Mask(8 * -(mem[_1613] % 32) + 32, -(8 * -(mem[_1613] % 32) + 32) + 256, mem[_1612 + floor32(mem[_1613]) + 164])
                                            call msg.sender.mem[_1612 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_1612 + 168 len _1616 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                                mem[_1612 + 284 len 12]
                                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                                else:
                                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1612 + 265 len 31]
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                            else:
                                                mem[64] = _1612 + ceil32(return_data.size) + 165
                                                mem[_1612 + 164] = return_data.size
                                                mem[_1612 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                                mem[_1612 + ceil32(return_data.size) + 285 len 12]
                                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                                else:
                                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[_1612 + ceil32(return_data.size) + 266 len 31]
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                else:
                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(wingAddress)
                                    staticcall wingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args beanAddress
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > ext_call.return_data[0]:
                                        revert with 0, 32, 37, 0x645f686172766573743a207761697420776861742e2e206e6f7420656e6f7567682057494e, mem[mem[64] + 105 len 27]
                                    mem[mem[64]] = 0x3fa0221800000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(cd[4])
                                    mem[mem[64] + 36] = (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                    require ext_code.size(beanAddress)
                                    call beanAddress.0x3fa02218 with:
                                         gas gas_remaining wei
                                        args address(cd[4]), (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = msg.sender
                                    mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 163) + 1
                                    if not sub_799352cb[address(cd[((32 * idx) + cd[36] + 36)])][1][address(msg.sender)].field_0:
                                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                        else:
                                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                    else:
                                        if not ext_code.size(msg.sender):
                                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                            else:
                                                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                        else:
                                            _1652 = mem[64]
                                            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[mem[64] + 68] = address(cd[4])
                                            mem[mem[64] + 100] = (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                            mem[mem[64] + 132] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                                            _1653 = mem[64]
                                            mem[mem[64]] = 132
                                            mem[64] = mem[64] + 164
                                            mem[_1653 + 32] = 0x6c6aad9100000000000000000000000000000000000000000000000000000000 or mem[_1653 + 36 len 28]
                                            _1656 = mem[_1653]
                                            t = _1653 + 32
                                            u = _1652 + 164
                                            s = mem[_1653]
                                            while s >= 32:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s - 32
                                                continue 
                                            mem[_1652 + floor32(mem[_1653]) + 164] = mem[_1653 + -(mem[_1653] % 32) + floor32(mem[_1653]) + 64 len mem[_1653] % 32] or Mask(8 * -(mem[_1653] % 32) + 32, -(8 * -(mem[_1653] % 32) + 32) + 256, mem[_1652 + floor32(mem[_1653]) + 164])
                                            call msg.sender.mem[_1652 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_1652 + 168 len _1656 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                                mem[_1652 + 284 len 12]
                                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                                else:
                                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1652 + 265 len 31]
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                            else:
                                                mem[64] = _1652 + ceil32(return_data.size) + 165
                                                mem[_1652 + 164] = return_data.size
                                                mem[_1652 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                                mem[_1652 + ceil32(return_data.size) + 285 len 12]
                                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                                else:
                                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[_1652 + ceil32(return_data.size) + 266 len 31]
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                        else:
                            if (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)) - (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)) / (block.number * bonusMultiplier * sub_de44820b) - (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256) * bonusMultiplier * sub_de44820b) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0):
                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(wingAddress)
                            call wingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)) - (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(wingAddress)
                            call wingAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args beanAddress, (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)) - (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)) - (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) < uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) += 0 / ext_call.return_data[0]
                                uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256) = block.number
                                require idx < ('cd', 36).length
                                _1189 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1189] = 0
                                mem[_1189 + 32] = 0
                                mem[_1189 + 64] = 0
                                mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                                mem[32] = 158
                                _1208 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1208] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)
                                mem[_1208 + 32] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                                mem[_1208 + 64] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512)
                                _1227 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1227] = 0
                                mem[_1227 + 32] = 0
                                mem[_1227 + 64] = 0
                                mem[0] = address(cd[4])
                                mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 159)
                                _1239 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1239] = uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0)
                                mem[_1239 + 32] = uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                mem[_1239 + 64] = userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_512
                                if userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_512 != msg.sender:
                                    revert with 0, '_harvest: only funder'
                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                    revert with 0, '_harvest: nothing to harvest'
                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                    if uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(wingAddress)
                                    staticcall wingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args beanAddress
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > ext_call.return_data[0]:
                                        revert with 0, 32, 37, 0x645f686172766573743a207761697420776861742e2e206e6f7420656e6f7567682057494e, mem[mem[64] + 105 len 27]
                                    mem[mem[64]] = 0x3fa0221800000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(cd[4])
                                    mem[mem[64] + 36] = -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                    require ext_code.size(beanAddress)
                                    call beanAddress.0x3fa02218 with:
                                         gas gas_remaining wei
                                        args address(cd[4]), -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = msg.sender
                                    mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 163) + 1
                                    if not sub_799352cb[address(cd[((32 * idx) + cd[36] + 36)])][1][address(msg.sender)].field_0:
                                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                        else:
                                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                    else:
                                        if not ext_code.size(msg.sender):
                                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                            else:
                                                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                        else:
                                            _1605 = mem[64]
                                            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[mem[64] + 68] = address(cd[4])
                                            mem[mem[64] + 100] = -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                            mem[mem[64] + 132] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                                            _1606 = mem[64]
                                            mem[mem[64]] = 132
                                            mem[64] = mem[64] + 164
                                            mem[_1606 + 32] = 0x6c6aad9100000000000000000000000000000000000000000000000000000000 or mem[_1606 + 36 len 28]
                                            _1609 = mem[_1606]
                                            t = _1606 + 32
                                            u = _1605 + 164
                                            s = mem[_1606]
                                            while s >= 32:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s - 32
                                                continue 
                                            mem[_1605 + floor32(mem[_1606]) + 164] = mem[_1606 + -(mem[_1606] % 32) + floor32(mem[_1606]) + 64 len mem[_1606] % 32] or Mask(8 * -(mem[_1606] % 32) + 32, -(8 * -(mem[_1606] % 32) + 32) + 256, mem[_1605 + floor32(mem[_1606]) + 164])
                                            call msg.sender.mem[_1605 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_1605 + 168 len _1609 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                                mem[_1605 + 284 len 12]
                                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                                else:
                                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1605 + 265 len 31]
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                            else:
                                                mem[64] = _1605 + ceil32(return_data.size) + 165
                                                mem[_1605 + 164] = return_data.size
                                                mem[_1605 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                                mem[_1605 + ceil32(return_data.size) + 285 len 12]
                                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                                else:
                                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[_1605 + ceil32(return_data.size) + 266 len 31]
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                else:
                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(wingAddress)
                                    staticcall wingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args beanAddress
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > ext_call.return_data[0]:
                                        revert with 0, 32, 37, 0x645f686172766573743a207761697420776861742e2e206e6f7420656e6f7567682057494e, mem[mem[64] + 105 len 27]
                                    mem[mem[64]] = 0x3fa0221800000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(cd[4])
                                    mem[mem[64] + 36] = (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                    require ext_code.size(beanAddress)
                                    call beanAddress.0x3fa02218 with:
                                         gas gas_remaining wei
                                        args address(cd[4]), (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = msg.sender
                                    mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 163) + 1
                                    if not sub_799352cb[address(cd[((32 * idx) + cd[36] + 36)])][1][address(msg.sender)].field_0:
                                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                        else:
                                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                    else:
                                        if not ext_code.size(msg.sender):
                                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                            else:
                                                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                        else:
                                            _1647 = mem[64]
                                            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[mem[64] + 68] = address(cd[4])
                                            mem[mem[64] + 100] = (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                            mem[mem[64] + 132] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                                            _1648 = mem[64]
                                            mem[mem[64]] = 132
                                            mem[64] = mem[64] + 164
                                            mem[_1648 + 32] = 0x6c6aad9100000000000000000000000000000000000000000000000000000000 or mem[_1648 + 36 len 28]
                                            _1651 = mem[_1648]
                                            t = _1648 + 32
                                            u = _1647 + 164
                                            s = mem[_1648]
                                            while s >= 32:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s - 32
                                                continue 
                                            mem[_1647 + floor32(mem[_1648]) + 164] = mem[_1648 + -(mem[_1648] % 32) + floor32(mem[_1648]) + 64 len mem[_1648] % 32] or Mask(8 * -(mem[_1648] % 32) + 32, -(8 * -(mem[_1648] % 32) + 32) + 256, mem[_1647 + floor32(mem[_1648]) + 164])
                                            call msg.sender.mem[_1647 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_1647 + 168 len _1651 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                                mem[_1647 + 284 len 12]
                                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                                else:
                                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1647 + 265 len 31]
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                            else:
                                                mem[64] = _1647 + ceil32(return_data.size) + 165
                                                mem[_1647 + 164] = return_data.size
                                                mem[_1647 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                                mem[_1647 + ceil32(return_data.size) + 285 len 12]
                                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                                else:
                                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[_1647 + ceil32(return_data.size) + 266 len 31]
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                            else:
                                if 10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)) - (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)) / totalAllocPoint / (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)) - (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)) - (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)) / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) < uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) += 10^12 * (block.number * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)) - (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256) * bonusMultiplier * sub_de44820b * uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)) / totalAllocPoint / ext_call.return_data[0]
                                uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256) = block.number
                                require idx < ('cd', 36).length
                                _1206 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1206] = 0
                                mem[_1206 + 32] = 0
                                mem[_1206 + 64] = 0
                                mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                                mem[32] = 158
                                _1226 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1226] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_0)
                                mem[_1226 + 32] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                                mem[_1226 + 64] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512)
                                _1236 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1236] = 0
                                mem[_1236 + 32] = 0
                                mem[_1236 + 64] = 0
                                mem[0] = address(cd[4])
                                mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 159)
                                _1250 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1250] = uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0)
                                mem[_1250 + 32] = uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                mem[_1250 + 64] = userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_512
                                if userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_512 != msg.sender:
                                    revert with 0, '_harvest: only funder'
                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                    revert with 0, '_harvest: nothing to harvest'
                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                    if uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(wingAddress)
                                    staticcall wingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args beanAddress
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > ext_call.return_data[0]:
                                        revert with 0, 32, 37, 0x645f686172766573743a207761697420776861742e2e206e6f7420656e6f7567682057494e, mem[mem[64] + 105 len 27]
                                    mem[mem[64]] = 0x3fa0221800000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(cd[4])
                                    mem[mem[64] + 36] = -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                    require ext_code.size(beanAddress)
                                    call beanAddress.0x3fa02218 with:
                                         gas gas_remaining wei
                                        args address(cd[4]), -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = msg.sender
                                    mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 163) + 1
                                    if not sub_799352cb[address(cd[((32 * idx) + cd[36] + 36)])][1][address(msg.sender)].field_0:
                                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                        else:
                                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                    else:
                                        if not ext_code.size(msg.sender):
                                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                            else:
                                                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                        else:
                                            _1642 = mem[64]
                                            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[mem[64] + 68] = address(cd[4])
                                            mem[mem[64] + 100] = -uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                            mem[mem[64] + 132] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                                            _1643 = mem[64]
                                            mem[mem[64]] = 132
                                            mem[64] = mem[64] + 164
                                            mem[_1643 + 32] = 0x6c6aad9100000000000000000000000000000000000000000000000000000000 or mem[_1643 + 36 len 28]
                                            _1646 = mem[_1643]
                                            t = _1643 + 32
                                            u = _1642 + 164
                                            s = mem[_1643]
                                            while s >= 32:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s - 32
                                                continue 
                                            mem[_1642 + floor32(mem[_1643]) + 164] = mem[_1643 + -(mem[_1643] % 32) + floor32(mem[_1643]) + 64 len mem[_1643] % 32] or Mask(8 * -(mem[_1643] % 32) + 32, -(8 * -(mem[_1643] % 32) + 32) + 256, mem[_1642 + floor32(mem[_1643]) + 164])
                                            call msg.sender.mem[_1642 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_1642 + 168 len _1646 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                                mem[_1642 + 284 len 12]
                                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                                else:
                                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1642 + 265 len 31]
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                            else:
                                                mem[64] = _1642 + ceil32(return_data.size) + 165
                                                mem[_1642 + 164] = return_data.size
                                                mem[_1642 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                                mem[_1642 + ceil32(return_data.size) + 285 len 12]
                                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                                else:
                                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[_1642 + ceil32(return_data.size) + 266 len 31]
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                else:
                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(wingAddress)
                                    staticcall wingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args beanAddress
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) > ext_call.return_data[0]:
                                        revert with 0, 32, 37, 0x645f686172766573743a207761697420776861742e2e206e6f7420656e6f7567682057494e, mem[mem[64] + 105 len 27]
                                    mem[mem[64]] = 0x3fa0221800000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(cd[4])
                                    mem[mem[64] + 36] = (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                    require ext_code.size(beanAddress)
                                    call beanAddress.0x3fa02218 with:
                                         gas gas_remaining wei
                                        args address(cd[4]), (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = msg.sender
                                    mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 163) + 1
                                    if not sub_799352cb[address(cd[((32 * idx) + cd[36] + 36)])][1][address(msg.sender)].field_0:
                                        if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                        else:
                                            if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                    else:
                                        if not ext_code.size(msg.sender):
                                            if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                            else:
                                                if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                    revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                        else:
                                            _1676 = mem[64]
                                            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                                            mem[mem[64] + 68] = address(cd[4])
                                            mem[mem[64] + 100] = (uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12) - uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256)
                                            mem[mem[64] + 132] = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_256)
                                            _1677 = mem[64]
                                            mem[mem[64]] = 132
                                            mem[64] = mem[64] + 164
                                            mem[_1677 + 32] = 0x6c6aad9100000000000000000000000000000000000000000000000000000000 or mem[_1677 + 36 len 28]
                                            _1680 = mem[_1677]
                                            t = _1677 + 32
                                            u = _1676 + 164
                                            s = mem[_1677]
                                            while s >= 32:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s - 32
                                                continue 
                                            mem[_1676 + floor32(mem[_1677]) + 164] = mem[_1677 + -(mem[_1677] % 32) + floor32(mem[_1677]) + 64 len mem[_1677] % 32] or Mask(8 * -(mem[_1677] % 32) + 32, -(8 * -(mem[_1677] % 32) + 32) + 256, mem[_1676 + floor32(mem[_1677]) + 164])
                                            call msg.sender.mem[_1676 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_1676 + 168 len _1680 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                                mem[_1676 + 284 len 12]
                                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                                else:
                                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                        revert with 0, 32, 33, 0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1676 + 265 len 31]
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
                                            else:
                                                mem[64] = _1676 + ceil32(return_data.size) + 165
                                                mem[_1676 + 164] = return_data.size
                                                mem[_1676 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x735f6d61737465724368656643616c6c65653a20206661696c656420746f2065786563757465206d61737465724368656643616c,
                                                                mem[_1676 + ceil32(return_data.size) + 285 len 12]
                                                if not uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0):
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = 0
                                                else:
                                                    if uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) != uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x47536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[_1676 + ceil32(return_data.size) + 266 len 31]
                                                    uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_256) = uint256(poolInfo[address(cd[((32 * idx) + cd[36] + 36)])].field_512) * uint256(userInfo[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[4])].field_0) / 10^12
        idx = idx + 1
        continue 
    stor101 = 1
}



}
