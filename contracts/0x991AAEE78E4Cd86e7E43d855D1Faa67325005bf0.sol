contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1)
#
address owner;
address farmTokenAddress;
uint256 tokensPerBlock;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 burnFee;
address stor9;
address _feeAddress;
address stor11;
uint256 minePrice;
uint8 saleActive;
uint256 multiplier;
mapping of struct userInfo;

function _feeAddress() {
    return _feeAddress
}

function userInfo(address arg1) {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512
}

function tokensPerBlock() {
    return tokensPerBlock
}

function multiplier() {
    return multiplier
}

function saleActive() {
    return bool(saleActive)
}

function minePrice() {
    return minePrice
}

function owner() {
    return owner
}

function farmToken() {
    return farmTokenAddress
}

function burnFee() {
    return burnFee
}

function _fallback() payable {
    revert
}

function liquidityMining() {
    return stor3, stor4, stor5, stor6
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setBurnFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    burnFee = arg1
}

function setMultiplier(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    multiplier = arg1
}

function startSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9 = stor11
    minePrice = arg1
    saleActive = 1
}

function startMining(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor4:
        revert with 0, 'Mining already started'
    stor4 = arg1
}

function setTokens(address arg1, address arg2) {
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
    stor6 = 0
}

function settokensPerBlock(uint256 arg1) {
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

function transferOwnership(address arg1) {
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

function sub_1b422813(?) payable {
    if minePrice != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x7756616c7565204d75737420457175616c2043757272656e7420507269636520666f7220746865204d696e,
                    mem[207 len 21]
    if msg.value <= 0:
        revert with 0, 'Bet Must be Greater than 0'
    require bool(saleActive) == 1
    if minePrice + (20000 * msg.value / 100000) < minePrice:
        revert with 0, 'SafeMath: addition overflow'
    minePrice += 20000 * msg.value / 100000
    call stor9 with:
       value 25 * 3600 * msg.value / 100000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor11 with:
       value 10000 * msg.value / 100000 wei
         gas 2300 * is_zero(value) wei
    stor9 = msg.sender
    _feeAddress = stor9
}

function pendingRewards(address arg1) {
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

function claim() {
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
            if (100000 * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000) <= ext_call.return_data[0]:
                call farmTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (100000 * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(farmTokenAddress)
                staticcall farmTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(farmTokenAddress)
                if 1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee <= ext_call.return_data[0]:
                    call farmTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor9, 1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Claim(((100000 * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000)), msg.sender);
                    if 1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (100000 * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000) + (1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee) > userInfo[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 - (100000 * userInfo[address(msg.sender)].field_512 / 100000) + (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee)
                else:
                    call farmTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor9, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Claim(((100000 * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000)), msg.sender);
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (100000 * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000) + ext_call.return_data[0] > userInfo[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 - (100000 * userInfo[address(msg.sender)].field_512 / 100000) + (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000) - ext_call.return_data[0]
            else:
                call farmTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(farmTokenAddress)
                staticcall farmTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(farmTokenAddress)
                if 1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee <= ext_call.return_data[0]:
                    call farmTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor9, 1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Claim(ext_call.return_data[0], msg.sender);
                    if ext_call.return_data[0] + (1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee) < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] + (1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee) > userInfo[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 - ext_call.return_data[0] - (1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee)
                else:
                    call farmTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor9, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Claim(ext_call.return_data[0], msg.sender);
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 2 * ext_call.return_data[0] > userInfo[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[address(msg.sender)].field_512 += -2 * ext_call.return_data[0]
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
                if (100000 * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000) <= ext_call.return_data[0]:
                    call farmTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (100000 * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(farmTokenAddress)
                    staticcall farmTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(farmTokenAddress)
                    if 1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee <= ext_call.return_data[0]:
                        call farmTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor9, 1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit Claim(((100000 * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000)), msg.sender);
                        if 1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (100000 * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000) + (1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee) > userInfo[address(msg.sender)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 - (100000 * userInfo[address(msg.sender)].field_512 / 100000) + (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee)
                    else:
                        call farmTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor9, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit Claim(((100000 * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000)), msg.sender);
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (100000 * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000) + ext_call.return_data[0] > userInfo[address(msg.sender)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 - (100000 * userInfo[address(msg.sender)].field_512 / 100000) + (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000) - ext_call.return_data[0]
                else:
                    call farmTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(farmTokenAddress)
                    staticcall farmTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(farmTokenAddress)
                    if 1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee <= ext_call.return_data[0]:
                        call farmTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor9, 1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit Claim(ext_call.return_data[0], msg.sender);
                        if ext_call.return_data[0] + (1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee) < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] + (1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee) > userInfo[address(msg.sender)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 - ext_call.return_data[0] - (1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee)
                    else:
                        call farmTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor9, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit Claim(ext_call.return_data[0], msg.sender);
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 2 * ext_call.return_data[0] > userInfo[address(msg.sender)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[address(msg.sender)].field_512 += -2 * ext_call.return_data[0]
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
            if (100000 * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000) <= ext_call.return_data[0]:
                call farmTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (100000 * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(farmTokenAddress)
                staticcall farmTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(farmTokenAddress)
                if 1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee <= ext_call.return_data[0]:
                    call farmTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor9, 1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Claim(((100000 * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000)), msg.sender);
                    if 1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (100000 * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000) + (1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee) > userInfo[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 - (100000 * userInfo[address(msg.sender)].field_512 / 100000) + (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee)
                else:
                    call farmTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor9, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Claim(((100000 * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000)), msg.sender);
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (100000 * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000) + ext_call.return_data[0] > userInfo[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 - (100000 * userInfo[address(msg.sender)].field_512 / 100000) + (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000) - ext_call.return_data[0]
            else:
                call farmTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(farmTokenAddress)
                staticcall farmTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(farmTokenAddress)
                if 1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee <= ext_call.return_data[0]:
                    call farmTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor9, 1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Claim(ext_call.return_data[0], msg.sender);
                    if ext_call.return_data[0] + (1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee) < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] + (1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee) > userInfo[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 - ext_call.return_data[0] - (1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee)
                else:
                    call farmTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor9, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Claim(ext_call.return_data[0], msg.sender);
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 2 * ext_call.return_data[0] > userInfo[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[address(msg.sender)].field_512 += -2 * ext_call.return_data[0]
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
                if (100000 * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000) <= ext_call.return_data[0]:
                    call farmTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (100000 * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(farmTokenAddress)
                    staticcall farmTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(farmTokenAddress)
                    if 1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee <= ext_call.return_data[0]:
                        call farmTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor9, 1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit Claim(((100000 * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000)), msg.sender);
                        if 1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (100000 * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000) + (1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee) > userInfo[address(msg.sender)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 - (100000 * userInfo[address(msg.sender)].field_512 / 100000) + (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee)
                    else:
                        call farmTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor9, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit Claim(((100000 * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000)), msg.sender);
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if (100000 * userInfo[address(msg.sender)].field_512 / 100000) - (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000) + ext_call.return_data[0] > userInfo[address(msg.sender)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 - (100000 * userInfo[address(msg.sender)].field_512 / 100000) + (1000 * burnFee * userInfo[address(msg.sender)].field_512 / 100000) - ext_call.return_data[0]
                else:
                    call farmTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(farmTokenAddress)
                    staticcall farmTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(farmTokenAddress)
                    if 1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee <= ext_call.return_data[0]:
                        call farmTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor9, 1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit Claim(ext_call.return_data[0], msg.sender);
                        if ext_call.return_data[0] + (1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee) < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] + (1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee) > userInfo[address(msg.sender)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[address(msg.sender)].field_512 = userInfo[address(msg.sender)].field_512 - ext_call.return_data[0] - (1000 * userInfo[address(msg.sender)].field_512 / 100000 * burnFee)
                    else:
                        call farmTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor9, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit Claim(ext_call.return_data[0], msg.sender);
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 2 * ext_call.return_data[0] > userInfo[address(msg.sender)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[address(msg.sender)].field_512 += -2 * ext_call.return_data[0]
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



}
