contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
address sub_b63d6cdaAddress;
uint256 startBlock;
uint256 sub_d9688ee1;
uint256 sub_f27866c4;
uint256 sub_69d30142;
uint256 sub_0f7b1c83;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
array of uint256 stor101051993584849178915136821395265346177868384823507754984078593667947067386056;
array of uint256 stor101051993584849178915136821395265346177868384823507754984078593667947067386057;
array of uint256 stor101051993584849178915136821395265346177868384823507754984078593667947067386058;
array of uint256 stor101051993584849178915136821395265346177868384823507754984078593667947067386059;
array of uint256 stor101051993584849178915136821395265346177868384823507754984078593667947067386060;

function name() payable {
    return name[0 len name.length]
}

function poolLength() payable {
    return poolInfo.length
}

function sub_0f7b1c83(?) payable {
    return sub_0f7b1c83
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function startBlock() payable {
    return startBlock
}

function sub_69d30142(?) payable {
    return sub_69d30142
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256, userInfo[arg1][arg2].field_512
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_b63d6cda(?) payable {
    return sub_b63d6cdaAddress
}

function sub_d9688ee1(?) payable {
    return sub_d9688ee1
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_f27866c4(?) payable {
    return sub_f27866c4
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getBlockCount(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg2 - arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function userLockedUntil(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_1024 + userInfo[arg1][address(arg2)].field_512 < userInfo[arg1][address(arg2)].field_512:
        revert with 0, 'SafeMath: addition overflow'
    return (poolInfo[arg1].field_1024 + userInfo[arg1][address(arg2)].field_512)
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

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    revert with 0, '_transfer: VampirePower cannot be transferred'
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    revert with 0, '_transfer: VampirePower cannot be transferred'
}

function sub_8d48ca74(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 >= poolInfo.length:
        revert with 0, 'pendingVam: BAD POOL'
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if not sub_f27866c4:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - poolInfo[arg1].field_512:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if sub_f27866c4 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_f27866c4
            if (0 / sub_f27866c4) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / sub_f27866c4 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / sub_f27866c4) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (0 / sub_f27866c4 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / sub_f27866c4 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if sub_f27866c4 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_f27866c4
        if (10^18 * 0 / totalAllocPoint / sub_f27866c4) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * 0 / totalAllocPoint / sub_f27866c4 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / sub_f27866c4) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / sub_f27866c4 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / sub_f27866c4 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sub_0f7b1c83) - (poolInfo[arg1].field_512 * sub_0f7b1c83) / block.number - poolInfo[arg1].field_512 != sub_0f7b1c83:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not (block.number * sub_0f7b1c83) - (poolInfo[arg1].field_512 * sub_0f7b1c83):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if sub_f27866c4 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_f27866c4
            if (0 / sub_f27866c4) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / sub_f27866c4 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / sub_f27866c4) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (0 / sub_f27866c4 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / sub_f27866c4 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if sub_f27866c4 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_f27866c4
        if (10^18 * 0 / totalAllocPoint / sub_f27866c4) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * 0 / totalAllocPoint / sub_f27866c4 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / sub_f27866c4) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / sub_f27866c4 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / sub_f27866c4 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sub_0f7b1c83 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_512 * sub_0f7b1c83 * poolInfo[arg1].field_0) / (block.number * sub_0f7b1c83) - (poolInfo[arg1].field_512 * sub_0f7b1c83) != poolInfo[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * sub_0f7b1c83 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_512 * sub_0f7b1c83 * poolInfo[arg1].field_0) / totalAllocPoint:
        if sub_f27866c4 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_f27866c4
        if (0 / sub_f27866c4) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / sub_f27866c4 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / sub_f27866c4) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (0 / sub_f27866c4 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / sub_f27866c4 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if 10^18 * (block.number * sub_0f7b1c83 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_512 * sub_0f7b1c83 * poolInfo[arg1].field_0) / totalAllocPoint / (block.number * sub_0f7b1c83 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_512 * sub_0f7b1c83 * poolInfo[arg1].field_0) / totalAllocPoint != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if sub_f27866c4 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_f27866c4
    if (10^18 * (block.number * sub_0f7b1c83 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_512 * sub_0f7b1c83 * poolInfo[arg1].field_0) / totalAllocPoint / sub_f27866c4) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^18 * (block.number * sub_0f7b1c83 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_512 * sub_0f7b1c83 * poolInfo[arg1].field_0) / totalAllocPoint / sub_f27866c4 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * (block.number * sub_0f7b1c83 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_512 * sub_0f7b1c83 * poolInfo[arg1].field_0) / totalAllocPoint / sub_f27866c4) + poolInfo[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if userInfo[arg1][address(arg2)].field_256 > (10^18 * (block.number * sub_0f7b1c83 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_512 * sub_0f7b1c83 * poolInfo[arg1].field_0) / totalAllocPoint / sub_f27866c4 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^18 * (block.number * sub_0f7b1c83 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_512 * sub_0f7b1c83 * poolInfo[arg1].field_0) / totalAllocPoint / sub_f27866c4 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 'updatePool: BAD POOL'
    if block.number > poolInfo[arg1].field_512:
        if sub_f27866c4:
            if poolInfo[arg1].field_0:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if (0 / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / totalAllocPoint) + sub_69d30142 <= sub_d9688ee1:
                        require ext_code.size(sub_b63d6cdaAddress)
                        call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (0 / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_69d30142 += 0 / totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if sub_f27866c4 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require sub_f27866c4
                            if (0 / sub_f27866c4) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / sub_f27866c4
                        else:
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if sub_f27866c4 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require sub_f27866c4
                            if (10^18 * 0 / totalAllocPoint / sub_f27866c4) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / sub_f27866c4
                    else:
                        if sub_69d30142 > sub_d9688ee1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_b63d6cdaAddress)
                        call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), sub_d9688ee1 - sub_69d30142
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_d9688ee1 < sub_69d30142:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_69d30142 = sub_d9688ee1
                        if not sub_d9688ee1 - sub_69d30142:
                            if sub_f27866c4 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require sub_f27866c4
                            if (0 / sub_f27866c4) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / sub_f27866c4
                        else:
                            if (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_d9688ee1 - sub_69d30142 != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if sub_f27866c4 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require sub_f27866c4
                            if ((10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4
                else:
                    if (block.number * sub_0f7b1c83) - (poolInfo[arg1].field_512 * sub_0f7b1c83) / block.number - poolInfo[arg1].field_512 != sub_0f7b1c83:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if not (block.number * sub_0f7b1c83) - (poolInfo[arg1].field_512 * sub_0f7b1c83):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if (0 / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / totalAllocPoint) + sub_69d30142 <= sub_d9688ee1:
                            require ext_code.size(sub_b63d6cdaAddress)
                            call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (0 / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_69d30142 += 0 / totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if sub_f27866c4 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_f27866c4
                                if (0 / sub_f27866c4) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / sub_f27866c4
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if sub_f27866c4 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_f27866c4
                                if (10^18 * 0 / totalAllocPoint / sub_f27866c4) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / sub_f27866c4
                        else:
                            if sub_69d30142 > sub_d9688ee1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_b63d6cdaAddress)
                            call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), sub_d9688ee1 - sub_69d30142
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if sub_d9688ee1 < sub_69d30142:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_69d30142 = sub_d9688ee1
                            if not sub_d9688ee1 - sub_69d30142:
                                if sub_f27866c4 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_f27866c4
                                if (0 / sub_f27866c4) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / sub_f27866c4
                            else:
                                if (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_d9688ee1 - sub_69d30142 != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if sub_f27866c4 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_f27866c4
                                if ((10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4
                    else:
                        if (block.number * sub_0f7b1c83 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_512 * sub_0f7b1c83 * poolInfo[arg1].field_0) / (block.number * sub_0f7b1c83) - (poolInfo[arg1].field_512 * sub_0f7b1c83) != poolInfo[arg1].field_0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if ((block.number * sub_0f7b1c83 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_512 * sub_0f7b1c83 * poolInfo[arg1].field_0) / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                            revert with 0, 'SafeMath: addition overflow'
                        if ((block.number * sub_0f7b1c83 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_512 * sub_0f7b1c83 * poolInfo[arg1].field_0) / totalAllocPoint) + sub_69d30142 <= sub_d9688ee1:
                            require ext_code.size(sub_b63d6cdaAddress)
                            call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * sub_0f7b1c83 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_512 * sub_0f7b1c83 * poolInfo[arg1].field_0) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((block.number * sub_0f7b1c83 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_512 * sub_0f7b1c83 * poolInfo[arg1].field_0) / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_69d30142 += (block.number * sub_0f7b1c83 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_512 * sub_0f7b1c83 * poolInfo[arg1].field_0) / totalAllocPoint
                            if not (block.number * sub_0f7b1c83 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_512 * sub_0f7b1c83 * poolInfo[arg1].field_0) / totalAllocPoint:
                                if sub_f27866c4 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_f27866c4
                                if (0 / sub_f27866c4) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / sub_f27866c4
                            else:
                                if 10^18 * (block.number * sub_0f7b1c83 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_512 * sub_0f7b1c83 * poolInfo[arg1].field_0) / totalAllocPoint / (block.number * sub_0f7b1c83 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_512 * sub_0f7b1c83 * poolInfo[arg1].field_0) / totalAllocPoint != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if sub_f27866c4 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_f27866c4
                                if (10^18 * (block.number * sub_0f7b1c83 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_512 * sub_0f7b1c83 * poolInfo[arg1].field_0) / totalAllocPoint / sub_f27866c4) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * (block.number * sub_0f7b1c83 * poolInfo[arg1].field_0) - (poolInfo[arg1].field_512 * sub_0f7b1c83 * poolInfo[arg1].field_0) / totalAllocPoint / sub_f27866c4
                        else:
                            if sub_69d30142 > sub_d9688ee1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_b63d6cdaAddress)
                            call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), sub_d9688ee1 - sub_69d30142
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if sub_d9688ee1 < sub_69d30142:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_69d30142 = sub_d9688ee1
                            if not sub_d9688ee1 - sub_69d30142:
                                if sub_f27866c4 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_f27866c4
                                if (0 / sub_f27866c4) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / sub_f27866c4
                            else:
                                if (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_d9688ee1 - sub_69d30142 != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if sub_f27866c4 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_f27866c4
                                if ((10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4
        poolInfo[arg1].field_512 = block.number
}

function updateAllPools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 12
        if block.number > poolInfo[idx].field_512:
            if sub_f27866c4:
                if poolInfo[idx].field_0:
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if (0 / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / totalAllocPoint) + sub_69d30142 <= sub_d9688ee1:
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(sub_b63d6cdaAddress)
                            call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (0 / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_69d30142 += 0 / totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if sub_f27866c4 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_f27866c4
                                if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / sub_f27866c4
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if sub_f27866c4 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_f27866c4
                                if (10^18 * 0 / totalAllocPoint / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / sub_f27866c4
                        else:
                            if sub_69d30142 > sub_d9688ee1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = sub_d9688ee1 - sub_69d30142
                            require ext_code.size(sub_b63d6cdaAddress)
                            call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), sub_d9688ee1 - sub_69d30142
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if sub_d9688ee1 < sub_69d30142:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_69d30142 = sub_d9688ee1
                            if not sub_d9688ee1 - sub_69d30142:
                                if sub_f27866c4 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_f27866c4
                                if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / sub_f27866c4
                            else:
                                if (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_d9688ee1 - sub_69d30142 != 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if sub_f27866c4 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_f27866c4
                                if ((10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4
                    else:
                        if (block.number * sub_0f7b1c83) - (poolInfo[idx].field_512 * sub_0f7b1c83) / block.number - poolInfo[idx].field_512 != sub_0f7b1c83:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.number * sub_0f7b1c83) - (poolInfo[idx].field_512 * sub_0f7b1c83):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if (0 / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / totalAllocPoint) + sub_69d30142 <= sub_d9688ee1:
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_b63d6cdaAddress)
                                call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (0 / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_69d30142 += 0 / totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / sub_f27866c4
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if (10^18 * 0 / totalAllocPoint / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / sub_f27866c4
                            else:
                                if sub_69d30142 > sub_d9688ee1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = sub_d9688ee1 - sub_69d30142
                                require ext_code.size(sub_b63d6cdaAddress)
                                call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), sub_d9688ee1 - sub_69d30142
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_d9688ee1 < sub_69d30142:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_69d30142 = sub_d9688ee1
                                if not sub_d9688ee1 - sub_69d30142:
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / sub_f27866c4
                                else:
                                    if (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_d9688ee1 - sub_69d30142 != 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if ((10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4
                        else:
                            if (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / (block.number * sub_0f7b1c83) - (poolInfo[idx].field_512 * sub_0f7b1c83) != poolInfo[idx].field_0:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if ((block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                revert with 0, 'SafeMath: addition overflow'
                            if ((block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint) + sub_69d30142 <= sub_d9688ee1:
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint
                                require ext_code.size(sub_b63d6cdaAddress)
                                call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ((block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_69d30142 += (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint
                                if not (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint:
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / sub_f27866c4
                                else:
                                    if 10^18 * (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint / (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint != 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if (10^18 * (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint / sub_f27866c4
                            else:
                                if sub_69d30142 > sub_d9688ee1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = sub_d9688ee1 - sub_69d30142
                                require ext_code.size(sub_b63d6cdaAddress)
                                call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), sub_d9688ee1 - sub_69d30142
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_d9688ee1 < sub_69d30142:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_69d30142 = sub_d9688ee1
                                if not sub_d9688ee1 - sub_69d30142:
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / sub_f27866c4
                                else:
                                    if (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_d9688ee1 - sub_69d30142 != 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if ((10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4
            poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
}

function setEmissionRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 12
        if block.number > poolInfo[idx].field_512:
            if sub_f27866c4:
                if poolInfo[idx].field_0:
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if (0 / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / totalAllocPoint) + sub_69d30142 <= sub_d9688ee1:
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(sub_b63d6cdaAddress)
                            call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (0 / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_69d30142 += 0 / totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if sub_f27866c4 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_f27866c4
                                if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / sub_f27866c4
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if sub_f27866c4 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_f27866c4
                                if (10^18 * 0 / totalAllocPoint / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / sub_f27866c4
                        else:
                            if sub_69d30142 > sub_d9688ee1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = sub_d9688ee1 - sub_69d30142
                            require ext_code.size(sub_b63d6cdaAddress)
                            call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), sub_d9688ee1 - sub_69d30142
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if sub_d9688ee1 < sub_69d30142:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_69d30142 = sub_d9688ee1
                            if not sub_d9688ee1 - sub_69d30142:
                                if sub_f27866c4 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_f27866c4
                                if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / sub_f27866c4
                            else:
                                if (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_d9688ee1 - sub_69d30142 != 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if sub_f27866c4 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_f27866c4
                                if ((10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4
                    else:
                        if (block.number * sub_0f7b1c83) - (poolInfo[idx].field_512 * sub_0f7b1c83) / block.number - poolInfo[idx].field_512 != sub_0f7b1c83:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.number * sub_0f7b1c83) - (poolInfo[idx].field_512 * sub_0f7b1c83):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if (0 / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / totalAllocPoint) + sub_69d30142 <= sub_d9688ee1:
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_b63d6cdaAddress)
                                call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (0 / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_69d30142 += 0 / totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / sub_f27866c4
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if (10^18 * 0 / totalAllocPoint / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / sub_f27866c4
                            else:
                                if sub_69d30142 > sub_d9688ee1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = sub_d9688ee1 - sub_69d30142
                                require ext_code.size(sub_b63d6cdaAddress)
                                call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), sub_d9688ee1 - sub_69d30142
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_d9688ee1 < sub_69d30142:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_69d30142 = sub_d9688ee1
                                if not sub_d9688ee1 - sub_69d30142:
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / sub_f27866c4
                                else:
                                    if (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_d9688ee1 - sub_69d30142 != 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if ((10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4
                        else:
                            if (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / (block.number * sub_0f7b1c83) - (poolInfo[idx].field_512 * sub_0f7b1c83) != poolInfo[idx].field_0:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if ((block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                revert with 0, 'SafeMath: addition overflow'
                            if ((block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint) + sub_69d30142 <= sub_d9688ee1:
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint
                                require ext_code.size(sub_b63d6cdaAddress)
                                call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ((block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_69d30142 += (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint
                                if not (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint:
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / sub_f27866c4
                                else:
                                    if 10^18 * (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint / (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint != 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if (10^18 * (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint / sub_f27866c4
                            else:
                                if sub_69d30142 > sub_d9688ee1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = sub_d9688ee1 - sub_69d30142
                                require ext_code.size(sub_b63d6cdaAddress)
                                call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), sub_d9688ee1 - sub_69d30142
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_d9688ee1 < sub_69d30142:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_69d30142 = sub_d9688ee1
                                if not sub_d9688ee1 - sub_69d30142:
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / sub_f27866c4
                                else:
                                    if (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_d9688ee1 - sub_69d30142 != 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if ((10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4
            poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
    sub_0f7b1c83 = arg1
}

function sub_dbbaa6d0(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 12
        if block.number > poolInfo[idx].field_512:
            if sub_f27866c4:
                if poolInfo[idx].field_0:
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if (0 / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / totalAllocPoint) + sub_69d30142 <= sub_d9688ee1:
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(sub_b63d6cdaAddress)
                            call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (0 / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_69d30142 += 0 / totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if sub_f27866c4 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_f27866c4
                                if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / sub_f27866c4
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if sub_f27866c4 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_f27866c4
                                if (10^18 * 0 / totalAllocPoint / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / sub_f27866c4
                        else:
                            if sub_69d30142 > sub_d9688ee1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = sub_d9688ee1 - sub_69d30142
                            require ext_code.size(sub_b63d6cdaAddress)
                            call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), sub_d9688ee1 - sub_69d30142
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if sub_d9688ee1 < sub_69d30142:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_69d30142 = sub_d9688ee1
                            if not sub_d9688ee1 - sub_69d30142:
                                if sub_f27866c4 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_f27866c4
                                if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / sub_f27866c4
                            else:
                                if (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_d9688ee1 - sub_69d30142 != 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if sub_f27866c4 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_f27866c4
                                if ((10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4
                    else:
                        if (block.number * sub_0f7b1c83) - (poolInfo[idx].field_512 * sub_0f7b1c83) / block.number - poolInfo[idx].field_512 != sub_0f7b1c83:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.number * sub_0f7b1c83) - (poolInfo[idx].field_512 * sub_0f7b1c83):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if (0 / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / totalAllocPoint) + sub_69d30142 <= sub_d9688ee1:
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_b63d6cdaAddress)
                                call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (0 / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_69d30142 += 0 / totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / sub_f27866c4
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if (10^18 * 0 / totalAllocPoint / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / sub_f27866c4
                            else:
                                if sub_69d30142 > sub_d9688ee1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = sub_d9688ee1 - sub_69d30142
                                require ext_code.size(sub_b63d6cdaAddress)
                                call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), sub_d9688ee1 - sub_69d30142
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_d9688ee1 < sub_69d30142:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_69d30142 = sub_d9688ee1
                                if not sub_d9688ee1 - sub_69d30142:
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / sub_f27866c4
                                else:
                                    if (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_d9688ee1 - sub_69d30142 != 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if ((10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4
                        else:
                            if (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / (block.number * sub_0f7b1c83) - (poolInfo[idx].field_512 * sub_0f7b1c83) != poolInfo[idx].field_0:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if ((block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                revert with 0, 'SafeMath: addition overflow'
                            if ((block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint) + sub_69d30142 <= sub_d9688ee1:
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint
                                require ext_code.size(sub_b63d6cdaAddress)
                                call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ((block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_69d30142 += (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint
                                if not (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint:
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / sub_f27866c4
                                else:
                                    if 10^18 * (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint / (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint != 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if (10^18 * (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint / sub_f27866c4
                            else:
                                if sub_69d30142 > sub_d9688ee1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = sub_d9688ee1 - sub_69d30142
                                require ext_code.size(sub_b63d6cdaAddress)
                                call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), sub_d9688ee1 - sub_69d30142
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_d9688ee1 < sub_69d30142:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_69d30142 = sub_d9688ee1
                                if not sub_d9688ee1 - sub_69d30142:
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / sub_f27866c4
                                else:
                                    if (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_d9688ee1 - sub_69d30142 != 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if ((10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4
            poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
    if arg1 < sub_69d30142:
        revert with 0, 'setTotalVam: BAD TOTALVAM'
    sub_d9688ee1 = arg1
}

function addPool(uint256 arg1, uint256 arg2, uint256 arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 12
            if block.number > poolInfo[idx].field_512:
                if sub_f27866c4:
                    if poolInfo[idx].field_0:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if (0 / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / totalAllocPoint) + sub_69d30142 <= sub_d9688ee1:
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_b63d6cdaAddress)
                                call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (0 / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_69d30142 += 0 / totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / sub_f27866c4
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if (10^18 * 0 / totalAllocPoint / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / sub_f27866c4
                            else:
                                if sub_69d30142 > sub_d9688ee1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = sub_d9688ee1 - sub_69d30142
                                require ext_code.size(sub_b63d6cdaAddress)
                                call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), sub_d9688ee1 - sub_69d30142
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_d9688ee1 < sub_69d30142:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_69d30142 = sub_d9688ee1
                                if not sub_d9688ee1 - sub_69d30142:
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / sub_f27866c4
                                else:
                                    if (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_d9688ee1 - sub_69d30142 != 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if ((10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4
                        else:
                            if (block.number * sub_0f7b1c83) - (poolInfo[idx].field_512 * sub_0f7b1c83) / block.number - poolInfo[idx].field_512 != sub_0f7b1c83:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.number * sub_0f7b1c83) - (poolInfo[idx].field_512 * sub_0f7b1c83):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if (0 / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / totalAllocPoint) + sub_69d30142 <= sub_d9688ee1:
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(sub_b63d6cdaAddress)
                                    call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (0 / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_69d30142 += 0 / totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if sub_f27866c4 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_f27866c4
                                        if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / sub_f27866c4
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if sub_f27866c4 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_f27866c4
                                        if (10^18 * 0 / totalAllocPoint / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / sub_f27866c4
                                else:
                                    if sub_69d30142 > sub_d9688ee1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = sub_d9688ee1 - sub_69d30142
                                    require ext_code.size(sub_b63d6cdaAddress)
                                    call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(this.address), sub_d9688ee1 - sub_69d30142
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_d9688ee1 < sub_69d30142:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_69d30142 = sub_d9688ee1
                                    if not sub_d9688ee1 - sub_69d30142:
                                        if sub_f27866c4 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_f27866c4
                                        if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / sub_f27866c4
                                    else:
                                        if (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_d9688ee1 - sub_69d30142 != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if sub_f27866c4 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_f27866c4
                                        if ((10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4
                            else:
                                if (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / (block.number * sub_0f7b1c83) - (poolInfo[idx].field_512 * sub_0f7b1c83) != poolInfo[idx].field_0:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if ((block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint) + sub_69d30142 <= sub_d9688ee1:
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint
                                    require ext_code.size(sub_b63d6cdaAddress)
                                    call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(this.address), (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ((block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_69d30142 += (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint
                                    if not (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint:
                                        if sub_f27866c4 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_f27866c4
                                        if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / sub_f27866c4
                                    else:
                                        if 10^18 * (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint / (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if sub_f27866c4 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_f27866c4
                                        if (10^18 * (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint / sub_f27866c4
                                else:
                                    if sub_69d30142 > sub_d9688ee1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = sub_d9688ee1 - sub_69d30142
                                    require ext_code.size(sub_b63d6cdaAddress)
                                    call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(this.address), sub_d9688ee1 - sub_69d30142
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_d9688ee1 < sub_69d30142:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_69d30142 = sub_d9688ee1
                                    if not sub_d9688ee1 - sub_69d30142:
                                        if sub_f27866c4 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_f27866c4
                                        if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / sub_f27866c4
                                    else:
                                        if (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_d9688ee1 - sub_69d30142 != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if sub_f27866c4 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_f27866c4
                                        if ((10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4
                poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg1
    storDF69[stor12.length] = arg2
    if block.number > startBlock:
        storDF69[stor12.length] = block.number
    else:
        storDF69[stor12.length] = startBlock
    storDF69[stor12.length] = 0
    storDF69[stor12.length] = arg3
    storDF69[stor12.length] = 0
}

function setPool(uint256 arg1, uint256 arg2, uint256 arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= poolInfo.length:
        revert with 0, 'setPool: BAD POOL'
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 12
            if block.number > poolInfo[idx].field_512:
                if sub_f27866c4:
                    if poolInfo[idx].field_0:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if (0 / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / totalAllocPoint) + sub_69d30142 <= sub_d9688ee1:
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_b63d6cdaAddress)
                                call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (0 / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_69d30142 += 0 / totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / sub_f27866c4
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if (10^18 * 0 / totalAllocPoint / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / sub_f27866c4
                            else:
                                if sub_69d30142 > sub_d9688ee1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = sub_d9688ee1 - sub_69d30142
                                require ext_code.size(sub_b63d6cdaAddress)
                                call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), sub_d9688ee1 - sub_69d30142
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_d9688ee1 < sub_69d30142:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_69d30142 = sub_d9688ee1
                                if not sub_d9688ee1 - sub_69d30142:
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / sub_f27866c4
                                else:
                                    if (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_d9688ee1 - sub_69d30142 != 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_f27866c4 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_f27866c4
                                    if ((10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4
                        else:
                            if (block.number * sub_0f7b1c83) - (poolInfo[idx].field_512 * sub_0f7b1c83) / block.number - poolInfo[idx].field_512 != sub_0f7b1c83:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.number * sub_0f7b1c83) - (poolInfo[idx].field_512 * sub_0f7b1c83):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if (0 / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / totalAllocPoint) + sub_69d30142 <= sub_d9688ee1:
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(sub_b63d6cdaAddress)
                                    call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (0 / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_69d30142 += 0 / totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if sub_f27866c4 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_f27866c4
                                        if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / sub_f27866c4
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if sub_f27866c4 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_f27866c4
                                        if (10^18 * 0 / totalAllocPoint / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / sub_f27866c4
                                else:
                                    if sub_69d30142 > sub_d9688ee1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = sub_d9688ee1 - sub_69d30142
                                    require ext_code.size(sub_b63d6cdaAddress)
                                    call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(this.address), sub_d9688ee1 - sub_69d30142
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_d9688ee1 < sub_69d30142:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_69d30142 = sub_d9688ee1
                                    if not sub_d9688ee1 - sub_69d30142:
                                        if sub_f27866c4 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_f27866c4
                                        if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / sub_f27866c4
                                    else:
                                        if (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_d9688ee1 - sub_69d30142 != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if sub_f27866c4 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_f27866c4
                                        if ((10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4
                            else:
                                if (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / (block.number * sub_0f7b1c83) - (poolInfo[idx].field_512 * sub_0f7b1c83) != poolInfo[idx].field_0:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if ((block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint) + sub_69d30142 <= sub_d9688ee1:
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint
                                    require ext_code.size(sub_b63d6cdaAddress)
                                    call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(this.address), (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ((block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint) + sub_69d30142 < sub_69d30142:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_69d30142 += (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint
                                    if not (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint:
                                        if sub_f27866c4 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_f27866c4
                                        if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / sub_f27866c4
                                    else:
                                        if 10^18 * (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint / (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if sub_f27866c4 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_f27866c4
                                        if (10^18 * (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * (block.number * sub_0f7b1c83 * poolInfo[idx].field_0) - (poolInfo[idx].field_512 * sub_0f7b1c83 * poolInfo[idx].field_0) / totalAllocPoint / sub_f27866c4
                                else:
                                    if sub_69d30142 > sub_d9688ee1:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = sub_d9688ee1 - sub_69d30142
                                    require ext_code.size(sub_b63d6cdaAddress)
                                    call sub_b63d6cdaAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(this.address), sub_d9688ee1 - sub_69d30142
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_d9688ee1 < sub_69d30142:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_69d30142 = sub_d9688ee1
                                    if not sub_d9688ee1 - sub_69d30142:
                                        if sub_f27866c4 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_f27866c4
                                        if (0 / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / sub_f27866c4
                                    else:
                                        if (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_d9688ee1 - sub_69d30142 != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if sub_f27866c4 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_f27866c4
                                        if ((10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += (10^18 * sub_d9688ee1) - (10^18 * sub_69d30142) / sub_f27866c4
                poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
    require arg1 < poolInfo.length
    if arg2 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    if poolInfo[arg1].field_0 > arg2 + totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_0
    require arg1 < poolInfo.length
    poolInfo[arg1].field_0 = arg2
    poolInfo[arg1].field_1024 = arg3
}



}
