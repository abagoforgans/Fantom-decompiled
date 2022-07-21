contract main {




// =====================  Runtime code  =====================


const name = 'ftmsmartcoin'

const decimals = 18

const symbol = 'smart'


function totalSupply() payable {
    return ('storage', 256, 0, 2)
}

function cycleCount() payable {
    return ('storage', 256, 0, 8)
}

function sub_39a5e614(?) payable {
    return ('storage', 256, 0, 7)
}

function sub_4196ace2(?) payable {
    require calldata.size - 4 >= 32
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 11)))
}

function stakes(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('param', 'arg1'), 10))))), 
           ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('param', 'arg1'), 10)))))),
           ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('param', 'arg1'), 10)))))),
           ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('param', 'arg1'), 10)))))),
           ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('param', 'arg1'), 10)))))),
           bool(('storage', 8, 0, ('add', 5, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('param', 'arg1'), 10)))))))
}

function whitelist(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < ('storage', 256, 0, 9)
    return ('storage', 160, 0, ('add', ('sha3', 9), ('param', 'arg1')))
}

function sub_89483fcf(?) payable {
    return ('storage', 256, 0, 6)
}

function _owner() payable {
    return ('storage', 160, 0, 0)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 12)))))
}

function sub_f4d8f87b(?) payable {
    return ('storage', 256, 0, 5)
}

function _fallback() payable {
    revert
}

function sub_81033aef(?) payable {
    require calldata.size - 4 >= 32
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor[5]) = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    uint256(stor[sha3(address(arg1), sha3(address(msg.sender), 12))]) = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if ('storage', 256, 0, 3) <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ('storage', 256, 0, 3)
    return (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) / ('storage', 256, 0, 3))
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 < 10^14:
        revert with 0, 'Amount Too Low'
    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 11))), sha3(address(msg.sender), 10)) + 1]) = arg1
    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 11))), sha3(address(msg.sender), 10))]) = block.timestamp
    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 11))), sha3(address(msg.sender), 10)) + 3]) = block.timestamp
    uint8(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 11))), sha3(address(msg.sender), 10)) + 5]) = 0
    uint256(stor[sha3(address(msg.sender), 11)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 11))) + 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 12))))) + arg2 < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 12))))):
        revert with 0, 'SafeMath: addition overflow'
    uint256(stor[sha3(address(arg1), sha3(address(msg.sender), 12))]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 12))))) + arg2
    emit Approval(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 12))))), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 12))))):
        uint256(stor[sha3(address(arg1), sha3(address(msg.sender), 12))]) = 0
    else:
        if arg2 > ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 12))))):
            revert with 0, 'SafeMath: subtraction overflow'
        uint256(stor[sha3(address(arg1), sha3(address(msg.sender), 12))]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 12))))) - arg2
    emit Approval(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 12))))), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        if 0 > ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
            revert with 0, 'SafeMath: subtraction overflow'
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))):
            revert with 0, 'SafeMath: addition overflow'
    else:
        require arg2
        if arg2 * ('storage', 256, 0, 3) / arg2 != ('storage', 256, 0, 3):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg2 * ('storage', 256, 0, 3) > ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
            revert with 0, 'SafeMath: subtraction overflow'
        uint256(stor[sha3(address(msg.sender), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) - (arg2 * ('storage', 256, 0, 3))
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) + (arg2 * ('storage', 256, 0, 3)) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))):
            revert with 0, 'SafeMath: addition overflow'
        uint256(stor[sha3(address(arg1), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) + (arg2 * ('storage', 256, 0, 3))
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if msg.sender == this.address:
        if not arg3:
            if 0 > ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))):
                revert with 0, 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4))) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4))):
                revert with 0, 'SafeMath: addition overflow'
        else:
            require arg3
            if arg3 * ('storage', 256, 0, 3) / arg3 != ('storage', 256, 0, 3):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg3 * ('storage', 256, 0, 3) > ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))):
                revert with 0, 'SafeMath: subtraction overflow'
            uint256(stor[sha3(address(arg1), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) - (arg3 * ('storage', 256, 0, 3))
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4))) + (arg3 * ('storage', 256, 0, 3)) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4))):
                revert with 0, 'SafeMath: addition overflow'
            uint256(stor[sha3(address(arg2), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4))) + (arg3 * ('storage', 256, 0, 3))
    else:
        if arg3 > ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 12))))):
            revert with 0, 'SafeMath: subtraction overflow'
        uint256(stor[sha3(address(msg.sender), sha3(address(arg1), 12))]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 12))))) - arg3
        if not arg3:
            if 0 > ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))):
                revert with 0, 'SafeMath: subtraction overflow'
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4))) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4))):
                revert with 0, 'SafeMath: addition overflow'
        else:
            require arg3
            if arg3 * ('storage', 256, 0, 3) / arg3 != ('storage', 256, 0, 3):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if arg3 * ('storage', 256, 0, 3) > ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))):
                revert with 0, 'SafeMath: subtraction overflow'
            uint256(stor[sha3(address(arg1), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) - (arg3 * ('storage', 256, 0, 3))
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4))) + (arg3 * ('storage', 256, 0, 3)) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4))):
                revert with 0, 'SafeMath: addition overflow'
            uint256(stor[sha3(address(arg2), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4))) + (arg3 * ('storage', 256, 0, 3))
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function calcReward(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if ('storage', 8, 0, ('add', 5, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
        return 0
    if not ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))):
        return 0
    if not block.timestamp - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
        if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))
                if 0 / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= 0:
                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
                    require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))
                    if 0 / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    else:
                        return 0
                else:
                    return 0
        else:
            require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) != ('storage', 256, 0, 5):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))
                if 0 / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / 100:
                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
                    require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))
                    if 0 / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    else:
                        return 0
                else:
                    return 0
    else:
        require block.timestamp - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))
        if (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / block.timestamp - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) != 2546296296296296296:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= 0:
                    if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
                        return 0
                    require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))
                    if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) != (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))):
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    return ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / 10000 * 10^18)
            else:
                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))
                if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) != (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / 10000 * 10^18) + ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / 10000 * 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / 10000 * 10^18) + ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= 0:
                    if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
                        return 0
                    require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))
                    if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) != (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))):
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    return ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / 10000 * 10^18)
        else:
            require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) != ('storage', 256, 0, 5):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / 100:
                    if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
                        return 0
                    require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))
                    if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) != (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))):
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    return ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / 10000 * 10^18)
            else:
                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))
                if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) != (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / 10000 * 10^18) + ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / 10000 * 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / 10000 * 10^18) + ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / 100:
                    if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
                        return 0
                    require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))
                    if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) != (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))):
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    return ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / 10000 * 10^18)
    if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
        if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
    require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))
    if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) != ('storage', 256, 0, 5):
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / 100:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / 100) - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))))
}

function calcClaim(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if ('storage', 8, 0, ('add', 5, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
        return 0
    if not ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))):
        return 0
    if not block.timestamp - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
        if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= 0:
                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                    revert with 0, 'SafeMath: subtraction overflow'
                return (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))))
        else:
            require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))
            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) != ('storage', 256, 0, 5):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / 100:
                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                    revert with 0, 'SafeMath: subtraction overflow'
                return (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))))
        if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
        require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) != ('storage', 256, 0, 5):
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / 100:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / 100) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))))
    require block.timestamp - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))
    if (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / block.timestamp - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) != 2546296296296296296:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
        if not (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))):
            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
                if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))
                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) != ('storage', 256, 0, 5):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / 100) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))))
        else:
            require (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))))
            if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) != ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / 10000 * 10^18) + ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / 10000 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / 10000 * 10^18) + ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
                if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))
                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) != ('storage', 256, 0, 5):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / 100) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))))
    else:
        require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))
        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) != ('storage', 256, 0, 5):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))):
            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / 100:
                if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))
                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) != ('storage', 256, 0, 5):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / 100) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))))
        else:
            require (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))))
            if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) != ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / 10000 * 10^18) + ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / 10000 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / 10000 * 10^18) + ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / 100:
                if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))
                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) != ('storage', 256, 0, 5):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, 5) / 100) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))))
    if not (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))):
        if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
            revert with 0, 'SafeMath: subtraction overflow'
        return (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))))
    require (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))))
    if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) != ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))):
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / 10000 * 10^18) + ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / 10000 * 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / 10000 * 10^18) + ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
        revert with 0, 'SafeMath: subtraction overflow'
    return (((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10))))))) / 10000 * 10^18) + ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))))
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if ('storage', 8, 0, ('add', 5, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
        if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
            revert with 0, 'SafeMath: addition overflow'
    else:
        if not ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))):
            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                revert with 0, 'SafeMath: addition overflow'
        else:
            if not block.timestamp - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                    if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                        require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                        if 0 / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= 0:
                        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if 0 / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = 0
                        else:
                            require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 5):
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100
                else:
                    require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                    if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 5):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                        require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                        if 0 / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if 0 / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = 0
                        else:
                            require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 5):
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100
            else:
                require block.timestamp - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                if (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / block.timestamp - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != 2546296296296296296:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                    if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                        if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= 0:
                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) + ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) + ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18)
                        else:
                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = 0
                            else:
                                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 5):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100
                    else:
                        require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                        if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18) + ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18) + ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= 0:
                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) + ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) + ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18)
                        else:
                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = 0
                            else:
                                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 5):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100
                else:
                    require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                    if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 5):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                        if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) + ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) + ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18)
                        else:
                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = 0
                            else:
                                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 5):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100
                    else:
                        require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                        if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18) + ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18) + ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) + ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) + ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18)
                        else:
                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = 0
                            else:
                                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 5):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100
    uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 3]) = block.timestamp
    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
        revert with 0, 'SafeMath: subtraction overflow'
    if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < 0:
        revert with 0, 'SafeMath: addition overflow'
    uint8(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 5]) = 1
}

function reinvest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if ('storage', 8, 0, ('add', 5, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
        if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
            revert with 0, 'SafeMath: addition overflow'
    else:
        if not ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))):
            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                revert with 0, 'SafeMath: addition overflow'
        else:
            if not block.timestamp - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                    if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                        require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                        if 0 / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= 0:
                        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if 0 / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = 0
                        else:
                            require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 5):
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100
                else:
                    require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                    if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 5):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                        require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                        if 0 / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if 0 / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = 0
                        else:
                            require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 5):
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100
            else:
                require block.timestamp - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                if (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / block.timestamp - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != 2546296296296296296:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                    if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                        if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= 0:
                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) + ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) + ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18)
                        else:
                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = 0
                            else:
                                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 5):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100
                    else:
                        require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                        if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18) + ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18) + ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= 0:
                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) + ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) + ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18)
                        else:
                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = 0
                            else:
                                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 5):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100
                else:
                    require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                    if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 5):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                        if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) + ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) + ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18)
                        else:
                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = 0
                            else:
                                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 5):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100
                    else:
                        require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                        if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18) + ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18) + ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) + ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) + ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18)
                        else:
                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = 0
                            else:
                                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 5):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100
    uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 3]) = block.timestamp
    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
        revert with 0, 'SafeMath: subtraction overflow'
    if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= 10^14:
        revert with 0, 'Stake Too Low'
    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 11))), sha3(address(msg.sender), 10)) + 1]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
    uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 2]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 11))), sha3(address(msg.sender), 10))]) = block.timestamp
    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 11))), sha3(address(msg.sender), 10)) + 3]) = block.timestamp
    uint256(stor[sha3(address(msg.sender), 11)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 11))) + 1
}

function claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if ('storage', 8, 0, ('add', 5, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
        if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
            revert with 0, 'SafeMath: addition overflow'
        uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 3]) = block.timestamp
        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
            revert with 0, 'SafeMath: subtraction overflow'
        uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 2]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
        if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                revert with 0, 'SafeMath: addition overflow'
        else:
            require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
            if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                revert with 0, 'SafeMath: addition overflow'
            uint256(stor[sha3(address(msg.sender), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
        if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
            if ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: addition overflow'
        else:
            require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
            if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, 1):
                revert with 0, 'SafeMath: addition overflow'
            uint256(stor[1]) = ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
    else:
        if not ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))):
            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                revert with 0, 'SafeMath: addition overflow'
            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 3]) = block.timestamp
            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                revert with 0, 'SafeMath: subtraction overflow'
            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 2]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
            if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[sha3(address(msg.sender), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
            if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                if ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, 1):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[1]) = ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
        else:
            if not block.timestamp - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                    if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                        require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                        if 0 / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= 0:
                        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if 0 / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 3]) = block.timestamp
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            revert with 0, 'SafeMath: subtraction overflow'
                        uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 2]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                        if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[sha3(address(msg.sender), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
                        if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            if ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, 1):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[1]) = ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
                    else:
                        if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = 0
                        else:
                            require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 5):
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100
                        uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 3]) = block.timestamp
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            revert with 0, 'SafeMath: subtraction overflow'
                        uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 2]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                        if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[sha3(address(msg.sender), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
                        if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            if ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, 1):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[1]) = ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
                else:
                    require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                    if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 5):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                        require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                        if 0 / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                        if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if 0 / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 3]) = block.timestamp
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            revert with 0, 'SafeMath: subtraction overflow'
                        uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 2]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                        if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[sha3(address(msg.sender), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
                        if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            if ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, 1):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[1]) = ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
                    else:
                        if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = 0
                        else:
                            require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 5):
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100
                        uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 3]) = block.timestamp
                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            revert with 0, 'SafeMath: subtraction overflow'
                        uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 2]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                        if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[sha3(address(msg.sender), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
                        if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                            if ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, 1):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[1]) = ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
            else:
                require block.timestamp - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                if (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / block.timestamp - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != 2546296296296296296:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                    if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                        if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= 0:
                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) + ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) + ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18)
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 3]) = block.timestamp
                            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 'SafeMath: subtraction overflow'
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 2]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(address(msg.sender), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
                            if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, 1):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[1]) = ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
                        else:
                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = 0
                            else:
                                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 5):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 3]) = block.timestamp
                            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 'SafeMath: subtraction overflow'
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 2]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(address(msg.sender), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
                            if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, 1):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[1]) = ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
                    else:
                        require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                        if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18) + ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18) + ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= 0:
                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) + ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) + ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18)
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 3]) = block.timestamp
                            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 'SafeMath: subtraction overflow'
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 2]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(address(msg.sender), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
                            if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, 1):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[1]) = ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
                        else:
                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = 0
                            else:
                                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 5):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 3]) = block.timestamp
                            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 'SafeMath: subtraction overflow'
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 2]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(address(msg.sender), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
                            if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, 1):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[1]) = ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
                else:
                    require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                    if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 5):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                        if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) + ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) + ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18)
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 3]) = block.timestamp
                            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 'SafeMath: subtraction overflow'
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 2]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(address(msg.sender), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
                            if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, 1):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[1]) = ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
                        else:
                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = 0
                            else:
                                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 5):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 3]) = block.timestamp
                            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 'SafeMath: subtraction overflow'
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 2]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(address(msg.sender), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
                            if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, 1):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[1]) = ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
                    else:
                        require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                        if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18) + ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18) + ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) <= ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != (2546296296296296296 * block.timestamp) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) + ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) + ((2546296296296296296 * block.timestamp * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) - (2546296296296296296 * ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))) / 10000 * 10^18)
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 3]) = block.timestamp
                            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 'SafeMath: subtraction overflow'
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 2]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(address(msg.sender), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
                            if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, 1):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[1]) = ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
                        else:
                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = 0
                            else:
                                require ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 5):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100 < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 4]) = ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 5) / 100
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 3]) = block.timestamp
                            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                revert with 0, 'SafeMath: subtraction overflow'
                            uint256(stor[sha3(arg1, sha3(address(msg.sender), 10)) + 2]) = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                            if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[sha3(address(msg.sender), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 4))) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
                            if not ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))):
                                if ('storage', 256, 0, 1) < ('storage', 256, 0, 1):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
                                if (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) / ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) != ('storage', 256, 0, 3):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) < ('storage', 256, 0, 1):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(stor[1]) = ('storage', 256, 0, 1) + (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3)) - (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) * ('storage', 256, 0, 3))
    if ('storage', 256, 0, 2) + ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) < ('storage', 256, 0, 2):
        revert with 0, 'SafeMath: addition overflow'
    uint256(stor[2]) = ('storage', 256, 0, 2) + ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10)))))) - ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 10))))))
    if ('storage', 256, 0, 2) <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ('storage', 256, 0, 2)
    uint256(stor[3]) = ('storage', 256, 0, 1) / ('storage', 256, 0, 2)
}



}
