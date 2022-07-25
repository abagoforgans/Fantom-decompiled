contract main {




// =====================  Runtime code  =====================


const name = 'MetaDao'

const decimals = 18

const symbol = 'MetaDao'


address owner;
address stor1;
uint256 unlockTime;
address creatorAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;

function creator() payable {
    return creatorAddress
}

function totalSupply() payable {
    return totalSupply
}

function getUnlockTime() payable {
    return unlockTime
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
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

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function lock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    unlockTime = block.timestamp + arg1
    emit OwnershipTransferred(owner, 0);
}

function unlock() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73596f7520646f6e27742068617665207065726d697373696f6e20746f20756e6c6f63,
                    mem[199 len 29]
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7345524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        require arg2 / 100 >= 0
        require arg2 / 100 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2 / 100
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require balanceOf[stor3] + (arg2 / 100) >= balanceOf[stor3]
        balanceOf[stor3] += arg2 / 100
        emit Transfer(0, msg.sender, arg1);
        emit Transfer((arg2 / 100), msg.sender, creatorAddress);
        require arg2 / 100 <= arg2
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x7345524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        require arg2 - (arg2 / 100) <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100)
        require arg2 - (arg2 / 100) <= totalSupply
        totalSupply = totalSupply - arg2 + (arg2 / 100)
        emit Transfer((arg2 - (arg2 / 100)), msg.sender, 0);
    else:
        require arg2
        require 49 * arg2 / arg2 == 49
        require (49 * arg2 / 50) + (arg2 / 100) >= 49 * arg2 / 50
        require (49 * arg2 / 50) + (arg2 / 100) <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (49 * arg2 / 50) - (arg2 / 100)
        require balanceOf[address(arg1)] + (49 * arg2 / 50) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 49 * arg2 / 50
        require balanceOf[stor3] + (arg2 / 100) >= balanceOf[stor3]
        balanceOf[stor3] += arg2 / 100
        emit Transfer((49 * arg2 / 50), msg.sender, arg1);
        emit Transfer((arg2 / 100), msg.sender, creatorAddress);
        require (49 * arg2 / 50) + (arg2 / 100) <= arg2
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x7345524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        require arg2 - (49 * arg2 / 50) - (arg2 / 100) <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (49 * arg2 / 50) + (arg2 / 100)
        require arg2 - (49 * arg2 / 50) - (arg2 / 100) <= totalSupply
        totalSupply = totalSupply - arg2 + (49 * arg2 / 50) + (arg2 / 100)
        emit Transfer((arg2 - (49 * arg2 / 50) - (arg2 / 100)), msg.sender, 0);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if not arg3:
        require arg3 / 100 >= 0
        require arg3 / 100 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3 / 100
        require balanceOf[address(arg2)] >= balanceOf[address(arg2)]
        require balanceOf[stor3] + (arg3 / 100) >= balanceOf[stor3]
        balanceOf[stor3] += arg3 / 100
        emit Transfer(0, arg1, arg2);
        emit Transfer((arg3 / 100), arg1, creatorAddress);
        require arg3 / 100 <= arg3
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x7345524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        require arg3 - (arg3 / 100) <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100)
        require arg3 - (arg3 / 100) <= totalSupply
        totalSupply = totalSupply - arg3 + (arg3 / 100)
        emit Transfer((arg3 - (arg3 / 100)), arg1, 0);
    else:
        require arg3
        require 49 * arg3 / arg3 == 49
        require (49 * arg3 / 50) + (arg3 / 100) >= 49 * arg3 / 50
        require (49 * arg3 / 50) + (arg3 / 100) <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = balanceOf[address(arg1)] - (49 * arg3 / 50) - (arg3 / 100)
        require balanceOf[address(arg2)] + (49 * arg3 / 50) >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += 49 * arg3 / 50
        require balanceOf[stor3] + (arg3 / 100) >= balanceOf[stor3]
        balanceOf[stor3] += arg3 / 100
        emit Transfer((49 * arg3 / 50), arg1, arg2);
        emit Transfer((arg3 / 100), arg1, creatorAddress);
        require (49 * arg3 / 50) + (arg3 / 100) <= arg3
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x7345524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        require arg3 - (49 * arg3 / 50) - (arg3 / 100) <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (49 * arg3 / 50) + (arg3 / 100)
        require arg3 - (49 * arg3 / 50) - (arg3 / 100) <= totalSupply
        totalSupply = totalSupply - arg3 + (49 * arg3 / 50) + (arg3 / 100)
        emit Transfer((arg3 - (49 * arg3 / 50) - (arg3 / 100)), arg1, 0);
    return 1
}



}
