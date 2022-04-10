contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1)
#
address owner;
address tokenAddress;
uint256 sub_ac885651;
address stor3;
uint256 stor4;
uint256 stor5;
address burnAddress;
address stor7;
uint256 stor7;
address stor8;
uint256 minePrice;
uint8 saleActive;
mapping of struct userInfo;

function userInfo(address arg1) {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512
}

function saleActive() {
    return bool(saleActive)
}

function burnAddress() {
    return burnAddress
}

function minePrice() {
    return minePrice
}

function owner() {
    return owner
}

function sub_ac885651(?) {
    return sub_ac885651
}

function Token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function liquidityMining() {
    return stor3, stor4, stor5
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function startSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(stor7) = stor8
    minePrice = arg1
    saleActive = 1
}

function sub_e4c514fe(?) payable {
    require calldata.size - 4 >= 32
    if msg.value <= 0:
        revert with 0, 'Bet Must be Greater than 0'
    require msg.sender == address(stor7)
    minePrice = arg1
    saleActive = 1
}

function startMining(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor4:
        revert with 0, 'Mining already started'
    stor4 = arg1
}

function setTokens(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if tokenAddress:
        revert with 0, 'Tokens already set!'
    if stor3:
        revert with 0, 'Tokens already set!'
    tokenAddress = arg1
    stor3 = arg2
    stor4 = 0
    stor5 = 0
}

function setTokenPerBlock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6c546f6b656e2070657220626c6f636b2073686f756c642062652067726561746572207468616e2030,
                    mem[205 len 23]
    sub_ac885651 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
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
                    0x7256616c7565204d75737420457175616c2043757272656e7420507269636520666f7220746865204d696e,
                    mem[207 len 21]
    if msg.value <= 0:
        revert with 0, 'Bet Must be Greater than 0'
    require 1 == bool(saleActive)
    call address(stor7) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(stor7) = msg.sender or Mask(96, 160, uint256(stor7))
    saleActive = 0
}

function pendingRewards(address arg1) {
    require calldata.size - 4 >= 32
    if not stor4:
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
            if userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 < -userInfo[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256)
        if stor5 * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > stor5 * userInfo[address(arg1)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[address(arg1)].field_512 + (stor5 * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 < -userInfo[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256)
        if stor5 * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > stor5 * userInfo[address(arg1)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[address(arg1)].field_512 + (stor5 * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256)
    if stor4 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - stor4:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + stor5 < stor5:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 < -userInfo[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256)
        if (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor5 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / ext_call.return_data[0]) + stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor5 * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[address(arg1)].field_512 + ((0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor5 * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if (block.number * sub_ac885651) - (stor4 * sub_ac885651) / block.number - stor4 != sub_ac885651:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * sub_ac885651) - (stor4 * sub_ac885651):
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + stor5 < stor5:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 < -userInfo[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256)
        if (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor5 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / ext_call.return_data[0]) + stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor5 * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[address(arg1)].field_512 + ((0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor5 * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if (10^12 * block.number * sub_ac885651) - (10^12 * stor4 * sub_ac885651) / (block.number * sub_ac885651) - (stor4 * sub_ac885651) != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if ((10^12 * block.number * sub_ac885651) - (10^12 * stor4 * sub_ac885651) / ext_call.return_data[0]) + stor5 < stor5:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if userInfo[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256 < -userInfo[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[address(arg1)].field_512 - userInfo[address(arg1)].field_256)
    if ((10^12 * block.number * sub_ac885651) - (10^12 * stor4 * sub_ac885651) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor5 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != ((10^12 * block.number * sub_ac885651) - (10^12 * stor4 * sub_ac885651) / ext_call.return_data[0]) + stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[address(arg1)].field_256 > ((10^12 * block.number * sub_ac885651) - (10^12 * stor4 * sub_ac885651) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor5 * userInfo[address(arg1)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if userInfo[address(arg1)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (userInfo[address(arg1)].field_512 + (((10^12 * block.number * sub_ac885651) - (10^12 * stor4 * sub_ac885651) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (stor5 * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
}

function claim() {
    if not stor4:
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
                if (0 / ext_call.return_data[0]) + stor5 < stor5:
                    revert with 0, 'SafeMath: addition overflow'
                stor5 += 0 / ext_call.return_data[0]
            else:
                if (block.number * sub_ac885651) - (stor4 * sub_ac885651) / block.number - stor4 != sub_ac885651:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (block.number * sub_ac885651) - (stor4 * sub_ac885651):
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + stor5 < stor5:
                        revert with 0, 'SafeMath: addition overflow'
                    stor5 += 0 / ext_call.return_data[0]
                else:
                    if (10^12 * block.number * sub_ac885651) - (10^12 * stor4 * sub_ac885651) / (block.number * sub_ac885651) - (stor4 * sub_ac885651) != 10^12:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if ((10^12 * block.number * sub_ac885651) - (10^12 * stor4 * sub_ac885651) / ext_call.return_data[0]) + stor5 < stor5:
                        revert with 0, 'SafeMath: addition overflow'
                    stor5 += (10^12 * block.number * sub_ac885651) - (10^12 * stor4 * sub_ac885651) / ext_call.return_data[0]
        stor4 = block.number
    if not userInfo[msg.sender].field_0:
        if userInfo[msg.sender].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -userInfo[msg.sender].field_256 > 0:
            if -userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 < userInfo[msg.sender].field_512:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[msg.sender].field_512 -= userInfo[msg.sender].field_256
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            if -userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit Claim((-userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512), msg.sender);
                if -userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 > userInfo[msg.sender].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[msg.sender].field_512 = userInfo[msg.sender].field_256
            else:
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit Claim(ext_call.return_data[0], msg.sender);
                if ext_call.return_data[0] > userInfo[msg.sender].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[msg.sender].field_512 -= ext_call.return_data[0]
        else:
            if userInfo[msg.sender].field_512 > 0:
                if -userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 < userInfo[msg.sender].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender].field_512 -= userInfo[msg.sender].field_256
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                if -userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Claim((-userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512), msg.sender);
                    if -userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 > userInfo[msg.sender].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[msg.sender].field_512 = userInfo[msg.sender].field_256
                else:
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Claim(ext_call.return_data[0], msg.sender);
                    if ext_call.return_data[0] > userInfo[msg.sender].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[msg.sender].field_512 -= ext_call.return_data[0]
    else:
        if stor5 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[msg.sender].field_256 > stor5 * userInfo[msg.sender].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if (stor5 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 > 0:
            if (stor5 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 < userInfo[msg.sender].field_512:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[msg.sender].field_512 = (stor5 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            if (stor5 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (stor5 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit Claim(((stor5 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512), msg.sender);
                if (stor5 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 > userInfo[msg.sender].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[msg.sender].field_512 = -(stor5 * userInfo[msg.sender].field_0 / 10^12) + userInfo[msg.sender].field_256
            else:
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit Claim(ext_call.return_data[0], msg.sender);
                if ext_call.return_data[0] > userInfo[msg.sender].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[msg.sender].field_512 -= ext_call.return_data[0]
        else:
            if userInfo[msg.sender].field_512 > 0:
                if (stor5 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 < userInfo[msg.sender].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender].field_512 = (stor5 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                if (stor5 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (stor5 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Claim(((stor5 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512), msg.sender);
                    if (stor5 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 + userInfo[msg.sender].field_512 > userInfo[msg.sender].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[msg.sender].field_512 = -(stor5 * userInfo[msg.sender].field_0 / 10^12) + userInfo[msg.sender].field_256
                else:
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Claim(ext_call.return_data[0], msg.sender);
                    if ext_call.return_data[0] > userInfo[msg.sender].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[msg.sender].field_512 -= ext_call.return_data[0]
    if not userInfo[msg.sender].field_0:
        userInfo[msg.sender].field_256 = 0
    else:
        if stor5 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        userInfo[msg.sender].field_256 = stor5 * userInfo[msg.sender].field_0 / 10^12
}



}
