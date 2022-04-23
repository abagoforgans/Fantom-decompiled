contract main {




// =====================  Runtime code  =====================


function userVotedForOption(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    return bool(('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('param', 'arg1'), 11))))))))
}

function votesForOptionByUser(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg3 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 9))))):
        revert with 'NH{q', 50
    return ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 9))))), ('param', 'arg3')))
}

function roundCount() payable {
    return ('storage', 256, 0, 2)
}

function sub_200f0ecc(?) payable {
    return ('storage', 256, 0, 3)
}

function activeRounds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < ('storage', 256, 0, 3)
    return ('storage', 256, 0, ('add', ('sha3', 3), ('param', 'arg1')))
}

function sub_2e79cc08(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg1'), 14))))
}

function votesInRoundByUser(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 8)))))
}

function sub_544e4b79(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('param', 'arg1'), 13)))))
}

function sub_5f378ce7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 6))):
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 6
        idx = idx + 1
        s = s + 1
        continue 
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 6)))
}

function votesForOption(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))):
        revert with 'NH{q', 50
    return ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 7))), ('param', 'arg2')))
}

function owner() payable {
    return ('storage', 160, 0, 0)
}

function userVotedInRound(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('param', 'arg1'), 10))))))
}

function sub_b91987b3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 12)))
}

function sub_ec2f42f7(?) payable {
    return ('storage', 256, 0, 4)
}

function balanceKeeper() payable {
    return ('storage', 160, 0, 1)
}

function sub_fd9ba024(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < ('storage', 256, 0, 4)
    return ('storage', 256, 0, ('add', ('sha3', 4), ('param', 'arg1')))
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, 'Caller is not owner'
    address(stor[0]) = arg1
}

function isActiveRound(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < ('storage', 256, 0, 3):
        mem[0] = 3
        if ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))) == arg1:
            return 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function sub_59e99422(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, 'Caller is not owner'
    uint256(stor[sha3(address(arg1), 14)]) = not bool(('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 14)))) or Mask(248, 8, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 14))))
}

function finalizeRound(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, 'Caller is not owner'
    if ('storage', 256, 0, 3) < 1:
        revert with 'NH{q', 17
    if ('storage', 256, 0, 3) - 1 > test266151307():
        revert with 'NH{q', 65
    if ('storage', 256, 0, 3) - 1:
        mem[128 len 32 * ('storage', 256, 0, 3) - 1] = call.data[calldata.size len 32 * ('storage', 256, 0, 3) - 1]
    idx = 0
    while idx < ('storage', 256, 0, 3):
        mem[0] = 3
        if ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))) != arg1:
            if idx >= ('storage', 256, 0, 3):
                revert with 'NH{q', 50
            mem[0] = 3
            if 0 >= ('storage', 256, 0, 3) - 1:
                revert with 'NH{q', 50
            mem[128] = ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0)))
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    uint256(stor[3]) = ('storage', 256, 0, 3) - 1
    if not ('storage', 256, 0, 3) - 1:
        idx = 0
        while ('storage', 256, 0, 3) > idx:
            uint256(stor[idx + sha3(3)]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('storage', 256, 0, 3) - 1) + 128 > idx:
            uint256(stor[s + sha3(3)]) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('storage', 256, 0, 3) - 1) + 31) >> 5
        while ('storage', 256, 0, 3) > idx:
            uint256(stor[idx + sha3(3)]) = 0
            idx = idx + 1
            continue 
    uint256(stor[4]) = ('storage', 256, 0, 4) + 1
    uint256(stor[sha3(4) + ('storage', 256, 0, 4)]) = arg1
}

function votesInRound(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))):
        if idx >= ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))):
            revert with 'NH{q', 50
        if s > -('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 7))), ('var', 0))) - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 7
        idx = idx + 1
        s = s + ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 7))), ('var', 0)))
        continue 
    return (s * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))) * ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7))))
}

function sub_bc35784b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 14))):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender is not allowed to check balances'
    idx = 0
    while idx < ('storage', 256, 0, 3):
        mem[0] = address(arg1)
        mem[32] = sha3(('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 8)
        if arg2 <= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 8))))):
            mem[0] = address(arg1)
            mem[32] = sha3(('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 8)
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 8))))):
                s = 0
                t = 0
                while s < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 9))))):
                    if ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 9))))), ('var', 1))) and arg2 > -1 / ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 9))))), ('var', 1))):
                        revert with 'NH{q', 17
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 8))))):
                        revert with 'NH{q', 18
                    if ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 9))))), ('var', 1))) < ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 9))))), ('var', 1))) * arg2 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 8))))):
                        revert with 'NH{q', 17
                    if s >= ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 7))):
                        revert with 'NH{q', 50
                    if ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 7))), ('var', 1))) < ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 9))))), ('var', 1))) - (('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 9))))), ('var', 1))) * arg2 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 8)))))):
                        revert with 'NH{q', 17
                    uint256(stor[sha3(sha3(('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 7)) + s]) = ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 7))), ('var', 1))) - ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 9))))), ('var', 1))) + (('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 9))))), ('var', 1))) * arg2 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 8))))))
                    mem[32] = sha3(('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 9)
                    if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 9))))):
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), sha3(('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 9))
                    uint256(stor[sha3(sha3(address(arg1), sha3(('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 9))) + s]) = ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 9))))), ('var', 1))) * arg2 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 8)))))
                    if t > -(('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 9))))), ('var', 1))) * arg2 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 8)))))) - 1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + (('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 9))))), ('var', 1))) * arg2 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 8))))))
                    continue 
                mem[0] = address(arg1)
                mem[32] = sha3(('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 8)
                uint256(stor[sha3(address(arg1), sha3(('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 8))]) = t * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('sha3', ('data', ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))), 9)))))
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function roundName(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ('storage', 1, 0, ('sha3', ('data', ('param', 'arg1'), 5))):
        if ('storage', 1, 0, ('sha3', ('data', ('param', 'arg1'), 5))) == ('storage', 255, 1, ('sha3', ('data', ('param', 'arg1'), 5))) < 32:
            revert with 'NH{q', 34
        if ('storage', 1, 0, ('sha3', ('data', ('param', 'arg1'), 5))):
            if ('storage', 1, 0, ('sha3', ('data', ('param', 'arg1'), 5))) == ('storage', 255, 1, ('sha3', ('data', ('param', 'arg1'), 5))) < 32:
                revert with 'NH{q', 34
            if ('storage', 255, 1, ('sha3', ('data', ('param', 'arg1'), 5))):
                if 31 < ('storage', 255, 1, ('sha3', ('data', ('param', 'arg1'), 5))):
                    mem[128] = ('storage', 256, 0, ('sha3', ('sha3', ('data', ('param', 'arg1'), 5))))
                    idx = 128
                    s = 0
                    while ('storage', 255, 1, ('sha3', ('data', ('param', 'arg1'), 5))) + 96 > idx:
                        mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 1), ('sha3', ('sha3', ('data', ('param', 'arg1'), 5)))))
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, ('storage', 255, 1, ('sha3', ('data', ('param', 'arg1'), 5)))), data=mem[128 len ceil32(('storage', 255, 1, ('sha3', ('data', ('param', 'arg1'), 5))))]), 
                mem[128] = 256 * ('storage', 248, 8, ('sha3', ('data', ('param', 'arg1'), 5)))
        else:
            if ('storage', 1, 0, ('sha3', ('data', ('param', 'arg1'), 5))) == ('storage', 7, 1, ('sha3', ('data', ('param', 'arg1'), 5))) < 32:
                revert with 'NH{q', 34
            if ('storage', 7, 1, ('sha3', ('data', ('param', 'arg1'), 5))):
                if 31 < ('storage', 7, 1, ('sha3', ('data', ('param', 'arg1'), 5))):
                    mem[128] = ('storage', 256, 0, ('sha3', ('sha3', ('data', ('param', 'arg1'), 5))))
                    idx = 128
                    s = 0
                    while ('storage', 7, 1, ('sha3', ('data', ('param', 'arg1'), 5))) + 96 > idx:
                        mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 1), ('sha3', ('sha3', ('data', ('param', 'arg1'), 5)))))
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, ('storage', 255, 1, ('sha3', ('data', ('param', 'arg1'), 5)))), data=mem[128 len ceil32(('storage', 255, 1, ('sha3', ('data', ('param', 'arg1'), 5))))]), 
                mem[128] = 256 * ('storage', 248, 8, ('sha3', ('data', ('param', 'arg1'), 5)))
        mem[ceil32(('storage', 255, 1, ('sha3', ('data', ('param', 'arg1'), 5)))) + 192 len ceil32(('storage', 255, 1, ('sha3', ('data', ('param', 'arg1'), 5))))] = mem[128 len ceil32(('storage', 255, 1, ('sha3', ('data', ('param', 'arg1'), 5))))]
        if ceil32(('storage', 255, 1, ('sha3', ('data', ('param', 'arg1'), 5)))) > ('storage', 255, 1, ('sha3', ('data', ('param', 'arg1'), 5))):
            mem[ceil32(('storage', 255, 1, ('sha3', ('data', ('param', 'arg1'), 5)))) + ('storage', 255, 1, ('sha3', ('data', ('param', 'arg1'), 5))) + 192] = 0
        return Array(len=2 * Mask(256, -1, ('storage', 255, 1, ('sha3', ('data', ('param', 'arg1'), 5)))), data=mem[128 len ceil32(('storage', 255, 1, ('sha3', ('data', ('param', 'arg1'), 5))))], mem[(2 * ceil32(('storage', 255, 1, ('sha3', ('data', ('param', 'arg1'), 5))))) + 192 len 2 * ceil32(('storage', 255, 1, ('sha3', ('data', ('param', 'arg1'), 5))))]), 
    if ('storage', 1, 0, ('sha3', ('data', ('param', 'arg1'), 5))) == ('storage', 7, 1, ('sha3', ('data', ('param', 'arg1'), 5))) < 32:
        revert with 'NH{q', 34
    if ('storage', 1, 0, ('sha3', ('data', ('param', 'arg1'), 5))):
        if ('storage', 1, 0, ('sha3', ('data', ('param', 'arg1'), 5))) == ('storage', 255, 1, ('sha3', ('data', ('param', 'arg1'), 5))) < 32:
            revert with 'NH{q', 34
        if ('storage', 255, 1, ('sha3', ('data', ('param', 'arg1'), 5))):
            if 31 < ('storage', 255, 1, ('sha3', ('data', ('param', 'arg1'), 5))):
                mem[128] = ('storage', 256, 0, ('sha3', ('sha3', ('data', ('param', 'arg1'), 5))))
                idx = 128
                s = 0
                while ('storage', 255, 1, ('sha3', ('data', ('param', 'arg1'), 5))) + 96 > idx:
                    mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 1), ('sha3', ('sha3', ('data', ('param', 'arg1'), 5)))))
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=('storage', 7, 0, ('sha3', ('data', ('param', 'arg1'), 5))), data=mem[128 len ceil32(('storage', 7, 1, ('sha3', ('data', ('param', 'arg1'), 5))))]), 
            mem[128] = 256 * ('storage', 248, 8, ('sha3', ('data', ('param', 'arg1'), 5)))
    else:
        if ('storage', 1, 0, ('sha3', ('data', ('param', 'arg1'), 5))) == ('storage', 7, 1, ('sha3', ('data', ('param', 'arg1'), 5))) < 32:
            revert with 'NH{q', 34
        if ('storage', 7, 1, ('sha3', ('data', ('param', 'arg1'), 5))):
            if 31 < ('storage', 7, 1, ('sha3', ('data', ('param', 'arg1'), 5))):
                mem[128] = ('storage', 256, 0, ('sha3', ('sha3', ('data', ('param', 'arg1'), 5))))
                idx = 128
                s = 0
                while ('storage', 7, 1, ('sha3', ('data', ('param', 'arg1'), 5))) + 96 > idx:
                    mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 1), ('sha3', ('sha3', ('data', ('param', 'arg1'), 5)))))
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=('storage', 7, 0, ('sha3', ('data', ('param', 'arg1'), 5))), data=mem[128 len ceil32(('storage', 7, 1, ('sha3', ('data', ('param', 'arg1'), 5))))]), 
            mem[128] = 256 * ('storage', 248, 8, ('sha3', ('data', ('param', 'arg1'), 5)))
    mem[ceil32(('storage', 7, 1, ('sha3', ('data', ('param', 'arg1'), 5)))) + 192 len ceil32(('storage', 7, 1, ('sha3', ('data', ('param', 'arg1'), 5))))] = mem[128 len ceil32(('storage', 7, 1, ('sha3', ('data', ('param', 'arg1'), 5))))]
    if ceil32(('storage', 7, 1, ('sha3', ('data', ('param', 'arg1'), 5)))) > ('storage', 7, 1, ('sha3', ('data', ('param', 'arg1'), 5))):
        mem[ceil32(('storage', 7, 1, ('sha3', ('data', ('param', 'arg1'), 5)))) + ('storage', 7, 1, ('sha3', ('data', ('param', 'arg1'), 5))) + 192] = 0
    return Array(len=('storage', 7, 0, ('sha3', ('data', ('param', 'arg1'), 5))), data=mem[128 len ceil32(('storage', 7, 1, ('sha3', ('data', ('param', 'arg1'), 5))))], mem[(2 * ceil32(('storage', 7, 1, ('sha3', ('data', ('param', 'arg1'), 5))))) + 192 len 2 * ceil32(('storage', 7, 1, ('sha3', ('data', ('param', 'arg1'), 5))))]), 
}

function roundOptions(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 6))):
        revert with 'NH{q', 50
    if ('storage', 1, 0, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))):
        if ('storage', 1, 0, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))) == ('storage', 255, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))) < 32:
            revert with 'NH{q', 34
        if ('storage', 1, 0, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))):
            if ('storage', 1, 0, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))) == ('storage', 255, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))) < 32:
                revert with 'NH{q', 34
            if ('storage', 255, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))):
                if 31 < ('storage', 255, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))):
                    mem[128] = ('storage', 256, 0, ('sha3', ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))))
                    idx = 128
                    s = 0
                    while ('storage', 255, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))) + 96 > idx:
                        mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 1), ('sha3', ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2')))))
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, ('storage', 255, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2')))), data=mem[128 len ceil32(('storage', 255, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))))]), 
                mem[128] = 256 * ('storage', 248, 8, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2')))
        else:
            if ('storage', 1, 0, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))) == ('storage', 7, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))) < 32:
                revert with 'NH{q', 34
            if ('storage', 7, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))):
                if 31 < ('storage', 7, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))):
                    mem[128] = ('storage', 256, 0, ('sha3', ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))))
                    idx = 128
                    s = 0
                    while ('storage', 7, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))) + 96 > idx:
                        mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 1), ('sha3', ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2')))))
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, ('storage', 255, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2')))), data=mem[128 len ceil32(('storage', 255, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))))]), 
                mem[128] = 256 * ('storage', 248, 8, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2')))
        mem[ceil32(('storage', 255, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2')))) + 192 len ceil32(('storage', 255, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))))] = mem[128 len ceil32(('storage', 255, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))))]
        if ceil32(('storage', 255, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2')))) > ('storage', 255, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))):
            mem[ceil32(('storage', 255, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2')))) + ('storage', 255, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))) + 192] = 0
        return Array(len=2 * Mask(256, -1, ('storage', 255, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2')))), data=mem[128 len ceil32(('storage', 255, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))))], mem[(2 * ceil32(('storage', 255, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))))) + 192 len 2 * ceil32(('storage', 255, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))))]), 
    if ('storage', 1, 0, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))) == ('storage', 7, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))) < 32:
        revert with 'NH{q', 34
    if ('storage', 1, 0, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))):
        if ('storage', 1, 0, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))) == ('storage', 255, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))) < 32:
            revert with 'NH{q', 34
        if ('storage', 255, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))):
            if 31 < ('storage', 255, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))):
                mem[128] = ('storage', 256, 0, ('sha3', ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))))
                idx = 128
                s = 0
                while ('storage', 255, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))) + 96 > idx:
                    mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 1), ('sha3', ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2')))))
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=('storage', 7, 0, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))), data=mem[128 len ceil32(('storage', 7, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))))]), 
            mem[128] = 256 * ('storage', 248, 8, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2')))
    else:
        if ('storage', 1, 0, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))) == ('storage', 7, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))) < 32:
            revert with 'NH{q', 34
        if ('storage', 7, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))):
            if 31 < ('storage', 7, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))):
                mem[128] = ('storage', 256, 0, ('sha3', ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))))
                idx = 128
                s = 0
                while ('storage', 7, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))) + 96 > idx:
                    mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 1), ('sha3', ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2')))))
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=('storage', 7, 0, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))), data=mem[128 len ceil32(('storage', 7, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))))]), 
            mem[128] = 256 * ('storage', 248, 8, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2')))
    mem[ceil32(('storage', 7, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2')))) + 192 len ceil32(('storage', 7, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))))] = mem[128 len ceil32(('storage', 7, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))))]
    if ceil32(('storage', 7, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2')))) > ('storage', 7, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))):
        mem[ceil32(('storage', 7, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2')))) + ('storage', 7, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))) + 192] = 0
    return Array(len=('storage', 7, 0, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))), data=mem[128 len ceil32(('storage', 7, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))))], mem[(2 * ceil32(('storage', 7, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))))) + 192 len 2 * ceil32(('storage', 7, 1, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 6))), ('param', 'arg2'))))]), 
}

function sub_44083843(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 36).length) + 128 > test266151307() or (32 * ('cd', 36).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < ('storage', 256, 0, 3):
        mem[0] = 3
        if ('storage', 256, 0, ('add', ('sha3', 3), ('var', 0))) != cd[4]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if ('cd', 36).length != ('storage', 256, 0, ('sha3', ('data', ('cd', 4), 6))):
            revert with 0, 'number of votes doesn't match number of options'
        idx = 0
        s = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            if s > -mem[(32 * idx) + 128] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * idx) + 128]
            continue 
        mem[(32 * ('cd', 36).length) + 132] = msg.sender
        require ext_code.size(('storage', 160, 0, 1))
        call ('storage', 160, 0, 1).userBalance(address rg1) with:
             gas gas_remaining wei
            args msg.sender
        mem[(32 * ('cd', 36).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length:
            revert with 0, 'balance is smaller than the sum of votes'
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), ('sha3', ('data', ('cd', 4), 8))))):
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 128] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), ('sha3', ('data', ('cd', 4), 9)))))
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), ('sha3', ('data', ('cd', 4), 9))))):
                mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 160] = ('storage', 256, 0, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), ('sha3', ('data', ('cd', 4), 9))))))
                idx = (32 * ('cd', 36).length) + ceil32(return_data.size) + 160
                t = sha3(sha3(address(msg.sender), sha3(cd[4], 9)))
                while (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), ('sha3', ('data', ('cd', 4), 9)))))) + 128 > idx:
                    mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 2)))
                    idx = idx + 32
                    t = t + 1
                    continue 
            idx = 0
            while idx < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), ('sha3', ('data', ('cd', 4), 9))))):
                if idx >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), ('sha3', ('data', ('cd', 4), 9))))):
                    revert with 'NH{q', 50
                mem[32] = 7
                if idx >= ('storage', 256, 0, ('sha3', ('data', ('cd', 4), 7))):
                    revert with 'NH{q', 50
                mem[0] = sha3(cd[4], 7)
                if ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('cd', 4), 7))), ('var', 0))) < mem[(32 * idx) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 160]:
                    revert with 'NH{q', 17
                uint256(stor[sha3(sha3(cd[4], 7)) + idx]) = ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('cd', 4), 7))), ('var', 0))) - mem[(32 * idx) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 160]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        uint256(stor[sha3(address(msg.sender), sha3(cd[4], 9))]) = ('cd', 36).length
        if not ('cd', 36).length:
            idx = sha3(sha3(address(msg.sender), sha3(cd[4], 9)))
            while sha3(sha3(address(msg.sender), sha3(cd[4], 9))) + ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), ('sha3', ('data', ('cd', 4), 9))))) > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
        else:
            t = sha3(sha3(address(msg.sender), sha3(cd[4], 9)))
            idx = 128
            while (32 * ('cd', 36).length) + 128 > idx:
                uint256(stor[t]) = mem[idx]
                t = t + 1
                idx = idx + 32
                continue 
            idx = sha3(sha3(address(msg.sender), sha3(cd[4], 9))) + (Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5)
            while sha3(sha3(address(msg.sender), sha3(cd[4], 9))) + ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), ('sha3', ('data', ('cd', 4), 9))))) > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), ('sha3', ('data', ('var', 0), ('sha3', ('data', ('cd', 4), 11))))))):
                if mem[(32 * idx) + 128]:
                    uint8(stor[sha3(address(msg.sender), sha3(idx, sha3(cd[4], 11)))]) = 1
                    if ('storage', 256, 0, ('sha3', ('data', ('var', 0), ('sha3', ('data', ('cd', 4), 13))))) == -1:
                        revert with 'NH{q', 17
                    uint256(stor[sha3(idx, sha3(cd[4], 13))]) = ('storage', 256, 0, ('sha3', ('data', ('var', 0), ('sha3', ('data', ('cd', 4), 13))))) + 1
            if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), ('sha3', ('data', ('var', 0), ('sha3', ('data', ('cd', 4), 11))))))):
                if not mem[(32 * idx) + 128]:
                    uint8(stor[sha3(address(msg.sender), sha3(idx, sha3(cd[4], 11)))]) = 0
                    if not ('storage', 256, 0, ('sha3', ('data', ('var', 0), ('sha3', ('data', ('cd', 4), 13))))):
                        revert with 'NH{q', 17
                    uint256(stor[sha3(idx, sha3(cd[4], 13))]) = ('storage', 256, 0, ('sha3', ('data', ('var', 0), ('sha3', ('data', ('cd', 4), 13))))) - 1
            mem[32] = 7
            if idx >= ('storage', 256, 0, ('sha3', ('data', ('cd', 4), 7))):
                revert with 'NH{q', 50
            mem[0] = sha3(cd[4], 7)
            if ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('cd', 4), 7))), ('var', 0))) > -mem[(32 * idx) + 128] - 1:
                revert with 'NH{q', 17
            uint256(stor[sha3(sha3(cd[4], 7)) + idx]) = ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('cd', 4), 7))), ('var', 0))) + mem[(32 * idx) + 128]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        uint256(stor[sha3(address(msg.sender), sha3(cd[4], 8))]) = s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length
        if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), ('sha3', ('data', ('cd', 4), 10))))):
            if s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length:
                uint8(stor[sha3(address(msg.sender), sha3(cd[4], 10))]) = 1
                if ('storage', 256, 0, ('sha3', ('data', ('cd', 4), 12))) == -1:
                    revert with 'NH{q', 17
                uint256(stor[sha3(cd[4], 12)]) = ('storage', 256, 0, ('sha3', ('data', ('cd', 4), 12))) + 1
        if ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), ('sha3', ('data', ('cd', 4), 10))))):
            if not s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length:
                uint8(stor[sha3(address(msg.sender), sha3(cd[4], 10))]) = 0
                if not ('storage', 256, 0, ('sha3', ('data', ('cd', 4), 12))):
                    revert with 'NH{q', 17
                uint256(stor[sha3(cd[4], 12)]) = ('storage', 256, 0, ('sha3', ('data', ('cd', 4), 12))) - 1
        emit 0xe49bd36b: msg.sender, cd[4]
    revert with 0, 'roundId is not an active vote'
}

function sub_ad77c86a(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(('cd', 4).length) + 128 > test266151307() or ceil32(('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    mem[128 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + 128] = 0
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307() or (32 * ('cd', 36).length) + 160 < 128:
        revert with 'NH{q', 65
    mem[64] = ceil32(('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[ceil32(('cd', 4).length) + 128] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = ceil32(('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _361 = mem[64]
        if mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 > test266151307() or mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_361] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_361 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_361 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _361
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, 'Caller is not owner'
    if ('storage', 1, 0, ('sha3', ('data', ('storage', 256, 0, 2), 5))):
        if ('storage', 1, 0, ('sha3', ('data', ('storage', 256, 0, 2), 5))) == ('storage', 255, 1, ('sha3', ('data', ('storage', 256, 0, 2), 5))) < 32:
            revert with 'NH{q', 34
        if mem[96]:
            uint256(stor[sha3(sha3(('storage', 256, 0, 2), 5))][]) = Array(len=mem[96], data=mem[128 len mem[96]])
            mem[32] = 6
            uint256(stor[sha3(('storage', 256, 0, 2), 6)]) = mem[ceil32(('cd', 4).length) + 128]
            mem[0] = sha3(('storage', 256, 0, 2), 6)
            if not mem[ceil32(('cd', 4).length) + 128]:
                idx = 0
                while sha3(sha3(('storage', 256, 0, 2), 6)) + ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 6))) > idx + sha3(mem[0]):
                    if ('storage', 1, 0, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))):
                        if ('storage', 1, 0, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))) == ('storage', 255, 1, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0])]) = 0
                        if 31 < ('storage', 255, 1, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))):
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (('storage', 255, 1, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                    else:
                        if ('storage', 1, 0, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))) == ('storage', 7, 1, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0])]) = 0
                        if 31 < ('storage', 7, 1, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))):
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (('storage', 7, 1, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
                _1416 = mem[ceil32(('cd', 4).length) + 128]
                if mem[ceil32(('cd', 4).length) + 128] > test266151307():
                    revert with 'NH{q', 65
                _1434 = mem[64]
                mem[mem[64]] = mem[ceil32(('cd', 4).length) + 128]
                mem[64] = mem[64] + (32 * _1416) + 32
                if not _1416:
                    mem[0] = ('storage', 256, 0, 2)
                    mem[32] = 7
                    _1444 = mem[_1434]
                    uint256(stor[sha3(('storage', 256, 0, 2), 7)]) = mem[_1434]
                    mem[0] = sha3(('storage', 256, 0, 2), 7)
                    if not _1444:
                        idx = 0
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1434 + 32
                        while _1434 + (32 * _1444) + 32 > idx:
                            uint256(stor[s + sha3(sha3(('storage', 256, 0, 2), 7))]) = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1444) + 31) >> 5
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
                else:
                    mem[_1434 + 32 len 32 * _1416] = call.data[calldata.size len 32 * _1416]
                    mem[0] = ('storage', 256, 0, 2)
                    mem[32] = 7
                    _1462 = mem[_1434]
                    uint256(stor[sha3(('storage', 256, 0, 2), 7)]) = mem[_1434]
                    mem[0] = sha3(('storage', 256, 0, 2), 7)
                    if not _1462:
                        idx = 0
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1434 + 32
                        while _1434 + (32 * _1462) + 32 > idx:
                            uint256(stor[s + sha3(sha3(('storage', 256, 0, 2), 7))]) = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1462) + 31) >> 5
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
            else:
                s = 0
                idx = ceil32(('cd', 4).length) + 160
                while ceil32(('cd', 4).length) + (32 * mem[ceil32(('cd', 4).length) + 128]) + 160 > idx:
                    _1389 = mem[idx]
                    _1390 = mem[mem[idx]]
                    if ('storage', 1, 0, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))):
                        if ('storage', 1, 0, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) == ('storage', 255, 1, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _1390:
                            uint256(stor[s + sha3(mem[0])]) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (('storage', 255, 1, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])]) = (2 * _1390) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _1389 + 32
                            while _1389 + _1390 + 32 > t:
                                uint256(stor[u]) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _1390 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (('storage', 255, 1, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                    else:
                        if ('storage', 1, 0, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) == ('storage', 7, 1, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _1390:
                            uint256(stor[s + sha3(mem[0])]) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (('storage', 7, 1, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])]) = (2 * _1390) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _1389 + 32
                            while _1389 + _1390 + 32 > t:
                                uint256(stor[u]) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _1390 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (('storage', 7, 1, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(sha3(('storage', 256, 0, 2), 6)) + ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 6))) > idx:
                    if ('storage', 1, 0, ('var', 0)):
                        if ('storage', 1, 0, ('var', 0)) == ('storage', 255, 1, ('var', 0)) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx]) = 0
                        if 31 < ('storage', 255, 1, ('var', 0)):
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (('storage', 255, 1, ('var', 0)) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                    else:
                        if ('storage', 1, 0, ('var', 0)) == ('storage', 7, 1, ('var', 0)) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx]) = 0
                        if 31 < ('storage', 7, 1, ('var', 0)):
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (('storage', 7, 1, ('var', 0)) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
                _1635 = mem[ceil32(('cd', 4).length) + 128]
                if mem[ceil32(('cd', 4).length) + 128] > test266151307():
                    revert with 'NH{q', 65
                _1659 = mem[64]
                mem[mem[64]] = mem[ceil32(('cd', 4).length) + 128]
                mem[64] = mem[64] + (32 * _1635) + 32
                if not _1635:
                    mem[0] = ('storage', 256, 0, 2)
                    mem[32] = 7
                    _1662 = mem[_1659]
                    uint256(stor[sha3(('storage', 256, 0, 2), 7)]) = mem[_1659]
                    mem[0] = sha3(('storage', 256, 0, 2), 7)
                    if not _1662:
                        idx = 0
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1659 + 32
                        while _1659 + (32 * _1662) + 32 > idx:
                            uint256(stor[s + sha3(sha3(('storage', 256, 0, 2), 7))]) = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1662) + 31) >> 5
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
                else:
                    mem[_1659 + 32 len 32 * _1635] = call.data[calldata.size len 32 * _1635]
                    mem[0] = ('storage', 256, 0, 2)
                    mem[32] = 7
                    _1667 = mem[_1659]
                    uint256(stor[sha3(('storage', 256, 0, 2), 7)]) = mem[_1659]
                    mem[0] = sha3(('storage', 256, 0, 2), 7)
                    if not _1667:
                        idx = 0
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1659 + 32
                        while _1659 + (32 * _1667) + 32 > idx:
                            uint256(stor[s + sha3(sha3(('storage', 256, 0, 2), 7))]) = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1667) + 31) >> 5
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
        else:
            uint256(stor[sha3(('storage', 256, 0, 2), 5)]) = 0
            idx = 0
            while ('storage', 255, 1, ('sha3', ('data', ('storage', 256, 0, 2), 5))) + 31 / 32 > idx:
                uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 5))]) = 0
                idx = idx + 1
                continue 
            mem[32] = 6
            uint256(stor[sha3(('storage', 256, 0, 2), 6)]) = mem[ceil32(('cd', 4).length) + 128]
            mem[0] = sha3(('storage', 256, 0, 2), 6)
            if not mem[ceil32(('cd', 4).length) + 128]:
                idx = 0
                while sha3(sha3(('storage', 256, 0, 2), 6)) + ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 6))) > idx + sha3(mem[0]):
                    if ('storage', 1, 0, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))):
                        if ('storage', 1, 0, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))) == ('storage', 255, 1, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0])]) = 0
                        if 31 < ('storage', 255, 1, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))):
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (('storage', 255, 1, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                    else:
                        if ('storage', 1, 0, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))) == ('storage', 7, 1, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0])]) = 0
                        if 31 < ('storage', 7, 1, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))):
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (('storage', 7, 1, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
                _1075 = mem[ceil32(('cd', 4).length) + 128]
                if mem[ceil32(('cd', 4).length) + 128] > test266151307():
                    revert with 'NH{q', 65
                _1084 = mem[64]
                mem[mem[64]] = mem[ceil32(('cd', 4).length) + 128]
                mem[64] = mem[64] + (32 * _1075) + 32
                if not _1075:
                    mem[0] = ('storage', 256, 0, 2)
                    mem[32] = 7
                    _1094 = mem[_1084]
                    uint256(stor[sha3(('storage', 256, 0, 2), 7)]) = mem[_1084]
                    mem[0] = sha3(('storage', 256, 0, 2), 7)
                    if not _1094:
                        idx = 0
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1084 + 32
                        while _1084 + (32 * _1094) + 32 > idx:
                            uint256(stor[s + sha3(sha3(('storage', 256, 0, 2), 7))]) = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1094) + 31) >> 5
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
                else:
                    mem[_1084 + 32 len 32 * _1075] = call.data[calldata.size len 32 * _1075]
                    mem[0] = ('storage', 256, 0, 2)
                    mem[32] = 7
                    _1111 = mem[_1084]
                    uint256(stor[sha3(('storage', 256, 0, 2), 7)]) = mem[_1084]
                    mem[0] = sha3(('storage', 256, 0, 2), 7)
                    if not _1111:
                        idx = 0
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1084 + 32
                        while _1084 + (32 * _1111) + 32 > idx:
                            uint256(stor[s + sha3(sha3(('storage', 256, 0, 2), 7))]) = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1111) + 31) >> 5
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
            else:
                s = 0
                idx = ceil32(('cd', 4).length) + 160
                while ceil32(('cd', 4).length) + (32 * mem[ceil32(('cd', 4).length) + 128]) + 160 > idx:
                    _1063 = mem[idx]
                    _1064 = mem[mem[idx]]
                    if ('storage', 1, 0, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))):
                        if ('storage', 1, 0, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) == ('storage', 255, 1, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _1064:
                            uint256(stor[s + sha3(mem[0])]) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (('storage', 255, 1, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])]) = (2 * _1064) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _1063 + 32
                            while _1063 + _1064 + 32 > t:
                                uint256(stor[u]) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _1064 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (('storage', 255, 1, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                    else:
                        if ('storage', 1, 0, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) == ('storage', 7, 1, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _1064:
                            uint256(stor[s + sha3(mem[0])]) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (('storage', 7, 1, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])]) = (2 * _1064) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _1063 + 32
                            while _1063 + _1064 + 32 > t:
                                uint256(stor[u]) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _1064 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (('storage', 7, 1, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(sha3(('storage', 256, 0, 2), 6)) + ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 6))) > idx:
                    if ('storage', 1, 0, ('var', 0)):
                        if ('storage', 1, 0, ('var', 0)) == ('storage', 255, 1, ('var', 0)) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx]) = 0
                        if 31 < ('storage', 255, 1, ('var', 0)):
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (('storage', 255, 1, ('var', 0)) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                    else:
                        if ('storage', 1, 0, ('var', 0)) == ('storage', 7, 1, ('var', 0)) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx]) = 0
                        if 31 < ('storage', 7, 1, ('var', 0)):
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (('storage', 7, 1, ('var', 0)) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
                _1422 = mem[ceil32(('cd', 4).length) + 128]
                if mem[ceil32(('cd', 4).length) + 128] > test266151307():
                    revert with 'NH{q', 65
                _1436 = mem[64]
                mem[mem[64]] = mem[ceil32(('cd', 4).length) + 128]
                mem[64] = mem[64] + (32 * _1422) + 32
                if not _1422:
                    mem[0] = ('storage', 256, 0, 2)
                    mem[32] = 7
                    _1448 = mem[_1436]
                    uint256(stor[sha3(('storage', 256, 0, 2), 7)]) = mem[_1436]
                    mem[0] = sha3(('storage', 256, 0, 2), 7)
                    if not _1448:
                        idx = 0
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1436 + 32
                        while _1436 + (32 * _1448) + 32 > idx:
                            uint256(stor[s + sha3(sha3(('storage', 256, 0, 2), 7))]) = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1448) + 31) >> 5
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
                else:
                    mem[_1436 + 32 len 32 * _1422] = call.data[calldata.size len 32 * _1422]
                    mem[0] = ('storage', 256, 0, 2)
                    mem[32] = 7
                    _1469 = mem[_1436]
                    uint256(stor[sha3(('storage', 256, 0, 2), 7)]) = mem[_1436]
                    mem[0] = sha3(('storage', 256, 0, 2), 7)
                    if not _1469:
                        idx = 0
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1436 + 32
                        while _1436 + (32 * _1469) + 32 > idx:
                            uint256(stor[s + sha3(sha3(('storage', 256, 0, 2), 7))]) = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1469) + 31) >> 5
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
    else:
        if ('storage', 1, 0, ('sha3', ('data', ('storage', 256, 0, 2), 5))) == ('storage', 7, 1, ('sha3', ('data', ('storage', 256, 0, 2), 5))) < 32:
            revert with 'NH{q', 34
        if mem[96]:
            uint256(stor[sha3(sha3(('storage', 256, 0, 2), 5))][]) = Array(len=mem[96], data=mem[128 len mem[96]])
            mem[32] = 6
            uint256(stor[sha3(('storage', 256, 0, 2), 6)]) = mem[ceil32(('cd', 4).length) + 128]
            mem[0] = sha3(('storage', 256, 0, 2), 6)
            if not mem[ceil32(('cd', 4).length) + 128]:
                idx = 0
                while sha3(sha3(('storage', 256, 0, 2), 6)) + ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 6))) > idx + sha3(mem[0]):
                    if ('storage', 1, 0, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))):
                        if ('storage', 1, 0, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))) == ('storage', 255, 1, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0])]) = 0
                        if 31 < ('storage', 255, 1, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))):
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (('storage', 255, 1, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                    else:
                        if ('storage', 1, 0, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))) == ('storage', 7, 1, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0])]) = 0
                        if 31 < ('storage', 7, 1, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))):
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (('storage', 7, 1, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
                _1426 = mem[ceil32(('cd', 4).length) + 128]
                if mem[ceil32(('cd', 4).length) + 128] > test266151307():
                    revert with 'NH{q', 65
                _1438 = mem[64]
                mem[mem[64]] = mem[ceil32(('cd', 4).length) + 128]
                mem[64] = mem[64] + (32 * _1426) + 32
                if not _1426:
                    mem[0] = ('storage', 256, 0, 2)
                    mem[32] = 7
                    _1452 = mem[_1438]
                    uint256(stor[sha3(('storage', 256, 0, 2), 7)]) = mem[_1438]
                    mem[0] = sha3(('storage', 256, 0, 2), 7)
                    if not _1452:
                        idx = 0
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1438 + 32
                        while _1438 + (32 * _1452) + 32 > idx:
                            uint256(stor[s + sha3(sha3(('storage', 256, 0, 2), 7))]) = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1452) + 31) >> 5
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
                else:
                    mem[_1438 + 32 len 32 * _1426] = call.data[calldata.size len 32 * _1426]
                    mem[0] = ('storage', 256, 0, 2)
                    mem[32] = 7
                    _1475 = mem[_1438]
                    uint256(stor[sha3(('storage', 256, 0, 2), 7)]) = mem[_1438]
                    mem[0] = sha3(('storage', 256, 0, 2), 7)
                    if not _1475:
                        idx = 0
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1438 + 32
                        while _1438 + (32 * _1475) + 32 > idx:
                            uint256(stor[s + sha3(sha3(('storage', 256, 0, 2), 7))]) = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1475) + 31) >> 5
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
            else:
                s = 0
                idx = ceil32(('cd', 4).length) + 160
                while ceil32(('cd', 4).length) + (32 * mem[ceil32(('cd', 4).length) + 128]) + 160 > idx:
                    _1403 = mem[idx]
                    _1404 = mem[mem[idx]]
                    if ('storage', 1, 0, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))):
                        if ('storage', 1, 0, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) == ('storage', 255, 1, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _1404:
                            uint256(stor[s + sha3(mem[0])]) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (('storage', 255, 1, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])]) = (2 * _1404) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _1403 + 32
                            while _1403 + _1404 + 32 > t:
                                uint256(stor[u]) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _1404 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (('storage', 255, 1, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                    else:
                        if ('storage', 1, 0, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) == ('storage', 7, 1, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _1404:
                            uint256(stor[s + sha3(mem[0])]) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (('storage', 7, 1, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])]) = (2 * _1404) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _1403 + 32
                            while _1403 + _1404 + 32 > t:
                                uint256(stor[u]) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _1404 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (('storage', 7, 1, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(sha3(('storage', 256, 0, 2), 6)) + ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 6))) > idx:
                    if ('storage', 1, 0, ('var', 0)):
                        if ('storage', 1, 0, ('var', 0)) == ('storage', 255, 1, ('var', 0)) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx]) = 0
                        if 31 < ('storage', 255, 1, ('var', 0)):
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (('storage', 255, 1, ('var', 0)) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                    else:
                        if ('storage', 1, 0, ('var', 0)) == ('storage', 7, 1, ('var', 0)) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx]) = 0
                        if 31 < ('storage', 7, 1, ('var', 0)):
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (('storage', 7, 1, ('var', 0)) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
                _1650 = mem[ceil32(('cd', 4).length) + 128]
                if mem[ceil32(('cd', 4).length) + 128] > test266151307():
                    revert with 'NH{q', 65
                _1660 = mem[64]
                mem[mem[64]] = mem[ceil32(('cd', 4).length) + 128]
                mem[64] = mem[64] + (32 * _1650) + 32
                if not _1650:
                    mem[0] = ('storage', 256, 0, 2)
                    mem[32] = 7
                    _1664 = mem[_1660]
                    uint256(stor[sha3(('storage', 256, 0, 2), 7)]) = mem[_1660]
                    mem[0] = sha3(('storage', 256, 0, 2), 7)
                    if not _1664:
                        idx = 0
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1660 + 32
                        while _1660 + (32 * _1664) + 32 > idx:
                            uint256(stor[s + sha3(sha3(('storage', 256, 0, 2), 7))]) = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1664) + 31) >> 5
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
                else:
                    mem[_1660 + 32 len 32 * _1650] = call.data[calldata.size len 32 * _1650]
                    mem[0] = ('storage', 256, 0, 2)
                    mem[32] = 7
                    _1670 = mem[_1660]
                    uint256(stor[sha3(('storage', 256, 0, 2), 7)]) = mem[_1660]
                    mem[0] = sha3(('storage', 256, 0, 2), 7)
                    if not _1670:
                        idx = 0
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1660 + 32
                        while _1660 + (32 * _1670) + 32 > idx:
                            uint256(stor[s + sha3(sha3(('storage', 256, 0, 2), 7))]) = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1670) + 31) >> 5
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
        else:
            uint256(stor[sha3(('storage', 256, 0, 2), 5)]) = 0
            idx = 0
            while ('storage', 7, 1, ('sha3', ('data', ('storage', 256, 0, 2), 5))) + 31 / 32 > idx:
                uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 5))]) = 0
                idx = idx + 1
                continue 
            mem[32] = 6
            uint256(stor[sha3(('storage', 256, 0, 2), 6)]) = mem[ceil32(('cd', 4).length) + 128]
            mem[0] = sha3(('storage', 256, 0, 2), 6)
            if not mem[ceil32(('cd', 4).length) + 128]:
                idx = 0
                while sha3(sha3(('storage', 256, 0, 2), 6)) + ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 6))) > idx + sha3(mem[0]):
                    if ('storage', 1, 0, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))):
                        if ('storage', 1, 0, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))) == ('storage', 255, 1, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0])]) = 0
                        if 31 < ('storage', 255, 1, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))):
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (('storage', 255, 1, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                    else:
                        if ('storage', 1, 0, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))) == ('storage', 7, 1, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx + sha3(mem[0])]) = 0
                        if 31 < ('storage', 7, 1, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))):
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (('storage', 7, 1, ('add', ('var', 0), ('sha3', ('mem', ('range', 0, 32))))) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
                _1080 = mem[ceil32(('cd', 4).length) + 128]
                if mem[ceil32(('cd', 4).length) + 128] > test266151307():
                    revert with 'NH{q', 65
                _1088 = mem[64]
                mem[mem[64]] = mem[ceil32(('cd', 4).length) + 128]
                mem[64] = mem[64] + (32 * _1080) + 32
                if not _1080:
                    mem[0] = ('storage', 256, 0, 2)
                    mem[32] = 7
                    _1100 = mem[_1088]
                    uint256(stor[sha3(('storage', 256, 0, 2), 7)]) = mem[_1088]
                    mem[0] = sha3(('storage', 256, 0, 2), 7)
                    if not _1100:
                        idx = 0
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1088 + 32
                        while _1088 + (32 * _1100) + 32 > idx:
                            uint256(stor[s + sha3(sha3(('storage', 256, 0, 2), 7))]) = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1100) + 31) >> 5
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
                else:
                    mem[_1088 + 32 len 32 * _1080] = call.data[calldata.size len 32 * _1080]
                    mem[0] = ('storage', 256, 0, 2)
                    mem[32] = 7
                    _1123 = mem[_1088]
                    uint256(stor[sha3(('storage', 256, 0, 2), 7)]) = mem[_1088]
                    mem[0] = sha3(('storage', 256, 0, 2), 7)
                    if not _1123:
                        idx = 0
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1088 + 32
                        while _1088 + (32 * _1123) + 32 > idx:
                            uint256(stor[s + sha3(sha3(('storage', 256, 0, 2), 7))]) = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1123) + 31) >> 5
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
            else:
                s = 0
                idx = ceil32(('cd', 4).length) + 160
                while ceil32(('cd', 4).length) + (32 * mem[ceil32(('cd', 4).length) + 128]) + 160 > idx:
                    _1069 = mem[idx]
                    _1070 = mem[mem[idx]]
                    if ('storage', 1, 0, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))):
                        if ('storage', 1, 0, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) == ('storage', 255, 1, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _1070:
                            uint256(stor[s + sha3(mem[0])]) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (('storage', 255, 1, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])]) = (2 * _1070) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _1069 + 32
                            while _1069 + _1070 + 32 > t:
                                uint256(stor[u]) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _1070 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (('storage', 255, 1, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                    else:
                        if ('storage', 1, 0, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) == ('storage', 7, 1, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) < 32:
                            revert with 'NH{q', 34
                        mem[0] = s + sha3(mem[0])
                        if not _1070:
                            uint256(stor[s + sha3(mem[0])]) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (('storage', 7, 1, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])]) = (2 * _1070) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _1069 + 32
                            while _1069 + _1070 + 32 > t:
                                uint256(stor[u]) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _1070 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (('storage', 7, 1, ('add', ('var', 1), ('sha3', ('mem', ('range', 0, 32))))) + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(sha3(('storage', 256, 0, 2), 6)) + ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 6))) > idx:
                    if ('storage', 1, 0, ('var', 0)):
                        if ('storage', 1, 0, ('var', 0)) == ('storage', 255, 1, ('var', 0)) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx]) = 0
                        if 31 < ('storage', 255, 1, ('var', 0)):
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (('storage', 255, 1, ('var', 0)) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                    else:
                        if ('storage', 1, 0, ('var', 0)) == ('storage', 7, 1, ('var', 0)) < 32:
                            revert with 'NH{q', 34
                        uint256(stor[idx]) = 0
                        if 31 < ('storage', 7, 1, ('var', 0)):
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (('storage', 7, 1, ('var', 0)) + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
                _1432 = mem[ceil32(('cd', 4).length) + 128]
                if mem[ceil32(('cd', 4).length) + 128] > test266151307():
                    revert with 'NH{q', 65
                _1440 = mem[64]
                mem[mem[64]] = mem[ceil32(('cd', 4).length) + 128]
                mem[64] = mem[64] + (32 * _1432) + 32
                if not _1432:
                    mem[0] = ('storage', 256, 0, 2)
                    mem[32] = 7
                    _1456 = mem[_1440]
                    uint256(stor[sha3(('storage', 256, 0, 2), 7)]) = mem[_1440]
                    mem[0] = sha3(('storage', 256, 0, 2), 7)
                    if not _1456:
                        idx = 0
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1440 + 32
                        while _1440 + (32 * _1456) + 32 > idx:
                            uint256(stor[s + sha3(sha3(('storage', 256, 0, 2), 7))]) = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1456) + 31) >> 5
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
                else:
                    mem[_1440 + 32 len 32 * _1432] = call.data[calldata.size len 32 * _1432]
                    mem[0] = ('storage', 256, 0, 2)
                    mem[32] = 7
                    _1482 = mem[_1440]
                    uint256(stor[sha3(('storage', 256, 0, 2), 7)]) = mem[_1440]
                    mem[0] = sha3(('storage', 256, 0, 2), 7)
                    if not _1482:
                        idx = 0
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = _1440 + 32
                        while _1440 + (32 * _1482) + 32 > idx:
                            uint256(stor[s + sha3(sha3(('storage', 256, 0, 2), 7))]) = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * _1482) + 31) >> 5
                        while ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 2), 7))) > idx:
                            uint256(stor[idx + sha3(sha3(('storage', 256, 0, 2), 7))]) = 0
                            idx = idx + 1
                            continue 
    uint256(stor[3]) = ('storage', 256, 0, 3) + 1
    uint256(stor[sha3(3) + ('storage', 256, 0, 3)]) = ('storage', 256, 0, 2)
    if ('storage', 256, 0, 2) == -1:
        revert with 'NH{q', 17
    uint256(stor[2]) = ('storage', 256, 0, 2) + 1
}



}
