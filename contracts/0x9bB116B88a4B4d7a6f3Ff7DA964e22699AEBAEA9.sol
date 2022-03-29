contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address rewardAddress;
array of struct stor3;
mapping of uint256 stor4;
mapping of struct consumerInfo;
uint256 totalAllocPoint;
uint256 rewardPerBlock;
address devAddress;
address communityAddress;
address artistAddress;

function totalAllocPoint() payable {
    return totalAllocPoint
}

function consumerInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return consumerInfo[arg1].field_0, consumerInfo[arg1].field_256, consumerInfo[arg1].field_512
}

function reward() payable {
    return rewardAddress
}

function devAddress() payable {
    return devAddress
}

function isApprovedConsumer(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function communityAddress() payable {
    return communityAddress
}

function rewardPerBlock() payable {
    return rewardPerBlock
}

function owner() payable {
    return owner
}

function artistAddress() payable {
    return artistAddress
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

function setRewardPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    rewardPerBlock = arg1
}

function setDevAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, 32, 28, 0xfe526577617264537570706c6965723a20756e617574686f72697a6564000000
    devAddress = arg1
}

function setArtistAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, 32, 28, 0xfe526577617264537570706c6965723a20756e617574686f72697a6564000000
    artistAddress = arg1
}

function setCommunityAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    if communityAddress != msg.sender:
        revert with 0, 32, 28, 0xfe526577617264537570706c6965723a20756e617574686f72697a6564000000
    communityAddress = arg1
}

function setRewardOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(rewardAddress)
    call rewardAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function add(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor4[address(arg2)]:
        stor3.length++
        stor3[stor3.length].field_0 = arg2
        stor3[stor3.length].field_160 = 0
        stor4[address(arg2)] = stor3.length
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    consumerInfo[address(arg2)].field_0 = arg2
    consumerInfo[address(arg2)].field_256 = arg1
    consumerInfo[address(arg2)].field_512 = arg3
}

function set(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x73526577617264537570706c6965723a20636f6e73756d65722069736e277420617070726f7665,
                    mem[203 len 25]
    if arg2 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    if consumerInfo[address(arg1)].field_256 > arg2 + totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    totalAllocPoint = arg2 + totalAllocPoint - consumerInfo[address(arg1)].field_256
    consumerInfo[address(arg1)].field_256 = arg2
}

function remove(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x73526577617264537570706c6965723a20636f6e73756d65722069736e277420617070726f7665,
                    mem[203 len 25]
    if stor4[address(arg1)]:
        require stor3.length - 1 < stor3.length
        require stor4[address(arg1)] - 1 < stor3.length
        stor3[stor4[address(arg1)]].field_0 = stor3[stor3.length].field_0
        stor4[stor3[stor3.length].field_0] = stor4[address(arg1)]
        require stor3.length
        stor3[stor3.length].field_0 = 0
        stor3.length--
        stor4[address(arg1)] = 0
    if consumerInfo[address(arg1)].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    totalAllocPoint -= consumerInfo[address(arg1)].field_256
    consumerInfo[address(arg1)].field_0 = 0
    consumerInfo[address(arg1)].field_256 = 0
    consumerInfo[address(arg1)].field_512 = 0
}

function preview(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x73526577617264537570706c6965723a20636f6e73756d65722069736e277420617070726f7665,
                    mem[203 len 25]
    if consumerInfo[address(arg1)].field_512 >= arg2:
        if consumerInfo[address(arg1)].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - consumerInfo[address(arg1)].field_512:
            return 0
        if (block.number * rewardPerBlock) - (consumerInfo[address(arg1)].field_512 * rewardPerBlock) / block.number - consumerInfo[address(arg1)].field_512 != rewardPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.number * rewardPerBlock) - (consumerInfo[address(arg1)].field_512 * rewardPerBlock):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                return 0
            if 8 * 0 / totalAllocPoint / 0 / totalAllocPoint != 8:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return (8 * 0 / totalAllocPoint / 10)
        if (block.number * rewardPerBlock * consumerInfo[address(arg1)].field_256) - (consumerInfo[address(arg1)].field_512 * rewardPerBlock * consumerInfo[address(arg1)].field_256) / (block.number * rewardPerBlock) - (consumerInfo[address(arg1)].field_512 * rewardPerBlock) != consumerInfo[address(arg1)].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.number * rewardPerBlock * consumerInfo[address(arg1)].field_256) - (consumerInfo[address(arg1)].field_512 * rewardPerBlock * consumerInfo[address(arg1)].field_256) / totalAllocPoint:
            return 0
        if 8 * (block.number * rewardPerBlock * consumerInfo[address(arg1)].field_256) - (consumerInfo[address(arg1)].field_512 * rewardPerBlock * consumerInfo[address(arg1)].field_256) / totalAllocPoint / (block.number * rewardPerBlock * consumerInfo[address(arg1)].field_256) - (consumerInfo[address(arg1)].field_512 * rewardPerBlock * consumerInfo[address(arg1)].field_256) / totalAllocPoint != 8:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (8 * (block.number * rewardPerBlock * consumerInfo[address(arg1)].field_256) - (consumerInfo[address(arg1)].field_512 * rewardPerBlock * consumerInfo[address(arg1)].field_256) / totalAllocPoint / 10)
    if arg2 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - arg2:
        return 0
    if (block.number * rewardPerBlock) - (arg2 * rewardPerBlock) / block.number - arg2 != rewardPerBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * rewardPerBlock) - (arg2 * rewardPerBlock):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            return 0
        if 8 * 0 / totalAllocPoint / 0 / totalAllocPoint != 8:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (8 * 0 / totalAllocPoint / 10)
    if (block.number * rewardPerBlock * consumerInfo[address(arg1)].field_256) - (arg2 * rewardPerBlock * consumerInfo[address(arg1)].field_256) / (block.number * rewardPerBlock) - (arg2 * rewardPerBlock) != consumerInfo[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * rewardPerBlock * consumerInfo[address(arg1)].field_256) - (arg2 * rewardPerBlock * consumerInfo[address(arg1)].field_256) / totalAllocPoint:
        return 0
    if 8 * (block.number * rewardPerBlock * consumerInfo[address(arg1)].field_256) - (arg2 * rewardPerBlock * consumerInfo[address(arg1)].field_256) / totalAllocPoint / (block.number * rewardPerBlock * consumerInfo[address(arg1)].field_256) - (arg2 * rewardPerBlock * consumerInfo[address(arg1)].field_256) / totalAllocPoint != 8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (8 * (block.number * rewardPerBlock * consumerInfo[address(arg1)].field_256) - (arg2 * rewardPerBlock * consumerInfo[address(arg1)].field_256) / totalAllocPoint / 10)
}

function distribute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor4[address(msg.sender)]:
        revert with 0, 32, 28, 0xfe526577617264537570706c6965723a20756e617574686f72697a6564000000
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if consumerInfo[address(msg.sender)].field_512 >= arg1:
        if consumerInfo[address(msg.sender)].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - consumerInfo[address(msg.sender)].field_512:
            stor1 = 1
            return 0
        consumerInfo[address(msg.sender)].field_512 = block.number
        if (block.number * rewardPerBlock) - (consumerInfo[address(msg.sender)].field_512 * rewardPerBlock) / block.number - consumerInfo[address(msg.sender)].field_512 != rewardPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.number * rewardPerBlock) - (consumerInfo[address(msg.sender)].field_512 * rewardPerBlock):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            require ext_code.size(rewardAddress)
            call rewardAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddress, 0 / totalAllocPoint / 20
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(rewardAddress)
            call rewardAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args artistAddress, 0 / totalAllocPoint / 20
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(rewardAddress)
            call rewardAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args communityAddress, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 / totalAllocPoint / 20 > 0 / totalAllocPoint:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 / totalAllocPoint / 20 > (0 / totalAllocPoint) - (0 / totalAllocPoint / 20):
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 / totalAllocPoint / 10 > (0 / totalAllocPoint) - (2 * 0 / totalAllocPoint / 20):
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(rewardAddress)
            call rewardAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, (0 / totalAllocPoint) - (2 * 0 / totalAllocPoint / 20) - (0 / totalAllocPoint / 10)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor1 = 1
            return ((0 / totalAllocPoint) - (2 * 0 / totalAllocPoint / 20) - (0 / totalAllocPoint / 10))
        if (block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / (block.number * rewardPerBlock) - (consumerInfo[address(msg.sender)].field_512 * rewardPerBlock) != consumerInfo[address(msg.sender)].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        require ext_code.size(rewardAddress)
        call rewardAddress.0x40c10f19 with:
             gas gas_remaining wei
            args devAddress, (block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 20
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(rewardAddress)
        call rewardAddress.0x40c10f19 with:
             gas gas_remaining wei
            args artistAddress, (block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 20
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(rewardAddress)
        call rewardAddress.0x40c10f19 with:
             gas gas_remaining wei
            args communityAddress, (block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if (block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 20 > (block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint:
            revert with 0, 'SafeMath: subtraction overflow'
        if (block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 20 > ((block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint) - ((block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 20):
            revert with 0, 'SafeMath: subtraction overflow'
        if (block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 10 > ((block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint) - (2 * (block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 20):
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(rewardAddress)
        call rewardAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, ((block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint) - (2 * (block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 20) - ((block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 10)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor1 = 1
        return (((block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint) - (2 * (block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 20) - ((block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (consumerInfo[address(msg.sender)].field_512 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 10))
    if arg1 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - arg1:
        stor1 = 1
        return 0
    consumerInfo[address(msg.sender)].field_512 = block.number
    if (block.number * rewardPerBlock) - (arg1 * rewardPerBlock) / block.number - arg1 != rewardPerBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * rewardPerBlock) - (arg1 * rewardPerBlock):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        require ext_code.size(rewardAddress)
        call rewardAddress.0x40c10f19 with:
             gas gas_remaining wei
            args devAddress, 0 / totalAllocPoint / 20
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(rewardAddress)
        call rewardAddress.0x40c10f19 with:
             gas gas_remaining wei
            args artistAddress, 0 / totalAllocPoint / 20
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(rewardAddress)
        call rewardAddress.0x40c10f19 with:
             gas gas_remaining wei
            args communityAddress, 0 / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0 / totalAllocPoint / 20 > 0 / totalAllocPoint:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 / totalAllocPoint / 20 > (0 / totalAllocPoint) - (0 / totalAllocPoint / 20):
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 / totalAllocPoint / 10 > (0 / totalAllocPoint) - (2 * 0 / totalAllocPoint / 20):
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(rewardAddress)
        call rewardAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, (0 / totalAllocPoint) - (2 * 0 / totalAllocPoint / 20) - (0 / totalAllocPoint / 10)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor1 = 1
        return ((0 / totalAllocPoint) - (2 * 0 / totalAllocPoint / 20) - (0 / totalAllocPoint / 10))
    if (block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / (block.number * rewardPerBlock) - (arg1 * rewardPerBlock) != consumerInfo[address(msg.sender)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    require ext_code.size(rewardAddress)
    call rewardAddress.0x40c10f19 with:
         gas gas_remaining wei
        args devAddress, (block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 20
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(rewardAddress)
    call rewardAddress.0x40c10f19 with:
         gas gas_remaining wei
        args artistAddress, (block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 20
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(rewardAddress)
    call rewardAddress.0x40c10f19 with:
         gas gas_remaining wei
        args communityAddress, (block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if (block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 20 > (block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if (block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 20 > ((block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint) - ((block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 20):
        revert with 0, 'SafeMath: subtraction overflow'
    if (block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 10 > ((block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint) - (2 * (block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 20):
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(rewardAddress)
    call rewardAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, ((block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint) - (2 * (block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 20) - ((block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 10)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
    return (((block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint) - (2 * (block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 20) - ((block.number * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) - (arg1 * rewardPerBlock * consumerInfo[address(msg.sender)].field_256) / totalAllocPoint / 10))
}



}
