contract main {




// =====================  Runtime code  =====================


const name = 'ftmsmartcoin'

const decimals = 18

const symbol = 'smart'


address _owner;
uint256 stor1;
uint256 totalSupply;
uint256 stor3;
mapping of uint256 stor4;
uint256 sub_f4d8f87b;
mapping of struct stakes;
mapping of uint256 sub_4196ace2;
mapping of uint256 allowance;

function totalSupply() payable {
    return totalSupply
}

function sub_4196ace2(?) payable {
    require calldata.size - 4 >= 32
    return sub_4196ace2[arg1]
}

function stakes(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return stakes[arg1][arg2].field_0, 
           stakes[arg1][arg2].field_256,
           stakes[arg1][arg2].field_512,
           stakes[arg1][arg2].field_768,
           stakes[arg1][arg2].field_1024,
           bool(stakes[arg1][arg2].field_1280)
}

function _owner() payable {
    return _owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_f4d8f87b(?) payable {
    return sub_f4d8f87b
}

function _fallback() payable {
    revert
}

function sub_81033aef(?) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f4d8f87b = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor3 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor3
    return (stor4[address(arg1)] / stor3)
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        if arg2 > allowance[address(msg.sender)][address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        if 0 > stor4[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor4[address(arg1)] < stor4[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
    else:
        require arg2
        if arg2 * stor3 / arg2 != stor3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg2 * stor3 > stor4[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        stor4[address(msg.sender)] += -1 * arg2 * stor3
        if stor4[address(arg1)] + (arg2 * stor3) < stor4[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        stor4[address(arg1)] += arg2 * stor3
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 < 10^14:
        revert with 0, 'Amount Too Low'
    stakes[address(msg.sender)][stor7[address(msg.sender)]].field_256 = arg1
    stakes[address(msg.sender)][stor7[address(msg.sender)]].field_0 = block.timestamp
    stakes[address(msg.sender)][stor7[address(msg.sender)]].field_768 = block.timestamp
    stakes[address(msg.sender)][stor7[address(msg.sender)]].field_1280 = 0
    sub_4196ace2[address(msg.sender)]++
    if not arg1:
        if 0 > stor4[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
    else:
        require arg1
        if arg1 * stor3 / arg1 != stor3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg1 * stor3 > stor4[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        stor4[address(msg.sender)] += -1 * arg1 * stor3
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    stor3 = stor1 / totalSupply
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if msg.sender == this.address:
        if not arg3:
            if 0 > stor4[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor4[address(arg2)] < stor4[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            require arg3
            if arg3 * stor3 / arg3 != stor3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg3 * stor3 > stor4[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            stor4[address(arg1)] += -1 * arg3 * stor3
            if stor4[address(arg2)] + (arg3 * stor3) < stor4[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            stor4[address(arg2)] += arg3 * stor3
    else:
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        if not arg3:
            if 0 > stor4[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor4[address(arg2)] < stor4[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            require arg3
            if arg3 * stor3 / arg3 != stor3:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if arg3 * stor3 > stor4[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            stor4[address(arg1)] += -1 * arg3 * stor3
            if stor4[address(arg2)] + (arg3 * stor3) < stor4[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            stor4[address(arg2)] += arg3 * stor3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function calcReward(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stakes[address(arg1)][arg2].field_1280:
        return 0
    if not stakes[address(arg1)][arg2].field_0:
        return 0
    if not block.timestamp - stakes[address(arg1)][arg2].field_768:
        if not stakes[address(arg1)][arg2].field_256:
            if stakes[address(arg1)][arg2].field_256:
                require stakes[address(arg1)][arg2].field_256
                if 0 / stakes[address(arg1)][arg2].field_256:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if stakes[address(msg.sender)][arg2].field_1024 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if stakes[address(msg.sender)][arg2].field_1024 <= 0:
                if stakes[address(arg1)][arg2].field_256:
                    require stakes[address(arg1)][arg2].field_256
                    if 0 / stakes[address(arg1)][arg2].field_256:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    else:
                        return 0
                else:
                    return 0
        else:
            require stakes[address(arg1)][arg2].field_256
            if stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / stakes[address(arg1)][arg2].field_256 != sub_f4d8f87b:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if stakes[address(arg1)][arg2].field_256:
                require stakes[address(arg1)][arg2].field_256
                if 0 / stakes[address(arg1)][arg2].field_256:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if stakes[address(msg.sender)][arg2].field_1024 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if stakes[address(msg.sender)][arg2].field_1024 <= stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / 100:
                if stakes[address(arg1)][arg2].field_256:
                    require stakes[address(arg1)][arg2].field_256
                    if 0 / stakes[address(arg1)][arg2].field_256:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    else:
                        return 0
                else:
                    return 0
    else:
        require block.timestamp - stakes[address(arg1)][arg2].field_768
        if (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(arg1)][arg2].field_768) / block.timestamp - stakes[address(arg1)][arg2].field_768 != 25462962962962:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not stakes[address(arg1)][arg2].field_256:
            if not stakes[address(arg1)][arg2].field_256:
                if stakes[address(msg.sender)][arg2].field_1024 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if stakes[address(msg.sender)][arg2].field_1024 <= 0:
                    if not stakes[address(arg1)][arg2].field_256:
                        return 0
                    require stakes[address(arg1)][arg2].field_256
                    if (25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / stakes[address(arg1)][arg2].field_256 != (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(arg1)][arg2].field_768):
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    return ((25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / 1000 * 10^18)
            else:
                require stakes[address(arg1)][arg2].field_256
                if (25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / stakes[address(arg1)][arg2].field_256 != (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(arg1)][arg2].field_768):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ((25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / 1000 * 10^18) + stakes[address(msg.sender)][arg2].field_1024 < (25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / 1000 * 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if ((25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / 1000 * 10^18) + stakes[address(msg.sender)][arg2].field_1024 <= 0:
                    if not stakes[address(arg1)][arg2].field_256:
                        return 0
                    require stakes[address(arg1)][arg2].field_256
                    if (25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / stakes[address(arg1)][arg2].field_256 != (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(arg1)][arg2].field_768):
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    return ((25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / 1000 * 10^18)
        else:
            require stakes[address(arg1)][arg2].field_256
            if stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / stakes[address(arg1)][arg2].field_256 != sub_f4d8f87b:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not stakes[address(arg1)][arg2].field_256:
                if stakes[address(msg.sender)][arg2].field_1024 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if stakes[address(msg.sender)][arg2].field_1024 <= stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / 100:
                    if not stakes[address(arg1)][arg2].field_256:
                        return 0
                    require stakes[address(arg1)][arg2].field_256
                    if (25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / stakes[address(arg1)][arg2].field_256 != (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(arg1)][arg2].field_768):
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    return ((25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / 1000 * 10^18)
            else:
                require stakes[address(arg1)][arg2].field_256
                if (25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / stakes[address(arg1)][arg2].field_256 != (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(arg1)][arg2].field_768):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ((25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / 1000 * 10^18) + stakes[address(msg.sender)][arg2].field_1024 < (25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / 1000 * 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if ((25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / 1000 * 10^18) + stakes[address(msg.sender)][arg2].field_1024 <= stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / 100:
                    if not stakes[address(arg1)][arg2].field_256:
                        return 0
                    require stakes[address(arg1)][arg2].field_256
                    if (25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / stakes[address(arg1)][arg2].field_256 != (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(arg1)][arg2].field_768):
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    return ((25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / 1000 * 10^18)
    if not stakes[address(arg1)][arg2].field_256:
        if stakes[address(msg.sender)][arg2].field_1024 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -stakes[address(msg.sender)][arg2].field_1024
    require stakes[address(arg1)][arg2].field_256
    if stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / stakes[address(arg1)][arg2].field_256 != sub_f4d8f87b:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if stakes[address(msg.sender)][arg2].field_1024 > stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / 100:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / 100) - stakes[address(msg.sender)][arg2].field_1024)
}

function calcClaim(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stakes[address(arg1)][arg2].field_1280:
        return 0
    if not stakes[address(arg1)][arg2].field_0:
        return 0
    if not block.timestamp - stakes[address(arg1)][arg2].field_768:
        if not stakes[address(arg1)][arg2].field_256:
            if stakes[address(msg.sender)][arg2].field_1024 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if stakes[address(msg.sender)][arg2].field_1024 <= 0:
                if stakes[address(msg.sender)][arg2].field_1024 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if stakes[address(msg.sender)][arg2].field_512 > stakes[address(msg.sender)][arg2].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (stakes[address(msg.sender)][arg2].field_1024 - stakes[address(msg.sender)][arg2].field_512)
        else:
            require stakes[address(arg1)][arg2].field_256
            if stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / stakes[address(arg1)][arg2].field_256 != sub_f4d8f87b:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if stakes[address(msg.sender)][arg2].field_1024 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if stakes[address(msg.sender)][arg2].field_1024 <= stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / 100:
                if stakes[address(msg.sender)][arg2].field_1024 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if stakes[address(msg.sender)][arg2].field_512 > stakes[address(msg.sender)][arg2].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (stakes[address(msg.sender)][arg2].field_1024 - stakes[address(msg.sender)][arg2].field_512)
        if not stakes[address(arg1)][arg2].field_256:
            if stakes[address(msg.sender)][arg2].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -stakes[address(msg.sender)][arg2].field_512
        require stakes[address(arg1)][arg2].field_256
        if stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / stakes[address(arg1)][arg2].field_256 != sub_f4d8f87b:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if stakes[address(msg.sender)][arg2].field_512 > stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / 100:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / 100) - stakes[address(msg.sender)][arg2].field_512)
    require block.timestamp - stakes[address(arg1)][arg2].field_768
    if (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(arg1)][arg2].field_768) / block.timestamp - stakes[address(arg1)][arg2].field_768 != 25462962962962:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not stakes[address(arg1)][arg2].field_256:
        if not (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(arg1)][arg2].field_768):
            if stakes[address(msg.sender)][arg2].field_1024 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if stakes[address(msg.sender)][arg2].field_1024 > 0:
                if not stakes[address(arg1)][arg2].field_256:
                    if stakes[address(msg.sender)][arg2].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -stakes[address(msg.sender)][arg2].field_512
                require stakes[address(arg1)][arg2].field_256
                if stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / stakes[address(arg1)][arg2].field_256 != sub_f4d8f87b:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if stakes[address(msg.sender)][arg2].field_512 > stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / 100) - stakes[address(msg.sender)][arg2].field_512)
        else:
            require (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(arg1)][arg2].field_768)
            if (25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(arg1)][arg2].field_768) != stakes[address(arg1)][arg2].field_256:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if ((25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / 1000 * 10^18) + stakes[address(msg.sender)][arg2].field_1024 < (25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / 1000 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if ((25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / 1000 * 10^18) + stakes[address(msg.sender)][arg2].field_1024 > 0:
                if not stakes[address(arg1)][arg2].field_256:
                    if stakes[address(msg.sender)][arg2].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -stakes[address(msg.sender)][arg2].field_512
                require stakes[address(arg1)][arg2].field_256
                if stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / stakes[address(arg1)][arg2].field_256 != sub_f4d8f87b:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if stakes[address(msg.sender)][arg2].field_512 > stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / 100) - stakes[address(msg.sender)][arg2].field_512)
    else:
        require stakes[address(arg1)][arg2].field_256
        if stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / stakes[address(arg1)][arg2].field_256 != sub_f4d8f87b:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(arg1)][arg2].field_768):
            if stakes[address(msg.sender)][arg2].field_1024 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if stakes[address(msg.sender)][arg2].field_1024 > stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / 100:
                if not stakes[address(arg1)][arg2].field_256:
                    if stakes[address(msg.sender)][arg2].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -stakes[address(msg.sender)][arg2].field_512
                require stakes[address(arg1)][arg2].field_256
                if stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / stakes[address(arg1)][arg2].field_256 != sub_f4d8f87b:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if stakes[address(msg.sender)][arg2].field_512 > stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / 100) - stakes[address(msg.sender)][arg2].field_512)
        else:
            require (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(arg1)][arg2].field_768)
            if (25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(arg1)][arg2].field_768) != stakes[address(arg1)][arg2].field_256:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if ((25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / 1000 * 10^18) + stakes[address(msg.sender)][arg2].field_1024 < (25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / 1000 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if ((25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / 1000 * 10^18) + stakes[address(msg.sender)][arg2].field_1024 > stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / 100:
                if not stakes[address(arg1)][arg2].field_256:
                    if stakes[address(msg.sender)][arg2].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -stakes[address(msg.sender)][arg2].field_512
                require stakes[address(arg1)][arg2].field_256
                if stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / stakes[address(arg1)][arg2].field_256 != sub_f4d8f87b:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if stakes[address(msg.sender)][arg2].field_512 > stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((stakes[address(arg1)][arg2].field_256 * sub_f4d8f87b / 100) - stakes[address(msg.sender)][arg2].field_512)
    if not (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(arg1)][arg2].field_768):
        if stakes[address(msg.sender)][arg2].field_1024 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if stakes[address(msg.sender)][arg2].field_512 > stakes[address(msg.sender)][arg2].field_1024:
            revert with 0, 'SafeMath: subtraction overflow'
        return (stakes[address(msg.sender)][arg2].field_1024 - stakes[address(msg.sender)][arg2].field_512)
    require (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(arg1)][arg2].field_768)
    if (25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(arg1)][arg2].field_768) != stakes[address(arg1)][arg2].field_256:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if ((25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / 1000 * 10^18) + stakes[address(msg.sender)][arg2].field_1024 < (25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / 1000 * 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if stakes[address(msg.sender)][arg2].field_512 > ((25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / 1000 * 10^18) + stakes[address(msg.sender)][arg2].field_1024:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((25462962962962 * block.timestamp * stakes[address(arg1)][arg2].field_256) - (25462962962962 * stakes[address(arg1)][arg2].field_768 * stakes[address(arg1)][arg2].field_256) / 1000 * 10^18) + stakes[address(msg.sender)][arg2].field_1024 - stakes[address(msg.sender)][arg2].field_512)
}

function reinvest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stakes[address(msg.sender)][arg1].field_1280:
        if stakes[address(msg.sender)][arg1].field_1024 < stakes[address(msg.sender)][arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
    else:
        if not stakes[address(msg.sender)][arg1].field_0:
            if stakes[address(msg.sender)][arg1].field_1024 < stakes[address(msg.sender)][arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if not block.timestamp - stakes[address(msg.sender)][arg1].field_768:
                if not stakes[address(msg.sender)][arg1].field_256:
                    if stakes[address(msg.sender)][arg1].field_256:
                        require stakes[address(msg.sender)][arg1].field_256
                        if 0 / stakes[address(msg.sender)][arg1].field_256:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if stakes[address(msg.sender)][arg1].field_1024 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakes[address(msg.sender)][arg1].field_1024 <= 0:
                        if stakes[address(msg.sender)][arg1].field_256:
                            require stakes[address(msg.sender)][arg1].field_256
                            if 0 / stakes[address(msg.sender)][arg1].field_256:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if stakes[address(msg.sender)][arg1].field_1024 < stakes[address(msg.sender)][arg1].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if not stakes[address(msg.sender)][arg1].field_256:
                            if stakes[address(msg.sender)][arg1].field_1024 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 < stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            stakes[address(msg.sender)][arg1].field_1024 = 0
                        else:
                            require stakes[address(msg.sender)][arg1].field_256
                            if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / stakes[address(msg.sender)][arg1].field_256 != sub_f4d8f87b:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if stakes[address(msg.sender)][arg1].field_1024 > stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100 < stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            stakes[address(msg.sender)][arg1].field_1024 = stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100
                else:
                    require stakes[address(msg.sender)][arg1].field_256
                    if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / stakes[address(msg.sender)][arg1].field_256 != sub_f4d8f87b:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if stakes[address(msg.sender)][arg1].field_256:
                        require stakes[address(msg.sender)][arg1].field_256
                        if 0 / stakes[address(msg.sender)][arg1].field_256:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if stakes[address(msg.sender)][arg1].field_1024 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakes[address(msg.sender)][arg1].field_1024 <= stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                        if stakes[address(msg.sender)][arg1].field_256:
                            require stakes[address(msg.sender)][arg1].field_256
                            if 0 / stakes[address(msg.sender)][arg1].field_256:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if stakes[address(msg.sender)][arg1].field_1024 < stakes[address(msg.sender)][arg1].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if not stakes[address(msg.sender)][arg1].field_256:
                            if stakes[address(msg.sender)][arg1].field_1024 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 < stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            stakes[address(msg.sender)][arg1].field_1024 = 0
                        else:
                            require stakes[address(msg.sender)][arg1].field_256
                            if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / stakes[address(msg.sender)][arg1].field_256 != sub_f4d8f87b:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if stakes[address(msg.sender)][arg1].field_1024 > stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100 < stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            stakes[address(msg.sender)][arg1].field_1024 = stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100
            else:
                require block.timestamp - stakes[address(msg.sender)][arg1].field_768
                if (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768) / block.timestamp - stakes[address(msg.sender)][arg1].field_768 != 25462962962962:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not stakes[address(msg.sender)][arg1].field_256:
                    if not stakes[address(msg.sender)][arg1].field_256:
                        if stakes[address(msg.sender)][arg1].field_1024 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if stakes[address(msg.sender)][arg1].field_1024 <= 0:
                            if not stakes[address(msg.sender)][arg1].field_256:
                                if stakes[address(msg.sender)][arg1].field_1024 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_256
                                if (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / stakes[address(msg.sender)][arg1].field_256 != (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if stakes[address(msg.sender)][arg1].field_1024 + ((25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18) < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 += (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18
                        else:
                            if not stakes[address(msg.sender)][arg1].field_256:
                                if stakes[address(msg.sender)][arg1].field_1024 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 = 0
                            else:
                                require stakes[address(msg.sender)][arg1].field_256
                                if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / stakes[address(msg.sender)][arg1].field_256 != sub_f4d8f87b:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if stakes[address(msg.sender)][arg1].field_1024 > stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 = stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100
                    else:
                        require stakes[address(msg.sender)][arg1].field_256
                        if (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / stakes[address(msg.sender)][arg1].field_256 != (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if ((25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18) + stakes[address(msg.sender)][arg1].field_1024 < (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if ((25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18) + stakes[address(msg.sender)][arg1].field_1024 <= 0:
                            if not stakes[address(msg.sender)][arg1].field_256:
                                if stakes[address(msg.sender)][arg1].field_1024 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_256
                                if (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / stakes[address(msg.sender)][arg1].field_256 != (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if stakes[address(msg.sender)][arg1].field_1024 + ((25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18) < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 += (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18
                        else:
                            if not stakes[address(msg.sender)][arg1].field_256:
                                if stakes[address(msg.sender)][arg1].field_1024 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 = 0
                            else:
                                require stakes[address(msg.sender)][arg1].field_256
                                if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / stakes[address(msg.sender)][arg1].field_256 != sub_f4d8f87b:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if stakes[address(msg.sender)][arg1].field_1024 > stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 = stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100
                else:
                    require stakes[address(msg.sender)][arg1].field_256
                    if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / stakes[address(msg.sender)][arg1].field_256 != sub_f4d8f87b:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not stakes[address(msg.sender)][arg1].field_256:
                        if stakes[address(msg.sender)][arg1].field_1024 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if stakes[address(msg.sender)][arg1].field_1024 <= stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                            if not stakes[address(msg.sender)][arg1].field_256:
                                if stakes[address(msg.sender)][arg1].field_1024 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_256
                                if (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / stakes[address(msg.sender)][arg1].field_256 != (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if stakes[address(msg.sender)][arg1].field_1024 + ((25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18) < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 += (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18
                        else:
                            if not stakes[address(msg.sender)][arg1].field_256:
                                if stakes[address(msg.sender)][arg1].field_1024 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 = 0
                            else:
                                require stakes[address(msg.sender)][arg1].field_256
                                if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / stakes[address(msg.sender)][arg1].field_256 != sub_f4d8f87b:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if stakes[address(msg.sender)][arg1].field_1024 > stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 = stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100
                    else:
                        require stakes[address(msg.sender)][arg1].field_256
                        if (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / stakes[address(msg.sender)][arg1].field_256 != (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if ((25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18) + stakes[address(msg.sender)][arg1].field_1024 < (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if ((25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18) + stakes[address(msg.sender)][arg1].field_1024 <= stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                            if not stakes[address(msg.sender)][arg1].field_256:
                                if stakes[address(msg.sender)][arg1].field_1024 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_256
                                if (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / stakes[address(msg.sender)][arg1].field_256 != (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if stakes[address(msg.sender)][arg1].field_1024 + ((25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18) < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 += (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18
                        else:
                            if not stakes[address(msg.sender)][arg1].field_256:
                                if stakes[address(msg.sender)][arg1].field_1024 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 = 0
                            else:
                                require stakes[address(msg.sender)][arg1].field_256
                                if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / stakes[address(msg.sender)][arg1].field_256 != sub_f4d8f87b:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if stakes[address(msg.sender)][arg1].field_1024 > stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 = stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100
    stakes[address(msg.sender)][arg1].field_768 = block.timestamp
    if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
        revert with 0, 'SafeMath: subtraction overflow'
    if stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 <= 10^14:
        revert with 0, 'Stake Too Low'
    stakes[address(msg.sender)][stor7[address(msg.sender)]].field_256 = stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
    stakes[address(msg.sender)][arg1].field_512 = stakes[address(msg.sender)][arg1].field_1024
    stakes[address(msg.sender)][stor7[address(msg.sender)]].field_0 = block.timestamp
    stakes[address(msg.sender)][stor7[address(msg.sender)]].field_768 = block.timestamp
    stakes[address(msg.sender)][stor7[address(msg.sender)]].field_1280 = 0
    sub_4196ace2[address(msg.sender)]++
}

function claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stakes[address(msg.sender)][arg1].field_1280:
        if stakes[address(msg.sender)][arg1].field_1024 < stakes[address(msg.sender)][arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        stakes[address(msg.sender)][arg1].field_768 = block.timestamp
        if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
            revert with 0, 'SafeMath: subtraction overflow'
        stakes[address(msg.sender)][arg1].field_512 = stakes[address(msg.sender)][arg1].field_1024
        if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
            if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
            if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor4[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
        if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
            if stor1 < stor1:
                revert with 0, 'SafeMath: addition overflow'
        else:
            require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
            if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor1:
                revert with 0, 'SafeMath: addition overflow'
            stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
    else:
        if not stakes[address(msg.sender)][arg1].field_0:
            if stakes[address(msg.sender)][arg1].field_1024 < stakes[address(msg.sender)][arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            stakes[address(msg.sender)][arg1].field_768 = block.timestamp
            if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                revert with 0, 'SafeMath: subtraction overflow'
            stakes[address(msg.sender)][arg1].field_512 = stakes[address(msg.sender)][arg1].field_1024
            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor4[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                if stor1 < stor1:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor1:
                    revert with 0, 'SafeMath: addition overflow'
                stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
        else:
            if not block.timestamp - stakes[address(msg.sender)][arg1].field_768:
                if not stakes[address(msg.sender)][arg1].field_256:
                    if stakes[address(msg.sender)][arg1].field_256:
                        require stakes[address(msg.sender)][arg1].field_256
                        if 0 / stakes[address(msg.sender)][arg1].field_256:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if stakes[address(msg.sender)][arg1].field_1024 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakes[address(msg.sender)][arg1].field_1024 <= 0:
                        if stakes[address(msg.sender)][arg1].field_256:
                            require stakes[address(msg.sender)][arg1].field_256
                            if 0 / stakes[address(msg.sender)][arg1].field_256:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if stakes[address(msg.sender)][arg1].field_1024 < stakes[address(msg.sender)][arg1].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        stakes[address(msg.sender)][arg1].field_768 = block.timestamp
                        if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                            revert with 0, 'SafeMath: subtraction overflow'
                        stakes[address(msg.sender)][arg1].field_512 = stakes[address(msg.sender)][arg1].field_1024
                        if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                            if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                            if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor4[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
                        if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                            if stor1 < stor1:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                            if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor1:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
                    else:
                        if not stakes[address(msg.sender)][arg1].field_256:
                            if stakes[address(msg.sender)][arg1].field_1024 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 < stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            stakes[address(msg.sender)][arg1].field_1024 = 0
                        else:
                            require stakes[address(msg.sender)][arg1].field_256
                            if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / stakes[address(msg.sender)][arg1].field_256 != sub_f4d8f87b:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if stakes[address(msg.sender)][arg1].field_1024 > stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100 < stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            stakes[address(msg.sender)][arg1].field_1024 = stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100
                        stakes[address(msg.sender)][arg1].field_768 = block.timestamp
                        if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                            revert with 0, 'SafeMath: subtraction overflow'
                        stakes[address(msg.sender)][arg1].field_512 = stakes[address(msg.sender)][arg1].field_1024
                        if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                            if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                            if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor4[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
                        if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                            if stor1 < stor1:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                            if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor1:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
                else:
                    require stakes[address(msg.sender)][arg1].field_256
                    if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / stakes[address(msg.sender)][arg1].field_256 != sub_f4d8f87b:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if stakes[address(msg.sender)][arg1].field_256:
                        require stakes[address(msg.sender)][arg1].field_256
                        if 0 / stakes[address(msg.sender)][arg1].field_256:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if stakes[address(msg.sender)][arg1].field_1024 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakes[address(msg.sender)][arg1].field_1024 <= stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                        if stakes[address(msg.sender)][arg1].field_256:
                            require stakes[address(msg.sender)][arg1].field_256
                            if 0 / stakes[address(msg.sender)][arg1].field_256:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if stakes[address(msg.sender)][arg1].field_1024 < stakes[address(msg.sender)][arg1].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        stakes[address(msg.sender)][arg1].field_768 = block.timestamp
                        if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                            revert with 0, 'SafeMath: subtraction overflow'
                        stakes[address(msg.sender)][arg1].field_512 = stakes[address(msg.sender)][arg1].field_1024
                        if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                            if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                            if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor4[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
                        if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                            if stor1 < stor1:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                            if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor1:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
                    else:
                        if not stakes[address(msg.sender)][arg1].field_256:
                            if stakes[address(msg.sender)][arg1].field_1024 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 < stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            stakes[address(msg.sender)][arg1].field_1024 = 0
                        else:
                            require stakes[address(msg.sender)][arg1].field_256
                            if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / stakes[address(msg.sender)][arg1].field_256 != sub_f4d8f87b:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if stakes[address(msg.sender)][arg1].field_1024 > stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100 < stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            stakes[address(msg.sender)][arg1].field_1024 = stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100
                        stakes[address(msg.sender)][arg1].field_768 = block.timestamp
                        if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                            revert with 0, 'SafeMath: subtraction overflow'
                        stakes[address(msg.sender)][arg1].field_512 = stakes[address(msg.sender)][arg1].field_1024
                        if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                            if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                            if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor4[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
                        if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                            if stor1 < stor1:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                            if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor1:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
            else:
                require block.timestamp - stakes[address(msg.sender)][arg1].field_768
                if (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768) / block.timestamp - stakes[address(msg.sender)][arg1].field_768 != 25462962962962:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not stakes[address(msg.sender)][arg1].field_256:
                    if not stakes[address(msg.sender)][arg1].field_256:
                        if stakes[address(msg.sender)][arg1].field_1024 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if stakes[address(msg.sender)][arg1].field_1024 <= 0:
                            if not stakes[address(msg.sender)][arg1].field_256:
                                if stakes[address(msg.sender)][arg1].field_1024 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_256
                                if (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / stakes[address(msg.sender)][arg1].field_256 != (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if stakes[address(msg.sender)][arg1].field_1024 + ((25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18) < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 += (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18
                            stakes[address(msg.sender)][arg1].field_768 = block.timestamp
                            if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stakes[address(msg.sender)][arg1].field_512 = stakes[address(msg.sender)][arg1].field_1024
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                                if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                                if stor1 < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
                        else:
                            if not stakes[address(msg.sender)][arg1].field_256:
                                if stakes[address(msg.sender)][arg1].field_1024 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 = 0
                            else:
                                require stakes[address(msg.sender)][arg1].field_256
                                if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / stakes[address(msg.sender)][arg1].field_256 != sub_f4d8f87b:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if stakes[address(msg.sender)][arg1].field_1024 > stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 = stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100
                            stakes[address(msg.sender)][arg1].field_768 = block.timestamp
                            if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stakes[address(msg.sender)][arg1].field_512 = stakes[address(msg.sender)][arg1].field_1024
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                                if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                                if stor1 < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
                    else:
                        require stakes[address(msg.sender)][arg1].field_256
                        if (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / stakes[address(msg.sender)][arg1].field_256 != (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if ((25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18) + stakes[address(msg.sender)][arg1].field_1024 < (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if ((25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18) + stakes[address(msg.sender)][arg1].field_1024 <= 0:
                            if not stakes[address(msg.sender)][arg1].field_256:
                                if stakes[address(msg.sender)][arg1].field_1024 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_256
                                if (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / stakes[address(msg.sender)][arg1].field_256 != (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if stakes[address(msg.sender)][arg1].field_1024 + ((25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18) < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 += (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18
                            stakes[address(msg.sender)][arg1].field_768 = block.timestamp
                            if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stakes[address(msg.sender)][arg1].field_512 = stakes[address(msg.sender)][arg1].field_1024
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                                if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                                if stor1 < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
                        else:
                            if not stakes[address(msg.sender)][arg1].field_256:
                                if stakes[address(msg.sender)][arg1].field_1024 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 = 0
                            else:
                                require stakes[address(msg.sender)][arg1].field_256
                                if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / stakes[address(msg.sender)][arg1].field_256 != sub_f4d8f87b:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if stakes[address(msg.sender)][arg1].field_1024 > stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 = stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100
                            stakes[address(msg.sender)][arg1].field_768 = block.timestamp
                            if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stakes[address(msg.sender)][arg1].field_512 = stakes[address(msg.sender)][arg1].field_1024
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                                if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                                if stor1 < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
                else:
                    require stakes[address(msg.sender)][arg1].field_256
                    if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / stakes[address(msg.sender)][arg1].field_256 != sub_f4d8f87b:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not stakes[address(msg.sender)][arg1].field_256:
                        if stakes[address(msg.sender)][arg1].field_1024 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if stakes[address(msg.sender)][arg1].field_1024 <= stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                            if not stakes[address(msg.sender)][arg1].field_256:
                                if stakes[address(msg.sender)][arg1].field_1024 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_256
                                if (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / stakes[address(msg.sender)][arg1].field_256 != (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if stakes[address(msg.sender)][arg1].field_1024 + ((25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18) < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 += (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18
                            stakes[address(msg.sender)][arg1].field_768 = block.timestamp
                            if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stakes[address(msg.sender)][arg1].field_512 = stakes[address(msg.sender)][arg1].field_1024
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                                if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                                if stor1 < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
                        else:
                            if not stakes[address(msg.sender)][arg1].field_256:
                                if stakes[address(msg.sender)][arg1].field_1024 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 = 0
                            else:
                                require stakes[address(msg.sender)][arg1].field_256
                                if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / stakes[address(msg.sender)][arg1].field_256 != sub_f4d8f87b:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if stakes[address(msg.sender)][arg1].field_1024 > stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 = stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100
                            stakes[address(msg.sender)][arg1].field_768 = block.timestamp
                            if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stakes[address(msg.sender)][arg1].field_512 = stakes[address(msg.sender)][arg1].field_1024
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                                if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                                if stor1 < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
                    else:
                        require stakes[address(msg.sender)][arg1].field_256
                        if (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / stakes[address(msg.sender)][arg1].field_256 != (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if ((25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18) + stakes[address(msg.sender)][arg1].field_1024 < (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if ((25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18) + stakes[address(msg.sender)][arg1].field_1024 <= stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                            if not stakes[address(msg.sender)][arg1].field_256:
                                if stakes[address(msg.sender)][arg1].field_1024 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_256
                                if (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / stakes[address(msg.sender)][arg1].field_256 != (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if stakes[address(msg.sender)][arg1].field_1024 + ((25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18) < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 += (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18
                            stakes[address(msg.sender)][arg1].field_768 = block.timestamp
                            if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stakes[address(msg.sender)][arg1].field_512 = stakes[address(msg.sender)][arg1].field_1024
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                                if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                                if stor1 < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
                        else:
                            if not stakes[address(msg.sender)][arg1].field_256:
                                if stakes[address(msg.sender)][arg1].field_1024 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 = 0
                            else:
                                require stakes[address(msg.sender)][arg1].field_256
                                if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / stakes[address(msg.sender)][arg1].field_256 != sub_f4d8f87b:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if stakes[address(msg.sender)][arg1].field_1024 > stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 = stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100
                            stakes[address(msg.sender)][arg1].field_768 = block.timestamp
                            if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            stakes[address(msg.sender)][arg1].field_512 = stakes[address(msg.sender)][arg1].field_1024
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                                if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512:
                                if stor1 < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3)
    if totalSupply + stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply = totalSupply + stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    stor3 = stor1 / totalSupply
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stakes[address(msg.sender)][arg1].field_1280:
        if stakes[address(msg.sender)][arg1].field_1024 < stakes[address(msg.sender)][arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        stakes[address(msg.sender)][arg1].field_768 = block.timestamp
        if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
            revert with 0, 'SafeMath: subtraction overflow'
        if stakes[address(msg.sender)][arg1].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        stakes[address(msg.sender)][arg1].field_1280 = 1
        if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
            if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
            if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor4[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
        if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
            if stor1 < stor1:
                revert with 0, 'SafeMath: addition overflow'
        else:
            require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
            if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor1:
                revert with 0, 'SafeMath: addition overflow'
            stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
    else:
        if not stakes[address(msg.sender)][arg1].field_0:
            if stakes[address(msg.sender)][arg1].field_1024 < stakes[address(msg.sender)][arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            stakes[address(msg.sender)][arg1].field_768 = block.timestamp
            if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                revert with 0, 'SafeMath: subtraction overflow'
            if stakes[address(msg.sender)][arg1].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            stakes[address(msg.sender)][arg1].field_1280 = 1
            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor4[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                if stor1 < stor1:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor1:
                    revert with 0, 'SafeMath: addition overflow'
                stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
        else:
            if not block.timestamp - stakes[address(msg.sender)][arg1].field_768:
                if not stakes[address(msg.sender)][arg1].field_256:
                    if stakes[address(msg.sender)][arg1].field_256:
                        require stakes[address(msg.sender)][arg1].field_256
                        if 0 / stakes[address(msg.sender)][arg1].field_256:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if stakes[address(msg.sender)][arg1].field_1024 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakes[address(msg.sender)][arg1].field_1024 <= 0:
                        if stakes[address(msg.sender)][arg1].field_256:
                            require stakes[address(msg.sender)][arg1].field_256
                            if 0 / stakes[address(msg.sender)][arg1].field_256:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if stakes[address(msg.sender)][arg1].field_1024 < stakes[address(msg.sender)][arg1].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        stakes[address(msg.sender)][arg1].field_768 = block.timestamp
                        if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stakes[address(msg.sender)][arg1].field_256 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        stakes[address(msg.sender)][arg1].field_1280 = 1
                        if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                            if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                            if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor4[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
                        if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                            if stor1 < stor1:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                            if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor1:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
                    else:
                        if not stakes[address(msg.sender)][arg1].field_256:
                            if stakes[address(msg.sender)][arg1].field_1024 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 < stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            stakes[address(msg.sender)][arg1].field_1024 = 0
                        else:
                            require stakes[address(msg.sender)][arg1].field_256
                            if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / stakes[address(msg.sender)][arg1].field_256 != sub_f4d8f87b:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if stakes[address(msg.sender)][arg1].field_1024 > stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100 < stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            stakes[address(msg.sender)][arg1].field_1024 = stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100
                        stakes[address(msg.sender)][arg1].field_768 = block.timestamp
                        if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stakes[address(msg.sender)][arg1].field_256 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        stakes[address(msg.sender)][arg1].field_1280 = 1
                        if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                            if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                            if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor4[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
                        if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                            if stor1 < stor1:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                            if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor1:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
                else:
                    require stakes[address(msg.sender)][arg1].field_256
                    if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / stakes[address(msg.sender)][arg1].field_256 != sub_f4d8f87b:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if stakes[address(msg.sender)][arg1].field_256:
                        require stakes[address(msg.sender)][arg1].field_256
                        if 0 / stakes[address(msg.sender)][arg1].field_256:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if stakes[address(msg.sender)][arg1].field_1024 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stakes[address(msg.sender)][arg1].field_1024 <= stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                        if stakes[address(msg.sender)][arg1].field_256:
                            require stakes[address(msg.sender)][arg1].field_256
                            if 0 / stakes[address(msg.sender)][arg1].field_256:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if stakes[address(msg.sender)][arg1].field_1024 < stakes[address(msg.sender)][arg1].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        stakes[address(msg.sender)][arg1].field_768 = block.timestamp
                        if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stakes[address(msg.sender)][arg1].field_256 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        stakes[address(msg.sender)][arg1].field_1280 = 1
                        if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                            if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                            if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor4[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
                        if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                            if stor1 < stor1:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                            if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor1:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
                    else:
                        if not stakes[address(msg.sender)][arg1].field_256:
                            if stakes[address(msg.sender)][arg1].field_1024 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 < stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            stakes[address(msg.sender)][arg1].field_1024 = 0
                        else:
                            require stakes[address(msg.sender)][arg1].field_256
                            if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / stakes[address(msg.sender)][arg1].field_256 != sub_f4d8f87b:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if stakes[address(msg.sender)][arg1].field_1024 > stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100 < stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            stakes[address(msg.sender)][arg1].field_1024 = stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100
                        stakes[address(msg.sender)][arg1].field_768 = block.timestamp
                        if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stakes[address(msg.sender)][arg1].field_256 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        stakes[address(msg.sender)][arg1].field_1280 = 1
                        if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                            if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                            if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor4[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
                        if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                            if stor1 < stor1:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                            if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor1:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
            else:
                require block.timestamp - stakes[address(msg.sender)][arg1].field_768
                if (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768) / block.timestamp - stakes[address(msg.sender)][arg1].field_768 != 25462962962962:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not stakes[address(msg.sender)][arg1].field_256:
                    if not stakes[address(msg.sender)][arg1].field_256:
                        if stakes[address(msg.sender)][arg1].field_1024 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if stakes[address(msg.sender)][arg1].field_1024 <= 0:
                            if not stakes[address(msg.sender)][arg1].field_256:
                                if stakes[address(msg.sender)][arg1].field_1024 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_256
                                if (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / stakes[address(msg.sender)][arg1].field_256 != (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if stakes[address(msg.sender)][arg1].field_1024 + ((25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18) < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 += (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18
                            stakes[address(msg.sender)][arg1].field_768 = block.timestamp
                            if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stakes[address(msg.sender)][arg1].field_256 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            stakes[address(msg.sender)][arg1].field_1280 = 1
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                                if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                                if stor1 < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
                        else:
                            if not stakes[address(msg.sender)][arg1].field_256:
                                if stakes[address(msg.sender)][arg1].field_1024 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 = 0
                            else:
                                require stakes[address(msg.sender)][arg1].field_256
                                if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / stakes[address(msg.sender)][arg1].field_256 != sub_f4d8f87b:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if stakes[address(msg.sender)][arg1].field_1024 > stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 = stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100
                            stakes[address(msg.sender)][arg1].field_768 = block.timestamp
                            if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stakes[address(msg.sender)][arg1].field_256 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            stakes[address(msg.sender)][arg1].field_1280 = 1
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                                if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                                if stor1 < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
                    else:
                        require stakes[address(msg.sender)][arg1].field_256
                        if (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / stakes[address(msg.sender)][arg1].field_256 != (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if ((25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18) + stakes[address(msg.sender)][arg1].field_1024 < (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if ((25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18) + stakes[address(msg.sender)][arg1].field_1024 <= 0:
                            if not stakes[address(msg.sender)][arg1].field_256:
                                if stakes[address(msg.sender)][arg1].field_1024 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_256
                                if (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / stakes[address(msg.sender)][arg1].field_256 != (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if stakes[address(msg.sender)][arg1].field_1024 + ((25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18) < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 += (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18
                            stakes[address(msg.sender)][arg1].field_768 = block.timestamp
                            if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stakes[address(msg.sender)][arg1].field_256 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            stakes[address(msg.sender)][arg1].field_1280 = 1
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                                if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                                if stor1 < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
                        else:
                            if not stakes[address(msg.sender)][arg1].field_256:
                                if stakes[address(msg.sender)][arg1].field_1024 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 = 0
                            else:
                                require stakes[address(msg.sender)][arg1].field_256
                                if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / stakes[address(msg.sender)][arg1].field_256 != sub_f4d8f87b:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if stakes[address(msg.sender)][arg1].field_1024 > stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 = stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100
                            stakes[address(msg.sender)][arg1].field_768 = block.timestamp
                            if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stakes[address(msg.sender)][arg1].field_256 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            stakes[address(msg.sender)][arg1].field_1280 = 1
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                                if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                                if stor1 < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
                else:
                    require stakes[address(msg.sender)][arg1].field_256
                    if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / stakes[address(msg.sender)][arg1].field_256 != sub_f4d8f87b:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not stakes[address(msg.sender)][arg1].field_256:
                        if stakes[address(msg.sender)][arg1].field_1024 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if stakes[address(msg.sender)][arg1].field_1024 <= stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                            if not stakes[address(msg.sender)][arg1].field_256:
                                if stakes[address(msg.sender)][arg1].field_1024 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_256
                                if (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / stakes[address(msg.sender)][arg1].field_256 != (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if stakes[address(msg.sender)][arg1].field_1024 + ((25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18) < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 += (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18
                            stakes[address(msg.sender)][arg1].field_768 = block.timestamp
                            if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stakes[address(msg.sender)][arg1].field_256 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            stakes[address(msg.sender)][arg1].field_1280 = 1
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                                if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                                if stor1 < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
                        else:
                            if not stakes[address(msg.sender)][arg1].field_256:
                                if stakes[address(msg.sender)][arg1].field_1024 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 = 0
                            else:
                                require stakes[address(msg.sender)][arg1].field_256
                                if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / stakes[address(msg.sender)][arg1].field_256 != sub_f4d8f87b:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if stakes[address(msg.sender)][arg1].field_1024 > stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 = stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100
                            stakes[address(msg.sender)][arg1].field_768 = block.timestamp
                            if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stakes[address(msg.sender)][arg1].field_256 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            stakes[address(msg.sender)][arg1].field_1280 = 1
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                                if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                                if stor1 < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
                    else:
                        require stakes[address(msg.sender)][arg1].field_256
                        if (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / stakes[address(msg.sender)][arg1].field_256 != (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if ((25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18) + stakes[address(msg.sender)][arg1].field_1024 < (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if ((25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18) + stakes[address(msg.sender)][arg1].field_1024 <= stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                            if not stakes[address(msg.sender)][arg1].field_256:
                                if stakes[address(msg.sender)][arg1].field_1024 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_256
                                if (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / stakes[address(msg.sender)][arg1].field_256 != (25462962962962 * block.timestamp) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if stakes[address(msg.sender)][arg1].field_1024 + ((25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18) < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 += (25462962962962 * block.timestamp * stakes[address(msg.sender)][arg1].field_256) - (25462962962962 * stakes[address(msg.sender)][arg1].field_768 * stakes[address(msg.sender)][arg1].field_256) / 1000 * 10^18
                            stakes[address(msg.sender)][arg1].field_768 = block.timestamp
                            if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stakes[address(msg.sender)][arg1].field_256 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            stakes[address(msg.sender)][arg1].field_1280 = 1
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                                if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                                if stor1 < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
                        else:
                            if not stakes[address(msg.sender)][arg1].field_256:
                                if stakes[address(msg.sender)][arg1].field_1024 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 = 0
                            else:
                                require stakes[address(msg.sender)][arg1].field_256
                                if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / stakes[address(msg.sender)][arg1].field_256 != sub_f4d8f87b:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if stakes[address(msg.sender)][arg1].field_1024 > stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100 < stakes[address(msg.sender)][arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                stakes[address(msg.sender)][arg1].field_1024 = stakes[address(msg.sender)][arg1].field_256 * sub_f4d8f87b / 100
                            stakes[address(msg.sender)][arg1].field_768 = block.timestamp
                            if stakes[address(msg.sender)][arg1].field_512 > stakes[address(msg.sender)][arg1].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stakes[address(msg.sender)][arg1].field_256 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            stakes[address(msg.sender)][arg1].field_1280 = 1
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                                if stor4[address(msg.sender)] < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor4[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor4[address(msg.sender)] = stor4[address(msg.sender)] + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
                            if not stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256:
                                if stor1 < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
                                if (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) / stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 != stor3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3) < stor1:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor1 = stor1 + (stakes[address(msg.sender)][arg1].field_1024 * stor3) - (stakes[address(msg.sender)][arg1].field_512 * stor3) + (stakes[address(msg.sender)][arg1].field_256 * stor3)
    if totalSupply + stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply = totalSupply + stakes[address(msg.sender)][arg1].field_1024 - stakes[address(msg.sender)][arg1].field_512 + stakes[address(msg.sender)][arg1].field_256
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    stor3 = stor1 / totalSupply
}



}
