contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#
address owner;
address farmTokenAddress;
uint256 tokensPerBlock;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 burnFee;
uint32 stor7;
address stor7;
uint256 minePrice;
uint8 saleActive;
uint8 presaleActive; offset 8
uint256 multiplier;
uint256 sub_571bb2cd;
mapping of struct userInfo;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512, userInfo[arg1].field_768
}

function tokensPerBlock() payable {
    return tokensPerBlock
}

function multiplier() payable {
    return multiplier
}

function presaleActive() payable {
    return bool(presaleActive)
}

function sub_571bb2cd(?) payable {
    return sub_571bb2cd
}

function saleActive() payable {
    return bool(saleActive)
}

function minePrice() payable {
    return minePrice
}

function owner() payable {
    return owner
}

function farmToken() payable {
    return farmTokenAddress
}

function burnFee() payable {
    return burnFee
}

function _fallback() payable {
    revert
}

function liquidityMining() payable {
    return stor3, stor4, stor5
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setBurnFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    burnFee = arg1
}

function setMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    multiplier = arg1
}

function startMining(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor4:
        revert with 0, 'Mining already started'
    stor4 = arg1
}

function setTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if farmTokenAddress:
        revert with 0, 'Tokens already set!'
    if stor3:
        revert with 0, 'Tokens already set!'
    farmTokenAddress = arg1
    stor3 = arg2
    stor4 = 0
    stor5 = 0
}

function settokensPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x64546f6b656e732070657220626c6f636b2073686f756c642062652067726561746572207468616e2030,
                    mem[206 len 22]
    tokensPerBlock = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function pendingRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor4 <= 0:
        revert with 0, 'Mining not yet started'
    if block.number < stor4:
        revert with 0, 'Mining not yet started'
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= stor4:
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512 < -userInfo[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512)
        require userInfo[address(arg1)].field_0
        if userInfo[address(arg1)].field_0 * stor5 / userInfo[address(arg1)].field_0 != stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * stor5 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((userInfo[address(arg1)].field_0 * stor5 / 10^12) - userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512)
    if not ext_call.return_data[0]:
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512 < -userInfo[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512)
        require userInfo[address(arg1)].field_0
        if userInfo[address(arg1)].field_0 * stor5 / userInfo[address(arg1)].field_0 != stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * stor5 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((userInfo[address(arg1)].field_0 * stor5 / 10^12) - userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512)
    if stor4 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - stor4:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if stor5 + (0 / ext_call.return_data[0]) < stor5:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512 < -userInfo[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512)
        require userInfo[address(arg1)].field_0
        if (stor5 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != stor5 + (0 / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > (stor5 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((stor5 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512)
    require block.number - stor4
    if (block.number * tokensPerBlock) - (stor4 * tokensPerBlock) / block.number - stor4 != tokensPerBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * tokensPerBlock) - (stor4 * tokensPerBlock):
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if stor5 + (0 / ext_call.return_data[0]) < stor5:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512 < -userInfo[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512)
        require userInfo[address(arg1)].field_0
        if (stor5 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != stor5 + (0 / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > (stor5 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((stor5 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512)
    require (block.number * tokensPerBlock) - (stor4 * tokensPerBlock)
    if (10^12 * block.number * tokensPerBlock) - (10^12 * stor4 * tokensPerBlock) / (block.number * tokensPerBlock) - (stor4 * tokensPerBlock) != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if stor5 + ((10^12 * block.number * tokensPerBlock) - (10^12 * stor4 * tokensPerBlock) / ext_call.return_data[0]) < stor5:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if userInfo[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512 < -userInfo[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (-userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512)
    require userInfo[address(arg1)].field_0
    if (stor5 * userInfo[address(arg1)].field_0) + ((10^12 * block.number * tokensPerBlock) - (10^12 * stor4 * tokensPerBlock) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != stor5 + ((10^12 * block.number * tokensPerBlock) - (10^12 * stor4 * tokensPerBlock) / ext_call.return_data[0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[address(arg1)].field_256 > (stor5 * userInfo[address(arg1)].field_0) + ((10^12 * block.number * tokensPerBlock) - (10^12 * stor4 * tokensPerBlock) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if userInfo[address(arg1)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (((stor5 * userInfo[address(arg1)].field_0) + ((10^12 * block.number * tokensPerBlock) - (10^12 * stor4 * tokensPerBlock) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256 + userInfo[address(arg1)].field_512)
}

function claim() payable {
    if stor4 <= 0:
        revert with 0, 'Mining not yet started'
    if block.number < stor4:
        revert with 0, 'Mining not yet started'
    if block.number > stor4:
        require ext_code.size(stor3)
        staticcall stor3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if stor4 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - stor4:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if stor5 + (0 / ext_call.return_data[0]) < stor5:
                    revert with 0, 'SafeMath: addition overflow'
                stor5 += 0 / ext_call.return_data[0]
            else:
                require block.number - stor4
                if (block.number * tokensPerBlock) - (stor4 * tokensPerBlock) / block.number - stor4 != tokensPerBlock:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (block.number * tokensPerBlock) - (stor4 * tokensPerBlock):
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if stor5 + (0 / ext_call.return_data[0]) < stor5:
                        revert with 0, 'SafeMath: addition overflow'
                    stor5 += 0 / ext_call.return_data[0]
                else:
                    require (block.number * tokensPerBlock) - (stor4 * tokensPerBlock)
                    if (10^12 * block.number * tokensPerBlock) - (10^12 * stor4 * tokensPerBlock) / (block.number * tokensPerBlock) - (stor4 * tokensPerBlock) != 10^12:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if stor5 + ((10^12 * block.number * tokensPerBlock) - (10^12 * stor4 * tokensPerBlock) / ext_call.return_data[0]) < stor5:
                        revert with 0, 'SafeMath: addition overflow'
                    stor5 += (10^12 * block.number * tokensPerBlock) - (10^12 * stor4 * tokensPerBlock) / ext_call.return_data[0]
        stor4 = block.number
    if not userInfo[address(msg.sender)].field_0:
        if userInfo[address(msg.sender)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -userInfo[address(msg.sender)].field_256 > 0:
            if userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 < userInfo[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[address(msg.sender)].field_512 -= userInfo[address(msg.sender)].field_256
            require ext_code.size(farmTokenAddress)
            staticcall farmTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(farmTokenAddress)
            if userInfo[address(msg.sender)].field_512 <= ext_call.return_data[0]:
                call farmTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, userInfo[address(msg.sender)].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit Claim(userInfo[address(msg.sender)].field_512, msg.sender);
                if userInfo[address(msg.sender)].field_512 > userInfo[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[address(msg.sender)].field_512 = 0
            else:
                call farmTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit Claim(ext_call.return_data[0], msg.sender);
                if ext_call.return_data[0] > userInfo[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[address(msg.sender)].field_512 -= ext_call.return_data[0]
        else:
            if userInfo[address(msg.sender)].field_512 > 0:
                if userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 < userInfo[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[address(msg.sender)].field_512 -= userInfo[address(msg.sender)].field_256
                require ext_code.size(farmTokenAddress)
                staticcall farmTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(farmTokenAddress)
                if userInfo[address(msg.sender)].field_512 <= ext_call.return_data[0]:
                    call farmTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, userInfo[address(msg.sender)].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Claim(userInfo[address(msg.sender)].field_512, msg.sender);
                    if userInfo[address(msg.sender)].field_512 > userInfo[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[address(msg.sender)].field_512 = 0
                else:
                    call farmTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Claim(ext_call.return_data[0], msg.sender);
                    if ext_call.return_data[0] > userInfo[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[address(msg.sender)].field_512 -= ext_call.return_data[0]
    else:
        require userInfo[address(msg.sender)].field_0
        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * stor5 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if (userInfo[address(msg.sender)].field_0 * stor5 / 10^12) - userInfo[address(msg.sender)].field_256 > 0:
            if userInfo[address(msg.sender)].field_512 + (userInfo[address(msg.sender)].field_0 * stor5 / 10^12) - userInfo[address(msg.sender)].field_256 < userInfo[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 + (userInfo[address(msg.sender)].field_0 * stor5 / 10^12) - userInfo[address(msg.sender)].field_256
            require ext_code.size(farmTokenAddress)
            staticcall farmTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(farmTokenAddress)
            if userInfo[address(msg.sender)].field_512 <= ext_call.return_data[0]:
                call farmTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, userInfo[address(msg.sender)].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit Claim(userInfo[address(msg.sender)].field_512, msg.sender);
                if userInfo[address(msg.sender)].field_512 > userInfo[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[address(msg.sender)].field_512 = 0
            else:
                call farmTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit Claim(ext_call.return_data[0], msg.sender);
                if ext_call.return_data[0] > userInfo[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[address(msg.sender)].field_512 -= ext_call.return_data[0]
        else:
            if userInfo[address(msg.sender)].field_512 > 0:
                if userInfo[address(msg.sender)].field_512 + (userInfo[address(msg.sender)].field_0 * stor5 / 10^12) - userInfo[address(msg.sender)].field_256 < userInfo[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 + (userInfo[address(msg.sender)].field_0 * stor5 / 10^12) - userInfo[address(msg.sender)].field_256
                require ext_code.size(farmTokenAddress)
                staticcall farmTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(farmTokenAddress)
                if userInfo[address(msg.sender)].field_512 <= ext_call.return_data[0]:
                    call farmTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, userInfo[address(msg.sender)].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Claim(userInfo[address(msg.sender)].field_512, msg.sender);
                    if userInfo[address(msg.sender)].field_512 > userInfo[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[address(msg.sender)].field_512 = 0
                else:
                    call farmTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Claim(ext_call.return_data[0], msg.sender);
                    if ext_call.return_data[0] > userInfo[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[address(msg.sender)].field_512 -= ext_call.return_data[0]
    if not userInfo[address(msg.sender)].field_0:
        userInfo[address(msg.sender)].field_256 = 0
    else:
        require userInfo[address(msg.sender)].field_0
        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor4 <= 0:
        revert with 0, 'Mining not yet started'
    if block.number < stor4:
        revert with 0, 'Mining not yet started'
    if block.number <= stor4:
        if userInfo[address(msg.sender)].field_0 <= 0:
            if arg1 <= 0:
                if not userInfo[address(msg.sender)].field_0:
                    userInfo[address(msg.sender)].field_256 = 0
                else:
                    require userInfo[address(msg.sender)].field_0
                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
            else:
                if userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000) < userInfo[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if ext_code.size(stor3) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call stor3 with:
                     gas gas_remaining wei
                    args Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), 
                                    msg.sender,
                                    address(this.address),
                                    (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                    if ext_code.size(stor3) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[488 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                    mem[612 len 4] = 0
                    call stor3 with:
                       funct uint32(stor7)
                         gas gas_remaining wei
                        args 1000 * arg1 / 100000 * burnFee, mem[424 len 60], mem[584 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), 
                                        msg.sender,
                                        address(this.address),
                                        (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[598 len 14],
                                        0,
                                        mem[616 len 4]
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                    else:
                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[520]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 22]
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 590 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 595 len 26]
                    if ext_code.size(stor3) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                    mem[ceil32(return_data.size) + 613 len 4] = 0
                    call stor3 with:
                       funct uint32(stor7)
                         gas gas_remaining wei
                        args 1000 * arg1 / 100000 * burnFee, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), 
                                        msg.sender,
                                        address(this.address),
                                        (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 599 len 14],
                                        0,
                                        mem[ceil32(return_data.size) + 617 len 4]
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 590 len 23],
                                            0,
                                            mem[ceil32(return_data.size) + 617 len 4]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                    else:
                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 521]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 600 len 22]
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 591 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
            emit Deposit(arg1, msg.sender);
        else:
            if not userInfo[address(msg.sender)].field_0:
                if userInfo[address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[address(msg.sender)].field_256 <= 0:
                    if arg1 <= 0:
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                    else:
                        if userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000) < userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if ext_code.size(stor3) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                        call stor3 with:
                             gas gas_remaining wei
                            args Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) << 480, mem[388 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), 
                                            msg.sender,
                                            address(this.address),
                                            (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[402 len 14],
                                            0,
                                            mem[420 len 4]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                            if ext_code.size(stor3) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[488 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                            mem[612 len 4] = 0
                            call stor3 with:
                               funct uint32(stor7)
                                 gas gas_remaining wei
                                args 1000 * arg1 / 100000 * burnFee, mem[424 len 60], mem[584 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), 
                                                msg.sender,
                                                address(this.address),
                                                (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[598 len 14],
                                                0,
                                                mem[616 len 4]
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                            else:
                                mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[520]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 599 len 22]
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 590 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                        else:
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 595 len 26]
                                if ext_code.size(stor3) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                mem[ceil32(return_data.size) + 613 len 4] = 0
                                call stor3 with:
                                   funct uint32(stor7)
                                     gas gas_remaining wei
                                    args 1000 * arg1 / 100000 * burnFee, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), 
                                                    msg.sender,
                                                    address(this.address),
                                                    (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 599 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 617 len 4]
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 590 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 617 len 4]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                else:
                                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 521]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                            else:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 403 len 22]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 595 len 26]
                                if ext_code.size(stor3) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                mem[ceil32(return_data.size) + 613 len 4] = 0
                                call stor3 with:
                                   funct uint32(stor7)
                                     gas gas_remaining wei
                                    args 1000 * arg1 / 100000 * burnFee, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), 
                                                    msg.sender,
                                                    address(this.address),
                                                    (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 599 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 617 len 4]
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 590 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 617 len 4]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                else:
                                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 521]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 600 len 22]
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                else:
                    if userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 < userInfo[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[address(msg.sender)].field_512 -= userInfo[address(msg.sender)].field_256
                    if arg1 <= 0:
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                    else:
                        if userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000) < userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if ext_code.size(stor3) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                        call stor3 with:
                             gas gas_remaining wei
                            args Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) << 480, mem[388 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), 
                                            msg.sender,
                                            address(this.address),
                                            (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[402 len 14],
                                            0,
                                            mem[420 len 4]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                            if ext_code.size(stor3) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[488 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                            mem[612 len 4] = 0
                            call stor3 with:
                               funct uint32(stor7)
                                 gas gas_remaining wei
                                args 1000 * arg1 / 100000 * burnFee, mem[424 len 60], mem[584 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), 
                                                msg.sender,
                                                address(this.address),
                                                (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[598 len 14],
                                                0,
                                                mem[616 len 4]
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                            else:
                                mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[520]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 599 len 22]
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 590 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                        else:
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 403 len 22]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if ext_code.size(stor3) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call stor3 with:
                               funct uint32(stor7)
                                 gas gas_remaining wei
                                args 1000 * arg1 / 100000 * burnFee, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), 
                                                msg.sender,
                                                address(this.address),
                                                (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 599 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 617 len 4]
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 590 len 23],
                                                    0,
                                                    mem[ceil32(return_data.size) + 617 len 4]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                            else:
                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 521]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                emit Deposit(arg1, msg.sender);
            else:
                require userInfo[address(msg.sender)].field_0
                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * stor5 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (userInfo[address(msg.sender)].field_0 * stor5 / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                    if arg1 <= 0:
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                    else:
                        if userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000) < userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if ext_code.size(stor3) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                        call stor3 with:
                             gas gas_remaining wei
                            args Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) << 480, mem[388 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), 
                                            msg.sender,
                                            address(this.address),
                                            (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[402 len 14],
                                            0,
                                            mem[420 len 4]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                            if ext_code.size(stor3) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[488 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                            mem[612 len 4] = 0
                            call stor3 with:
                               funct uint32(stor7)
                                 gas gas_remaining wei
                                args 1000 * arg1 / 100000 * burnFee, mem[424 len 60], mem[584 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), 
                                                msg.sender,
                                                address(this.address),
                                                (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[598 len 14],
                                                0,
                                                mem[616 len 4]
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                            else:
                                mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[520]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 599 len 22]
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 590 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                        else:
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 403 len 22]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if ext_code.size(stor3) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call stor3 with:
                               funct uint32(stor7)
                                 gas gas_remaining wei
                                args 1000 * arg1 / 100000 * burnFee, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), 
                                                msg.sender,
                                                address(this.address),
                                                (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 599 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 617 len 4]
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 590 len 23],
                                                    0,
                                                    mem[ceil32(return_data.size) + 617 len 4]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                            else:
                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 521]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                    emit Deposit(arg1, msg.sender);
                else:
                    if userInfo[address(msg.sender)].field_512 + (userInfo[address(msg.sender)].field_0 * stor5 / 10^12) - userInfo[address(msg.sender)].field_256 < userInfo[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 + (userInfo[address(msg.sender)].field_0 * stor5 / 10^12) - userInfo[address(msg.sender)].field_256
                    if arg1 <= 0:
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                        emit Deposit(arg1, msg.sender);
                    else:
                        if userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000) < userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if ext_code.size(stor3) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) >> 32
                        mem[416 len 4] = 0
                        call stor3 with:
                             gas gas_remaining wei
                            args Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) << 480, mem[388 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), 
                                            msg.sender,
                                            address(this.address),
                                            (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[402 len 14],
                                            0,
                                            mem[420 len 4]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                            if ext_code.size(stor3) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[488 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                            mem[612 len 4] = 0
                            call stor3 with:
                               funct uint32(stor7)
                                 gas gas_remaining wei
                                args Mask(224, 32, 1000 * arg1 / 100000 * burnFee) << 480, mem[584 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), 
                                                msg.sender,
                                                address(this.address),
                                                (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[598 len 14],
                                                0,
                                                mem[616 len 4]
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                            else:
                                mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[520]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 599 len 22]
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 590 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                            emit Deposit(arg1, msg.sender);
                        else:
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 595 len 26]
                                if ext_code.size(stor3) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                mem[ceil32(return_data.size) + 613 len 4] = 0
                                call stor3 with:
                                   funct uint32(stor7)
                                     gas gas_remaining wei
                                    args Mask(224, 32, 1000 * arg1 / 100000 * burnFee) << 480, mem[ceil32(return_data.size) + 585 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), 
                                                    msg.sender,
                                                    address(this.address),
                                                    (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 599 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 617 len 4]
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 590 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 617 len 4]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 521]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                    emit Deposit(address arg1, uint256 arg2):
                                                 arg1,
                                                 mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                 msg.sender,
                            else:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 403 len 22]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 595 len 26]
                                if ext_code.size(stor3) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                mem[ceil32(return_data.size) + 613 len 4] = 0
                                mem[ceil32(return_data.size) + 585 len 0] = 0
                                call stor3 with:
                                   funct uint32(stor7)
                                     gas gas_remaining wei
                                    args Mask(224, 32, 1000 * arg1 / 100000 * burnFee) << 480, mem[ceil32(return_data.size) + 585 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), 
                                                    msg.sender,
                                                    address(this.address),
                                                    (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 599 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 617 len 4]
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 590 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 617 len 4]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                else:
                                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 521]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 600 len 22]
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                emit Deposit(arg1, msg.sender);
    else:
        require ext_code.size(stor3)
        staticcall stor3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            stor4 = block.number
            if userInfo[address(msg.sender)].field_0 <= 0:
                if arg1 <= 0:
                    if not userInfo[address(msg.sender)].field_0:
                        userInfo[address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                else:
                    if userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000) < userInfo[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if ext_code.size(stor3) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
                    call stor3 with:
                         gas gas_remaining wei
                        args Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), 
                                        msg.sender,
                                        address(this.address),
                                        (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                        if ext_code.size(stor3) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[488 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                        mem[612 len 4] = 0
                        call stor3 with:
                           funct uint32(stor7)
                             gas gas_remaining wei
                            args 1000 * arg1 / 100000 * burnFee, mem[424 len 60], mem[584 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), 
                                            msg.sender,
                                            address(this.address),
                                            (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[598 len 14],
                                            0,
                                            mem[616 len 4]
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                        else:
                            mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[520]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 599 len 22]
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 590 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if ext_code.size(stor3) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call stor3 with:
                               funct uint32(stor7)
                                 gas gas_remaining wei
                                args 1000 * arg1 / 100000 * burnFee, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), 
                                                msg.sender,
                                                address(this.address),
                                                (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 599 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 617 len 4]
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 590 len 23],
                                                    0,
                                                    mem[ceil32(return_data.size) + 617 len 4]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                            else:
                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 521]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                        else:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if ext_code.size(stor3) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call stor3 with:
                               funct uint32(stor7)
                                 gas gas_remaining wei
                                args 1000 * arg1 / 100000 * burnFee, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), 
                                                msg.sender,
                                                address(this.address),
                                                (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 599 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 617 len 4]
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 590 len 23],
                                                    0,
                                                    mem[ceil32(return_data.size) + 617 len 4]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                            else:
                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 521]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 600 len 22]
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                emit Deposit(arg1, msg.sender);
            else:
                if not userInfo[address(msg.sender)].field_0:
                    if userInfo[address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[address(msg.sender)].field_256 > 0:
                        if userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 < userInfo[address(msg.sender)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[address(msg.sender)].field_512 -= userInfo[address(msg.sender)].field_256
                    if arg1 <= 0:
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                    else:
                        if userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000) < userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if ext_code.size(stor3) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                        call stor3 with:
                             gas gas_remaining wei
                            args Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) << 480, mem[388 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), 
                                            msg.sender,
                                            address(this.address),
                                            (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[402 len 14],
                                            0,
                                            mem[420 len 4]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                            if ext_code.size(stor3) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[488 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                            mem[612 len 4] = 0
                            call stor3 with:
                               funct uint32(stor7)
                                 gas gas_remaining wei
                                args 1000 * arg1 / 100000 * burnFee, mem[424 len 60], mem[584 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), 
                                                msg.sender,
                                                address(this.address),
                                                (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[598 len 14],
                                                0,
                                                mem[616 len 4]
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                            else:
                                mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[520]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 599 len 22]
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 590 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                        else:
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 403 len 22]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if ext_code.size(stor3) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call stor3 with:
                               funct uint32(stor7)
                                 gas gas_remaining wei
                                args 1000 * arg1 / 100000 * burnFee, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), 
                                                msg.sender,
                                                address(this.address),
                                                (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 599 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 617 len 4]
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 590 len 23],
                                                    0,
                                                    mem[ceil32(return_data.size) + 617 len 4]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                            else:
                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 521]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                    emit Deposit(arg1, msg.sender);
                else:
                    require userInfo[address(msg.sender)].field_0
                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * stor5 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (userInfo[address(msg.sender)].field_0 * stor5 / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                        else:
                            if userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000) < userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if ext_code.size(stor3) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) >> 32
                            mem[416 len 4] = 0
                            mem[388 len 0] = 0
                            call stor3 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) << 480, mem[388 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), 
                                                msg.sender,
                                                address(this.address),
                                                (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[402 len 14],
                                                0,
                                                mem[420 len 4]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                if ext_code.size(stor3) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[488 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                mem[612 len 4] = 0
                                call stor3 with:
                                   funct uint32(stor7)
                                     gas gas_remaining wei
                                    args 1000 * arg1 / 100000 * burnFee, mem[424 len 60], mem[584 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), 
                                                    msg.sender,
                                                    address(this.address),
                                                    (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[598 len 14],
                                                    0,
                                                    mem[616 len 4]
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                else:
                                    mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[520]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 22]
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 590 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                            else:
                                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size <= 0:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 595 len 26]
                                    if ext_code.size(stor3) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                    mem[ceil32(return_data.size) + 613 len 4] = 0
                                    call stor3 with:
                                       funct uint32(stor7)
                                         gas gas_remaining wei
                                        args 1000 * arg1 / 100000 * burnFee, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), 
                                                        msg.sender,
                                                        address(this.address),
                                                        (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 617 len 4]
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 590 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                    else:
                                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 521]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                else:
                                    require return_data.size >= 32
                                    if not mem[324]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 403 len 22]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 595 len 26]
                                    if ext_code.size(stor3) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                    mem[ceil32(return_data.size) + 613 len 4] = 0
                                    call stor3 with:
                                       funct uint32(stor7)
                                         gas gas_remaining wei
                                        args 1000 * arg1 / 100000 * burnFee, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), 
                                                        msg.sender,
                                                        address(this.address),
                                                        (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 617 len 4]
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 590 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                    else:
                                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 521]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 600 len 22]
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                        emit Deposit(arg1, msg.sender);
                    else:
                        if userInfo[address(msg.sender)].field_512 + (userInfo[address(msg.sender)].field_0 * stor5 / 10^12) - userInfo[address(msg.sender)].field_256 < userInfo[address(msg.sender)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 + (userInfo[address(msg.sender)].field_0 * stor5 / 10^12) - userInfo[address(msg.sender)].field_256
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                            emit Deposit(arg1, msg.sender);
                        else:
                            if userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000) < userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if ext_code.size(stor3) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) >> 32
                            mem[416 len 4] = 0
                            call stor3 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) << 480, mem[388 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), 
                                                msg.sender,
                                                address(this.address),
                                                (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[402 len 14],
                                                0,
                                                mem[420 len 4]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                if ext_code.size(stor3) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[488 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                mem[612 len 4] = 0
                                mem[584 len 0] = 0
                                call stor3 with:
                                   funct uint32(stor7)
                                     gas gas_remaining wei
                                    args Mask(224, 32, 1000 * arg1 / 100000 * burnFee) << 480, mem[584 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), 
                                                    msg.sender,
                                                    address(this.address),
                                                    (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[598 len 14],
                                                    0,
                                                    mem[616 len 4]
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                else:
                                    mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[520]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 22]
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 590 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size <= 0:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 595 len 26]
                                    if ext_code.size(stor3) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                    mem[ceil32(return_data.size) + 613 len 4] = 0
                                    call stor3 with:
                                       funct uint32(stor7)
                                         gas gas_remaining wei
                                        args Mask(224, 32, 1000 * arg1 / 100000 * burnFee) << 480, mem[ceil32(return_data.size) + 585 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), 
                                                        msg.sender,
                                                        address(this.address),
                                                        (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 617 len 4]
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 590 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 521]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                        emit Deposit(address arg1, uint256 arg2):
                                                     arg1,
                                                     mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                     msg.sender,
                                else:
                                    require return_data.size >= 32
                                    if not mem[324]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 403 len 22]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 595 len 26]
                                    if ext_code.size(stor3) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                    mem[ceil32(return_data.size) + 613 len 4] = 0
                                    mem[ceil32(return_data.size) + 585 len 0] = 0
                                    call stor3 with:
                                       funct uint32(stor7)
                                         gas gas_remaining wei
                                        args Mask(224, 32, 1000 * arg1 / 100000 * burnFee) << 480, mem[ceil32(return_data.size) + 585 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), 
                                                        msg.sender,
                                                        address(this.address),
                                                        (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 617 len 4]
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 590 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                    else:
                                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 521]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 600 len 22]
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                    emit Deposit(arg1, msg.sender);
        else:
            if stor4 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - stor4:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if stor5 + (0 / ext_call.return_data[0]) < stor5:
                    revert with 0, 'SafeMath: addition overflow'
                stor5 += 0 / ext_call.return_data[0]
                stor4 = block.number
                if userInfo[address(msg.sender)].field_0 <= 0:
                    if arg1 <= 0:
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                    else:
                        if userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000) < userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if ext_code.size(stor3) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                        call stor3 with:
                             gas gas_remaining wei
                            args Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) << 480, mem[388 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), 
                                            msg.sender,
                                            address(this.address),
                                            (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[402 len 14],
                                            0,
                                            mem[420 len 4]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                            if ext_code.size(stor3) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[488 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                            mem[612 len 4] = 0
                            call stor3 with:
                               funct uint32(stor7)
                                 gas gas_remaining wei
                                args 1000 * arg1 / 100000 * burnFee, mem[424 len 60], mem[584 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), 
                                                msg.sender,
                                                address(this.address),
                                                (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[598 len 14],
                                                0,
                                                mem[616 len 4]
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                            else:
                                mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[520]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 599 len 22]
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 590 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                        else:
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 403 len 22]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if ext_code.size(stor3) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call stor3 with:
                               funct uint32(stor7)
                                 gas gas_remaining wei
                                args 1000 * arg1 / 100000 * burnFee, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), 
                                                msg.sender,
                                                address(this.address),
                                                (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 599 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 617 len 4]
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 590 len 23],
                                                    0,
                                                    mem[ceil32(return_data.size) + 617 len 4]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                            else:
                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 521]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 600 len 22]
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                    emit Deposit(arg1, msg.sender);
                else:
                    if not userInfo[address(msg.sender)].field_0:
                        if userInfo[address(msg.sender)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userInfo[address(msg.sender)].field_256 > 0:
                            if userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 < userInfo[address(msg.sender)].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[address(msg.sender)].field_512 -= userInfo[address(msg.sender)].field_256
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                        else:
                            if userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000) < userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if ext_code.size(stor3) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) >> 32
                            mem[416 len 4] = 0
                            mem[388 len 0] = 0
                            call stor3 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) << 480, mem[388 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), 
                                                msg.sender,
                                                address(this.address),
                                                (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[402 len 14],
                                                0,
                                                mem[420 len 4]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                if ext_code.size(stor3) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[488 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                mem[612 len 4] = 0
                                call stor3 with:
                                   funct uint32(stor7)
                                     gas gas_remaining wei
                                    args 1000 * arg1 / 100000 * burnFee, mem[424 len 60], mem[584 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), 
                                                    msg.sender,
                                                    address(this.address),
                                                    (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[598 len 14],
                                                    0,
                                                    mem[616 len 4]
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                else:
                                    mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[520]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 22]
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 590 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                            else:
                                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size <= 0:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 595 len 26]
                                    if ext_code.size(stor3) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                    mem[ceil32(return_data.size) + 613 len 4] = 0
                                    call stor3 with:
                                       funct uint32(stor7)
                                         gas gas_remaining wei
                                        args 1000 * arg1 / 100000 * burnFee, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), 
                                                        msg.sender,
                                                        address(this.address),
                                                        (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 617 len 4]
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 590 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                    else:
                                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 521]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 600 len 22]
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                else:
                                    require return_data.size >= 32
                                    if not mem[324]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 403 len 22]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 595 len 26]
                                    if ext_code.size(stor3) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                    mem[ceil32(return_data.size) + 613 len 4] = 0
                                    call stor3 with:
                                       funct uint32(stor7)
                                         gas gas_remaining wei
                                        args 1000 * arg1 / 100000 * burnFee, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), 
                                                        msg.sender,
                                                        address(this.address),
                                                        (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 617 len 4]
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 590 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                    else:
                                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 521]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                        emit Deposit(arg1, msg.sender);
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * stor5 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (userInfo[address(msg.sender)].field_0 * stor5 / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                            if arg1 <= 0:
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                if userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000) < userInfo[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if ext_code.size(stor3) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) >> 32
                                mem[416 len 4] = 0
                                call stor3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) << 480, mem[388 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), 
                                                    msg.sender,
                                                    address(this.address),
                                                    (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[402 len 14],
                                                    0,
                                                    mem[420 len 4]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                    if ext_code.size(stor3) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[488 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                    mem[612 len 4] = 0
                                    mem[584 len 0] = 0
                                    call stor3 with:
                                       funct uint32(stor7)
                                         gas gas_remaining wei
                                        args Mask(224, 32, 1000 * arg1 / 100000 * burnFee) << 480, mem[584 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), 
                                                        msg.sender,
                                                        address(this.address),
                                                        (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[598 len 14],
                                                        0,
                                                        mem[616 len 4]
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                    else:
                                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[520]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 22]
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 590 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size <= 0:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 595 len 26]
                                        if ext_code.size(stor3) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                        mem[ceil32(return_data.size) + 613 len 4] = 0
                                        call stor3 with:
                                           funct uint32(stor7)
                                             gas gas_remaining wei
                                            args Mask(224, 32, 1000 * arg1 / 100000 * burnFee) << 480, mem[ceil32(return_data.size) + 585 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), 
                                                            msg.sender,
                                                            address(this.address),
                                                            (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 14],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 590 len 23],
                                                                0,
                                                                mem[ceil32(return_data.size) + 617 len 4]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 521]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                            emit Deposit(address arg1, uint256 arg2):
                                                         arg1,
                                                         mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                         msg.sender,
                                    else:
                                        require return_data.size >= 32
                                        if not mem[324]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 403 len 22]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 595 len 26]
                                        if ext_code.size(stor3) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                        mem[ceil32(return_data.size) + 613 len 4] = 0
                                        mem[ceil32(return_data.size) + 585 len 0] = 0
                                        call stor3 with:
                                           funct uint32(stor7)
                                             gas gas_remaining wei
                                            args Mask(224, 32, 1000 * arg1 / 100000 * burnFee) << 480, mem[ceil32(return_data.size) + 585 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), 
                                                            msg.sender,
                                                            address(this.address),
                                                            (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 14],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 590 len 23],
                                                                0,
                                                                mem[ceil32(return_data.size) + 617 len 4]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                        else:
                                            mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 521]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 600 len 22]
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                        emit Deposit(arg1, msg.sender);
                        else:
                            if userInfo[address(msg.sender)].field_512 + (userInfo[address(msg.sender)].field_0 * stor5 / 10^12) - userInfo[address(msg.sender)].field_256 < userInfo[address(msg.sender)].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 + (userInfo[address(msg.sender)].field_0 * stor5 / 10^12) - userInfo[address(msg.sender)].field_256
                            if arg1 <= 0:
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                            else:
                                if userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000) < userInfo[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if ext_code.size(stor3) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) >> 32
                                mem[416 len 4] = 0
                                mem[388 len 0] = 0
                                call stor3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) << 480, mem[388 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), 
                                                    msg.sender,
                                                    address(this.address),
                                                    (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[402 len 14],
                                                    0,
                                                    mem[420 len 4]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                    if ext_code.size(stor3) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[488 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                    mem[612 len 4] = 0
                                    call stor3 with:
                                       funct uint32(stor7)
                                         gas gas_remaining wei
                                        args 1000 * arg1 / 100000 * burnFee, mem[424 len 60], mem[584 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), 
                                                        msg.sender,
                                                        address(this.address),
                                                        (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[598 len 14],
                                                        0,
                                                        mem[616 len 4]
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                    else:
                                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[520]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 22]
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 590 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                else:
                                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[324]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 403 len 22]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 595 len 26]
                                    if ext_code.size(stor3) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                    mem[ceil32(return_data.size) + 613 len 4] = 0
                                    call stor3 with:
                                       funct uint32(stor7)
                                         gas gas_remaining wei
                                        args 1000 * arg1 / 100000 * burnFee, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), 
                                                        msg.sender,
                                                        address(this.address),
                                                        (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 617 len 4]
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 590 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                    else:
                                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 521]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 600 len 22]
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                            emit Deposit(arg1, msg.sender);
            else:
                require block.number - stor4
                if (block.number * tokensPerBlock) - (stor4 * tokensPerBlock) / block.number - stor4 != tokensPerBlock:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (block.number * tokensPerBlock) - (stor4 * tokensPerBlock):
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if stor5 + (0 / ext_call.return_data[0]) < stor5:
                        revert with 0, 'SafeMath: addition overflow'
                    stor5 += 0 / ext_call.return_data[0]
                    stor4 = block.number
                    if userInfo[address(msg.sender)].field_0 <= 0:
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                        else:
                            if userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000) < userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if ext_code.size(stor3) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) >> 32
                            mem[416 len 4] = 0
                            mem[388 len 0] = 0
                            call stor3 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) << 480, mem[388 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), 
                                                msg.sender,
                                                address(this.address),
                                                (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[402 len 14],
                                                0,
                                                mem[420 len 4]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                if ext_code.size(stor3) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[488 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                mem[612 len 4] = 0
                                call stor3 with:
                                   funct uint32(stor7)
                                     gas gas_remaining wei
                                    args 1000 * arg1 / 100000 * burnFee, mem[424 len 60], mem[584 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), 
                                                    msg.sender,
                                                    address(this.address),
                                                    (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[598 len 14],
                                                    0,
                                                    mem[616 len 4]
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                else:
                                    mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[520]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 22]
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 590 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                            else:
                                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[324]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 403 len 22]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 595 len 26]
                                if ext_code.size(stor3) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                mem[ceil32(return_data.size) + 613 len 4] = 0
                                call stor3 with:
                                   funct uint32(stor7)
                                     gas gas_remaining wei
                                    args 1000 * arg1 / 100000 * burnFee, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), 
                                                    msg.sender,
                                                    address(this.address),
                                                    (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 599 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 617 len 4]
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 590 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 617 len 4]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                else:
                                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 521]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 600 len 22]
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                        emit Deposit(arg1, msg.sender);
                    else:
                        if not userInfo[address(msg.sender)].field_0:
                            if userInfo[address(msg.sender)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[address(msg.sender)].field_256 <= 0:
                                if arg1 <= 0:
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                else:
                                    if userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000) < userInfo[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if ext_code.size(stor3) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) >> 32
                                    mem[416 len 4] = 0
                                    mem[388 len 0] = 0
                                    call stor3 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) << 480, mem[388 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), 
                                                        msg.sender,
                                                        address(this.address),
                                                        (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[402 len 14],
                                                        0,
                                                        mem[420 len 4]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                        if ext_code.size(stor3) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[488 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                        mem[612 len 4] = 0
                                        call stor3 with:
                                           funct uint32(stor7)
                                             gas gas_remaining wei
                                            args 1000 * arg1 / 100000 * burnFee, mem[424 len 60], mem[584 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), 
                                                            msg.sender,
                                                            address(this.address),
                                                            (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[598 len 14],
                                                            0,
                                                            mem[616 len 4]
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                        else:
                                            mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[520]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 599 len 22]
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 590 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                    else:
                                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size <= 0:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 595 len 26]
                                            if ext_code.size(stor3) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                            mem[ceil32(return_data.size) + 613 len 4] = 0
                                            call stor3 with:
                                               funct uint32(stor7)
                                                 gas gas_remaining wei
                                                args 1000 * arg1 / 100000 * burnFee, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0x23b872dd(?????), 
                                                                msg.sender,
                                                                address(this.address),
                                                                (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 599 len 14],
                                                                0,
                                                                mem[ceil32(return_data.size) + 617 len 4]
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 590 len 23],
                                                                    0,
                                                                    mem[ceil32(return_data.size) + 617 len 4]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                            else:
                                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 
                                                                'SafeERC20: low-level call failed',
                                                                mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 521]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                        else:
                                            require return_data.size >= 32
                                            if not mem[324]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 403 len 22]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 595 len 26]
                                            if ext_code.size(stor3) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                            mem[ceil32(return_data.size) + 613 len 4] = 0
                                            call stor3 with:
                                               funct uint32(stor7)
                                                 gas gas_remaining wei
                                                args 1000 * arg1 / 100000 * burnFee, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0x23b872dd(?????), 
                                                                msg.sender,
                                                                address(this.address),
                                                                (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 599 len 14],
                                                                0,
                                                                mem[ceil32(return_data.size) + 617 len 4]
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 590 len 23],
                                                                    0,
                                                                    mem[ceil32(return_data.size) + 617 len 4]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                            else:
                                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 521]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 600 len 22]
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                            else:
                                if userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 < userInfo[address(msg.sender)].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[address(msg.sender)].field_512 -= userInfo[address(msg.sender)].field_256
                                if arg1 <= 0:
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                else:
                                    if userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000) < userInfo[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if ext_code.size(stor3) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) >> 32
                                    mem[416 len 4] = 0
                                    mem[388 len 0] = 0
                                    call stor3 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) << 480, mem[388 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), 
                                                        msg.sender,
                                                        address(this.address),
                                                        (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[402 len 14],
                                                        0,
                                                        mem[420 len 4]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                        if ext_code.size(stor3) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[488 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                        mem[612 len 4] = 0
                                        call stor3 with:
                                           funct uint32(stor7)
                                             gas gas_remaining wei
                                            args 1000 * arg1 / 100000 * burnFee, mem[424 len 60], mem[584 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), 
                                                            msg.sender,
                                                            address(this.address),
                                                            (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[598 len 14],
                                                            0,
                                                            mem[616 len 4]
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                        else:
                                            mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[520]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 599 len 22]
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 590 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                    else:
                                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[324]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 403 len 22]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 595 len 26]
                                        if ext_code.size(stor3) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                        mem[ceil32(return_data.size) + 613 len 4] = 0
                                        call stor3 with:
                                           funct uint32(stor7)
                                             gas gas_remaining wei
                                            args 1000 * arg1 / 100000 * burnFee, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), 
                                                            msg.sender,
                                                            address(this.address),
                                                            (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 14],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 590 len 23],
                                                                0,
                                                                mem[ceil32(return_data.size) + 617 len 4]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                        else:
                                            mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 521]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 600 len 22]
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                            emit Deposit(arg1, msg.sender);
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * stor5 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (userInfo[address(msg.sender)].field_0 * stor5 / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                                if arg1 <= 0:
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    if userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000) < userInfo[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if ext_code.size(stor3) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) >> 32
                                    mem[416 len 4] = 0
                                    call stor3 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) << 480, mem[388 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), 
                                                        msg.sender,
                                                        address(this.address),
                                                        (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[402 len 14],
                                                        0,
                                                        mem[420 len 4]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                        if ext_code.size(stor3) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[488 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                        mem[612 len 4] = 0
                                        mem[584 len 0] = 0
                                        call stor3 with:
                                           funct uint32(stor7)
                                             gas gas_remaining wei
                                            args Mask(224, 32, 1000 * arg1 / 100000 * burnFee) << 480, mem[584 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), 
                                                            msg.sender,
                                                            address(this.address),
                                                            (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[598 len 14],
                                                            0,
                                                            mem[616 len 4]
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                        else:
                                            mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[520]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 599 len 22]
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 590 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size <= 0:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 595 len 26]
                                            if ext_code.size(stor3) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                            mem[ceil32(return_data.size) + 613 len 4] = 0
                                            mem[ceil32(return_data.size) + 585 len 0] = 0
                                            call stor3 with:
                                               funct uint32(stor7)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, 1000 * arg1 / 100000 * burnFee) << 480, mem[ceil32(return_data.size) + 585 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0x23b872dd(?????), 
                                                                msg.sender,
                                                                address(this.address),
                                                                (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 599 len 14],
                                                                0,
                                                                mem[ceil32(return_data.size) + 617 len 4]
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 590 len 23],
                                                                    0,
                                                                    mem[ceil32(return_data.size) + 617 len 4]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                            else:
                                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 521]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 600 len 22]
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            require return_data.size >= 32
                                            if not mem[324]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 403 len 22]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 595 len 26]
                                            if ext_code.size(stor3) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                            mem[ceil32(return_data.size) + 613 len 4] = 0
                                            call stor3 with:
                                               funct uint32(stor7)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, 1000 * arg1 / 100000 * burnFee) << 480, mem[ceil32(return_data.size) + 585 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0x23b872dd(?????), 
                                                                msg.sender,
                                                                address(this.address),
                                                                (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 599 len 14],
                                                                0,
                                                                mem[ceil32(return_data.size) + 617 len 4]
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 590 len 23],
                                                                    0,
                                                                    mem[ceil32(return_data.size) + 617 len 4]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 521]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                                emit Deposit(address arg1, uint256 arg2):
                                                             arg1,
                                                             mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                             msg.sender,
                            else:
                                if userInfo[address(msg.sender)].field_512 + (userInfo[address(msg.sender)].field_0 * stor5 / 10^12) - userInfo[address(msg.sender)].field_256 < userInfo[address(msg.sender)].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 + (userInfo[address(msg.sender)].field_0 * stor5 / 10^12) - userInfo[address(msg.sender)].field_256
                                if arg1 <= 0:
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                else:
                                    if userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000) < userInfo[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if ext_code.size(stor3) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) >> 32
                                    mem[416 len 4] = 0
                                    mem[388 len 0] = 0
                                    call stor3 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) << 480, mem[388 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), 
                                                        msg.sender,
                                                        address(this.address),
                                                        (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[402 len 14],
                                                        0,
                                                        mem[420 len 4]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                        if ext_code.size(stor3) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[488 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                        mem[612 len 4] = 0
                                        call stor3 with:
                                           funct uint32(stor7)
                                             gas gas_remaining wei
                                            args 1000 * arg1 / 100000 * burnFee, mem[424 len 60], mem[584 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), 
                                                            msg.sender,
                                                            address(this.address),
                                                            (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[598 len 14],
                                                            0,
                                                            mem[616 len 4]
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                        else:
                                            mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[520]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 599 len 22]
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 590 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                    else:
                                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size <= 0:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 595 len 26]
                                            if ext_code.size(stor3) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                            mem[ceil32(return_data.size) + 613 len 4] = 0
                                            call stor3 with:
                                               funct uint32(stor7)
                                                 gas gas_remaining wei
                                                args 1000 * arg1 / 100000 * burnFee, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0x23b872dd(?????), 
                                                                msg.sender,
                                                                address(this.address),
                                                                (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 599 len 14],
                                                                0,
                                                                mem[ceil32(return_data.size) + 617 len 4]
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 590 len 23],
                                                                    0,
                                                                    mem[ceil32(return_data.size) + 617 len 4]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                            else:
                                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 
                                                                'SafeERC20: low-level call failed',
                                                                mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 521]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                        else:
                                            require return_data.size >= 32
                                            if not mem[324]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 403 len 22]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 595 len 26]
                                            if ext_code.size(stor3) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                            mem[ceil32(return_data.size) + 613 len 4] = 0
                                            call stor3 with:
                                               funct uint32(stor7)
                                                 gas gas_remaining wei
                                                args 1000 * arg1 / 100000 * burnFee, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0x23b872dd(?????), 
                                                                msg.sender,
                                                                address(this.address),
                                                                (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 599 len 14],
                                                                0,
                                                                mem[ceil32(return_data.size) + 617 len 4]
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 590 len 23],
                                                                    0,
                                                                    mem[ceil32(return_data.size) + 617 len 4]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                            else:
                                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 521]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 600 len 22]
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                emit Deposit(arg1, msg.sender);
                else:
                    require (block.number * tokensPerBlock) - (stor4 * tokensPerBlock)
                    if (10^12 * block.number * tokensPerBlock) - (10^12 * stor4 * tokensPerBlock) / (block.number * tokensPerBlock) - (stor4 * tokensPerBlock) != 10^12:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if stor5 + ((10^12 * block.number * tokensPerBlock) - (10^12 * stor4 * tokensPerBlock) / ext_call.return_data[0]) < stor5:
                        revert with 0, 'SafeMath: addition overflow'
                    stor5 += (10^12 * block.number * tokensPerBlock) - (10^12 * stor4 * tokensPerBlock) / ext_call.return_data[0]
                    stor4 = block.number
                    if userInfo[address(msg.sender)].field_0 <= 0:
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                        else:
                            if userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000) < userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if ext_code.size(stor3) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) >> 32
                            mem[416 len 4] = 0
                            mem[388 len 0] = 0
                            call stor3 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) << 480, mem[388 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), 
                                                msg.sender,
                                                address(this.address),
                                                (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[402 len 14],
                                                0,
                                                mem[420 len 4]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                if ext_code.size(stor3) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[488 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                mem[612 len 4] = 0
                                call stor3 with:
                                   funct uint32(stor7)
                                     gas gas_remaining wei
                                    args 1000 * arg1 / 100000 * burnFee, mem[424 len 60], mem[584 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), 
                                                    msg.sender,
                                                    address(this.address),
                                                    (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[598 len 14],
                                                    0,
                                                    mem[616 len 4]
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                else:
                                    mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[520]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 22]
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 590 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                            else:
                                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[324]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 403 len 22]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 595 len 26]
                                if ext_code.size(stor3) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                mem[ceil32(return_data.size) + 613 len 4] = 0
                                call stor3 with:
                                   funct uint32(stor7)
                                     gas gas_remaining wei
                                    args 1000 * arg1 / 100000 * burnFee, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), 
                                                    msg.sender,
                                                    address(this.address),
                                                    (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 599 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 617 len 4]
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 590 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 617 len 4]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                else:
                                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 521]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                        emit Deposit(arg1, msg.sender);
                    else:
                        if not userInfo[address(msg.sender)].field_0:
                            if userInfo[address(msg.sender)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[address(msg.sender)].field_256 > 0:
                                if userInfo[address(msg.sender)].field_512 - userInfo[address(msg.sender)].field_256 < userInfo[address(msg.sender)].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[address(msg.sender)].field_512 -= userInfo[address(msg.sender)].field_256
                            if arg1 <= 0:
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                            else:
                                if userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000) < userInfo[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if ext_code.size(stor3) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) >> 32
                                mem[416 len 4] = 0
                                mem[388 len 0] = 0
                                call stor3 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) << 480, mem[388 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), 
                                                    msg.sender,
                                                    address(this.address),
                                                    (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[402 len 14],
                                                    0,
                                                    mem[420 len 4]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                    if ext_code.size(stor3) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[488 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                    mem[612 len 4] = 0
                                    call stor3 with:
                                       funct uint32(stor7)
                                         gas gas_remaining wei
                                        args 1000 * arg1 / 100000 * burnFee, mem[424 len 60], mem[584 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), 
                                                        msg.sender,
                                                        address(this.address),
                                                        (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[598 len 14],
                                                        0,
                                                        mem[616 len 4]
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                    else:
                                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[520]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 22]
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 590 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                else:
                                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[324]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 403 len 22]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 595 len 26]
                                    if ext_code.size(stor3) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                    mem[ceil32(return_data.size) + 613 len 4] = 0
                                    call stor3 with:
                                       funct uint32(stor7)
                                         gas gas_remaining wei
                                        args 1000 * arg1 / 100000 * burnFee, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), 
                                                        msg.sender,
                                                        address(this.address),
                                                        (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 617 len 4]
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 590 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                    else:
                                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 521]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                            emit Deposit(arg1, msg.sender);
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * stor5 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (userInfo[address(msg.sender)].field_0 * stor5 / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                                if arg1 <= 0:
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    if userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000) < userInfo[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if ext_code.size(stor3) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) >> 32
                                    mem[416 len 4] = 0
                                    call stor3 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) << 480, mem[388 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), 
                                                        msg.sender,
                                                        address(this.address),
                                                        (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[402 len 14],
                                                        0,
                                                        mem[420 len 4]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                        if ext_code.size(stor3) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[488 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                        mem[612 len 4] = 0
                                        call stor3 with:
                                           funct uint32(stor7)
                                             gas gas_remaining wei
                                            args Mask(224, 32, 1000 * arg1 / 100000 * burnFee) << 480, mem[584 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), 
                                                            msg.sender,
                                                            address(this.address),
                                                            (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[598 len 14],
                                                            0,
                                                            mem[616 len 4]
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                        else:
                                            mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[520]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 599 len 22]
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 590 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size <= 0:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 595 len 26]
                                            if ext_code.size(stor3) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                            mem[ceil32(return_data.size) + 613 len 4] = 0
                                            call stor3 with:
                                               funct uint32(stor7)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, 1000 * arg1 / 100000 * burnFee) << 480, mem[ceil32(return_data.size) + 585 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0x23b872dd(?????), 
                                                                msg.sender,
                                                                address(this.address),
                                                                (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 599 len 14],
                                                                0,
                                                                mem[ceil32(return_data.size) + 617 len 4]
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 590 len 23],
                                                                    0,
                                                                    mem[ceil32(return_data.size) + 617 len 4]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 521]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                                emit Deposit(address arg1, uint256 arg2):
                                                             arg1,
                                                             mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                             msg.sender,
                                        else:
                                            require return_data.size >= 32
                                            if not mem[324]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 403 len 22]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 595 len 26]
                                            if ext_code.size(stor3) <= 0:
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                            mem[ceil32(return_data.size) + 613 len 4] = 0
                                            mem[ceil32(return_data.size) + 585 len 0] = 0
                                            call stor3 with:
                                               funct uint32(stor7)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, 1000 * arg1 / 100000 * burnFee) << 480, mem[ceil32(return_data.size) + 585 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0x23b872dd(?????), 
                                                                msg.sender,
                                                                address(this.address),
                                                                (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 599 len 14],
                                                                0,
                                                                mem[ceil32(return_data.size) + 617 len 4]
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 590 len 23],
                                                                    0,
                                                                    mem[ceil32(return_data.size) + 617 len 4]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                            else:
                                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 521]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 600 len 22]
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                            emit Deposit(arg1, msg.sender);
                            else:
                                if userInfo[address(msg.sender)].field_512 + (userInfo[address(msg.sender)].field_0 * stor5 / 10^12) - userInfo[address(msg.sender)].field_256 < userInfo[address(msg.sender)].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 + (userInfo[address(msg.sender)].field_0 * stor5 / 10^12) - userInfo[address(msg.sender)].field_256
                                if arg1 <= 0:
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                else:
                                    if userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000) < userInfo[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[address(msg.sender)].field_0 = userInfo[address(msg.sender)].field_0 + (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if ext_code.size(stor3) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) >> 32
                                    mem[416 len 4] = 0
                                    call stor3 with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)) << 480, mem[388 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), 
                                                        msg.sender,
                                                        address(this.address),
                                                        (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[402 len 14],
                                                        0,
                                                        mem[420 len 4]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                        if ext_code.size(stor3) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[488 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                        mem[612 len 4] = 0
                                        mem[584 len 0] = 0
                                        call stor3 with:
                                           funct uint32(stor7)
                                             gas gas_remaining wei
                                            args Mask(224, 32, 1000 * arg1 / 100000 * burnFee) << 480, mem[584 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), 
                                                            msg.sender,
                                                            address(this.address),
                                                            (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[598 len 14],
                                                            0,
                                                            mem[616 len 4]
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                        else:
                                            mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[520]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 599 len 22]
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 590 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                    else:
                                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[324]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 403 len 22]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 595 len 26]
                                        if ext_code.size(stor3) <= 0:
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor7), Mask(224, 32, 1000 * arg1 / 100000 * burnFee) >> 32
                                        mem[ceil32(return_data.size) + 613 len 4] = 0
                                        mem[ceil32(return_data.size) + 585 len 0] = 0
                                        call stor3 with:
                                           funct uint32(stor7)
                                             gas gas_remaining wei
                                            args Mask(224, 32, 1000 * arg1 / 100000 * burnFee) << 480, mem[ceil32(return_data.size) + 585 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), 
                                                            msg.sender,
                                                            address(this.address),
                                                            (100000 * arg1 / 100000) - (1000 * burnFee * arg1 / 100000)
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 14],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 590 len 23],
                                                                0,
                                                                mem[ceil32(return_data.size) + 617 len 4]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                        else:
                                            mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 521]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 600 len 22]
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * stor5 / userInfo[address(msg.sender)].field_0 != stor5:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor5 / 10^12
                                emit Deposit(arg1, msg.sender);
}



}
